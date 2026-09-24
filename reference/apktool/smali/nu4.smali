.class public final Lnu4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvn5;


# instance fields
.field public final a:Lai5;

.field public final b:Lnb4;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(Loc6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lai5;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lai5;-><init>(Loc6;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnu4;->a:Lai5;

    .line 10
    .line 11
    iget-object p1, p1, Loc6;->e:Lnb4;

    .line 12
    .line 13
    iput-object p1, p0, Lnu4;->b:Lnb4;

    .line 14
    .line 15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "Cannot get limit if limit has not been set"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method


# virtual methods
.method public final c(Lsb4;Lqn5;)Lsb4;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final f()Lzq8;
    .locals 0

    .line 1
    iget-object p0, p0, Lnu4;->a:Lai5;

    .line 2
    .line 3
    iget-object p0, p0, Lai5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lzq8;

    .line 6
    .line 7
    return-object p0
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getIndex()Lnb4;
    .locals 0

    .line 1
    iget-object p0, p0, Lnu4;->b:Lnb4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;
    .locals 17

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
    new-instance v2, Lhk5;

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    invoke-direct {v2, v3, v4}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 12
    .line 13
    .line 14
    iget-object v6, v0, Lnu4;->a:Lai5;

    .line 15
    .line 16
    invoke-virtual {v6, v2}, Lai5;->u(Lhk5;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lqv2;->e:Lqv2;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v4

    .line 26
    :goto_0
    iget-object v4, v1, Lsb4;->a:Lqn5;

    .line 27
    .line 28
    invoke-interface {v4, v3}, Lqn5;->m(Lm61;)Lqn5;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move-object v8, v1

    .line 39
    goto/16 :goto_8

    .line 40
    .line 41
    :cond_1
    invoke-interface {v4}, Lqn5;->z()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    iget v7, v0, Lnu4;->c:I

    .line 46
    .line 47
    if-ge v5, v7, :cond_2

    .line 48
    .line 49
    iget-object v0, v6, Lai5;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lzq8;

    .line 52
    .line 53
    move-object v4, v3

    .line 54
    move-object v3, v2

    .line 55
    move-object v2, v4

    .line 56
    move-object/from16 v4, p4

    .line 57
    .line 58
    move-object/from16 v5, p5

    .line 59
    .line 60
    move-object/from16 v6, p6

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v6}, Lzq8;->i(Lsb4;Lm61;Lqn5;Lgy5;Lun5;Lvk9;)Lsb4;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_2
    move-object/from16 v5, p5

    .line 68
    .line 69
    move-object/from16 v9, p6

    .line 70
    .line 71
    move-object v8, v1

    .line 72
    move-object v10, v2

    .line 73
    invoke-interface {v4}, Lqn5;->z()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x1

    .line 78
    if-ne v1, v7, :cond_3

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-static {v1}, Lzm5;->s(Z)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Lhk5;

    .line 87
    .line 88
    invoke-direct {v1, v3, v10}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    iget-boolean v11, v0, Lnu4;->d:Z

    .line 93
    .line 94
    if-eqz v11, :cond_6

    .line 95
    .line 96
    instance-of v12, v4, Lq61;

    .line 97
    .line 98
    if-nez v12, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    invoke-virtual {v8}, Lsb4;->c()V

    .line 102
    .line 103
    .line 104
    iget-object v7, v8, Lsb4;->b:Lra4;

    .line 105
    .line 106
    sget-object v12, Lsb4;->d:Lra4;

    .line 107
    .line 108
    invoke-static {v7, v12}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    move-object v7, v4

    .line 115
    check-cast v7, Lq61;

    .line 116
    .line 117
    iget-object v7, v7, Lq61;->a:Loa4;

    .line 118
    .line 119
    invoke-virtual {v7}, Loa4;->g()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Lm61;

    .line 124
    .line 125
    new-instance v12, Lhk5;

    .line 126
    .line 127
    invoke-interface {v4, v7}, Lqn5;->m(Lm61;)Lqn5;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-direct {v12, v7, v13}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    move-object v7, v12

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    iget-object v7, v8, Lsb4;->b:Lra4;

    .line 137
    .line 138
    iget-object v7, v7, Lra4;->a:Loa4;

    .line 139
    .line 140
    invoke-virtual {v7}, Loa4;->g()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Lhk5;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_6
    instance-of v12, v4, Lq61;

    .line 148
    .line 149
    if-nez v12, :cond_7

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_7
    invoke-virtual {v8}, Lsb4;->c()V

    .line 153
    .line 154
    .line 155
    iget-object v7, v8, Lsb4;->b:Lra4;

    .line 156
    .line 157
    sget-object v12, Lsb4;->d:Lra4;

    .line 158
    .line 159
    invoke-static {v7, v12}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_8

    .line 164
    .line 165
    move-object v7, v4

    .line 166
    check-cast v7, Lq61;

    .line 167
    .line 168
    iget-object v7, v7, Lq61;->a:Loa4;

    .line 169
    .line 170
    invoke-virtual {v7}, Loa4;->f()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    check-cast v7, Lm61;

    .line 175
    .line 176
    new-instance v12, Lhk5;

    .line 177
    .line 178
    invoke-interface {v4, v7}, Lqn5;->m(Lm61;)Lqn5;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    invoke-direct {v12, v7, v13}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_8
    iget-object v7, v8, Lsb4;->b:Lra4;

    .line 187
    .line 188
    iget-object v7, v7, Lra4;->a:Loa4;

    .line 189
    .line 190
    invoke-virtual {v7}, Loa4;->f()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Lhk5;

    .line 195
    .line 196
    :goto_3
    invoke-virtual {v6, v1}, Lai5;->u(Lhk5;)Z

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    invoke-interface {v4, v3}, Lqn5;->c0(Lm61;)Z

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    iget-object v0, v0, Lnu4;->b:Lnb4;

    .line 205
    .line 206
    if-eqz v13, :cond_12

    .line 207
    .line 208
    invoke-interface {v4, v3}, Lqn5;->m(Lm61;)Lqn5;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-interface {v5, v0, v7, v11}, Lun5;->h(Lnb4;Lhk5;Z)Lhk5;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    :goto_4
    if-eqz v7, :cond_a

    .line 217
    .line 218
    iget-object v14, v7, Lhk5;->a:Lm61;

    .line 219
    .line 220
    invoke-virtual {v14, v3}, Lm61;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    if-nez v15, :cond_9

    .line 225
    .line 226
    invoke-interface {v4, v14}, Lqn5;->c0(Lm61;)Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-eqz v14, :cond_a

    .line 231
    .line 232
    :cond_9
    invoke-interface {v5, v0, v7, v11}, Lun5;->h(Lnb4;Lhk5;Z)Lhk5;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    goto :goto_4

    .line 237
    :cond_a
    if-nez v7, :cond_b

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_b
    if-eqz v11, :cond_c

    .line 241
    .line 242
    invoke-interface {v0, v1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    :goto_5
    move v2, v0

    .line 247
    goto :goto_6

    .line 248
    :cond_c
    invoke-interface {v0, v7, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    goto :goto_5

    .line 253
    :goto_6
    if-eqz v12, :cond_e

    .line 254
    .line 255
    invoke-interface {v10}, Lqn5;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_e

    .line 260
    .line 261
    if-ltz v2, :cond_e

    .line 262
    .line 263
    if-eqz v9, :cond_d

    .line 264
    .line 265
    invoke-static {v10}, Lsb4;->d(Lqn5;)Lsb4;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-static {v13}, Lsb4;->d(Lqn5;)Lsb4;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    new-instance v0, Lk31;

    .line 274
    .line 275
    const/4 v1, 0x4

    .line 276
    const/4 v4, 0x0

    .line 277
    invoke-direct/range {v0 .. v5}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v0}, Lvk9;->p(Lk31;)V

    .line 281
    .line 282
    .line 283
    :cond_d
    invoke-virtual {v8, v3, v10}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    return-object v0

    .line 288
    :cond_e
    if-eqz v9, :cond_f

    .line 289
    .line 290
    invoke-static {v13}, Lsb4;->d(Lqn5;)Lsb4;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    new-instance v0, Lk31;

    .line 295
    .line 296
    const/4 v4, 0x0

    .line 297
    const/4 v5, 0x0

    .line 298
    const/4 v1, 0x1

    .line 299
    invoke-direct/range {v0 .. v5}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v0}, Lvk9;->p(Lk31;)V

    .line 303
    .line 304
    .line 305
    :cond_f
    sget-object v0, Lqv2;->e:Lqv2;

    .line 306
    .line 307
    invoke-virtual {v8, v3, v0}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v7, :cond_11

    .line 312
    .line 313
    iget-object v1, v7, Lhk5;->b:Lqn5;

    .line 314
    .line 315
    iget-object v2, v7, Lhk5;->a:Lm61;

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Lai5;->u(Lhk5;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_11

    .line 322
    .line 323
    if-eqz v9, :cond_10

    .line 324
    .line 325
    invoke-static {v1}, Lsb4;->d(Lqn5;)Lsb4;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    new-instance v4, Lk31;

    .line 330
    .line 331
    const/4 v5, 0x0

    .line 332
    const/4 v6, 0x0

    .line 333
    const/4 v7, 0x2

    .line 334
    move-object/from16 p3, v2

    .line 335
    .line 336
    move-object/from16 p2, v3

    .line 337
    .line 338
    move-object/from16 p0, v4

    .line 339
    .line 340
    move-object/from16 p4, v5

    .line 341
    .line 342
    move-object/from16 p5, v6

    .line 343
    .line 344
    move/from16 p1, v7

    .line 345
    .line 346
    invoke-direct/range {p0 .. p5}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v3, p0

    .line 350
    .line 351
    invoke-virtual {v9, v3}, Lvk9;->p(Lk31;)V

    .line 352
    .line 353
    .line 354
    :cond_10
    invoke-virtual {v0, v2, v1}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    :cond_11
    return-object v0

    .line 359
    :cond_12
    invoke-interface {v10}, Lqn5;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_13

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_13
    if-eqz v12, :cond_16

    .line 367
    .line 368
    if-eqz v11, :cond_14

    .line 369
    .line 370
    invoke-interface {v0, v1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    goto :goto_7

    .line 375
    :cond_14
    invoke-interface {v0, v7, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    :goto_7
    if-ltz v0, :cond_16

    .line 380
    .line 381
    if-eqz v9, :cond_15

    .line 382
    .line 383
    iget-object v14, v7, Lhk5;->a:Lm61;

    .line 384
    .line 385
    iget-object v0, v7, Lhk5;->b:Lqn5;

    .line 386
    .line 387
    invoke-static {v0}, Lsb4;->d(Lqn5;)Lsb4;

    .line 388
    .line 389
    .line 390
    move-result-object v13

    .line 391
    new-instance v11, Lk31;

    .line 392
    .line 393
    const/4 v15, 0x0

    .line 394
    const/16 v16, 0x0

    .line 395
    .line 396
    const/4 v12, 0x1

    .line 397
    invoke-direct/range {v11 .. v16}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v9, v11}, Lvk9;->p(Lk31;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v10}, Lsb4;->d(Lqn5;)Lsb4;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    new-instance v0, Lk31;

    .line 408
    .line 409
    const/4 v4, 0x0

    .line 410
    const/4 v5, 0x0

    .line 411
    const/4 v1, 0x2

    .line 412
    invoke-direct/range {v0 .. v5}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v9, v0}, Lvk9;->p(Lk31;)V

    .line 416
    .line 417
    .line 418
    :cond_15
    invoke-virtual {v8, v3, v10}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v1, v7, Lhk5;->a:Lm61;

    .line 423
    .line 424
    sget-object v2, Lqv2;->e:Lqv2;

    .line 425
    .line 426
    invoke-virtual {v0, v1, v2}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    return-object v0

    .line 431
    :cond_16
    :goto_8
    return-object v8
.end method

.method public final l(Lsb4;Lsb4;Lvk9;)Lsb4;
    .locals 11

    .line 1
    iget-object v0, p2, Lsb4;->a:Lqn5;

    .line 2
    .line 3
    invoke-interface {v0}, Lqn5;->Z()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lnu4;->b:Lnb4;

    .line 8
    .line 9
    iget-object v3, p0, Lnu4;->a:Lai5;

    .line 10
    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    invoke-interface {v0}, Lqn5;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    sget-object v1, Lqv2;->e:Lqv2;

    .line 22
    .line 23
    new-instance v4, Lsb4;

    .line 24
    .line 25
    iget-object v5, p2, Lsb4;->a:Lqn5;

    .line 26
    .line 27
    invoke-interface {v5, v1}, Lqn5;->q(Lqn5;)Lqn5;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v5, p2, Lsb4;->c:Lnb4;

    .line 32
    .line 33
    iget-object v6, p2, Lsb4;->b:Lra4;

    .line 34
    .line 35
    invoke-direct {v4, v1, v5, v6}, Lsb4;-><init>(Lqn5;Lnb4;Lra4;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lnu4;->d:Z

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2}, Lsb4;->c()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p2, Lsb4;->b:Lra4;

    .line 47
    .line 48
    sget-object v6, Lsb4;->d:Lra4;

    .line 49
    .line 50
    invoke-static {v1, v6}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-interface {v0}, Lqn5;->k0()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p2, p2, Lsb4;->b:Lra4;

    .line 62
    .line 63
    new-instance v0, Lqa4;

    .line 64
    .line 65
    iget-object p2, p2, Lra4;->a:Loa4;

    .line 66
    .line 67
    invoke-virtual {p2}, Loa4;->k0()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-direct {v0, p2}, Lqa4;-><init>(Ljava/util/Iterator;)V

    .line 72
    .line 73
    .line 74
    move-object p2, v0

    .line 75
    :goto_0
    iget-object v0, v3, Lai5;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lhk5;

    .line 78
    .line 79
    iget-object v1, v3, Lai5;->d:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Lhk5;

    .line 82
    .line 83
    const/4 v6, -0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p2}, Lsb4;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    iget-object v0, v3, Lai5;->d:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Lhk5;

    .line 92
    .line 93
    iget-object v1, v3, Lai5;->e:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lhk5;

    .line 96
    .line 97
    move v6, v5

    .line 98
    :goto_1
    const/4 v7, 0x0

    .line 99
    move v8, v7

    .line 100
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v9, :cond_6

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Lhk5;

    .line 111
    .line 112
    if-nez v7, :cond_3

    .line 113
    .line 114
    invoke-interface {v2, v0, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    mul-int/2addr v10, v6

    .line 119
    if-gtz v10, :cond_3

    .line 120
    .line 121
    move v7, v5

    .line 122
    :cond_3
    if-eqz v7, :cond_4

    .line 123
    .line 124
    iget v10, p0, Lnu4;->c:I

    .line 125
    .line 126
    if-ge v8, v10, :cond_4

    .line 127
    .line 128
    invoke-interface {v2, v9, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    mul-int/2addr v10, v6

    .line 133
    if-gtz v10, :cond_4

    .line 134
    .line 135
    add-int/lit8 v8, v8, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iget-object v9, v9, Lhk5;->a:Lm61;

    .line 139
    .line 140
    sget-object v10, Lqv2;->e:Lqv2;

    .line 141
    .line 142
    invoke-virtual {v4, v9, v10}, Lsb4;->e(Lm61;Lqn5;)Lsb4;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    :goto_3
    sget-object p0, Lqv2;->e:Lqv2;

    .line 148
    .line 149
    new-instance v4, Lsb4;

    .line 150
    .line 151
    invoke-direct {v4, p0, v2}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object p0, v3, Lai5;->b:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lzq8;

    .line 157
    .line 158
    invoke-virtual {p0, p1, v4, p3}, Lzq8;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 159
    .line 160
    .line 161
    return-object v4
.end method
