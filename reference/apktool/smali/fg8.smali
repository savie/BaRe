.class public final Lfg8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmf5;

.field public final c:Lmw6;

.field public final d:Le41;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lmw6;

.field public final g:Lba1;

.field public final h:Lba1;

.field public final i:Lmw6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmf5;Lmw6;Le41;Ljava/util/concurrent/Executor;Lmw6;Lba1;Lba1;Lmw6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfg8;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lfg8;->b:Lmf5;

    .line 7
    .line 8
    iput-object p3, p0, Lfg8;->c:Lmw6;

    .line 9
    .line 10
    iput-object p4, p0, Lfg8;->d:Le41;

    .line 11
    .line 12
    iput-object p5, p0, Lfg8;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lfg8;->f:Lmw6;

    .line 15
    .line 16
    iput-object p7, p0, Lfg8;->g:Lba1;

    .line 17
    .line 18
    iput-object p8, p0, Lfg8;->h:Lba1;

    .line 19
    .line 20
    iput-object p9, p0, Lfg8;->i:Lmw6;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Loe0;I)V
    .locals 45

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-object v2, v3, Loe0;->b:[B

    .line 6
    .line 7
    iget-object v0, v1, Lfg8;->b:Lmf5;

    .line 8
    .line 9
    iget-object v4, v3, Loe0;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lmf5;->a(Ljava/lang/String;)Lua8;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    move-wide v7, v5

    .line 18
    move-object v6, v4

    .line 19
    move-wide v4, v7

    .line 20
    :goto_0
    new-instance v0, Lno1;

    .line 21
    .line 22
    invoke-direct {v0, v1, v3}, Lno1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v9, v1, Lfg8;->f:Lmw6;

    .line 26
    .line 27
    invoke-virtual {v9, v0}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_25

    .line 38
    .line 39
    new-instance v0, Liq0;

    .line 40
    .line 41
    invoke-direct {v0, v1, v3}, Liq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v0}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v10, v0

    .line 49
    check-cast v10, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x3

    .line 63
    const-wide/16 v12, -0x1

    .line 64
    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    const-string v7, "Uploader"

    .line 68
    .line 69
    const-string v8, "Unknown backend for %s, deleting event batch for it..."

    .line 70
    .line 71
    invoke-static {v7, v8, v3}, Lly8;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Lsb0;

    .line 75
    .line 76
    invoke-direct {v7, v0, v12, v13}, Lsb0;-><init>(IJ)V

    .line 77
    .line 78
    .line 79
    move-object/from16 v29, v2

    .line 80
    .line 81
    move-wide/from16 v30, v4

    .line 82
    .line 83
    :goto_1
    const/4 v1, 0x2

    .line 84
    goto/16 :goto_13

    .line 85
    .line 86
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_2

    .line 100
    .line 101
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v16

    .line 105
    move-object/from16 v14, v16

    .line 106
    .line 107
    check-cast v14, Lce0;

    .line 108
    .line 109
    iget-object v14, v14, Lce0;->c:Lkd0;

    .line 110
    .line 111
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    const-string v8, "proto"

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    iget-object v14, v1, Lfg8;->i:Lmw6;

    .line 120
    .line 121
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance v15, Lhb;

    .line 125
    .line 126
    const/4 v11, 0x7

    .line 127
    invoke-direct {v15, v14, v11}, Lhb;-><init>(Ljava/lang/Object;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v9, v15}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    check-cast v11, Ly91;

    .line 135
    .line 136
    new-instance v14, Ljd0;

    .line 137
    .line 138
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v15, Ljava/util/HashMap;

    .line 142
    .line 143
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v15, v14, Ljd0;->n:Ljava/lang/Object;

    .line 147
    .line 148
    iget-object v15, v1, Lfg8;->g:Lba1;

    .line 149
    .line 150
    invoke-interface {v15}, Lba1;->e()J

    .line 151
    .line 152
    .line 153
    move-result-wide v17

    .line 154
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    iput-object v15, v14, Ljd0;->f:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v15, v1, Lfg8;->h:Lba1;

    .line 161
    .line 162
    invoke-interface {v15}, Lba1;->e()J

    .line 163
    .line 164
    .line 165
    move-result-wide v17

    .line 166
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    iput-object v15, v14, Ljd0;->k:Ljava/lang/Object;

    .line 171
    .line 172
    const-string v15, "GDT_CLIENT_METRICS"

    .line 173
    .line 174
    iput-object v15, v14, Ljd0;->a:Ljava/lang/Object;

    .line 175
    .line 176
    new-instance v15, Lxv2;

    .line 177
    .line 178
    new-instance v0, Ldw2;

    .line 179
    .line 180
    invoke-direct {v0, v8}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v12, Lo96;->a:Lgh;

    .line 187
    .line 188
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .line 192
    .line 193
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .line 195
    .line 196
    :try_start_0
    invoke-virtual {v12, v11, v13}, Lgh;->h(Ly91;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    :catch_0
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-direct {v15, v0, v11}, Lxv2;-><init>(Ldw2;[B)V

    .line 204
    .line 205
    .line 206
    iput-object v15, v14, Ljd0;->e:Ljava/lang/Object;

    .line 207
    .line 208
    invoke-virtual {v14}, Ljd0;->b()Lkd0;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    move-object v11, v6

    .line 213
    check-cast v11, Ld31;

    .line 214
    .line 215
    invoke-virtual {v11, v0}, Ld31;->a(Lkd0;)Lkd0;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_3
    move-object v0, v6

    .line 223
    check-cast v0, Ld31;

    .line 224
    .line 225
    new-instance v11, Ljava/util/HashMap;

    .line 226
    .line 227
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    if-eqz v12, :cond_5

    .line 239
    .line 240
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Lkd0;

    .line 245
    .line 246
    iget-object v13, v12, Lkd0;->a:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    if-nez v14, :cond_4

    .line 253
    .line 254
    new-instance v14, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_4
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v13

    .line 270
    check-cast v13, Ljava/util/List;

    .line 271
    .line 272
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    const-string v15, "CctTransportBackend"

    .line 294
    .line 295
    if-eqz v12, :cond_15

    .line 296
    .line 297
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    check-cast v12, Ljava/util/Map$Entry;

    .line 302
    .line 303
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v19

    .line 307
    move-object/from16 v14, v19

    .line 308
    .line 309
    check-cast v14, Ljava/util/List;

    .line 310
    .line 311
    const/4 v13, 0x0

    .line 312
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    check-cast v13, Lkd0;

    .line 317
    .line 318
    sget-object v14, Llc6;->a:Llc6;

    .line 319
    .line 320
    iget-object v14, v0, Ld31;->f:Lba1;

    .line 321
    .line 322
    invoke-interface {v14}, Lba1;->e()J

    .line 323
    .line 324
    .line 325
    move-result-wide v21

    .line 326
    iget-object v14, v0, Ld31;->e:Lba1;

    .line 327
    .line 328
    invoke-interface {v14}, Lba1;->e()J

    .line 329
    .line 330
    .line 331
    move-result-wide v23

    .line 332
    const-string v14, "sdk-version"

    .line 333
    .line 334
    invoke-virtual {v13, v14}, Lkd0;->b(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v26

    .line 342
    const-string v14, "model"

    .line 343
    .line 344
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v27

    .line 348
    const-string v14, "hardware"

    .line 349
    .line 350
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v28

    .line 354
    const-string v14, "device"

    .line 355
    .line 356
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v29

    .line 360
    const-string v14, "product"

    .line 361
    .line 362
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v30

    .line 366
    const-string v14, "os-uild"

    .line 367
    .line 368
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v31

    .line 372
    const-string v14, "manufacturer"

    .line 373
    .line 374
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v32

    .line 378
    const-string v14, "fingerprint"

    .line 379
    .line 380
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v33

    .line 384
    const-string v14, "country"

    .line 385
    .line 386
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v35

    .line 390
    const-string v14, "locale"

    .line 391
    .line 392
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v34

    .line 396
    const-string v14, "mcc_mnc"

    .line 397
    .line 398
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v36

    .line 402
    const-string v14, "application_build"

    .line 403
    .line 404
    invoke-virtual {v13, v14}, Lkd0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v37

    .line 408
    new-instance v25, Lqb0;

    .line 409
    .line 410
    invoke-direct/range {v25 .. v37}, Lqb0;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v13, v25

    .line 414
    .line 415
    new-instance v14, Lub0;

    .line 416
    .line 417
    invoke-direct {v14, v13}, Lub0;-><init>(Lqb0;)V

    .line 418
    .line 419
    .line 420
    :try_start_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v13

    .line 424
    check-cast v13, Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    move-object/from16 v26, v13

    .line 435
    .line 436
    const/16 v27, 0x0

    .line 437
    .line 438
    goto :goto_5

    .line 439
    :catch_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v13

    .line 443
    check-cast v13, Ljava/lang/String;

    .line 444
    .line 445
    move-object/from16 v27, v13

    .line 446
    .line 447
    const/16 v26, 0x0

    .line 448
    .line 449
    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v12

    .line 458
    check-cast v12, Ljava/util/List;

    .line 459
    .line 460
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v12

    .line 464
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v20

    .line 468
    if-eqz v20, :cond_14

    .line 469
    .line 470
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v20

    .line 474
    move-object/from16 v1, v20

    .line 475
    .line 476
    check-cast v1, Lkd0;

    .line 477
    .line 478
    move-object/from16 v29, v2

    .line 479
    .line 480
    iget-object v2, v1, Lkd0;->c:Lxv2;

    .line 481
    .line 482
    iget-object v3, v1, Lkd0;->j:[B

    .line 483
    .line 484
    move-object/from16 v20, v3

    .line 485
    .line 486
    iget-object v3, v2, Lxv2;->a:Ldw2;

    .line 487
    .line 488
    iget-object v2, v2, Lxv2;->b:[B

    .line 489
    .line 490
    move-wide/from16 v30, v4

    .line 491
    .line 492
    new-instance v4, Ldw2;

    .line 493
    .line 494
    invoke-direct {v4, v8}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v4}, Ldw2;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    if-eqz v4, :cond_6

    .line 502
    .line 503
    new-instance v3, Lxd0;

    .line 504
    .line 505
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 506
    .line 507
    .line 508
    iput-object v2, v3, Lxd0;->f:Ljava/lang/Object;

    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_6
    new-instance v4, Ldw2;

    .line 512
    .line 513
    const-string v5, "json"

    .line 514
    .line 515
    invoke-direct {v4, v5}, Ldw2;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v4}, Ldw2;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    if-eqz v4, :cond_13

    .line 523
    .line 524
    new-instance v3, Ljava/lang/String;

    .line 525
    .line 526
    const-string v4, "UTF-8"

    .line 527
    .line 528
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 533
    .line 534
    .line 535
    new-instance v2, Lxd0;

    .line 536
    .line 537
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 538
    .line 539
    .line 540
    iput-object v3, v2, Lxd0;->k:Ljava/lang/Object;

    .line 541
    .line 542
    move-object v3, v2

    .line 543
    :goto_7
    iget-wide v4, v1, Lkd0;->d:J

    .line 544
    .line 545
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    iput-object v2, v3, Lxd0;->a:Ljava/lang/Object;

    .line 550
    .line 551
    iget-wide v4, v1, Lkd0;->e:J

    .line 552
    .line 553
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    iput-object v2, v3, Lxd0;->b:Ljava/lang/Object;

    .line 558
    .line 559
    const-string v2, "tz-offset"

    .line 560
    .line 561
    iget-object v4, v1, Lkd0;->f:Ljava/util/Map;

    .line 562
    .line 563
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    check-cast v2, Ljava/lang/String;

    .line 568
    .line 569
    if-nez v2, :cond_7

    .line 570
    .line 571
    const-wide/16 v4, 0x0

    .line 572
    .line 573
    goto :goto_8

    .line 574
    :cond_7
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 579
    .line 580
    .line 581
    move-result-wide v4

    .line 582
    :goto_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    iput-object v2, v3, Lxd0;->c:Ljava/lang/Object;

    .line 587
    .line 588
    const-string v2, "net-type"

    .line 589
    .line 590
    invoke-virtual {v1, v2}, Lkd0;->b(Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    sget-object v4, Lmm5;->a:Landroid/util/SparseArray;

    .line 595
    .line 596
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    check-cast v2, Lmm5;

    .line 601
    .line 602
    const-string v4, "mobile-subtype"

    .line 603
    .line 604
    invoke-virtual {v1, v4}, Lkd0;->b(Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    sget-object v5, Llm5;->a:Landroid/util/SparseArray;

    .line 609
    .line 610
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    check-cast v4, Llm5;

    .line 615
    .line 616
    new-instance v5, Lbe0;

    .line 617
    .line 618
    invoke-direct {v5, v2, v4}, Lbe0;-><init>(Lmm5;Llm5;)V

    .line 619
    .line 620
    .line 621
    iput-object v5, v3, Lxd0;->n:Ljava/lang/Object;

    .line 622
    .line 623
    iget-object v2, v1, Lkd0;->b:Ljava/lang/Integer;

    .line 624
    .line 625
    if-eqz v2, :cond_8

    .line 626
    .line 627
    iput-object v2, v3, Lxd0;->d:Ljava/lang/Object;

    .line 628
    .line 629
    :cond_8
    iget-object v2, v1, Lkd0;->g:Ljava/lang/Integer;

    .line 630
    .line 631
    if-eqz v2, :cond_9

    .line 632
    .line 633
    new-instance v4, Lnd0;

    .line 634
    .line 635
    invoke-direct {v4, v2}, Lnd0;-><init>(Ljava/lang/Integer;)V

    .line 636
    .line 637
    .line 638
    new-instance v2, Lod0;

    .line 639
    .line 640
    invoke-direct {v2, v4}, Lod0;-><init>(Lnd0;)V

    .line 641
    .line 642
    .line 643
    sget-object v4, Lon1;->a:Lon1;

    .line 644
    .line 645
    new-instance v4, Lvb0;

    .line 646
    .line 647
    invoke-direct {v4, v2}, Lvb0;-><init>(Lod0;)V

    .line 648
    .line 649
    .line 650
    iput-object v4, v3, Lxd0;->e:Ljava/lang/Object;

    .line 651
    .line 652
    :cond_9
    iget-object v1, v1, Lkd0;->i:[B

    .line 653
    .line 654
    if-nez v1, :cond_a

    .line 655
    .line 656
    if-eqz v20, :cond_d

    .line 657
    .line 658
    :cond_a
    if-eqz v1, :cond_b

    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_b
    const/4 v1, 0x0

    .line 662
    :goto_9
    if-eqz v20, :cond_c

    .line 663
    .line 664
    move-object/from16 v2, v20

    .line 665
    .line 666
    goto :goto_a

    .line 667
    :cond_c
    const/4 v2, 0x0

    .line 668
    :goto_a
    new-instance v4, Lmd0;

    .line 669
    .line 670
    invoke-direct {v4, v1, v2}, Lmd0;-><init>([B[B)V

    .line 671
    .line 672
    .line 673
    iput-object v4, v3, Lxd0;->p:Ljava/lang/Object;

    .line 674
    .line 675
    :cond_d
    iget-object v1, v3, Lxd0;->a:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v1, Ljava/lang/Long;

    .line 678
    .line 679
    if-nez v1, :cond_e

    .line 680
    .line 681
    const-string v1, " eventTimeMs"

    .line 682
    .line 683
    goto :goto_b

    .line 684
    :cond_e
    const-string v1, ""

    .line 685
    .line 686
    :goto_b
    iget-object v2, v3, Lxd0;->b:Ljava/lang/Object;

    .line 687
    .line 688
    check-cast v2, Ljava/lang/Long;

    .line 689
    .line 690
    if-nez v2, :cond_f

    .line 691
    .line 692
    const-string v2, " eventUptimeMs"

    .line 693
    .line 694
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    :cond_f
    iget-object v2, v3, Lxd0;->c:Ljava/lang/Object;

    .line 699
    .line 700
    check-cast v2, Ljava/lang/Long;

    .line 701
    .line 702
    if-nez v2, :cond_10

    .line 703
    .line 704
    const-string v2, " timezoneOffsetSeconds"

    .line 705
    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    if-eqz v2, :cond_12

    .line 715
    .line 716
    new-instance v32, Lyd0;

    .line 717
    .line 718
    iget-object v1, v3, Lxd0;->a:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v1, Ljava/lang/Long;

    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 723
    .line 724
    .line 725
    move-result-wide v33

    .line 726
    iget-object v1, v3, Lxd0;->d:Ljava/lang/Object;

    .line 727
    .line 728
    move-object/from16 v35, v1

    .line 729
    .line 730
    check-cast v35, Ljava/lang/Integer;

    .line 731
    .line 732
    iget-object v1, v3, Lxd0;->e:Ljava/lang/Object;

    .line 733
    .line 734
    move-object/from16 v36, v1

    .line 735
    .line 736
    check-cast v36, Lvb0;

    .line 737
    .line 738
    iget-object v1, v3, Lxd0;->b:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v1, Ljava/lang/Long;

    .line 741
    .line 742
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 743
    .line 744
    .line 745
    move-result-wide v37

    .line 746
    iget-object v1, v3, Lxd0;->f:Ljava/lang/Object;

    .line 747
    .line 748
    move-object/from16 v39, v1

    .line 749
    .line 750
    check-cast v39, [B

    .line 751
    .line 752
    iget-object v1, v3, Lxd0;->k:Ljava/lang/Object;

    .line 753
    .line 754
    move-object/from16 v40, v1

    .line 755
    .line 756
    check-cast v40, Ljava/lang/String;

    .line 757
    .line 758
    iget-object v1, v3, Lxd0;->c:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v1, Ljava/lang/Long;

    .line 761
    .line 762
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 763
    .line 764
    .line 765
    move-result-wide v41

    .line 766
    iget-object v1, v3, Lxd0;->n:Ljava/lang/Object;

    .line 767
    .line 768
    move-object/from16 v43, v1

    .line 769
    .line 770
    check-cast v43, Lbe0;

    .line 771
    .line 772
    iget-object v1, v3, Lxd0;->p:Ljava/lang/Object;

    .line 773
    .line 774
    move-object/from16 v44, v1

    .line 775
    .line 776
    check-cast v44, Lmd0;

    .line 777
    .line 778
    invoke-direct/range {v32 .. v44}, Lyd0;-><init>(JLjava/lang/Integer;Lpn1;J[BLjava/lang/String;JLnm5;Ll03;)V

    .line 779
    .line 780
    .line 781
    move-object/from16 v1, v32

    .line 782
    .line 783
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    :cond_11
    :goto_c
    move-object/from16 v1, p0

    .line 787
    .line 788
    move-object/from16 v3, p1

    .line 789
    .line 790
    move-object/from16 v2, v29

    .line 791
    .line 792
    move-wide/from16 v4, v30

    .line 793
    .line 794
    goto/16 :goto_6

    .line 795
    .line 796
    :cond_12
    const-string v0, "Missing required properties:"

    .line 797
    .line 798
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    :cond_13
    const-string v1, "TRuntime."

    .line 807
    .line 808
    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    const/4 v2, 0x5

    .line 813
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 814
    .line 815
    .line 816
    move-result v4

    .line 817
    if-eqz v4, :cond_11

    .line 818
    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    .line 820
    .line 821
    const-string v5, "Received event of unsupported encoding "

    .line 822
    .line 823
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    const-string v3, ". Skipping..."

    .line 830
    .line 831
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v3

    .line 838
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .line 840
    .line 841
    goto :goto_c

    .line 842
    :cond_14
    move-object/from16 v29, v2

    .line 843
    .line 844
    move-wide/from16 v30, v4

    .line 845
    .line 846
    new-instance v20, Lzd0;

    .line 847
    .line 848
    move-object/from16 v28, v13

    .line 849
    .line 850
    move-object/from16 v25, v14

    .line 851
    .line 852
    invoke-direct/range {v20 .. v28}, Lzd0;-><init>(JJLub0;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v1, v20

    .line 856
    .line 857
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-object/from16 v1, p0

    .line 861
    .line 862
    move-object/from16 v3, p1

    .line 863
    .line 864
    goto/16 :goto_4

    .line 865
    .line 866
    :cond_15
    move-object/from16 v29, v2

    .line 867
    .line 868
    move-wide/from16 v30, v4

    .line 869
    .line 870
    const/4 v2, 0x5

    .line 871
    new-instance v1, Ltb0;

    .line 872
    .line 873
    invoke-direct {v1, v7}, Ltb0;-><init>(Ljava/util/ArrayList;)V

    .line 874
    .line 875
    .line 876
    iget-object v3, v0, Ld31;->d:Ljava/net/URL;

    .line 877
    .line 878
    if-eqz v29, :cond_17

    .line 879
    .line 880
    :try_start_2
    invoke-static/range {v29 .. v29}, Loy0;->a([B)Loy0;

    .line 881
    .line 882
    .line 883
    move-result-object v4

    .line 884
    iget-object v5, v4, Loy0;->b:Ljava/lang/String;

    .line 885
    .line 886
    if-eqz v5, :cond_16

    .line 887
    .line 888
    goto :goto_d

    .line 889
    :cond_16
    const/4 v5, 0x0

    .line 890
    :goto_d
    iget-object v4, v4, Loy0;->a:Ljava/lang/String;

    .line 891
    .line 892
    if-eqz v4, :cond_18

    .line 893
    .line 894
    invoke-static {v4}, Ld31;->b(Ljava/lang/String;)Ljava/net/URL;

    .line 895
    .line 896
    .line 897
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 898
    goto :goto_f

    .line 899
    :catch_2
    new-instance v0, Lsb0;

    .line 900
    .line 901
    const/4 v1, 0x3

    .line 902
    const-wide/16 v2, -0x1

    .line 903
    .line 904
    invoke-direct {v0, v1, v2, v3}, Lsb0;-><init>(IJ)V

    .line 905
    .line 906
    .line 907
    :goto_e
    move-object v7, v0

    .line 908
    goto/16 :goto_1

    .line 909
    .line 910
    :cond_17
    const/4 v5, 0x0

    .line 911
    :cond_18
    :goto_f
    :try_start_3
    new-instance v4, Lgh;

    .line 912
    .line 913
    invoke-direct {v4, v3, v1, v5}, Lgh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    new-instance v1, Lfs;

    .line 917
    .line 918
    const/4 v3, 0x2

    .line 919
    invoke-direct {v1, v0, v3}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 920
    .line 921
    .line 922
    move v13, v2

    .line 923
    :cond_19
    invoke-virtual {v1, v4}, Lfs;->c(Lgh;)Lc31;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    iget-object v2, v0, Lc31;->b:Ljava/net/URL;

    .line 928
    .line 929
    if-eqz v2, :cond_1a

    .line 930
    .line 931
    const-string v3, "Following redirect to: %s"

    .line 932
    .line 933
    invoke-static {v15, v3, v2}, Lly8;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    new-instance v3, Lgh;

    .line 937
    .line 938
    iget-object v5, v4, Lgh;->b:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v5, Ltb0;

    .line 941
    .line 942
    iget-object v4, v4, Lgh;->c:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v4, Ljava/lang/String;

    .line 945
    .line 946
    invoke-direct {v3, v2, v5, v4}, Lgh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 947
    .line 948
    .line 949
    move-object v4, v3

    .line 950
    goto :goto_10

    .line 951
    :cond_1a
    const/4 v4, 0x0

    .line 952
    :goto_10
    if-eqz v4, :cond_1b

    .line 953
    .line 954
    add-int/lit8 v13, v13, -0x1

    .line 955
    .line 956
    const/4 v2, 0x1

    .line 957
    if-ge v13, v2, :cond_19

    .line 958
    .line 959
    :cond_1b
    iget v1, v0, Lc31;->a:I

    .line 960
    .line 961
    const/16 v2, 0xc8

    .line 962
    .line 963
    if-ne v1, v2, :cond_1c

    .line 964
    .line 965
    iget-wide v0, v0, Lc31;->c:J

    .line 966
    .line 967
    new-instance v2, Lsb0;

    .line 968
    .line 969
    const/4 v3, 0x1

    .line 970
    invoke-direct {v2, v3, v0, v1}, Lsb0;-><init>(IJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 971
    .line 972
    .line 973
    move-object v7, v2

    .line 974
    goto/16 :goto_1

    .line 975
    .line 976
    :catch_3
    move-exception v0

    .line 977
    goto :goto_12

    .line 978
    :cond_1c
    const/16 v0, 0x1f4

    .line 979
    .line 980
    if-ge v1, v0, :cond_1d

    .line 981
    .line 982
    const/16 v0, 0x194

    .line 983
    .line 984
    if-ne v1, v0, :cond_1e

    .line 985
    .line 986
    :cond_1d
    const-wide/16 v2, -0x1

    .line 987
    .line 988
    goto :goto_11

    .line 989
    :cond_1e
    const/16 v0, 0x190

    .line 990
    .line 991
    if-ne v1, v0, :cond_1f

    .line 992
    .line 993
    :try_start_4
    new-instance v0, Lsb0;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 994
    .line 995
    const/4 v1, 0x4

    .line 996
    const-wide/16 v2, -0x1

    .line 997
    .line 998
    :try_start_5
    invoke-direct {v0, v1, v2, v3}, Lsb0;-><init>(IJ)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_e

    .line 1002
    :catch_4
    move-exception v0

    .line 1003
    const-wide/16 v2, -0x1

    .line 1004
    .line 1005
    goto :goto_12

    .line 1006
    :cond_1f
    const-wide/16 v2, -0x1

    .line 1007
    .line 1008
    new-instance v0, Lsb0;

    .line 1009
    .line 1010
    const/4 v1, 0x3

    .line 1011
    invoke-direct {v0, v1, v2, v3}, Lsb0;-><init>(IJ)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_e

    .line 1015
    :goto_11
    new-instance v0, Lsb0;

    .line 1016
    .line 1017
    const/4 v1, 0x2

    .line 1018
    invoke-direct {v0, v1, v2, v3}, Lsb0;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1019
    .line 1020
    .line 1021
    goto :goto_e

    .line 1022
    :goto_12
    const-string v1, "Could not make request to the backend"

    .line 1023
    .line 1024
    invoke-static {v0, v15, v1}, Lly8;->p(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v0, Lsb0;

    .line 1028
    .line 1029
    const/4 v1, 0x2

    .line 1030
    const-wide/16 v2, -0x1

    .line 1031
    .line 1032
    invoke-direct {v0, v1, v2, v3}, Lsb0;-><init>(IJ)V

    .line 1033
    .line 1034
    .line 1035
    move-object v7, v0

    .line 1036
    :goto_13
    iget v0, v7, Lsb0;->a:I

    .line 1037
    .line 1038
    if-ne v0, v1, :cond_20

    .line 1039
    .line 1040
    new-instance v0, Leg8;

    .line 1041
    .line 1042
    move-object/from16 v1, p0

    .line 1043
    .line 1044
    move-object/from16 v3, p1

    .line 1045
    .line 1046
    move-object v2, v10

    .line 1047
    move-wide/from16 v4, v30

    .line 1048
    .line 1049
    invoke-direct/range {v0 .. v5}, Leg8;-><init>(Lfg8;Ljava/lang/Iterable;Loe0;J)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v9, v0}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    iget-object v0, v1, Lfg8;->d:Le41;

    .line 1056
    .line 1057
    const/4 v2, 0x1

    .line 1058
    add-int/lit8 v1, p2, 0x1

    .line 1059
    .line 1060
    invoke-virtual {v0, v3, v1, v2}, Le41;->d(Loe0;IZ)V

    .line 1061
    .line 1062
    .line 1063
    return-void

    .line 1064
    :cond_20
    move-object/from16 v1, p0

    .line 1065
    .line 1066
    move-object/from16 v3, p1

    .line 1067
    .line 1068
    move-object v8, v10

    .line 1069
    move-wide/from16 v4, v30

    .line 1070
    .line 1071
    const/4 v2, 0x1

    .line 1072
    new-instance v10, Lvf1;

    .line 1073
    .line 1074
    invoke-direct {v10, v1, v8}, Lvf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v9, v10}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    if-ne v0, v2, :cond_21

    .line 1081
    .line 1082
    iget-wide v7, v7, Lsb0;->b:J

    .line 1083
    .line 1084
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v4

    .line 1088
    if-eqz v29, :cond_24

    .line 1089
    .line 1090
    new-instance v0, Lbb;

    .line 1091
    .line 1092
    const/16 v2, 0x8

    .line 1093
    .line 1094
    invoke-direct {v0, v1, v2}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v9, v0}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    goto :goto_15

    .line 1101
    :cond_21
    const/4 v2, 0x4

    .line 1102
    if-ne v0, v2, :cond_24

    .line 1103
    .line 1104
    new-instance v0, Ljava/util/HashMap;

    .line 1105
    .line 1106
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1107
    .line 1108
    .line 1109
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1114
    .line 1115
    .line 1116
    move-result v7

    .line 1117
    if-eqz v7, :cond_23

    .line 1118
    .line 1119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v7

    .line 1123
    check-cast v7, Lce0;

    .line 1124
    .line 1125
    iget-object v7, v7, Lce0;->c:Lkd0;

    .line 1126
    .line 1127
    iget-object v7, v7, Lkd0;->a:Ljava/lang/String;

    .line 1128
    .line 1129
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1130
    .line 1131
    .line 1132
    move-result v8

    .line 1133
    if-nez v8, :cond_22

    .line 1134
    .line 1135
    const/16 v16, 0x1

    .line 1136
    .line 1137
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v8

    .line 1141
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    goto :goto_14

    .line 1145
    :cond_22
    const/16 v16, 0x1

    .line 1146
    .line 1147
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v8

    .line 1151
    check-cast v8, Ljava/lang/Integer;

    .line 1152
    .line 1153
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1154
    .line 1155
    .line 1156
    move-result v8

    .line 1157
    add-int/lit8 v8, v8, 0x1

    .line 1158
    .line 1159
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v8

    .line 1163
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    goto :goto_14

    .line 1167
    :cond_23
    new-instance v2, Lo32;

    .line 1168
    .line 1169
    invoke-direct {v2, v1, v0}, Lo32;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v9, v2}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    :cond_24
    :goto_15
    move-object/from16 v2, v29

    .line 1176
    .line 1177
    const-wide/16 v7, 0x0

    .line 1178
    .line 1179
    goto/16 :goto_0

    .line 1180
    .line 1181
    :cond_25
    new-instance v0, Liw6;

    .line 1182
    .line 1183
    invoke-direct {v0, v1, v4, v5, v3}, Liw6;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v9, v0}, Lmw6;->m(Ldv7;)Ljava/lang/Object;

    .line 1187
    .line 1188
    .line 1189
    return-void
.end method
