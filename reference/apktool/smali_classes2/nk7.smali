.class public final Lnk7;
.super Lmk7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lkk7;

    .line 31
    .line 32
    iget-object v3, v3, Lkk7;->a:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/16 v4, 0xa

    .line 37
    .line 38
    invoke-static {v4, v3}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_1
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 55
    .line 56
    const/4 v9, 0x4

    .line 57
    const/4 v10, 0x0

    .line 58
    const-string v6, "SsaidHelper"

    .line 59
    .line 60
    const-string v7, "Current ids empty!"

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-static/range {v5 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object v4

    .line 67
    :cond_3
    invoke-static {v2}, Lel1;->c1(Ljava/util/List;)Ljava/lang/Comparable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz v1, :cond_1c

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    sget-object v2, Lg00;->a:Lg00;

    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lg00;->n(Ljava/lang/String;)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_1c

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {}, Lcz4;->b()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_5

    .line 104
    .line 105
    :cond_4
    move-object v3, v4

    .line 106
    :cond_5
    if-nez v3, :cond_6

    .line 107
    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-interface {v3, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :cond_7
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    const/4 v7, 0x0

    .line 123
    const/4 v8, -0x1

    .line 124
    const-string v9, "package="

    .line 125
    .line 126
    if-eqz v6, :cond_8

    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    check-cast v6, Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v6, v9, v7}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_7

    .line 139
    .line 140
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    goto :goto_1

    .line 145
    :cond_8
    move v5, v8

    .line 146
    :goto_1
    if-ne v5, v8, :cond_9

    .line 147
    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :cond_9
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Ljava/lang/String;

    .line 155
    .line 156
    const-string v8, " "

    .line 157
    .line 158
    filled-new-array {v8}, [Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    const/4 v10, 0x6

    .line 163
    invoke-static {v6, v8, v10}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    if-nez v10, :cond_a

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_a
    move-object v8, v4

    .line 175
    :goto_2
    if-nez v8, :cond_b

    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v10

    .line 183
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_d

    .line 188
    .line 189
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v11

    .line 193
    move-object v12, v11

    .line 194
    check-cast v12, Ljava/lang/String;

    .line 195
    .line 196
    const-string v13, "id="

    .line 197
    .line 198
    invoke-static {v12, v13, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_c

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_d
    move-object v11, v4

    .line 206
    :goto_3
    check-cast v11, Ljava/lang/String;

    .line 207
    .line 208
    if-nez v11, :cond_e

    .line 209
    .line 210
    goto/16 :goto_8

    .line 211
    .line 212
    :cond_e
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    :cond_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    if-eqz v12, :cond_10

    .line 221
    .line 222
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    move-object v13, v12

    .line 227
    check-cast v13, Ljava/lang/String;

    .line 228
    .line 229
    const-string v14, "name="

    .line 230
    .line 231
    invoke-static {v13, v14, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    if-eqz v13, :cond_f

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_10
    move-object v12, v4

    .line 239
    :goto_4
    check-cast v12, Ljava/lang/String;

    .line 240
    .line 241
    if-nez v12, :cond_11

    .line 242
    .line 243
    goto/16 :goto_8

    .line 244
    .line 245
    :cond_11
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v13

    .line 253
    if-eqz v13, :cond_13

    .line 254
    .line 255
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    move-object v14, v13

    .line 260
    check-cast v14, Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v14, v9, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 263
    .line 264
    .line 265
    move-result v14

    .line 266
    if-eqz v14, :cond_12

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_13
    move-object v13, v4

    .line 270
    :goto_5
    check-cast v13, Ljava/lang/String;

    .line 271
    .line 272
    if-nez v13, :cond_14

    .line 273
    .line 274
    goto/16 :goto_8

    .line 275
    .line 276
    :cond_14
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    if-eqz v10, :cond_16

    .line 285
    .line 286
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    move-object v14, v10

    .line 291
    check-cast v14, Ljava/lang/String;

    .line 292
    .line 293
    const-string v15, "value="

    .line 294
    .line 295
    invoke-static {v14, v15, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 296
    .line 297
    .line 298
    move-result v14

    .line 299
    if-eqz v14, :cond_15

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_16
    move-object v10, v4

    .line 303
    :goto_6
    check-cast v10, Ljava/lang/String;

    .line 304
    .line 305
    if-nez v10, :cond_17

    .line 306
    .line 307
    goto/16 :goto_8

    .line 308
    .line 309
    :cond_17
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    :cond_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v9

    .line 317
    if-eqz v9, :cond_19

    .line 318
    .line 319
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    move-object v14, v9

    .line 324
    check-cast v14, Ljava/lang/String;

    .line 325
    .line 326
    const-string v15, "defaultValue="

    .line 327
    .line 328
    invoke-static {v14, v15, v7}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 329
    .line 330
    .line 331
    move-result v14

    .line 332
    if-eqz v14, :cond_18

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_19
    move-object v9, v4

    .line 336
    :goto_7
    check-cast v9, Ljava/lang/String;

    .line 337
    .line 338
    if-nez v9, :cond_1a

    .line 339
    .line 340
    goto/16 :goto_8

    .line 341
    .line 342
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v8, "id=\""

    .line 345
    .line 346
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v1, "\""

    .line 353
    .line 354
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    invoke-static {v6, v11, v7}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    const-string v8, "name=\""

    .line 368
    .line 369
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-static {v6, v12, v2}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    const-string v7, "package=\""

    .line 389
    .line 390
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object/from16 v7, p1

    .line 394
    .line 395
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-static {v2, v13, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    const-string v7, "value=\""

    .line 412
    .line 413
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-static {v2, v10, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    new-instance v6, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v7, "defaultValue=\""

    .line 433
    .line 434
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v2, v9, v0}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_1b

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_1b
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 459
    .line 460
    const/4 v10, 0x4

    .line 461
    const/4 v11, 0x0

    .line 462
    const-string v7, "SsaidHelper"

    .line 463
    .line 464
    const-string v8, "Adding ssaid"

    .line 465
    .line 466
    const/4 v9, 0x0

    .line 467
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    new-instance v1, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 473
    .line 474
    .line 475
    add-int/lit8 v5, v5, 0x1

    .line 476
    .line 477
    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    return-object v1

    .line 481
    :cond_1c
    :goto_8
    return-object v4
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    invoke-static {}, Lcz4;->b()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    :cond_1
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_2
    const-string v2, "package=\""

    .line 20
    .line 21
    const-string v3, "\""

    .line 22
    .line 23
    invoke-static {v2, p0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x0

    .line 32
    move v5, v4

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, -0x1

    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v6, p0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    move v5, v7

    .line 57
    :goto_1
    if-eq v5, v7, :cond_b

    .line 58
    .line 59
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, " "

    .line 66
    .line 67
    filled-new-array {v2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v6, 0x6

    .line 72
    invoke-static {p0, v2, v6}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_6

    .line 85
    .line 86
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    move-object v8, v7

    .line 91
    check-cast v8, Ljava/lang/String;

    .line 92
    .line 93
    const-string v9, "value="

    .line 94
    .line 95
    invoke-static {v8, v9, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    move-object v7, v1

    .line 103
    :goto_2
    check-cast v7, Ljava/lang/String;

    .line 104
    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    move-object v8, v6

    .line 123
    check-cast v8, Ljava/lang/String;

    .line 124
    .line 125
    const-string v9, "defaultValue="

    .line 126
    .line 127
    invoke-static {v8, v9, v4}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_8

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_9
    move-object v6, v1

    .line 135
    :goto_3
    check-cast v6, Ljava/lang/String;

    .line 136
    .line 137
    if-nez v6, :cond_a

    .line 138
    .line 139
    :goto_4
    return-object v1

    .line 140
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v2, "value=\""

    .line 143
    .line 144
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p0, v7, v1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v2, "defaultValue=\""

    .line 164
    .line 165
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-static {p0, v6, p1}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 183
    .line 184
    const/4 v10, 0x4

    .line 185
    const/4 v11, 0x0

    .line 186
    const-string v7, "SsaidHelper"

    .line 187
    .line 188
    const-string v8, "Replacing ssaid"

    .line 189
    .line 190
    const/4 v9, 0x0

    .line 191
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance p1, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v5, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    return-object p1

    .line 203
    :cond_b
    const-string p0, "replaceSsaid() called but ssaid file does not have ssaid for this package!"

    .line 204
    .line 205
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p0, :cond_3

    .line 15
    .line 16
    sget-boolean p0, Lmp6;->g:Z

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    :try_start_0
    sget-object p0, Lg00;->a:Lg00;

    .line 23
    .line 24
    invoke-static {}, Lg00;->i()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    new-instance v0, Ljr7;

    .line 29
    .line 30
    new-instance v2, Ljava/io/File;

    .line 31
    .line 32
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    new-instance v4, Ljava/io/File;

    .line 35
    .line 36
    sget-object v5, Lmk7;->a:Lgv7;

    .line 37
    .line 38
    invoke-virtual {v5}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Ljava/io/File;

    .line 43
    .line 44
    const-string v6, "system"

    .line 45
    .line 46
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, "users"

    .line 50
    .line 51
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "settings_ssaid.xml"

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v0, v2, p0}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p0, "[ -e @@ ]"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljr7;->b(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    new-instance p0, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lxx3;->x(Ljava/io/File;)Ljava/io/InputStream;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v2, Lf51;->a:Ljava/nio/charset/Charset;

    .line 91
    .line 92
    new-instance v3, Ljava/io/InputStreamReader;

    .line 93
    .line 94
    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Ljava/io/BufferedReader;

    .line 98
    .line 99
    const/16 v0, 0x2000

    .line 100
    .line 101
    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :try_start_1
    invoke-static {v2}, Lrs9;->p(Ljava/io/BufferedReader;)Lf77;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v3, Lou;

    .line 109
    .line 110
    const/16 v4, 0xc

    .line 111
    .line 112
    invoke-direct {v3, v4}, Lou;-><init>(I)V

    .line 113
    .line 114
    .line 115
    new-instance v4, Lme3;

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    invoke-direct {v4, v0, v5, v3}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lsl;

    .line 122
    .line 123
    const/16 v3, 0x8

    .line 124
    .line 125
    invoke-direct {v0, v3}, Lsl;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v4, v0}, Lh77;->A0(Lf77;Lmt3;)Lme3;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v3, Lle3;

    .line 133
    .line 134
    invoke-direct {v3, v0}, Lle3;-><init>(Lme3;)V

    .line 135
    .line 136
    .line 137
    :goto_0
    invoke-virtual {v3}, Lle3;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    .line 143
    invoke-virtual {v3}, Lle3;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lkk7;

    .line 148
    .line 149
    iget-object v4, v0, Lkk7;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    move-object p0, v0

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 171
    .line 172
    const-string v3, "SsaidHelper"

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v5, "Built with "

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, " valid entries"

    .line 192
    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const/4 v6, 0x4

    .line 201
    const/4 v7, 0x0

    .line 202
    const/4 v5, 0x0

    .line 203
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 204
    .line 205
    .line 206
    return-object p0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    move-object p0, v0

    .line 209
    goto :goto_3

    .line 210
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    :catchall_1
    move-exception v0

    .line 212
    :try_start_4
    invoke-static {v2, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    :cond_2
    :goto_2
    return-object v1

    .line 217
    :goto_3
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 218
    .line 219
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const-string v0, "buildMap error: "

    .line 224
    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    const/4 v6, 0x4

    .line 230
    const/4 v7, 0x0

    .line 231
    const-string v3, "SsaidHelper"

    .line 232
    .line 233
    const/4 v5, 0x0

    .line 234
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    return-object v1

    .line 238
    :cond_3
    invoke-static {}, Ld6;->o()V

    .line 239
    .line 240
    .line 241
    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    :try_start_0
    sget-object v0, Llk7;->a:Lai6;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    invoke-virtual {p0}, Lnk7;->a()Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lkk7;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lkk7;->c:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    :goto_0
    invoke-static {v0, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 49
    .line 50
    const-string v4, "SsaidHelper"

    .line 51
    .line 52
    const-string v5, "No change in ssaid"

    .line 53
    .line 54
    const/4 v7, 0x4

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    invoke-static {p1, p2}, Lnk7;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v0, p1, p2}, Lnk7;->c(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_1
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    sget-object v1, Lg00;->a:Lg00;

    .line 80
    .line 81
    invoke-static {}, Lg00;->i()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    new-instance v3, Ljr7;

    .line 86
    .line 87
    new-instance v4, Ljava/io/File;

    .line 88
    .line 89
    new-instance v5, Ljava/io/File;

    .line 90
    .line 91
    new-instance v6, Ljava/io/File;

    .line 92
    .line 93
    sget-object v7, Lmk7;->a:Lgv7;

    .line 94
    .line 95
    invoke-virtual {v7}, Lgv7;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Ljava/io/File;

    .line 100
    .line 101
    const-string v8, "system"

    .line 102
    .line 103
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v7, "users"

    .line 107
    .line 108
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v1, "settings_ssaid.xml"

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-direct {v3, v4, v1}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v3}, Ljd4;->E(Ljava/io/File;)Ljava/io/OutputStream;

    .line 128
    .line 129
    .line 130
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 132
    .line 133
    const-string v4, "SsaidHelper"

    .line 134
    .line 135
    const-string v5, "Committing app ssaid, requires device reboot to take effect"

    .line 136
    .line 137
    const/4 v7, 0x4

    .line 138
    const/4 v8, 0x0

    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v0, v1, v3}, Ln84;->f(Ljava/util/ArrayList;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .line 149
    .line 150
    :try_start_2
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lnk7;->a()Ljava/util/HashMap;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    check-cast p0, Lkk7;

    .line 164
    .line 165
    if-eqz p0, :cond_5

    .line 166
    .line 167
    iget-object v2, p0, Lkk7;->c:Ljava/lang/String;

    .line 168
    .line 169
    :cond_5
    invoke-static {v2, p2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_6
    const-string p0, "Verification of committed ssaid failed"

    .line 177
    .line 178
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 179
    .line 180
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    move-object p0, v0

    .line 186
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :catchall_1
    move-exception v0

    .line 188
    move-object p1, v0

    .line 189
    :try_start_4
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_7
    :goto_2
    return-void

    .line 194
    :cond_8
    const-string p0, "Invalid backed up ssaid value"

    .line 195
    .line 196
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    move-object p0, v0

    .line 204
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const/4 v4, 0x4

    .line 211
    const/4 v5, 0x0

    .line 212
    const-string v1, "SsaidHelper"

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method
