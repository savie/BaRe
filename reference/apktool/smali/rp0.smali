.class public final Lrp0;
.super Lep0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q:Lrp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrp0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrp0;->q:Lrp0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final V(Lc87;Llp0;Lw86;ZLod;)Lmp0;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v2, p3

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-virtual {v4}, Ljb9;->D()Lgc8;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v5, Ljp0;

    .line 16
    .line 17
    invoke-virtual {v3}, Llp0;->p()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Llp0;->i()Lx86;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-direct {v5, v6, v4, v7}, Ljp0;-><init>(Lgc8;Lod;Lx86;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v4}, Lep0;->U(Lc87;Ljb9;)Lem4;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v8, v1, Lc87;->a:Lv77;

    .line 32
    .line 33
    instance-of v9, v7, Lop0;

    .line 34
    .line 35
    if-eqz v9, :cond_0

    .line 36
    .line 37
    move-object v9, v7

    .line 38
    check-cast v9, Lop0;

    .line 39
    .line 40
    invoke-virtual {v9, v1}, Lop0;->t(Lc87;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1, v7, v5}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6}, Lgc8;->x0()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v6}, Lho6;->C()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v5, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lgc8;->o0()Lgc8;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v8}, Ls65;->d()Las5;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-virtual {v10, v8, v4, v6}, Las5;->t(Ls65;Lod;Lgc8;)Lvn7;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    if-nez v10, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0, v8, v5}, Lep0;->h(Lv77;Lgc8;)Lsc8;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v11, v8, Lt65;->d:Lun7;

    .line 82
    .line 83
    invoke-virtual {v11, v8, v4, v5}, Lun7;->K(Ls65;Lod;Lgc8;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v10, v8, v5, v11}, Lvn7;->a(Lv77;Lgc8;Ljava/util/ArrayList;)Lsc8;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :goto_1
    invoke-virtual {v8}, Ls65;->d()Las5;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v10, v8, v4, v6}, Las5;->C(Ls65;Lod;Lgc8;)Lvn7;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    if-nez v10, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0, v8, v6}, Lep0;->h(Lv77;Lgc8;)Lsc8;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, v8, Lt65;->d:Lun7;

    .line 107
    .line 108
    invoke-virtual {v0, v8, v4, v6}, Lun7;->K(Ls65;Lod;Lgc8;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v10, v8, v6, v0}, Lvn7;->a(Lv77;Lgc8;Ljava/util/ArrayList;)Lsc8;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_2
    iget-object v10, v2, Lw86;->d:Ljava/lang/Object;

    .line 117
    .line 118
    move-object v13, v10

    .line 119
    check-cast v13, Las5;

    .line 120
    .line 121
    iget-boolean v10, v2, Lw86;->a:Z

    .line 122
    .line 123
    iget-object v11, v2, Lw86;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v11, Lv77;

    .line 126
    .line 127
    iget-object v12, v2, Lw86;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v12, Lwo0;

    .line 130
    .line 131
    iget-object v14, v12, Lwo0;->c:Ls65;

    .line 132
    .line 133
    iget-object v15, v12, Lwo0;->e:Lhd;

    .line 134
    .line 135
    const/16 v16, 0x0

    .line 136
    .line 137
    move/from16 v9, p4

    .line 138
    .line 139
    :try_start_0
    invoke-virtual {v2, v4, v9, v6}, Lw86;->a(Lod;ZLgc8;)Lgc8;

    .line 140
    .line 141
    .line 142
    move-result-object v9
    :try_end_0
    .catch Lyk4; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    if-eqz v5, :cond_7

    .line 144
    .line 145
    if-nez v9, :cond_5

    .line 146
    .line 147
    move-object v9, v6

    .line 148
    :cond_5
    invoke-virtual {v9}, Lgc8;->o0()Lgc8;

    .line 149
    .line 150
    .line 151
    move-result-object v17

    .line 152
    if-eqz v17, :cond_6

    .line 153
    .line 154
    invoke-virtual {v9, v5}, Lgc8;->E0(Lsc8;)Lgc8;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "serialization type "

    .line 165
    .line 166
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " has no content"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const/4 v2, 0x0

    .line 182
    new-array v2, v2, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v1, v12, v3, v0, v2}, Lc87;->C(Lwo0;Llp0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    throw v16

    .line 188
    :cond_7
    :goto_3
    if-nez v9, :cond_8

    .line 189
    .line 190
    move-object v5, v6

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    move-object v5, v9

    .line 193
    :goto_4
    invoke-virtual {v3}, Llp0;->e()Lod;

    .line 194
    .line 195
    .line 196
    move-result-object v17

    .line 197
    if-eqz v17, :cond_28

    .line 198
    .line 199
    move-object/from16 v18, v0

    .line 200
    .line 201
    invoke-virtual/range {v17 .. v17}, Ljb9;->C()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v3, v5, Lgc8;->f:Ljava/lang/Class;

    .line 206
    .line 207
    move-object/from16 v17, v5

    .line 208
    .line 209
    iget-object v5, v2, Lw86;->f:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v5, Lqk4;

    .line 212
    .line 213
    invoke-virtual {v11, v3}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11, v0}, Lt65;->e(Ljava/lang/Class;)Lcz4;

    .line 217
    .line 218
    .line 219
    move-object/from16 v3, v16

    .line 220
    .line 221
    filled-new-array {v5, v3, v3}, [Lqk4;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sget-object v3, Lqk4;->e:Lqk4;

    .line 226
    .line 227
    move-object/from16 p4, v0

    .line 228
    .line 229
    const/4 v3, 0x0

    .line 230
    const/4 v5, 0x0

    .line 231
    :goto_5
    const/4 v0, 0x3

    .line 232
    if-ge v3, v0, :cond_b

    .line 233
    .line 234
    aget-object v0, p4, v3

    .line 235
    .line 236
    if-eqz v0, :cond_a

    .line 237
    .line 238
    if-nez v5, :cond_9

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_9
    invoke-virtual {v5, v0}, Lqk4;->a(Lqk4;)Lqk4;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    :goto_6
    move-object v5, v0

    .line 246
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_b
    invoke-virtual/range {p2 .. p2}, Llp0;->b()Lqk4;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v5, v3}, Lqk4;->a(Lqk4;)Lqk4;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    iget-object v5, v3, Lqk4;->a:Lpk4;

    .line 258
    .line 259
    sget-object v0, Lpk4;->e:Lpk4;

    .line 260
    .line 261
    if-ne v5, v0, :cond_c

    .line 262
    .line 263
    sget-object v5, Lpk4;->a:Lpk4;

    .line 264
    .line 265
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    sget-object v5, Lpk4;->c:Lpk4;

    .line 270
    .line 271
    move-object/from16 v19, v5

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    if-eq v0, v5, :cond_20

    .line 275
    .line 276
    const/4 v5, 0x2

    .line 277
    if-eq v0, v5, :cond_1e

    .line 278
    .line 279
    const/4 v5, 0x3

    .line 280
    if-eq v0, v5, :cond_1a

    .line 281
    .line 282
    const/4 v5, 0x4

    .line 283
    if-eq v0, v5, :cond_e

    .line 284
    .line 285
    const/4 v2, 0x5

    .line 286
    if-eq v0, v2, :cond_d

    .line 287
    .line 288
    const/4 v0, 0x0

    .line 289
    goto/16 :goto_10

    .line 290
    .line 291
    :cond_d
    iget-object v0, v3, Lqk4;->c:Ljava/lang/Class;

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Lc87;->x(Ljava/lang/Class;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    move-object v11, v0

    .line 298
    const/4 v10, 0x0

    .line 299
    goto/16 :goto_11

    .line 300
    .line 301
    :cond_e
    if-eqz v10, :cond_19

    .line 302
    .line 303
    iget-object v0, v2, Lw86;->e:Ljava/lang/Object;

    .line 304
    .line 305
    if-nez v0, :cond_14

    .line 306
    .line 307
    sget-object v0, Lu65;->G:Lu65;

    .line 308
    .line 309
    invoke-virtual {v11, v0}, Ls65;->i(Lu65;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {v15}, Lhd;->p0()Lgd;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iget-object v3, v3, Lgd;->b:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v3, Ljd;

    .line 320
    .line 321
    if-nez v3, :cond_f

    .line 322
    .line 323
    const/4 v0, 0x0

    .line 324
    goto :goto_7

    .line 325
    :cond_f
    if-eqz v0, :cond_10

    .line 326
    .line 327
    sget-object v0, Lu65;->H:Lu65;

    .line 328
    .line 329
    invoke-virtual {v14, v0}, Ls65;->i(Lu65;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {v3}, Ljd;->r0()Ljava/lang/reflect/Member;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    if-eqz v5, :cond_10

    .line 338
    .line 339
    invoke-static {v5, v0}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 340
    .line 341
    .line 342
    :cond_10
    :try_start_1
    iget-object v0, v3, Ljd;->P:Ljava/lang/reflect/Constructor;

    .line 343
    .line 344
    const/4 v3, 0x0

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :goto_7
    if-nez v0, :cond_11

    .line 350
    .line 351
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 352
    .line 353
    :cond_11
    iput-object v0, v2, Lw86;->e:Ljava/lang/Object;

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :catch_0
    move-exception v0

    .line 357
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-eqz v1, :cond_12

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    goto :goto_8

    .line 368
    :cond_12
    sget-object v1, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 369
    .line 370
    instance-of v1, v0, Ljava/lang/Error;

    .line 371
    .line 372
    if-nez v1, :cond_13

    .line 373
    .line 374
    invoke-static {v0}, Lu81;->v(Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 378
    .line 379
    iget-object v2, v15, Lhd;->N:Ljava/lang/Class;

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-static {v0}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v6, "Failed to instantiate bean of type "

    .line 400
    .line 401
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v2, ": ("

    .line 408
    .line 409
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    const-string v2, ") "

    .line 416
    .line 417
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    .line 429
    .line 430
    throw v1

    .line 431
    :cond_13
    check-cast v0, Ljava/lang/Error;

    .line 432
    .line 433
    throw v0

    .line 434
    :cond_14
    :goto_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 435
    .line 436
    if-ne v0, v3, :cond_15

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    goto :goto_a

    .line 440
    :cond_15
    iget-object v0, v2, Lw86;->e:Ljava/lang/Object;

    .line 441
    .line 442
    move-object v2, v0

    .line 443
    :goto_a
    if-eqz v2, :cond_19

    .line 444
    .line 445
    sget-object v0, Lu65;->G:Lu65;

    .line 446
    .line 447
    invoke-virtual {v8, v0}, Ls65;->i(Lu65;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_16

    .line 452
    .line 453
    sget-object v0, Lu65;->H:Lu65;

    .line 454
    .line 455
    invoke-virtual {v11, v0}, Ls65;->i(Lu65;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    invoke-virtual {v4}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    if-eqz v3, :cond_16

    .line 464
    .line 465
    invoke-static {v3, v0}, Lu81;->d(Ljava/lang/reflect/Member;Z)V

    .line 466
    .line 467
    .line 468
    :cond_16
    :try_start_2
    invoke-virtual {v4, v2}, Lod;->s0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 472
    move-object v3, v0

    .line 473
    const/4 v0, 0x0

    .line 474
    goto :goto_c

    .line 475
    :catch_1
    move-exception v0

    .line 476
    invoke-virtual/range {p2 .. p2}, Llp0;->j()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    if-eqz v3, :cond_17

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    goto :goto_b

    .line 491
    :cond_17
    sget-object v3, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 492
    .line 493
    instance-of v3, v0, Ljava/lang/Error;

    .line 494
    .line 495
    if-nez v3, :cond_18

    .line 496
    .line 497
    invoke-static {v0}, Lu81;->v(Ljava/lang/Throwable;)V

    .line 498
    .line 499
    .line 500
    const-string v0, "Failed to get property \'"

    .line 501
    .line 502
    const-string v3, "\' of default "

    .line 503
    .line 504
    invoke-static {v0, v1, v3}, Ldj7;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    const-string v2, " instance"

    .line 517
    .line 518
    invoke-static {v0, v1, v2}, Ld6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    const/16 v16, 0x0

    .line 522
    .line 523
    return-object v16

    .line 524
    :cond_18
    check-cast v0, Ljava/lang/Error;

    .line 525
    .line 526
    throw v0

    .line 527
    :cond_19
    invoke-static/range {v17 .. v17}, Liz1;->l(Lgc8;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    move-object v3, v0

    .line 532
    const/4 v0, 0x1

    .line 533
    :goto_c
    if-nez v3, :cond_1c

    .line 534
    .line 535
    if-nez v10, :cond_1b

    .line 536
    .line 537
    :cond_1a
    :goto_d
    move-object/from16 v11, v19

    .line 538
    .line 539
    :goto_e
    const/4 v10, 0x1

    .line 540
    goto :goto_11

    .line 541
    :cond_1b
    move-object v11, v3

    .line 542
    goto :goto_e

    .line 543
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_1d

    .line 552
    .line 553
    invoke-static {v3}, Lzh8;->p(Ljava/lang/Object;)Lz1;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    :cond_1d
    move v10, v0

    .line 558
    move-object v11, v3

    .line 559
    goto :goto_11

    .line 560
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Lho6;->C()Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_1f

    .line 565
    .line 566
    goto :goto_d

    .line 567
    :cond_1f
    const/4 v10, 0x1

    .line 568
    :goto_f
    const/4 v11, 0x0

    .line 569
    goto :goto_11

    .line 570
    :cond_20
    const/4 v0, 0x1

    .line 571
    :goto_10
    sget-object v2, Lx77;->J:Lx77;

    .line 572
    .line 573
    invoke-virtual/range {v17 .. v17}, Lgc8;->x0()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-eqz v3, :cond_21

    .line 578
    .line 579
    invoke-virtual {v11, v2}, Lv77;->l(Lx77;)Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-nez v2, :cond_21

    .line 584
    .line 585
    move v10, v0

    .line 586
    move-object/from16 v11, v19

    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_21
    move v10, v0

    .line 590
    goto :goto_f

    .line 591
    :goto_11
    invoke-virtual/range {p2 .. p2}, Llp0;->d()[Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    if-nez v0, :cond_25

    .line 596
    .line 597
    iget-boolean v0, v12, Lwo0;->g:Z

    .line 598
    .line 599
    if-nez v0, :cond_24

    .line 600
    .line 601
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, v12, Lwo0;->g:Z

    .line 603
    .line 604
    iget-object v0, v12, Lwo0;->d:Las5;

    .line 605
    .line 606
    if-nez v0, :cond_22

    .line 607
    .line 608
    const/16 v16, 0x0

    .line 609
    .line 610
    goto :goto_12

    .line 611
    :cond_22
    invoke-virtual {v0, v15}, Las5;->Q(Ljb9;)[Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    move-object/from16 v16, v0

    .line 616
    .line 617
    :goto_12
    if-nez v16, :cond_23

    .line 618
    .line 619
    sget-object v0, Lu65;->K:Lu65;

    .line 620
    .line 621
    invoke-virtual {v14, v0}, Ls65;->i(Lu65;)Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-nez v0, :cond_23

    .line 626
    .line 627
    sget-object v16, Lwo0;->j:[Ljava/lang/Class;

    .line 628
    .line 629
    :cond_23
    move-object/from16 v0, v16

    .line 630
    .line 631
    iput-object v0, v12, Lwo0;->f:[Ljava/lang/Class;

    .line 632
    .line 633
    :cond_24
    iget-object v0, v12, Lwo0;->f:[Ljava/lang/Class;

    .line 634
    .line 635
    :cond_25
    move-object v12, v0

    .line 636
    iget-object v5, v15, Lhd;->V:Lee;

    .line 637
    .line 638
    new-instance v2, Lmp0;

    .line 639
    .line 640
    move-object/from16 v3, p2

    .line 641
    .line 642
    move-object/from16 v8, v18

    .line 643
    .line 644
    invoke-direct/range {v2 .. v12}, Lmp0;-><init>(Llp0;Lod;Lee;Lgc8;Lem4;Lsc8;Lgc8;ZLjava/lang/Object;[Ljava/lang/Class;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v13, v4}, Las5;->p(Lod;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    if-eqz v0, :cond_26

    .line 652
    .line 653
    invoke-virtual {v1, v4, v0}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-virtual {v2, v0}, Lmp0;->f(Lem4;)V

    .line 658
    .line 659
    .line 660
    :cond_26
    invoke-virtual {v13, v4}, Las5;->P(Lod;)Lfk5;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    if-eqz v0, :cond_27

    .line 665
    .line 666
    new-instance v1, Lnf8;

    .line 667
    .line 668
    invoke-direct {v1, v2, v0}, Lnf8;-><init>(Lmp0;Lfk5;)V

    .line 669
    .line 670
    .line 671
    return-object v1

    .line 672
    :cond_27
    return-object v2

    .line 673
    :cond_28
    const-string v0, "could not determine property type"

    .line 674
    .line 675
    const/4 v2, 0x0

    .line 676
    new-array v2, v2, [Ljava/lang/Object;

    .line 677
    .line 678
    invoke-virtual {v1, v12, v3, v0, v2}, Lc87;->C(Lwo0;Llp0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    const/16 v16, 0x0

    .line 682
    .line 683
    throw v16

    .line 684
    :catch_2
    move-exception v0

    .line 685
    const/4 v2, 0x0

    .line 686
    invoke-static {v0}, Lu81;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    new-array v2, v2, [Ljava/lang/Object;

    .line 691
    .line 692
    invoke-virtual {v1, v12, v3, v0, v2}, Lc87;->C(Lwo0;Llp0;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    throw v16
.end method

.method public final W()La50;
    .locals 1

    .line 1
    new-instance p0, La50;

    .line 2
    .line 3
    sget-object v0, Lb87;->a:[Ld87;

    .line 4
    .line 5
    invoke-direct {p0, v0}, La50;-><init>([Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
