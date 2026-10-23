.class public final Llu7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Leo5;


# direct methods
.method public constructor <init>(Leo5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Llu7;->b:Leo5;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p1, Lgu2;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Leu5;

    .line 4
    .line 5
    iget-object v0, v0, Leu5;->b:Loc6;

    .line 6
    .line 7
    iget-object v1, p0, Llu7;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lik8;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Lzm5;->s(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1, p2, p3}, Llu7;->b(Lik8;Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lik8;

    .line 60
    .line 61
    invoke-virtual {p0, v2, p1, p2, p3}, Llu7;->b(Lik8;Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    return-object v0
.end method

.method public final b(Lik8;Lgu2;Lyf1;Lqn5;)Ljava/util/ArrayList;
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v5, p3

    .line 6
    .line 7
    iget-object v2, v5, Lyf1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lgy5;

    .line 10
    .line 11
    iget-object v3, v5, Lyf1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lvq;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v9, v0, Lik8;->a:Lqc6;

    .line 19
    .line 20
    iget v4, v1, Lgu2;->a:I

    .line 21
    .line 22
    const/4 v11, 0x1

    .line 23
    const/4 v12, 0x2

    .line 24
    if-ne v4, v12, :cond_2

    .line 25
    .line 26
    iget-object v6, v1, Lgu2;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v6, Leu5;

    .line 29
    .line 30
    iget-object v6, v6, Leu5;->b:Loc6;

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    iget-object v6, v0, Lik8;->c:Lib;

    .line 35
    .line 36
    invoke-virtual {v6}, Lib;->g()Lqn5;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    move v6, v11

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v6, 0x0

    .line 45
    :goto_0
    const-string v7, "We should always have a full cache before handling merges"

    .line 46
    .line 47
    invoke-static {v7, v6}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v6, v0, Lik8;->c:Lib;

    .line 51
    .line 52
    invoke-virtual {v6}, Lib;->f()Lqn5;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    move v6, v11

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v6, 0x0

    .line 61
    :goto_1
    const-string v7, "Missing event cache, even though we have a server cache"

    .line 62
    .line 63
    invoke-static {v7, v6}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v7, v0, Lik8;->c:Lib;

    .line 67
    .line 68
    iget-object v6, v0, Lik8;->b:Lkm8;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v8, v6, Lkm8;->a:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v13, v8

    .line 76
    check-cast v13, Lvn5;

    .line 77
    .line 78
    new-instance v8, Lvk9;

    .line 79
    .line 80
    const/4 v14, 0x3

    .line 81
    invoke-direct {v8, v14}, Lvk9;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Ldj7;->A(I)I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    const/4 v10, 0x0

    .line 89
    if-eqz v15, :cond_29

    .line 90
    .line 91
    if-eq v15, v11, :cond_1f

    .line 92
    .line 93
    if-eq v15, v12, :cond_a

    .line 94
    .line 95
    if-ne v15, v14, :cond_5

    .line 96
    .line 97
    iget-object v1, v1, Lgu2;->c:Ljava/lang/Object;

    .line 98
    .line 99
    move-object v3, v1

    .line 100
    check-cast v3, Lgy5;

    .line 101
    .line 102
    iget-object v1, v7, Lib;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lgz0;

    .line 105
    .line 106
    iget-object v2, v1, Lgz0;->a:Lsb4;

    .line 107
    .line 108
    iget-boolean v4, v1, Lgz0;->b:Z

    .line 109
    .line 110
    if-nez v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v3}, Lgy5;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    const/4 v4, 0x0

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    :goto_2
    move v4, v11

    .line 122
    :goto_3
    iget-boolean v1, v1, Lgz0;->c:Z

    .line 123
    .line 124
    new-instance v13, Lib;

    .line 125
    .line 126
    iget-object v14, v7, Lib;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v14, Lgz0;

    .line 129
    .line 130
    new-instance v15, Lgz0;

    .line 131
    .line 132
    invoke-direct {v15, v2, v4, v1}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 133
    .line 134
    .line 135
    const/16 v1, 0xe

    .line 136
    .line 137
    invoke-direct {v13, v1, v14, v15}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    sget-object v5, Lkm8;->b:Llk;

    .line 141
    .line 142
    move-object/from16 v4, p3

    .line 143
    .line 144
    move-object v1, v6

    .line 145
    move-object v6, v8

    .line 146
    move-object v2, v13

    .line 147
    invoke-virtual/range {v1 .. v6}, Lkm8;->l(Lib;Lgy5;Lyf1;Lun5;Lvk9;)Lib;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    move-object v2, v7

    .line 152
    goto/16 :goto_1c

    .line 153
    .line 154
    :cond_5
    if-eq v4, v11, :cond_9

    .line 155
    .line 156
    if-eq v4, v12, :cond_8

    .line 157
    .line 158
    if-eq v4, v14, :cond_7

    .line 159
    .line 160
    const/4 v0, 0x4

    .line 161
    if-eq v4, v0, :cond_6

    .line 162
    .line 163
    const-string v0, "null"

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const-string v0, "ListenComplete"

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_7
    const-string v0, "AckUserWrite"

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_8
    const-string v0, "Merge"

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    const-string v0, "Overwrite"

    .line 176
    .line 177
    :goto_4
    const-string v1, "Unknown operation: "

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Le6;->e(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v10

    .line 187
    :cond_a
    move-object v1, v6

    .line 188
    move-object/from16 v4, p2

    .line 189
    .line 190
    check-cast v4, Ls7;

    .line 191
    .line 192
    iget-boolean v6, v4, Ls7;->d:Z

    .line 193
    .line 194
    iget-object v14, v4, Lgu2;->c:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v14, Lgy5;

    .line 197
    .line 198
    if-nez v6, :cond_14

    .line 199
    .line 200
    iget-object v2, v4, Ls7;->e:Lua4;

    .line 201
    .line 202
    invoke-virtual {v5, v14}, Lyf1;->r(Lgy5;)Lqn5;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    if-eqz v3, :cond_b

    .line 207
    .line 208
    :goto_5
    move-object/from16 v19, v8

    .line 209
    .line 210
    move-object v8, v7

    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_b
    iget-object v3, v7, Lib;->c:Ljava/lang/Object;

    .line 214
    .line 215
    move-object v13, v3

    .line 216
    check-cast v13, Lgz0;

    .line 217
    .line 218
    move-object v3, v7

    .line 219
    iget-boolean v7, v13, Lgz0;->c:Z

    .line 220
    .line 221
    iget-object v15, v13, Lgz0;->a:Lsb4;

    .line 222
    .line 223
    iget-object v4, v2, Lua4;->a:Ljava/lang/Object;

    .line 224
    .line 225
    if-eqz v4, :cond_11

    .line 226
    .line 227
    invoke-virtual {v14}, Lgy5;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_c

    .line 232
    .line 233
    iget-boolean v2, v13, Lgz0;->b:Z

    .line 234
    .line 235
    if-nez v2, :cond_d

    .line 236
    .line 237
    :cond_c
    invoke-virtual {v13, v14}, Lgz0;->b(Lgy5;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_e

    .line 242
    .line 243
    :cond_d
    iget-object v2, v15, Lsb4;->a:Lqn5;

    .line 244
    .line 245
    invoke-interface {v2, v14}, Lqn5;->U(Lgy5;)Lqn5;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    move-object/from16 v6, p4

    .line 250
    .line 251
    move-object v2, v3

    .line 252
    move-object v3, v14

    .line 253
    invoke-virtual/range {v1 .. v8}, Lkm8;->f(Lib;Lgy5;Lqn5;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    :goto_6
    move-object/from16 v19, v8

    .line 258
    .line 259
    move-object v8, v2

    .line 260
    goto/16 :goto_9

    .line 261
    .line 262
    :cond_e
    move-object v2, v3

    .line 263
    move-object v3, v14

    .line 264
    invoke-virtual {v3}, Lgy5;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_10

    .line 269
    .line 270
    sget-object v4, Lnp1;->b:Lnp1;

    .line 271
    .line 272
    iget-object v5, v15, Lsb4;->a:Lqn5;

    .line 273
    .line 274
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_f

    .line 283
    .line 284
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    check-cast v5, Lhk5;

    .line 289
    .line 290
    iget-object v6, v5, Lhk5;->a:Lm61;

    .line 291
    .line 292
    iget-object v5, v5, Lhk5;->b:Lqn5;

    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    new-instance v14, Lgy5;

    .line 298
    .line 299
    filled-new-array {v6}, [Lm61;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-direct {v14, v6}, Lgy5;-><init>([Lm61;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v14, v5}, Lnp1;->c(Lgy5;Lqn5;)Lnp1;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    goto :goto_7

    .line 311
    :cond_f
    move-object/from16 v5, p3

    .line 312
    .line 313
    move-object/from16 v6, p4

    .line 314
    .line 315
    invoke-virtual/range {v1 .. v8}, Lkm8;->e(Lib;Lgy5;Lnp1;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    goto :goto_6

    .line 320
    :cond_10
    move-object v3, v2

    .line 321
    move-object v7, v3

    .line 322
    goto :goto_5

    .line 323
    :cond_11
    sget-object v4, Lnp1;->b:Lnp1;

    .line 324
    .line 325
    invoke-virtual {v2}, Lua4;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v16

    .line 329
    :cond_12
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_13

    .line 334
    .line 335
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Ljava/util/Map$Entry;

    .line 340
    .line 341
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    check-cast v2, Lgy5;

    .line 346
    .line 347
    invoke-virtual {v14, v2}, Lgy5;->e(Lgy5;)Lgy5;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v13, v5}, Lgz0;->b(Lgy5;)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_12

    .line 356
    .line 357
    iget-object v6, v15, Lsb4;->a:Lqn5;

    .line 358
    .line 359
    invoke-interface {v6, v5}, Lqn5;->U(Lgy5;)Lqn5;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-virtual {v4, v2, v5}, Lnp1;->c(Lgy5;Lqn5;)Lnp1;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    move-object v4, v2

    .line 368
    goto :goto_8

    .line 369
    :cond_13
    move-object/from16 v5, p3

    .line 370
    .line 371
    move-object/from16 v6, p4

    .line 372
    .line 373
    move-object v2, v3

    .line 374
    move-object v3, v14

    .line 375
    invoke-virtual/range {v1 .. v8}, Lkm8;->e(Lib;Lgy5;Lnp1;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    goto :goto_6

    .line 380
    :goto_9
    move-object v1, v7

    .line 381
    :goto_a
    move-object v2, v8

    .line 382
    move-object/from16 v8, v19

    .line 383
    .line 384
    goto/16 :goto_1c

    .line 385
    .line 386
    :cond_14
    move-object/from16 v19, v8

    .line 387
    .line 388
    move-object v8, v7

    .line 389
    invoke-virtual {v5, v14}, Lyf1;->r(Lgy5;)Lqn5;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_15

    .line 394
    .line 395
    move-object v1, v8

    .line 396
    move-object/from16 v7, v19

    .line 397
    .line 398
    const/4 v10, 0x0

    .line 399
    goto/16 :goto_12

    .line 400
    .line 401
    :cond_15
    new-instance v1, Lbp0;

    .line 402
    .line 403
    move-object/from16 v6, p4

    .line 404
    .line 405
    invoke-direct {v1, v5, v8, v6}, Lbp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    iget-object v4, v8, Lib;->b:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v4, Lgz0;

    .line 411
    .line 412
    iget-object v6, v8, Lib;->c:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v6, Lgz0;

    .line 415
    .line 416
    iget-boolean v7, v6, Lgz0;->b:Z

    .line 417
    .line 418
    iget-object v4, v4, Lgz0;->a:Lsb4;

    .line 419
    .line 420
    invoke-virtual {v14}, Lgy5;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v15

    .line 424
    if-nez v15, :cond_16

    .line 425
    .line 426
    invoke-virtual {v14}, Lgy5;->k()Lm61;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    sget-object v10, Lm61;->d:Lm61;

    .line 431
    .line 432
    invoke-virtual {v15, v10}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v10

    .line 436
    if-eqz v10, :cond_17

    .line 437
    .line 438
    :cond_16
    move-object v14, v4

    .line 439
    move v1, v7

    .line 440
    move-object/from16 v7, v19

    .line 441
    .line 442
    goto/16 :goto_d

    .line 443
    .line 444
    :cond_17
    invoke-virtual {v14}, Lgy5;->k()Lm61;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    invoke-virtual {v5, v15, v6}, Lyf1;->l(Lm61;Lgz0;)Lqn5;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    if-nez v10, :cond_18

    .line 453
    .line 454
    invoke-virtual {v6, v15}, Lgz0;->a(Lm61;)Z

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    if-eqz v6, :cond_18

    .line 459
    .line 460
    iget-object v6, v4, Lsb4;->a:Lqn5;

    .line 461
    .line 462
    invoke-interface {v6, v15}, Lqn5;->m(Lm61;)Lqn5;

    .line 463
    .line 464
    .line 465
    move-result-object v10

    .line 466
    :cond_18
    move-object/from16 v16, v10

    .line 467
    .line 468
    if-eqz v16, :cond_19

    .line 469
    .line 470
    invoke-virtual {v14}, Lgy5;->p()Lgy5;

    .line 471
    .line 472
    .line 473
    move-result-object v17

    .line 474
    move-object/from16 v18, v1

    .line 475
    .line 476
    move-object v14, v4

    .line 477
    invoke-interface/range {v13 .. v19}, Lvn5;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    :goto_b
    move v1, v7

    .line 482
    move-object/from16 v7, v19

    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_19
    move-object/from16 v18, v1

    .line 486
    .line 487
    move-object v1, v14

    .line 488
    move-object v14, v4

    .line 489
    if-nez v16, :cond_1a

    .line 490
    .line 491
    iget-object v4, v8, Lib;->b:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v4, Lgz0;

    .line 494
    .line 495
    iget-object v4, v4, Lgz0;->a:Lsb4;

    .line 496
    .line 497
    iget-object v4, v4, Lsb4;->a:Lqn5;

    .line 498
    .line 499
    invoke-interface {v4, v15}, Lqn5;->c0(Lm61;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_1a

    .line 504
    .line 505
    sget-object v16, Lqv2;->e:Lqv2;

    .line 506
    .line 507
    invoke-virtual {v1}, Lgy5;->p()Lgy5;

    .line 508
    .line 509
    .line 510
    move-result-object v17

    .line 511
    invoke-interface/range {v13 .. v19}, Lvn5;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    goto :goto_b

    .line 516
    :cond_1a
    move v1, v7

    .line 517
    move-object/from16 v7, v19

    .line 518
    .line 519
    move-object v4, v14

    .line 520
    :goto_c
    iget-object v6, v4, Lsb4;->a:Lqn5;

    .line 521
    .line 522
    invoke-interface {v6}, Lqn5;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-eqz v6, :cond_1b

    .line 527
    .line 528
    if-eqz v1, :cond_1b

    .line 529
    .line 530
    invoke-virtual {v8}, Lib;->g()Lqn5;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 535
    .line 536
    const/4 v14, 0x0

    .line 537
    invoke-virtual {v3, v2, v6, v10, v14}, Lvq;->j(Lgy5;Lqn5;Ljava/util/List;Z)Lqn5;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-interface {v2}, Lqn5;->Z()Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_1b

    .line 546
    .line 547
    invoke-interface {v13}, Lvn5;->getIndex()Lnb4;

    .line 548
    .line 549
    .line 550
    move-result-object v3

    .line 551
    new-instance v6, Lsb4;

    .line 552
    .line 553
    invoke-direct {v6, v2, v3}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 554
    .line 555
    .line 556
    invoke-interface {v13, v4, v6, v7}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    :cond_1b
    const/4 v10, 0x0

    .line 561
    goto :goto_f

    .line 562
    :goto_d
    if-eqz v1, :cond_1c

    .line 563
    .line 564
    invoke-virtual {v8}, Lib;->g()Lqn5;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 569
    .line 570
    const/4 v10, 0x0

    .line 571
    invoke-virtual {v3, v2, v4, v6, v10}, Lvq;->j(Lgy5;Lqn5;Ljava/util/List;Z)Lqn5;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    goto :goto_e

    .line 576
    :cond_1c
    const/4 v10, 0x0

    .line 577
    iget-object v2, v6, Lgz0;->a:Lsb4;

    .line 578
    .line 579
    iget-object v2, v2, Lsb4;->a:Lqn5;

    .line 580
    .line 581
    invoke-virtual {v5, v2}, Lyf1;->m(Lqn5;)Lqn5;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    :goto_e
    invoke-interface {v13}, Lvn5;->getIndex()Lnb4;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    new-instance v4, Lsb4;

    .line 590
    .line 591
    invoke-direct {v4, v2, v3}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 592
    .line 593
    .line 594
    invoke-interface {v13, v14, v4, v7}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    :goto_f
    if-nez v1, :cond_1e

    .line 599
    .line 600
    sget-object v1, Lgy5;->d:Lgy5;

    .line 601
    .line 602
    invoke-virtual {v5, v1}, Lyf1;->r(Lgy5;)Lqn5;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    if-eqz v1, :cond_1d

    .line 607
    .line 608
    goto :goto_10

    .line 609
    :cond_1d
    move v14, v10

    .line 610
    goto :goto_11

    .line 611
    :cond_1e
    :goto_10
    move v14, v11

    .line 612
    :goto_11
    invoke-interface {v13}, Lvn5;->g()Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-virtual {v8, v4, v14, v1}, Lib;->o(Lsb4;ZZ)Lib;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    :goto_12
    move-object v2, v8

    .line 621
    move-object v8, v7

    .line 622
    goto/16 :goto_1c

    .line 623
    .line 624
    :cond_1f
    move-object v1, v8

    .line 625
    move-object v8, v7

    .line 626
    move-object v7, v1

    .line 627
    move-object v1, v6

    .line 628
    const/4 v10, 0x0

    .line 629
    move-object/from16 v6, p4

    .line 630
    .line 631
    move-object/from16 v2, p2

    .line 632
    .line 633
    check-cast v2, Lbd5;

    .line 634
    .line 635
    iget-object v3, v2, Lgu2;->b:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v3, Leu5;

    .line 638
    .line 639
    iget v4, v3, Leu5;->a:I

    .line 640
    .line 641
    if-ne v4, v11, :cond_25

    .line 642
    .line 643
    iget-object v3, v2, Lgu2;->c:Ljava/lang/Object;

    .line 644
    .line 645
    move-object v13, v3

    .line 646
    check-cast v13, Lgy5;

    .line 647
    .line 648
    iget-object v2, v2, Lbd5;->d:Lnp1;

    .line 649
    .line 650
    iget-object v14, v2, Lnp1;->a:Lua4;

    .line 651
    .line 652
    iget-object v2, v14, Lua4;->a:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v2, Lqn5;

    .line 655
    .line 656
    if-nez v2, :cond_20

    .line 657
    .line 658
    move v2, v11

    .line 659
    goto :goto_13

    .line 660
    :cond_20
    move v2, v10

    .line 661
    :goto_13
    const-string v3, "Can\'t have a merge that is an overwrite"

    .line 662
    .line 663
    invoke-static {v3, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v14}, Lua4;->iterator()Ljava/util/Iterator;

    .line 667
    .line 668
    .line 669
    move-result-object v15

    .line 670
    move-object v2, v8

    .line 671
    :goto_14
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-eqz v3, :cond_22

    .line 676
    .line 677
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    check-cast v3, Ljava/util/Map$Entry;

    .line 682
    .line 683
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    check-cast v4, Lgy5;

    .line 688
    .line 689
    invoke-virtual {v13, v4}, Lgy5;->e(Lgy5;)Lgy5;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    invoke-virtual {v4}, Lgy5;->k()Lm61;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    iget-object v11, v8, Lib;->b:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v11, Lgz0;

    .line 700
    .line 701
    invoke-virtual {v11, v10}, Lgz0;->a(Lm61;)Z

    .line 702
    .line 703
    .line 704
    move-result v10

    .line 705
    if-eqz v10, :cond_21

    .line 706
    .line 707
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    check-cast v3, Lqn5;

    .line 712
    .line 713
    move-object/from16 v26, v4

    .line 714
    .line 715
    move-object v4, v3

    .line 716
    move-object/from16 v3, v26

    .line 717
    .line 718
    invoke-virtual/range {v1 .. v7}, Lkm8;->g(Lib;Lgy5;Lqn5;Lyf1;Lqn5;Lvk9;)Lib;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    :cond_21
    move-object/from16 v19, v7

    .line 723
    .line 724
    move-object/from16 v5, p3

    .line 725
    .line 726
    move-object/from16 v6, p4

    .line 727
    .line 728
    move-object/from16 v7, v19

    .line 729
    .line 730
    const/4 v10, 0x0

    .line 731
    const/4 v11, 0x1

    .line 732
    goto :goto_14

    .line 733
    :cond_22
    move-object/from16 v19, v7

    .line 734
    .line 735
    invoke-virtual {v14}, Lua4;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v10

    .line 739
    :cond_23
    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v3

    .line 743
    if-eqz v3, :cond_24

    .line 744
    .line 745
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    check-cast v3, Ljava/util/Map$Entry;

    .line 750
    .line 751
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v4

    .line 755
    check-cast v4, Lgy5;

    .line 756
    .line 757
    invoke-virtual {v13, v4}, Lgy5;->e(Lgy5;)Lgy5;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    invoke-virtual {v4}, Lgy5;->k()Lm61;

    .line 762
    .line 763
    .line 764
    move-result-object v5

    .line 765
    iget-object v6, v8, Lib;->b:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v6, Lgz0;

    .line 768
    .line 769
    invoke-virtual {v6, v5}, Lgz0;->a(Lm61;)Z

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    if-nez v5, :cond_23

    .line 774
    .line 775
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    check-cast v3, Lqn5;

    .line 780
    .line 781
    move-object v5, v4

    .line 782
    move-object v4, v3

    .line 783
    move-object v3, v5

    .line 784
    move-object/from16 v5, p3

    .line 785
    .line 786
    move-object/from16 v6, p4

    .line 787
    .line 788
    move-object/from16 v7, v19

    .line 789
    .line 790
    invoke-virtual/range {v1 .. v7}, Lkm8;->g(Lib;Lgy5;Lqn5;Lyf1;Lqn5;Lvk9;)Lib;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    goto :goto_15

    .line 795
    :cond_24
    move-object v1, v2

    .line 796
    goto/16 :goto_a

    .line 797
    .line 798
    :cond_25
    move-object/from16 v19, v7

    .line 799
    .line 800
    if-ne v4, v12, :cond_26

    .line 801
    .line 802
    const/4 v14, 0x1

    .line 803
    goto :goto_16

    .line 804
    :cond_26
    const/4 v14, 0x0

    .line 805
    :goto_16
    invoke-static {v14}, Lzm5;->s(Z)V

    .line 806
    .line 807
    .line 808
    iget-boolean v3, v3, Leu5;->c:Z

    .line 809
    .line 810
    if-nez v3, :cond_28

    .line 811
    .line 812
    iget-object v3, v8, Lib;->c:Ljava/lang/Object;

    .line 813
    .line 814
    check-cast v3, Lgz0;

    .line 815
    .line 816
    iget-boolean v3, v3, Lgz0;->c:Z

    .line 817
    .line 818
    if-eqz v3, :cond_27

    .line 819
    .line 820
    goto :goto_17

    .line 821
    :cond_27
    const/4 v7, 0x0

    .line 822
    goto :goto_18

    .line 823
    :cond_28
    :goto_17
    const/4 v7, 0x1

    .line 824
    :goto_18
    iget-object v3, v2, Lgu2;->c:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v3, Lgy5;

    .line 827
    .line 828
    iget-object v4, v2, Lbd5;->d:Lnp1;

    .line 829
    .line 830
    move-object/from16 v5, p3

    .line 831
    .line 832
    move-object/from16 v6, p4

    .line 833
    .line 834
    move-object v2, v8

    .line 835
    move-object/from16 v8, v19

    .line 836
    .line 837
    invoke-virtual/range {v1 .. v8}, Lkm8;->e(Lib;Lgy5;Lnp1;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    goto :goto_1c

    .line 842
    :cond_29
    move-object v1, v6

    .line 843
    move-object v2, v7

    .line 844
    move-object/from16 v3, p2

    .line 845
    .line 846
    check-cast v3, Ljv5;

    .line 847
    .line 848
    iget-object v4, v3, Lgu2;->b:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v4, Leu5;

    .line 851
    .line 852
    iget v5, v4, Leu5;->a:I

    .line 853
    .line 854
    const/4 v6, 0x1

    .line 855
    if-ne v5, v6, :cond_2a

    .line 856
    .line 857
    iget-object v4, v3, Lgu2;->c:Ljava/lang/Object;

    .line 858
    .line 859
    check-cast v4, Lgy5;

    .line 860
    .line 861
    move-object v5, v4

    .line 862
    iget-object v4, v3, Ljv5;->d:Lqn5;

    .line 863
    .line 864
    move-object/from16 v6, p4

    .line 865
    .line 866
    move-object v3, v5

    .line 867
    move-object v7, v8

    .line 868
    move-object/from16 v5, p3

    .line 869
    .line 870
    invoke-virtual/range {v1 .. v7}, Lkm8;->g(Lib;Lgy5;Lqn5;Lyf1;Lqn5;Lvk9;)Lib;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    goto :goto_1c

    .line 875
    :cond_2a
    if-ne v5, v12, :cond_2b

    .line 876
    .line 877
    const/4 v14, 0x1

    .line 878
    goto :goto_19

    .line 879
    :cond_2b
    const/4 v14, 0x0

    .line 880
    :goto_19
    invoke-static {v14}, Lzm5;->s(Z)V

    .line 881
    .line 882
    .line 883
    iget-boolean v4, v4, Leu5;->c:Z

    .line 884
    .line 885
    if-nez v4, :cond_2d

    .line 886
    .line 887
    iget-object v4, v2, Lib;->c:Ljava/lang/Object;

    .line 888
    .line 889
    check-cast v4, Lgz0;

    .line 890
    .line 891
    iget-boolean v4, v4, Lgz0;->c:Z

    .line 892
    .line 893
    if-eqz v4, :cond_2c

    .line 894
    .line 895
    iget-object v4, v3, Lgu2;->c:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v4, Lgy5;

    .line 898
    .line 899
    invoke-virtual {v4}, Lgy5;->isEmpty()Z

    .line 900
    .line 901
    .line 902
    move-result v4

    .line 903
    if-nez v4, :cond_2c

    .line 904
    .line 905
    goto :goto_1a

    .line 906
    :cond_2c
    const/4 v7, 0x0

    .line 907
    goto :goto_1b

    .line 908
    :cond_2d
    :goto_1a
    const/4 v7, 0x1

    .line 909
    :goto_1b
    iget-object v4, v3, Lgu2;->c:Ljava/lang/Object;

    .line 910
    .line 911
    check-cast v4, Lgy5;

    .line 912
    .line 913
    iget-object v3, v3, Ljv5;->d:Lqn5;

    .line 914
    .line 915
    move-object v5, v4

    .line 916
    move-object v4, v3

    .line 917
    move-object v3, v5

    .line 918
    move-object/from16 v5, p3

    .line 919
    .line 920
    move-object/from16 v6, p4

    .line 921
    .line 922
    invoke-virtual/range {v1 .. v8}, Lkm8;->f(Lib;Lgy5;Lqn5;Lyf1;Lqn5;ZLvk9;)Lib;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    :goto_1c
    new-instance v3, Ljava/util/ArrayList;

    .line 927
    .line 928
    new-instance v4, Ljava/util/ArrayList;

    .line 929
    .line 930
    iget-object v5, v8, Lvk9;->b:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v5, Ljava/util/HashMap;

    .line 933
    .line 934
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 939
    .line 940
    .line 941
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 942
    .line 943
    .line 944
    iget-object v4, v1, Lib;->b:Ljava/lang/Object;

    .line 945
    .line 946
    check-cast v4, Lgz0;

    .line 947
    .line 948
    iget-boolean v5, v4, Lgz0;->b:Z

    .line 949
    .line 950
    iget-object v4, v4, Lgz0;->a:Lsb4;

    .line 951
    .line 952
    if-eqz v5, :cond_32

    .line 953
    .line 954
    iget-object v5, v4, Lsb4;->a:Lqn5;

    .line 955
    .line 956
    invoke-interface {v5}, Lqn5;->Z()Z

    .line 957
    .line 958
    .line 959
    move-result v6

    .line 960
    if-nez v6, :cond_2f

    .line 961
    .line 962
    invoke-interface {v5}, Lqn5;->isEmpty()Z

    .line 963
    .line 964
    .line 965
    move-result v6

    .line 966
    if-eqz v6, :cond_2e

    .line 967
    .line 968
    goto :goto_1d

    .line 969
    :cond_2e
    const/4 v14, 0x0

    .line 970
    goto :goto_1e

    .line 971
    :cond_2f
    :goto_1d
    const/4 v14, 0x1

    .line 972
    :goto_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 973
    .line 974
    .line 975
    move-result v6

    .line 976
    if-eqz v6, :cond_31

    .line 977
    .line 978
    iget-object v6, v2, Lib;->b:Ljava/lang/Object;

    .line 979
    .line 980
    check-cast v6, Lgz0;

    .line 981
    .line 982
    iget-boolean v6, v6, Lgz0;->b:Z

    .line 983
    .line 984
    if-eqz v6, :cond_31

    .line 985
    .line 986
    if-eqz v14, :cond_30

    .line 987
    .line 988
    invoke-virtual {v2}, Lib;->f()Lqn5;

    .line 989
    .line 990
    .line 991
    move-result-object v6

    .line 992
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-result v6

    .line 996
    if-eqz v6, :cond_31

    .line 997
    .line 998
    :cond_30
    invoke-interface {v5}, Lqn5;->n()Lqn5;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    invoke-virtual {v2}, Lib;->f()Lqn5;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v6

    .line 1006
    invoke-interface {v6}, Lqn5;->n()Lqn5;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v6

    .line 1010
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v5

    .line 1014
    if-nez v5, :cond_32

    .line 1015
    .line 1016
    :cond_31
    new-instance v20, Lk31;

    .line 1017
    .line 1018
    const/16 v24, 0x0

    .line 1019
    .line 1020
    const/16 v25, 0x0

    .line 1021
    .line 1022
    const/16 v21, 0x5

    .line 1023
    .line 1024
    const/16 v23, 0x0

    .line 1025
    .line 1026
    move-object/from16 v22, v4

    .line 1027
    .line 1028
    invoke-direct/range {v20 .. v25}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 1029
    .line 1030
    .line 1031
    move-object/from16 v4, v20

    .line 1032
    .line 1033
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    :cond_32
    iget-object v4, v1, Lib;->c:Ljava/lang/Object;

    .line 1037
    .line 1038
    check-cast v4, Lgz0;

    .line 1039
    .line 1040
    iget-boolean v4, v4, Lgz0;->b:Z

    .line 1041
    .line 1042
    if-nez v4, :cond_34

    .line 1043
    .line 1044
    iget-object v2, v2, Lib;->c:Ljava/lang/Object;

    .line 1045
    .line 1046
    check-cast v2, Lgz0;

    .line 1047
    .line 1048
    iget-boolean v2, v2, Lgz0;->b:Z

    .line 1049
    .line 1050
    if-nez v2, :cond_33

    .line 1051
    .line 1052
    goto :goto_1f

    .line 1053
    :cond_33
    const/4 v10, 0x0

    .line 1054
    goto :goto_20

    .line 1055
    :cond_34
    :goto_1f
    const/4 v10, 0x1

    .line 1056
    :goto_20
    const-string v2, "Once a server snap is complete, it should never go back"

    .line 1057
    .line 1058
    invoke-static {v2, v10}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 1059
    .line 1060
    .line 1061
    iput-object v1, v0, Lik8;->c:Lib;

    .line 1062
    .line 1063
    iget-object v1, v1, Lib;->b:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast v1, Lgz0;

    .line 1066
    .line 1067
    iget-object v1, v1, Lgz0;->a:Lsb4;

    .line 1068
    .line 1069
    const/4 v2, 0x0

    .line 1070
    invoke-virtual {v0, v3, v1, v2}, Lik8;->a(Ljava/util/ArrayList;Lsb4;Lez2;)Ljava/util/ArrayList;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    iget-object v1, v9, Lqc6;->b:Loc6;

    .line 1075
    .line 1076
    invoke-virtual {v1}, Loc6;->d()Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    if-nez v1, :cond_39

    .line 1081
    .line 1082
    new-instance v1, Ljava/util/HashSet;

    .line 1083
    .line 1084
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1085
    .line 1086
    .line 1087
    new-instance v2, Ljava/util/HashSet;

    .line 1088
    .line 1089
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v3

    .line 1096
    :cond_35
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v4

    .line 1100
    if-eqz v4, :cond_37

    .line 1101
    .line 1102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v4

    .line 1106
    check-cast v4, Lk31;

    .line 1107
    .line 1108
    iget v5, v4, Lk31;->a:I

    .line 1109
    .line 1110
    iget-object v4, v4, Lk31;->d:Lm61;

    .line 1111
    .line 1112
    if-ne v5, v12, :cond_36

    .line 1113
    .line 1114
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    const/4 v6, 0x1

    .line 1118
    goto :goto_21

    .line 1119
    :cond_36
    const/4 v6, 0x1

    .line 1120
    if-ne v5, v6, :cond_35

    .line 1121
    .line 1122
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1123
    .line 1124
    .line 1125
    goto :goto_21

    .line 1126
    :cond_37
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    if-eqz v2, :cond_38

    .line 1131
    .line 1132
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v1

    .line 1136
    if-nez v1, :cond_39

    .line 1137
    .line 1138
    :cond_38
    move-object/from16 v1, p0

    .line 1139
    .line 1140
    iget-object v1, v1, Llu7;->b:Leo5;

    .line 1141
    .line 1142
    invoke-virtual {v1}, Leo5;->c()V

    .line 1143
    .line 1144
    .line 1145
    :cond_39
    return-object v0
.end method

.method public final c(Lgy5;)Lqn5;
    .locals 3

    .line 1
    iget-object p0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lik8;

    .line 23
    .line 24
    iget-object v2, v0, Lik8;->c:Lib;

    .line 25
    .line 26
    invoke-virtual {v2}, Lib;->g()Lqn5;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v0, v0, Lik8;->a:Lqc6;

    .line 33
    .line 34
    iget-object v0, v0, Lqc6;->b:Loc6;

    .line 35
    .line 36
    invoke-virtual {v0}, Loc6;->d()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Lgy5;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lgy5;->k()Lm61;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v2, v0}, Lqn5;->m(Lm61;)Lqn5;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lqn5;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-interface {v2, p1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_2
    if-eqz v1, :cond_0

    .line 67
    .line 68
    :cond_3
    return-object v1
.end method

.method public final d()Lik8;
    .locals 2

    .line 1
    iget-object p0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lik8;

    .line 28
    .line 29
    iget-object v1, v0, Lik8;->a:Lqc6;

    .line 30
    .line 31
    iget-object v1, v1, Lqc6;->b:Loc6;

    .line 32
    .line 33
    invoke-virtual {v1}, Loc6;->d()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lik8;

    .line 33
    .line 34
    iget-object v2, v1, Lik8;->a:Lqc6;

    .line 35
    .line 36
    iget-object v2, v2, Lqc6;->b:Loc6;

    .line 37
    .line 38
    invoke-virtual {v2}, Loc6;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public final f(Lqc6;Lyf1;Lgz0;)Lik8;
    .locals 5

    .line 1
    iget-object p0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v0, p1, Lqc6;->b:Loc6;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lik8;

    .line 10
    .line 11
    if-nez p0, :cond_3

    .line 12
    .line 13
    iget-boolean p0, p3, Lgz0;->b:Z

    .line 14
    .line 15
    iget-object v0, p3, Lgz0;->a:Lsb4;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, v0, Lsb4;->a:Lqn5;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 24
    .line 25
    iget-object v2, p2, Lyf1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lvq;

    .line 28
    .line 29
    iget-object v3, p2, Lyf1;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lgy5;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v3, p0, v1, v4}, Lvq;->j(Lgy5;Lqn5;Ljava/util/List;Z)Lqn5;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object p0, v0, Lsb4;->a:Lqn5;

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget-object p0, Lqv2;->e:Lqv2;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p2, p0}, Lyf1;->m(Lqn5;)Lqn5;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    move p2, v4

    .line 54
    :goto_2
    iget-object v0, p1, Lqc6;->b:Loc6;

    .line 55
    .line 56
    iget-object v0, v0, Loc6;->e:Lnb4;

    .line 57
    .line 58
    new-instance v1, Lsb4;

    .line 59
    .line 60
    invoke-direct {v1, p0, v0}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lib;

    .line 64
    .line 65
    new-instance v0, Lgz0;

    .line 66
    .line 67
    invoke-direct {v0, v1, p2, v4}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 68
    .line 69
    .line 70
    const/16 p2, 0xe

    .line 71
    .line 72
    invoke-direct {p0, p2, v0, p3}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lik8;

    .line 76
    .line 77
    invoke-direct {p2, p1, p0}, Lik8;-><init>(Lqc6;Lib;)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :cond_3
    return-object p0
.end method

.method public final g()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Llu7;->d()Lik8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final h(Lqc6;)Lik8;
    .locals 1

    .line 1
    iget-object v0, p1, Lqc6;->b:Loc6;

    .line 2
    .line 3
    invoke-virtual {v0}, Loc6;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Llu7;->d()Lik8;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Llu7;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object p1, p1, Lqc6;->b:Loc6;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lik8;

    .line 23
    .line 24
    return-object p0
.end method
