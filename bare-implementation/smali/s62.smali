.class public final Ls62;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Constructor;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Ls62;->a:Ljava/lang/Class;

    .line 9
    .line 10
    const-class v2, Lx28;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput-boolean v2, v0, Ls62;->c:Z

    .line 17
    .line 18
    const-class v2, Lq94;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x1

    .line 25
    xor-int/2addr v2, v3

    .line 26
    iput-boolean v2, v0, Ls62;->d:Z

    .line 27
    .line 28
    new-instance v2, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v2, v0, Ls62;->e:Ljava/util/HashMap;

    .line 34
    .line 35
    new-instance v2, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Ls62;->g:Ljava/util/HashMap;

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, v0, Ls62;->f:Ljava/util/HashMap;

    .line 48
    .line 49
    new-instance v2, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v2, v0, Ls62;->h:Ljava/util/HashMap;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-object v4, v2

    .line 66
    :goto_0
    iput-object v4, v0, Ls62;->b:Ljava/lang/reflect/Constructor;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    array-length v5, v4

    .line 73
    const/4 v6, 0x0

    .line 74
    move v7, v6

    .line 75
    :goto_1
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 76
    .line 77
    const-class v9, Ljz2;

    .line 78
    .line 79
    const-class v10, Ljava/lang/Object;

    .line 80
    .line 81
    if-ge v7, v5, :cond_9

    .line 82
    .line 83
    aget-object v11, v4, v7

    .line 84
    .line 85
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    const-string v13, "get"

    .line 90
    .line 91
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    if-nez v12, :cond_0

    .line 96
    .line 97
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    const-string v13, "is"

    .line 102
    .line 103
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-nez v12, :cond_0

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    if-eqz v10, :cond_1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-eqz v10, :cond_3

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_4

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    array-length v8, v8

    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->isBridge()Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    invoke-virtual {v11, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_7

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_7
    invoke-static {v11}, Ls62;->e(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v0, v8}, Ls62;->a(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 184
    .line 185
    .line 186
    iget-object v9, v0, Ls62;->f:Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-nez v9, :cond_8

    .line 193
    .line 194
    iget-object v9, v0, Ls62;->f:Ljava/util/HashMap;

    .line 195
    .line 196
    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_8
    const-string v0, "Found conflicting getters for name: "

    .line 203
    .line 204
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-static {v1, v0}, Le6;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v2

    .line 212
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    array-length v5, v4

    .line 217
    move v7, v6

    .line 218
    :goto_3
    if-ge v7, v5, :cond_10

    .line 219
    .line 220
    aget-object v11, v4, v7

    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    if-eqz v12, :cond_a

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_a
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 238
    .line 239
    .line 240
    move-result v12

    .line 241
    if-nez v12, :cond_b

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_b
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-eqz v12, :cond_c

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_c
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    if-eqz v12, :cond_d

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_d
    invoke-virtual {v11, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_e

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_e
    invoke-static {v11}, Ls62;->b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    if-eqz v12, :cond_f

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_f
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    :goto_4
    invoke-virtual {v0, v12}, Ls62;->a(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_10
    new-instance v4, Ljava/util/HashMap;

    .line 291
    .line 292
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 293
    .line 294
    .line 295
    move-object v5, v1

    .line 296
    :goto_6
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    array-length v11, v7

    .line 301
    move v12, v6

    .line 302
    :goto_7
    if-ge v12, v11, :cond_1c

    .line 303
    .line 304
    aget-object v13, v7, v12

    .line 305
    .line 306
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    const-string v15, "set"

    .line 311
    .line 312
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    if-nez v14, :cond_11

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_11
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    invoke-virtual {v14, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v14

    .line 327
    if-eqz v14, :cond_12

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_12
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    if-eqz v14, :cond_13

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_13
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    move-result-object v14

    .line 345
    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    if-nez v14, :cond_14

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_14
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    array-length v14, v14

    .line 357
    if-eq v14, v3, :cond_15

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_15
    invoke-virtual {v13, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 361
    .line 362
    .line 363
    move-result v14

    .line 364
    if-eqz v14, :cond_16

    .line 365
    .line 366
    :goto_8
    move-object/from16 v16, v2

    .line 367
    .line 368
    goto/16 :goto_9

    .line 369
    .line 370
    :cond_16
    invoke-static {v13}, Ls62;->e(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v14

    .line 374
    iget-object v15, v0, Ls62;->e:Ljava/util/HashMap;

    .line 375
    .line 376
    move-object/from16 v16, v2

    .line 377
    .line 378
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 379
    .line 380
    invoke-virtual {v14, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Ljava/lang/String;

    .line 389
    .line 390
    if-eqz v2, :cond_1b

    .line 391
    .line 392
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eqz v2, :cond_1a

    .line 397
    .line 398
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->isBridge()Z

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-eqz v2, :cond_17

    .line 403
    .line 404
    invoke-virtual {v4, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_17
    iget-object v2, v0, Ls62;->g:Ljava/util/HashMap;

    .line 409
    .line 410
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/lang/reflect/Method;

    .line 415
    .line 416
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v15

    .line 420
    check-cast v15, Ljava/lang/reflect/Method;

    .line 421
    .line 422
    if-nez v2, :cond_18

    .line 423
    .line 424
    invoke-virtual {v13, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 425
    .line 426
    .line 427
    iget-object v2, v0, Ls62;->g:Ljava/util/HashMap;

    .line 428
    .line 429
    invoke-virtual {v2, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_18
    invoke-static {v13, v2}, Ls62;->d(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    if-nez v14, :cond_1b

    .line 438
    .line 439
    if-eqz v15, :cond_19

    .line 440
    .line 441
    invoke-static {v13, v15}, Ls62;->d(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    if-eqz v14, :cond_19

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_19
    new-instance v0, Lxc2;

    .line 449
    .line 450
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v5, "Found a conflicting setters with name: "

    .line 469
    .line 470
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v1, " (conflicts with "

    .line 477
    .line 478
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v1, " defined on "

    .line 485
    .line 486
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v1, ")"

    .line 493
    .line 494
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :cond_1a
    const-string v0, "Found setter with invalid case-sensitive name: "

    .line 506
    .line 507
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-static {v1, v0}, Le6;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v16

    .line 515
    :cond_1b
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 516
    .line 517
    move-object/from16 v2, v16

    .line 518
    .line 519
    goto/16 :goto_7

    .line 520
    .line 521
    :cond_1c
    move-object/from16 v16, v2

    .line 522
    .line 523
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    array-length v7, v2

    .line 528
    move v11, v6

    .line 529
    :goto_a
    if-ge v11, v7, :cond_1f

    .line 530
    .line 531
    aget-object v12, v2, v11

    .line 532
    .line 533
    invoke-static {v12}, Ls62;->b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v13

    .line 537
    if-eqz v13, :cond_1d

    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v13

    .line 544
    :goto_b
    iget-object v14, v0, Ls62;->e:Ljava/util/HashMap;

    .line 545
    .line 546
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 547
    .line 548
    invoke-virtual {v13, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v15

    .line 552
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v14

    .line 556
    if-eqz v14, :cond_1e

    .line 557
    .line 558
    iget-object v14, v0, Ls62;->h:Ljava/util/HashMap;

    .line 559
    .line 560
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v14

    .line 564
    if-nez v14, :cond_1e

    .line 565
    .line 566
    invoke-virtual {v12, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 567
    .line 568
    .line 569
    iget-object v14, v0, Ls62;->h:Ljava/util/HashMap;

    .line 570
    .line 571
    invoke-virtual {v14, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_1f
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    if-eqz v5, :cond_21

    .line 582
    .line 583
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_20

    .line 588
    .line 589
    goto :goto_c

    .line 590
    :cond_20
    move-object/from16 v2, v16

    .line 591
    .line 592
    goto/16 :goto_6

    .line 593
    .line 594
    :cond_21
    :goto_c
    iget-object v0, v0, Ls62;->e:Ljava/util/HashMap;

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-nez v0, :cond_22

    .line 601
    .line 602
    return-void

    .line 603
    :cond_22
    new-instance v0, Lxc2;

    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    const-string v2, "No properties to serialize found on class "

    .line 610
    .line 611
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0
.end method

.method public static b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Ly86;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ly86;

    .line 14
    .line 15
    invoke-interface {p0}, Ly86;->value()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public static d(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "Expected override from a base class"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v2, "Expected void return type"

    .line 29
    .line 30
    invoke-static {v2, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v2, v0}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v2, v0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    if-ne v2, v4, :cond_0

    .line 56
    .line 57
    move v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v2, v3

    .line 60
    :goto_0
    const-string v5, "Expected exactly one parameter"

    .line 61
    .line 62
    invoke-static {v5, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    array-length v2, v1

    .line 66
    if-ne v2, v4, :cond_1

    .line 67
    .line 68
    move v2, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v2, v3

    .line 71
    :goto_1
    invoke-static {v5, v2}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    aget-object p0, v0, v3

    .line 89
    .line 90
    aget-object p1, v1, v3

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    return v4

    .line 99
    :cond_2
    return v3
.end method

.method public static e(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Ls62;->b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "set"

    .line 13
    .line 14
    const-string v1, "is"

    .line 15
    .line 16
    const-string v2, "get"

    .line 17
    .line 18
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    move-object v4, v1

    .line 25
    move v3, v2

    .line 26
    :goto_0
    const/4 v5, 0x3

    .line 27
    if-ge v3, v5, :cond_2

    .line 28
    .line 29
    aget-object v5, v0, v3

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    move-object v4, v5

    .line 38
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    if-eqz v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :goto_1
    array-length v0, p0

    .line 56
    if-ge v2, v0, :cond_3

    .line 57
    .line 58
    aget-char v0, p0, v2

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    aget-char v0, p0, v2

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    aput-char v0, p0, v2

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_4
    const-string v0, "Unknown Bean prefix for method: "

    .line 84
    .line 85
    invoke-static {v0, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v1
.end method

.method public static f(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/reflect/Type;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p1, "Could not resolve type "

    .line 15
    .line 16
    invoke-static {p0, p1}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Ls62;->e:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "Found two getters or fields with conflicting case sensitivity for property: "

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1, p0}, Le6;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ls62;->a:Ljava/lang/Class;

    .line 3
    .line 4
    iget-object v2, p0, Ls62;->b:Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    if-eqz v2, :cond_7

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Ls62;->g:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/lang/reflect/Method;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    array-length v6, v5

    .line 57
    const/4 v7, 0x1

    .line 58
    if-ne v6, v7, :cond_1

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    aget-object v5, v5, v6

    .line 62
    .line 63
    invoke-static {v5, p2}, Ls62;->f(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3, v5}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :try_start_1
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :goto_1
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :goto_2
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_1
    const-string p0, "Setter does not have exactly one parameter"

    .line 96
    .line 97
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_2
    iget-object v5, p0, Ls62;->h:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/reflect/Field;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5, p2}, Ls62;->f(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3, v5}, Lt62;->c(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    :try_start_2
    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_2
    move-exception p0

    .line 136
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    return-object v0

    .line 140
    :cond_3
    const-string v3, "No setter/field for "

    .line 141
    .line 142
    const-string v5, " found on class "

    .line 143
    .line 144
    invoke-static {v3, v4, v5}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v5, p0, Ls62;->e:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_4

    .line 172
    .line 173
    const-string v4, " (fields/setters are case sensitive!)"

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :cond_4
    iget-boolean v4, p0, Ls62;->c:Z

    .line 180
    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    iget-boolean v4, p0, Ls62;->d:Z

    .line 184
    .line 185
    if-eqz v4, :cond_0

    .line 186
    .line 187
    const-string v4, "ClassMapper"

    .line 188
    .line 189
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_5
    new-instance p0, Lxc2;

    .line 195
    .line 196
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_6
    return-object v2

    .line 201
    :catch_3
    move-exception p0

    .line 202
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    return-object v0

    .line 206
    :catch_4
    move-exception p0

    .line 207
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    return-object v0

    .line 211
    :catch_5
    move-exception p0

    .line 212
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    return-object v0

    .line 216
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    const-string p1, " does not define a no-argument constructor. If you are using ProGuard, make sure these constructors are not stripped."

    .line 221
    .line 222
    const-string p2, "Class "

    .line 223
    .line 224
    invoke-static {p0, p1, p2}, Lf6;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    return-object v0
.end method
