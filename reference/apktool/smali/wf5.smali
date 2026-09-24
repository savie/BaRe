.class public final Lwf5;
.super Lbu1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lzq8;

.field public final b:Lvf5;

.field public final c:Lvf5;


# direct methods
.method public constructor <init>(Lri2;Lx44;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lzq8;

    .line 11
    .line 12
    invoke-direct {v3, v1, v2}, Lzq8;-><init>(Lri2;Lx44;)V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lwf5;->a:Lzq8;

    .line 16
    .line 17
    new-instance v4, Lvf5;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v4, v0, Lwf5;->b:Lvf5;

    .line 23
    .line 24
    new-instance v5, Lvf5;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v5, v0, Lwf5;->c:Lvf5;

    .line 30
    .line 31
    invoke-interface {v1}, Lri2;->d()Leg2;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-interface {v1}, Lri2;->i()Leg2;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-interface {v1}, Lri2;->j()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    if-eqz v8, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, v8, v6}, Lx44;->c(Ljava/lang/Class;Leg2;)Lbu1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lau1;

    .line 64
    .line 65
    check-cast v6, Lqf5;

    .line 66
    .line 67
    iget-object v8, v6, Lqf5;->c:Luf5;

    .line 68
    .line 69
    iget-object v6, v6, Lqf5;->b:Luf5;

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    invoke-interface {v6}, Luf5;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v4, v9}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    check-cast v10, Luf5;

    .line 82
    .line 83
    if-eqz v10, :cond_0

    .line 84
    .line 85
    invoke-interface {v6}, Luf5;->c()Ljava/lang/annotation/Annotation;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    instance-of v11, v11, Lq08;

    .line 90
    .line 91
    if-eqz v11, :cond_0

    .line 92
    .line 93
    move-object v6, v10

    .line 94
    :cond_0
    invoke-virtual {v4, v9, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-interface {v8}, Luf5;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Luf5;

    .line 106
    .line 107
    if-eqz v9, :cond_2

    .line 108
    .line 109
    invoke-interface {v8}, Luf5;->c()Ljava/lang/annotation/Annotation;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    instance-of v10, v10, Lq08;

    .line 114
    .line 115
    if-eqz v10, :cond_2

    .line 116
    .line 117
    move-object v8, v9

    .line 118
    :cond_2
    invoke-virtual {v5, v6, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-interface {v1}, Lri2;->k()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    sget-object v6, Leg2;->b:Leg2;

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v9, 0x3

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v11, 0x1

    .line 132
    const/4 v12, 0x2

    .line 133
    if-ne v7, v6, :cond_12

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_12

    .line 144
    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Lrf5;

    .line 150
    .line 151
    iget-object v7, v6, Lrf5;->a:[Ljava/lang/annotation/Annotation;

    .line 152
    .line 153
    iget-object v6, v6, Lrf5;->b:Ljava/lang/reflect/Method;

    .line 154
    .line 155
    invoke-static {v6}, Lzq8;->x(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    if-eqz v13, :cond_4

    .line 160
    .line 161
    invoke-static {v6}, Lzq8;->v(Ljava/lang/reflect/Method;)I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-ne v13, v9, :cond_7

    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    array-length v14, v13

    .line 172
    if-lez v14, :cond_5

    .line 173
    .line 174
    aget-object v13, v13, v8

    .line 175
    .line 176
    instance-of v14, v13, Ljava/lang/reflect/ParameterizedType;

    .line 177
    .line 178
    if-eqz v14, :cond_5

    .line 179
    .line 180
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    move-object v13, v10

    .line 184
    :goto_2
    if-eqz v13, :cond_6

    .line 185
    .line 186
    invoke-static {v13}, Lz85;->l(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    goto :goto_5

    .line 191
    :cond_6
    new-array v13, v8, [Ljava/lang/Class;

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    if-ne v13, v11, :cond_a

    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    instance-of v14, v13, Ljava/lang/reflect/ParameterizedType;

    .line 201
    .line 202
    if-eqz v14, :cond_8

    .line 203
    .line 204
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    move-object v13, v10

    .line 208
    :goto_3
    if-eqz v13, :cond_9

    .line 209
    .line 210
    invoke-static {v13}, Lz85;->l(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v13

    .line 214
    goto :goto_5

    .line 215
    :cond_9
    new-array v13, v8, [Ljava/lang/Class;

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_a
    if-ne v13, v12, :cond_d

    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 221
    .line 222
    .line 223
    move-result-object v13

    .line 224
    instance-of v14, v13, Ljava/lang/reflect/ParameterizedType;

    .line 225
    .line 226
    if-eqz v14, :cond_b

    .line 227
    .line 228
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_b
    move-object v13, v10

    .line 232
    :goto_4
    if-eqz v13, :cond_c

    .line 233
    .line 234
    invoke-static {v13}, Lz85;->l(Ljava/lang/reflect/ParameterizedType;)[Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    goto :goto_5

    .line 239
    :cond_c
    new-array v13, v8, [Ljava/lang/Class;

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_d
    move-object v13, v10

    .line 243
    :goto_5
    invoke-static {v6}, Lzq8;->x(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    if-eqz v14, :cond_e

    .line 248
    .line 249
    iget-object v15, v3, Lzq8;->b:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v15, Lbe;

    .line 252
    .line 253
    invoke-virtual {v15, v14, v13}, Lbe;->b(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 254
    .line 255
    .line 256
    move-result-object v13

    .line 257
    goto :goto_6

    .line 258
    :cond_e
    move-object v13, v10

    .line 259
    :goto_6
    if-eqz v13, :cond_f

    .line 260
    .line 261
    invoke-static {v6, v13, v7}, Lzq8;->u(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Luf5;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    goto :goto_7

    .line 266
    :cond_f
    move-object v6, v10

    .line 267
    :goto_7
    invoke-interface {v6}, Luf5;->getMethodType()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-ne v7, v11, :cond_10

    .line 272
    .line 273
    invoke-interface {v6}, Luf5;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v13

    .line 277
    if-eqz v13, :cond_10

    .line 278
    .line 279
    invoke-virtual {v5, v13, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_10
    if-ne v7, v12, :cond_11

    .line 283
    .line 284
    invoke-interface {v6}, Luf5;->getName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v13

    .line 288
    if-eqz v13, :cond_11

    .line 289
    .line 290
    invoke-virtual {v5, v13, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    :cond_11
    if-ne v7, v9, :cond_4

    .line 294
    .line 295
    invoke-interface {v6}, Luf5;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    if-eqz v7, :cond_4

    .line 300
    .line 301
    invoke-virtual {v4, v7, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_12
    invoke-interface {v1}, Lri2;->k()Ljava/util/List;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v3, :cond_21

    .line 319
    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Lrf5;

    .line 325
    .line 326
    iget-object v6, v3, Lrf5;->a:[Ljava/lang/annotation/Annotation;

    .line 327
    .line 328
    iget-object v3, v3, Lrf5;->b:Ljava/lang/reflect/Method;

    .line 329
    .line 330
    array-length v7, v6

    .line 331
    move v13, v8

    .line 332
    :goto_8
    if-ge v13, v7, :cond_13

    .line 333
    .line 334
    aget-object v14, v6, v13

    .line 335
    .line 336
    instance-of v15, v14, Lu70;

    .line 337
    .line 338
    if-eqz v15, :cond_14

    .line 339
    .line 340
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 341
    .line 342
    .line 343
    :cond_14
    instance-of v15, v14, Lut2;

    .line 344
    .line 345
    if-eqz v15, :cond_15

    .line 346
    .line 347
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 348
    .line 349
    .line 350
    :cond_15
    instance-of v15, v14, Ljt2;

    .line 351
    .line 352
    if-eqz v15, :cond_16

    .line 353
    .line 354
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 355
    .line 356
    .line 357
    :cond_16
    instance-of v15, v14, Lpt2;

    .line 358
    .line 359
    if-eqz v15, :cond_17

    .line 360
    .line 361
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 362
    .line 363
    .line 364
    :cond_17
    instance-of v15, v14, Lgt2;

    .line 365
    .line 366
    if-eqz v15, :cond_18

    .line 367
    .line 368
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 369
    .line 370
    .line 371
    :cond_18
    instance-of v15, v14, Lct2;

    .line 372
    .line 373
    if-eqz v15, :cond_19

    .line 374
    .line 375
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 376
    .line 377
    .line 378
    :cond_19
    instance-of v15, v14, Lmt2;

    .line 379
    .line 380
    if-eqz v15, :cond_1a

    .line 381
    .line 382
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 383
    .line 384
    .line 385
    :cond_1a
    instance-of v15, v14, Lat2;

    .line 386
    .line 387
    if-eqz v15, :cond_1b

    .line 388
    .line 389
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 390
    .line 391
    .line 392
    :cond_1b
    instance-of v15, v14, Lvj8;

    .line 393
    .line 394
    if-eqz v15, :cond_1c

    .line 395
    .line 396
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 397
    .line 398
    .line 399
    :cond_1c
    instance-of v15, v14, Lq08;

    .line 400
    .line 401
    if-eqz v15, :cond_1d

    .line 402
    .line 403
    invoke-virtual {v0, v3, v14, v6}, Lwf5;->c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 404
    .line 405
    .line 406
    :cond_1d
    instance-of v15, v14, Lr98;

    .line 407
    .line 408
    if-eqz v15, :cond_20

    .line 409
    .line 410
    invoke-static {v3, v14, v6}, Lzq8;->u(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Luf5;

    .line 411
    .line 412
    .line 413
    move-result-object v14

    .line 414
    invoke-interface {v14}, Luf5;->getMethodType()I

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    if-ne v15, v11, :cond_1e

    .line 419
    .line 420
    invoke-interface {v14}, Luf5;->getName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v8

    .line 424
    if-eqz v8, :cond_1e

    .line 425
    .line 426
    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    :cond_1e
    if-ne v15, v12, :cond_1f

    .line 430
    .line 431
    invoke-interface {v14}, Luf5;->getName()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    if-eqz v8, :cond_1f

    .line 436
    .line 437
    invoke-virtual {v5, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    :cond_1f
    if-ne v15, v9, :cond_20

    .line 441
    .line 442
    invoke-interface {v14}, Luf5;->getName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v8

    .line 446
    if-eqz v8, :cond_20

    .line 447
    .line 448
    invoke-virtual {v4, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    :cond_20
    add-int/lit8 v13, v13, 0x1

    .line 452
    .line 453
    const/4 v8, 0x0

    .line 454
    goto :goto_8

    .line 455
    :cond_21
    invoke-virtual {v5}, Lvf5;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    :cond_22
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_26

    .line 464
    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    check-cast v3, Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v5, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    check-cast v6, Luf5;

    .line 476
    .line 477
    if-eqz v6, :cond_22

    .line 478
    .line 479
    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    check-cast v3, Luf5;

    .line 484
    .line 485
    if-eqz v3, :cond_25

    .line 486
    .line 487
    invoke-interface {v6}, Luf5;->c()Ljava/lang/annotation/Annotation;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    invoke-interface {v6}, Luf5;->getName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v8

    .line 495
    invoke-interface {v3}, Luf5;->c()Ljava/lang/annotation/Annotation;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    if-eqz v7, :cond_24

    .line 504
    .line 505
    invoke-interface {v6}, Luf5;->getType()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    invoke-interface {v3}, Luf5;->getType()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    if-ne v7, v9, :cond_23

    .line 514
    .line 515
    new-instance v7, Lqf5;

    .line 516
    .line 517
    invoke-direct {v7, v6, v3}, Lqf5;-><init>(Luf5;Luf5;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_23
    new-instance v0, Lsf5;

    .line 525
    .line 526
    const-string v1, "Method types do not match for %s in %s"

    .line 527
    .line 528
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-direct {v0, v1, v2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :cond_24
    new-instance v0, Lsf5;

    .line 537
    .line 538
    const-string v2, "Annotations do not match for \'%s\' in %s"

    .line 539
    .line 540
    filled-new-array {v8, v1}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-direct {v0, v2, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    throw v0

    .line 548
    :cond_25
    new-instance v3, Lqf5;

    .line 549
    .line 550
    invoke-direct {v3, v6, v10}, Lqf5;-><init>(Luf5;Luf5;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_26
    invoke-virtual {v4}, Lvf5;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    :cond_27
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_29

    .line 566
    .line 567
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    check-cast v2, Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v4, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    check-cast v3, Luf5;

    .line 578
    .line 579
    if-eqz v3, :cond_27

    .line 580
    .line 581
    invoke-virtual {v5, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Luf5;

    .line 586
    .line 587
    invoke-interface {v3}, Luf5;->getMethod()Ljava/lang/reflect/Method;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    if-eqz v2, :cond_28

    .line 592
    .line 593
    goto :goto_a

    .line 594
    :cond_28
    new-instance v0, Lsf5;

    .line 595
    .line 596
    const-string v2, "No matching get method for %s in %s"

    .line 597
    .line 598
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-direct {v0, v2, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    throw v0

    .line 606
    :cond_29
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwf5;->a:Lzq8;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p3}, Lzq8;->u(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Luf5;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Luf5;->getMethodType()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 p3, 0x1

    .line 15
    iget-object v0, p0, Lwf5;->c:Lvf5;

    .line 16
    .line 17
    if-ne p2, p3, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Luf5;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p3, 0x2

    .line 29
    if-ne p2, p3, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Luf5;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 p3, 0x3

    .line 41
    if-ne p2, p3, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Luf5;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lwf5;->b:Lvf5;

    .line 50
    .line 51
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method
