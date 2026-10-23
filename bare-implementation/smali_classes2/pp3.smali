.class public final Lpp3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldz7;


# instance fields
.field public a:Lcd;

.field public b:Lrn3;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpp3;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lpp3;->a:Lcd;

    .line 9
    .line 10
    const-string v4, "\n\n"

    .line 11
    .line 12
    const-string v5, "\n"

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-eqz v2, :cond_20

    .line 16
    .line 17
    invoke-virtual {v2}, Lcd;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v2, v6, :cond_20

    .line 22
    .line 23
    iget-object v2, v0, Lpp3;->a:Lcd;

    .line 24
    .line 25
    if-eqz v2, :cond_1f

    .line 26
    .line 27
    iget-object v7, v2, Lcd;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v7, Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v2, Lcd;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    const-string v10, " folder backups:"

    .line 45
    .line 46
    const-string v11, " \u2022 "

    .line 47
    .line 48
    if-nez v9, :cond_14

    .line 49
    .line 50
    new-instance v9, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-eqz v14, :cond_0

    .line 64
    .line 65
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    check-cast v14, Lgk3;

    .line 70
    .line 71
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    if-eqz v15, :cond_1

    .line 89
    .line 90
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    check-cast v15, Lgk3;

    .line 95
    .line 96
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-eqz v16, :cond_2

    .line 114
    .line 115
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    check-cast v16, Lgk3;

    .line 120
    .line 121
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v16

    .line 134
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v17

    .line 138
    if-eqz v17, :cond_3

    .line 139
    .line 140
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v17

    .line 144
    check-cast v17, Lgk3;

    .line 145
    .line 146
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v16

    .line 163
    if-eqz v16, :cond_5

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v16

    .line 169
    move-object/from16 v12, v16

    .line 170
    .line 171
    check-cast v12, Lgk3;

    .line 172
    .line 173
    iget-object v12, v12, Lgk3;->b:Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v12, :cond_4

    .line 176
    .line 177
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_8

    .line 186
    .line 187
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-lez v2, :cond_6

    .line 192
    .line 193
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, " folder(s) skipped due to insufficient storage:"

    .line 209
    .line 210
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/4 v9, 0x0

    .line 228
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-eqz v12, :cond_8

    .line 233
    .line 234
    add-int/lit8 v12, v9, 0x1

    .line 235
    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v16

    .line 240
    move-object/from16 v6, v16

    .line 241
    .line 242
    check-cast v6, Ljava/lang/String;

    .line 243
    .line 244
    if-lez v9, :cond_7

    .line 245
    .line 246
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move v9, v12

    .line 265
    const/4 v6, 0x1

    .line 266
    goto :goto_5

    .line 267
    :cond_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_b

    .line 272
    .line 273
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-lez v2, :cond_9

    .line 278
    .line 279
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v2, " folder(s) skipped from local backup as the backup size is larger than the supported maximum file size on your FAT32 storage (4GB):"

    .line 295
    .line 296
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const/4 v6, 0x0

    .line 314
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    if-eqz v9, :cond_b

    .line 319
    .line 320
    add-int/lit8 v9, v6, 0x1

    .line 321
    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v12

    .line 326
    check-cast v12, Ljava/lang/String;

    .line 327
    .line 328
    if-lez v6, :cond_a

    .line 329
    .line 330
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    move v6, v9

    .line 349
    goto :goto_6

    .line 350
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_e

    .line 355
    .line 356
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-lez v2, :cond_c

    .line 361
    .line 362
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    :cond_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v9, "Packing errors during "

    .line 372
    .line 373
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    const/4 v6, 0x0

    .line 397
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    if-eqz v9, :cond_e

    .line 402
    .line 403
    add-int/lit8 v9, v6, 0x1

    .line 404
    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v12

    .line 409
    check-cast v12, Ljava/lang/String;

    .line 410
    .line 411
    if-lez v6, :cond_d

    .line 412
    .line 413
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    move v6, v9

    .line 432
    goto :goto_7

    .line 433
    :cond_e
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-nez v2, :cond_11

    .line 438
    .line 439
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-lez v2, :cond_f

    .line 444
    .line 445
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    :cond_f
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v9, "Compression errors during "

    .line 455
    .line 456
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    const/4 v6, 0x0

    .line 480
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    if-eqz v9, :cond_11

    .line 485
    .line 486
    add-int/lit8 v9, v6, 0x1

    .line 487
    .line 488
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v12

    .line 492
    check-cast v12, Ljava/lang/String;

    .line 493
    .line 494
    if-lez v6, :cond_10

    .line 495
    .line 496
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    move v6, v9

    .line 515
    goto :goto_8

    .line 516
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    if-nez v2, :cond_14

    .line 521
    .line 522
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-lez v2, :cond_12

    .line 527
    .line 528
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v9, "Critical errors during "

    .line 538
    .line 539
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    const/4 v3, 0x0

    .line 563
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    if-eqz v6, :cond_14

    .line 568
    .line 569
    add-int/lit8 v6, v3, 0x1

    .line 570
    .line 571
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v9

    .line 575
    check-cast v9, Ljava/lang/String;

    .line 576
    .line 577
    if-lez v3, :cond_13

    .line 578
    .line 579
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    move v3, v6

    .line 598
    goto :goto_9

    .line 599
    :cond_14
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-nez v2, :cond_1e

    .line 604
    .line 605
    new-instance v2, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    :cond_15
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    if-eqz v6, :cond_16

    .line 619
    .line 620
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    check-cast v6, Lho3;

    .line 625
    .line 626
    iget-object v6, v6, Lho3;->a:Ljava/lang/String;

    .line 627
    .line 628
    if-eqz v6, :cond_15

    .line 629
    .line 630
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    goto :goto_a

    .line 634
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 640
    .line 641
    .line 642
    move-result-object v6

    .line 643
    :cond_17
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v7

    .line 647
    if-eqz v7, :cond_18

    .line 648
    .line 649
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    check-cast v7, Lho3;

    .line 654
    .line 655
    iget-object v7, v7, Lho3;->c:Ljava/lang/String;

    .line 656
    .line 657
    if-eqz v7, :cond_17

    .line 658
    .line 659
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    goto :goto_b

    .line 663
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 664
    .line 665
    .line 666
    move-result v6

    .line 667
    if-nez v6, :cond_1b

    .line 668
    .line 669
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 670
    .line 671
    .line 672
    move-result v6

    .line 673
    if-lez v6, :cond_19

    .line 674
    .line 675
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    new-instance v7, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    const-string v9, "Cloud upload errors during "

    .line 685
    .line 686
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    const/4 v6, 0x0

    .line 710
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    if-eqz v7, :cond_1b

    .line 715
    .line 716
    add-int/lit8 v7, v6, 0x1

    .line 717
    .line 718
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v9

    .line 722
    check-cast v9, Ljava/lang/String;

    .line 723
    .line 724
    if-lez v6, :cond_1a

    .line 725
    .line 726
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 730
    .line 731
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v6

    .line 741
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    move v6, v7

    .line 745
    goto :goto_c

    .line 746
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    if-nez v2, :cond_1e

    .line 751
    .line 752
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 753
    .line 754
    .line 755
    move-result v2

    .line 756
    if-lez v2, :cond_1c

    .line 757
    .line 758
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    :cond_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 762
    .line 763
    .line 764
    move-result v2

    .line 765
    new-instance v6, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    const-string v7, "Firebase errors during "

    .line 768
    .line 769
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    const/4 v12, 0x0

    .line 793
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    if-eqz v3, :cond_1e

    .line 798
    .line 799
    add-int/lit8 v3, v12, 0x1

    .line 800
    .line 801
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 802
    .line 803
    .line 804
    move-result-object v6

    .line 805
    check-cast v6, Ljava/lang/String;

    .line 806
    .line 807
    if-lez v12, :cond_1d

    .line 808
    .line 809
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v6

    .line 824
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    move v12, v3

    .line 828
    goto :goto_d

    .line 829
    :cond_1e
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    goto :goto_e

    .line 837
    :cond_1f
    const/4 v2, 0x0

    .line 838
    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    :cond_20
    iget-object v2, v0, Lpp3;->b:Lrn3;

    .line 842
    .line 843
    if-eqz v2, :cond_38

    .line 844
    .line 845
    invoke-virtual {v2}, Lrn3;->a()Z

    .line 846
    .line 847
    .line 848
    move-result v2

    .line 849
    const/4 v3, 0x1

    .line 850
    if-ne v2, v3, :cond_38

    .line 851
    .line 852
    iget-object v2, v0, Lpp3;->b:Lrn3;

    .line 853
    .line 854
    if-eqz v2, :cond_37

    .line 855
    .line 856
    iget-object v3, v2, Lrn3;->a:Ljava/util/ArrayList;

    .line 857
    .line 858
    new-instance v6, Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    .line 862
    .line 863
    iget-object v2, v2, Lrn3;->b:Ljava/util/ArrayList;

    .line 864
    .line 865
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    const v8, 0x7f1305bb

    .line 870
    .line 871
    .line 872
    const v9, 0x7f1305bf

    .line 873
    .line 874
    .line 875
    if-nez v7, :cond_27

    .line 876
    .line 877
    new-instance v7, Ljava/util/ArrayList;

    .line 878
    .line 879
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 883
    .line 884
    .line 885
    move-result-object v10

    .line 886
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 887
    .line 888
    .line 889
    move-result v11

    .line 890
    if-eqz v11, :cond_21

    .line 891
    .line 892
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v11

    .line 896
    check-cast v11, Lhm3;

    .line 897
    .line 898
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    .line 900
    .line 901
    goto :goto_f

    .line 902
    :cond_21
    new-instance v10, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 908
    .line 909
    .line 910
    move-result-object v11

    .line 911
    :cond_22
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 912
    .line 913
    .line 914
    move-result v12

    .line 915
    if-eqz v12, :cond_23

    .line 916
    .line 917
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v12

    .line 921
    check-cast v12, Lhm3;

    .line 922
    .line 923
    iget-object v12, v12, Lhm3;->a:Ljava/lang/String;

    .line 924
    .line 925
    if-eqz v12, :cond_22

    .line 926
    .line 927
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    goto :goto_10

    .line 931
    :cond_23
    new-instance v11, Ljava/util/ArrayList;

    .line 932
    .line 933
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 941
    .line 942
    .line 943
    move-result v12

    .line 944
    if-eqz v12, :cond_24

    .line 945
    .line 946
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    move-result-object v12

    .line 950
    check-cast v12, Lhm3;

    .line 951
    .line 952
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    goto :goto_11

    .line 956
    :cond_24
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    if-nez v2, :cond_25

    .line 961
    .line 962
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 963
    .line 964
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 969
    .line 970
    .line 971
    move-result v12

    .line 972
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v12

    .line 976
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v12

    .line 980
    invoke-virtual {v2, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 998
    .line 999
    .line 1000
    move-result v7

    .line 1001
    if-eqz v7, :cond_25

    .line 1002
    .line 1003
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v7

    .line 1007
    check-cast v7, Ljava/lang/String;

    .line 1008
    .line 1009
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    goto :goto_12

    .line 1016
    :cond_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    if-nez v2, :cond_26

    .line 1021
    .line 1022
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1023
    .line 1024
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v2

    .line 1028
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1029
    .line 1030
    .line 1031
    move-result v7

    .line 1032
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v7

    .line 1036
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v7

    .line 1040
    const v12, 0x7f1305ba

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v2, v12, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v2

    .line 1060
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v7

    .line 1064
    if-eqz v7, :cond_26

    .line 1065
    .line 1066
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v7

    .line 1070
    check-cast v7, Ljava/lang/String;

    .line 1071
    .line 1072
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    goto :goto_13

    .line 1079
    :cond_26
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    if-nez v2, :cond_27

    .line 1084
    .line 1085
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1086
    .line 1087
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1092
    .line 1093
    .line 1094
    move-result v7

    .line 1095
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v7

    .line 1099
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v7

    .line 1103
    invoke-virtual {v2, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v2

    .line 1107
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v2

    .line 1120
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v7

    .line 1124
    if-eqz v7, :cond_27

    .line 1125
    .line 1126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v7

    .line 1130
    check-cast v7, Ljava/lang/String;

    .line 1131
    .line 1132
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    goto :goto_14

    .line 1139
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v2

    .line 1143
    if-nez v2, :cond_36

    .line 1144
    .line 1145
    new-instance v2, Ljava/util/ArrayList;

    .line 1146
    .line 1147
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v7

    .line 1154
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1155
    .line 1156
    .line 1157
    move-result v10

    .line 1158
    if-eqz v10, :cond_28

    .line 1159
    .line 1160
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v10

    .line 1164
    check-cast v10, Lun3;

    .line 1165
    .line 1166
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1167
    .line 1168
    .line 1169
    goto :goto_15

    .line 1170
    :cond_28
    new-instance v7, Ljava/util/ArrayList;

    .line 1171
    .line 1172
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v10

    .line 1179
    :goto_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1180
    .line 1181
    .line 1182
    move-result v11

    .line 1183
    if-eqz v11, :cond_29

    .line 1184
    .line 1185
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v11

    .line 1189
    check-cast v11, Lun3;

    .line 1190
    .line 1191
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1192
    .line 1193
    .line 1194
    goto :goto_16

    .line 1195
    :cond_29
    new-instance v10, Ljava/util/ArrayList;

    .line 1196
    .line 1197
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v11

    .line 1204
    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 1205
    .line 1206
    .line 1207
    move-result v12

    .line 1208
    if-eqz v12, :cond_2a

    .line 1209
    .line 1210
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v12

    .line 1214
    check-cast v12, Lun3;

    .line 1215
    .line 1216
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    .line 1218
    .line 1219
    goto :goto_17

    .line 1220
    :cond_2a
    new-instance v11, Ljava/util/ArrayList;

    .line 1221
    .line 1222
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v12

    .line 1229
    :goto_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v13

    .line 1233
    if-eqz v13, :cond_2b

    .line 1234
    .line 1235
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v13

    .line 1239
    check-cast v13, Lun3;

    .line 1240
    .line 1241
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1242
    .line 1243
    .line 1244
    goto :goto_18

    .line 1245
    :cond_2b
    new-instance v12, Ljava/util/ArrayList;

    .line 1246
    .line 1247
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v13

    .line 1254
    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v14

    .line 1258
    if-eqz v14, :cond_2c

    .line 1259
    .line 1260
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v14

    .line 1264
    check-cast v14, Lun3;

    .line 1265
    .line 1266
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    goto :goto_19

    .line 1270
    :cond_2c
    new-instance v13, Ljava/util/ArrayList;

    .line 1271
    .line 1272
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v14

    .line 1279
    :goto_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1280
    .line 1281
    .line 1282
    move-result v15

    .line 1283
    if-eqz v15, :cond_2d

    .line 1284
    .line 1285
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v15

    .line 1289
    check-cast v15, Lun3;

    .line 1290
    .line 1291
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1292
    .line 1293
    .line 1294
    goto :goto_1a

    .line 1295
    :cond_2d
    new-instance v14, Ljava/util/ArrayList;

    .line 1296
    .line 1297
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    :cond_2e
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1305
    .line 1306
    .line 1307
    move-result v15

    .line 1308
    if-eqz v15, :cond_2f

    .line 1309
    .line 1310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v15

    .line 1314
    check-cast v15, Lun3;

    .line 1315
    .line 1316
    iget-object v15, v15, Lun3;->a:Ljava/lang/String;

    .line 1317
    .line 1318
    if-eqz v15, :cond_2e

    .line 1319
    .line 1320
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    .line 1322
    .line 1323
    goto :goto_1b

    .line 1324
    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    if-nez v3, :cond_30

    .line 1329
    .line 1330
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1331
    .line 1332
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v3

    .line 1336
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1337
    .line 1338
    .line 1339
    move-result v15

    .line 1340
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v15

    .line 1344
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v15

    .line 1348
    invoke-virtual {v3, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v2

    .line 1365
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1366
    .line 1367
    .line 1368
    move-result v3

    .line 1369
    if-eqz v3, :cond_30

    .line 1370
    .line 1371
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    check-cast v3, Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    goto :goto_1c

    .line 1384
    :cond_30
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1385
    .line 1386
    .line 1387
    move-result v2

    .line 1388
    if-nez v2, :cond_31

    .line 1389
    .line 1390
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1391
    .line 1392
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v2

    .line 1396
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1397
    .line 1398
    .line 1399
    move-result v3

    .line 1400
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v3

    .line 1404
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v3

    .line 1408
    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v2

    .line 1425
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1426
    .line 1427
    .line 1428
    move-result v3

    .line 1429
    if-eqz v3, :cond_31

    .line 1430
    .line 1431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v3

    .line 1435
    check-cast v3, Ljava/lang/String;

    .line 1436
    .line 1437
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    .line 1439
    .line 1440
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    .line 1443
    goto :goto_1d

    .line 1444
    :cond_31
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v2

    .line 1448
    if-nez v2, :cond_32

    .line 1449
    .line 1450
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1451
    .line 1452
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1457
    .line 1458
    .line 1459
    move-result v3

    .line 1460
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v3

    .line 1464
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v3

    .line 1468
    const v7, 0x7f1305c0

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v2

    .line 1475
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    .line 1480
    .line 1481
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v2

    .line 1488
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1489
    .line 1490
    .line 1491
    move-result v3

    .line 1492
    if-eqz v3, :cond_32

    .line 1493
    .line 1494
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v3

    .line 1498
    check-cast v3, Ljava/lang/String;

    .line 1499
    .line 1500
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    .line 1505
    .line 1506
    goto :goto_1e

    .line 1507
    :cond_32
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-nez v2, :cond_33

    .line 1512
    .line 1513
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1514
    .line 1515
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1520
    .line 1521
    .line 1522
    move-result v3

    .line 1523
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v3

    .line 1527
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v3

    .line 1531
    const v7, 0x7f1305bd

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v2

    .line 1538
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1552
    .line 1553
    .line 1554
    move-result v3

    .line 1555
    if-eqz v3, :cond_33

    .line 1556
    .line 1557
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v3

    .line 1561
    check-cast v3, Ljava/lang/String;

    .line 1562
    .line 1563
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    .line 1569
    goto :goto_1f

    .line 1570
    :cond_33
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1571
    .line 1572
    .line 1573
    move-result v2

    .line 1574
    if-nez v2, :cond_34

    .line 1575
    .line 1576
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1577
    .line 1578
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v2

    .line 1582
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1583
    .line 1584
    .line 1585
    move-result v3

    .line 1586
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1587
    .line 1588
    .line 1589
    move-result-object v3

    .line 1590
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v3

    .line 1594
    const v7, 0x7f1305bc

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v2

    .line 1601
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1602
    .line 1603
    .line 1604
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1611
    .line 1612
    .line 1613
    move-result-object v2

    .line 1614
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    if-eqz v3, :cond_34

    .line 1619
    .line 1620
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v3

    .line 1624
    check-cast v3, Ljava/lang/String;

    .line 1625
    .line 1626
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    .line 1632
    goto :goto_20

    .line 1633
    :cond_34
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1634
    .line 1635
    .line 1636
    move-result v2

    .line 1637
    if-nez v2, :cond_35

    .line 1638
    .line 1639
    const-string v2, "Unexpected Errors\n\n"

    .line 1640
    .line 1641
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v2

    .line 1648
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1649
    .line 1650
    .line 1651
    move-result v3

    .line 1652
    if-eqz v3, :cond_35

    .line 1653
    .line 1654
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v3

    .line 1658
    check-cast v3, Ljava/lang/String;

    .line 1659
    .line 1660
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    goto :goto_21

    .line 1667
    :cond_35
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1668
    .line 1669
    .line 1670
    move-result v2

    .line 1671
    if-nez v2, :cond_36

    .line 1672
    .line 1673
    const-string v2, "Critical Errors\n\n"

    .line 1674
    .line 1675
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1683
    .line 1684
    .line 1685
    move-result v3

    .line 1686
    if-eqz v3, :cond_36

    .line 1687
    .line 1688
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v3

    .line 1692
    check-cast v3, Ljava/lang/String;

    .line 1693
    .line 1694
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    goto :goto_22

    .line 1701
    :cond_36
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v3

    .line 1708
    goto :goto_23

    .line 1709
    :cond_37
    const/4 v3, 0x0

    .line 1710
    :goto_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    .line 1712
    .line 1713
    :cond_38
    iget-object v0, v0, Lpp3;->c:Ljava/util/ArrayList;

    .line 1714
    .line 1715
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1716
    .line 1717
    .line 1718
    move-result v2

    .line 1719
    if-nez v2, :cond_3a

    .line 1720
    .line 1721
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 1722
    .line 1723
    .line 1724
    move-result v2

    .line 1725
    if-lez v2, :cond_39

    .line 1726
    .line 1727
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    .line 1729
    .line 1730
    :cond_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lpp3;->a:Lcd;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcd;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lpp3;->b:Lrn3;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lrn3;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p0, p0, Lpp3;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    :goto_0
    return v1

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final l()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lpp3;->a:Lcd;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, v0, Lcd;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lgk3;

    .line 33
    .line 34
    iget-object v2, v2, Lgk3;->b:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    iget-object v0, v0, Lcd;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_a

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lho3;

    .line 73
    .line 74
    invoke-virtual {v1}, Lho3;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    :cond_5
    iget-object p0, p0, Lpp3;->b:Lrn3;

    .line 81
    .line 82
    if-eqz p0, :cond_b

    .line 83
    .line 84
    iget-object v0, p0, Lrn3;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lun3;

    .line 110
    .line 111
    iget-object v1, v1, Lun3;->a:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_b

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_8
    :goto_3
    iget-object p0, p0, Lrn3;->b:Ljava/util/ArrayList;

    .line 123
    .line 124
    if-eqz p0, :cond_9

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lhm3;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_a
    :goto_4
    const/4 p0, 0x1

    .line 154
    return p0

    .line 155
    :cond_b
    :goto_5
    const/4 p0, 0x0

    .line 156
    return p0
.end method
