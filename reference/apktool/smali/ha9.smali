.class public final synthetic Lha9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Loa9;


# direct methods
.method public synthetic constructor <init>(Loa9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lha9;->a:Loa9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object p0, p0, Lha9;->a:Loa9;

    .line 2
    .line 3
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 4
    .line 5
    iget-object v1, v0, Ldq0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget v2, v0, Ldq0;->b:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x3

    .line 12
    if-ne v2, v4, :cond_0

    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-object v3

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_1d

    .line 18
    .line 19
    :cond_0
    iget v2, v0, Ldq0;->b:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-ne v2, v5, :cond_1

    .line 24
    .line 25
    move v2, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v6

    .line 28
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v7, "accountName"

    .line 41
    .line 42
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v7, v0, Ldq0;->c:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v8, v0, Ldq0;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v9, v0, Ldq0;->A:Ljava/lang/Long;

    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    invoke-static {v1, v7, v8, v9, v10}, Lta9;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v1, v3

    .line 60
    :goto_1
    iget-object v7, v0, Ldq0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v7

    .line 63
    :try_start_1
    iget-object v0, v0, Ldq0;->i:Lw89;

    .line 64
    .line 65
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 66
    iget-object v7, p0, Loa9;->d:Ldq0;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v7, v6}, Ldq0;->r(I)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lle9;->j:Lyq0;

    .line 74
    .line 75
    const/16 v1, 0x6b

    .line 76
    .line 77
    invoke-virtual {v7, v1, v0}, Ldq0;->q(ILyq0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Loa9;->c(Lyq0;)V

    .line 81
    .line 82
    .line 83
    return-object v3

    .line 84
    :cond_3
    iget-object v8, v7, Ldq0;->g:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    const/16 v9, 0x1b

    .line 91
    .line 92
    move v11, v4

    .line 93
    move v10, v9

    .line 94
    :goto_2
    if-lt v10, v4, :cond_6

    .line 95
    .line 96
    :try_start_2
    const-string v11, "BillingClient"

    .line 97
    .line 98
    new-instance v12, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v13, "trying subs apiVersion: "

    .line 104
    .line 105
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-static {v11, v12}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    const-string v11, "subs"

    .line 121
    .line 122
    move-object v12, v0

    .line 123
    check-cast v12, Lg89;

    .line 124
    .line 125
    invoke-virtual {v12}, Lvz8;->l()Landroid/os/Parcel;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12, v13, v5}, Lvz8;->m(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 147
    .line 148
    .line 149
    move v11, v12

    .line 150
    goto :goto_3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    goto/16 :goto_17

    .line 153
    .line 154
    :cond_4
    const-string v11, "subs"

    .line 155
    .line 156
    move-object v12, v0

    .line 157
    check-cast v12, Lg89;

    .line 158
    .line 159
    invoke-virtual {v12, v10, v8, v11, v1}, Lg89;->n(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    :goto_3
    if-nez v11, :cond_5

    .line 164
    .line 165
    const-string v12, "BillingClient"

    .line 166
    .line 167
    new-instance v13, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v14, "highestLevelSupportedForSubs: "

    .line 173
    .line 174
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-static {v12, v13}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    add-int/lit8 v10, v10, -0x1

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    move v10, v6

    .line 192
    :goto_4
    if-lt v10, v4, :cond_7

    .line 193
    .line 194
    move v12, v5

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    move v12, v6

    .line 197
    :goto_5
    iput-boolean v12, v7, Ldq0;->k:Z

    .line 198
    .line 199
    const/16 v12, 0x9

    .line 200
    .line 201
    if-ge v10, v4, :cond_8

    .line 202
    .line 203
    const-string v10, "BillingClient"

    .line 204
    .line 205
    const-string v13, "In-app billing API does not support subscription on this device."

    .line 206
    .line 207
    invoke-static {v10, v13}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    move v10, v12

    .line 211
    goto :goto_6

    .line 212
    :cond_8
    move v10, v5

    .line 213
    :goto_6
    if-lt v9, v4, :cond_b

    .line 214
    .line 215
    const-string v11, "BillingClient"

    .line 216
    .line 217
    new-instance v13, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v14, "trying inapp apiVersion: "

    .line 223
    .line 224
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v13

    .line 234
    invoke-static {v11, v13}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    if-nez v1, :cond_9

    .line 238
    .line 239
    const-string v11, "inapp"

    .line 240
    .line 241
    move-object v13, v0

    .line 242
    check-cast v13, Lg89;

    .line 243
    .line 244
    invoke-virtual {v13}, Lvz8;->l()Landroid/os/Parcel;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v13, v14, v5}, Lvz8;->m(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 266
    .line 267
    .line 268
    move v11, v13

    .line 269
    goto :goto_7

    .line 270
    :cond_9
    const-string v11, "inapp"

    .line 271
    .line 272
    move-object v13, v0

    .line 273
    check-cast v13, Lg89;

    .line 274
    .line 275
    invoke-virtual {v13, v9, v8, v11, v1}, Lg89;->n(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 276
    .line 277
    .line 278
    move-result v11

    .line 279
    :goto_7
    if-nez v11, :cond_a

    .line 280
    .line 281
    iput v9, v7, Ldq0;->l:I

    .line 282
    .line 283
    const-string v0, "BillingClient"

    .line 284
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v8, "mHighestLevelSupportedForInApp: "

    .line 291
    .line 292
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_a
    add-int/lit8 v9, v9, -0x1

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_b
    :goto_8
    iget v0, v7, Ldq0;->l:I

    .line 310
    .line 311
    iput v0, v7, Ldq0;->l:I

    .line 312
    .line 313
    const/16 v1, 0x1a

    .line 314
    .line 315
    if-lt v0, v1, :cond_c

    .line 316
    .line 317
    move v1, v5

    .line 318
    goto :goto_9

    .line 319
    :cond_c
    move v1, v6

    .line 320
    :goto_9
    iput-boolean v1, v7, Ldq0;->w:Z

    .line 321
    .line 322
    const/16 v1, 0x18

    .line 323
    .line 324
    if-lt v0, v1, :cond_d

    .line 325
    .line 326
    move v1, v5

    .line 327
    goto :goto_a

    .line 328
    :cond_d
    move v1, v6

    .line 329
    :goto_a
    iput-boolean v1, v7, Ldq0;->v:Z

    .line 330
    .line 331
    const/16 v1, 0x15

    .line 332
    .line 333
    if-lt v0, v1, :cond_e

    .line 334
    .line 335
    move v1, v5

    .line 336
    goto :goto_b

    .line 337
    :cond_e
    move v1, v6

    .line 338
    :goto_b
    iput-boolean v1, v7, Ldq0;->u:Z

    .line 339
    .line 340
    const/16 v1, 0x14

    .line 341
    .line 342
    if-lt v0, v1, :cond_f

    .line 343
    .line 344
    move v1, v5

    .line 345
    goto :goto_c

    .line 346
    :cond_f
    move v1, v6

    .line 347
    :goto_c
    iput-boolean v1, v7, Ldq0;->t:Z

    .line 348
    .line 349
    const/16 v1, 0x13

    .line 350
    .line 351
    if-lt v0, v1, :cond_10

    .line 352
    .line 353
    move v1, v5

    .line 354
    goto :goto_d

    .line 355
    :cond_10
    move v1, v6

    .line 356
    :goto_d
    iput-boolean v1, v7, Ldq0;->s:Z

    .line 357
    .line 358
    const/16 v1, 0x11

    .line 359
    .line 360
    if-lt v0, v1, :cond_11

    .line 361
    .line 362
    move v1, v5

    .line 363
    goto :goto_e

    .line 364
    :cond_11
    move v1, v6

    .line 365
    :goto_e
    iput-boolean v1, v7, Ldq0;->r:Z

    .line 366
    .line 367
    const/16 v1, 0x10

    .line 368
    .line 369
    if-lt v0, v1, :cond_12

    .line 370
    .line 371
    move v1, v5

    .line 372
    goto :goto_f

    .line 373
    :cond_12
    move v1, v6

    .line 374
    :goto_f
    iput-boolean v1, v7, Ldq0;->q:Z

    .line 375
    .line 376
    const/16 v1, 0xf

    .line 377
    .line 378
    if-lt v0, v1, :cond_13

    .line 379
    .line 380
    move v1, v5

    .line 381
    goto :goto_10

    .line 382
    :cond_13
    move v1, v6

    .line 383
    :goto_10
    iput-boolean v1, v7, Ldq0;->p:Z

    .line 384
    .line 385
    const/16 v1, 0xe

    .line 386
    .line 387
    if-lt v0, v1, :cond_14

    .line 388
    .line 389
    move v1, v5

    .line 390
    goto :goto_11

    .line 391
    :cond_14
    move v1, v6

    .line 392
    :goto_11
    iput-boolean v1, v7, Ldq0;->o:Z

    .line 393
    .line 394
    if-lt v0, v12, :cond_15

    .line 395
    .line 396
    move v1, v5

    .line 397
    goto :goto_12

    .line 398
    :cond_15
    move v1, v6

    .line 399
    :goto_12
    iput-boolean v1, v7, Ldq0;->n:Z

    .line 400
    .line 401
    const/4 v1, 0x6

    .line 402
    if-lt v0, v1, :cond_16

    .line 403
    .line 404
    goto :goto_13

    .line 405
    :cond_16
    move v5, v6

    .line 406
    :goto_13
    iput-boolean v5, v7, Ldq0;->m:Z

    .line 407
    .line 408
    if-ge v0, v4, :cond_17

    .line 409
    .line 410
    const-string v0, "BillingClient"

    .line 411
    .line 412
    const-string v4, "In-app billing API version 3 is not supported on this device."

    .line 413
    .line 414
    invoke-static {v0, v4}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const/16 v10, 0x24

    .line 418
    .line 419
    :cond_17
    invoke-static {v7, v11}, Ldq0;->j(Ldq0;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 420
    .line 421
    .line 422
    if-eqz v11, :cond_18

    .line 423
    .line 424
    sget-object v0, Lle9;->b:Lyq0;

    .line 425
    .line 426
    invoke-virtual {p0, v0, v10, v3, v2}, Loa9;->b(Lyq0;ILjava/lang/String;Z)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0, v0}, Loa9;->c(Lyq0;)V

    .line 430
    .line 431
    .line 432
    return-object v3

    .line 433
    :cond_18
    :try_start_3
    invoke-virtual {p0, v2}, Loa9;->a(Z)Ljava/lang/Long;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-eqz v2, :cond_1a

    .line 438
    .line 439
    invoke-static {}, Lno9;->q()Lho9;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v2}, Lri9;->b()V

    .line 444
    .line 445
    .line 446
    iget-object v4, v2, Lri9;->b:Lxi9;

    .line 447
    .line 448
    check-cast v4, Lno9;

    .line 449
    .line 450
    invoke-static {v4, v1}, Lno9;->p(Lno9;I)V

    .line 451
    .line 452
    .line 453
    invoke-static {}, Luq9;->p()Ltq9;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v1, v6}, Ltq9;->c(Z)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Ltq9;->d()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Lri9;->b()V

    .line 464
    .line 465
    .line 466
    iget-object v4, v1, Lri9;->b:Lxi9;

    .line 467
    .line 468
    check-cast v4, Luq9;

    .line 469
    .line 470
    invoke-static {v4}, Luq9;->t(Luq9;)V

    .line 471
    .line 472
    .line 473
    if-eqz v0, :cond_19

    .line 474
    .line 475
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 476
    .line 477
    .line 478
    move-result-wide v4

    .line 479
    invoke-virtual {v1}, Lri9;->b()V

    .line 480
    .line 481
    .line 482
    iget-object v0, v1, Lri9;->b:Lxi9;

    .line 483
    .line 484
    check-cast v0, Luq9;

    .line 485
    .line 486
    invoke-static {v0, v4, v5}, Luq9;->s(Luq9;J)V

    .line 487
    .line 488
    .line 489
    goto :goto_14

    .line 490
    :catchall_1
    move-exception v0

    .line 491
    goto :goto_15

    .line 492
    :cond_19
    :goto_14
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 493
    .line 494
    invoke-virtual {v2}, Lri9;->b()V

    .line 495
    .line 496
    .line 497
    iget-object v4, v2, Lri9;->b:Lxi9;

    .line 498
    .line 499
    check-cast v4, Lno9;

    .line 500
    .line 501
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    check-cast v1, Luq9;

    .line 506
    .line 507
    invoke-static {v4, v1}, Lno9;->u(Lno9;Luq9;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Lri9;->a()Lxi9;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Lno9;

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Ldq0;->p(Lno9;)V

    .line 517
    .line 518
    .line 519
    goto :goto_16

    .line 520
    :cond_1a
    invoke-static {}, Lpq9;->p()Lmq9;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-static {}, Lro9;->q()Loo9;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lri9;->b()V

    .line 529
    .line 530
    .line 531
    iget-object v4, v2, Lri9;->b:Lxi9;

    .line 532
    .line 533
    check-cast v4, Lro9;

    .line 534
    .line 535
    invoke-static {v4, v6}, Lro9;->p(Lro9;I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Lri9;->b()V

    .line 539
    .line 540
    .line 541
    iget-object v4, v2, Lri9;->b:Lxi9;

    .line 542
    .line 543
    check-cast v4, Lro9;

    .line 544
    .line 545
    invoke-static {v4}, Lro9;->t(Lro9;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1}, Lri9;->b()V

    .line 549
    .line 550
    .line 551
    iget-object v4, v1, Lri9;->b:Lxi9;

    .line 552
    .line 553
    check-cast v4, Lpq9;

    .line 554
    .line 555
    invoke-virtual {v2}, Lri9;->a()Lxi9;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    check-cast v2, Lro9;

    .line 560
    .line 561
    invoke-static {v4, v2}, Lpq9;->q(Lpq9;Lro9;)V

    .line 562
    .line 563
    .line 564
    if-eqz v0, :cond_1b

    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 567
    .line 568
    .line 569
    move-result-wide v4

    .line 570
    invoke-virtual {v1}, Lri9;->b()V

    .line 571
    .line 572
    .line 573
    iget-object v0, v1, Lri9;->b:Lxi9;

    .line 574
    .line 575
    check-cast v0, Lpq9;

    .line 576
    .line 577
    invoke-static {v0, v4, v5}, Lpq9;->r(Lpq9;J)V

    .line 578
    .line 579
    .line 580
    :cond_1b
    iget-object v0, p0, Loa9;->d:Ldq0;

    .line 581
    .line 582
    iget-object v0, v0, Ldq0;->h:Ll39;

    .line 583
    .line 584
    invoke-virtual {v1}, Lri9;->a()Lxi9;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    check-cast v1, Lpq9;

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Ll39;->u(Lpq9;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 591
    .line 592
    .line 593
    goto :goto_16

    .line 594
    :goto_15
    const-string v1, "BillingClient"

    .line 595
    .line 596
    const-string v2, "Unable to log."

    .line 597
    .line 598
    invoke-static {v1, v2, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    :goto_16
    sget-object v0, Lle9;->i:Lyq0;

    .line 602
    .line 603
    invoke-virtual {p0, v0}, Loa9;->c(Lyq0;)V

    .line 604
    .line 605
    .line 606
    goto :goto_1c

    .line 607
    :goto_17
    const-string v1, "BillingClient"

    .line 608
    .line 609
    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    .line 610
    .line 611
    invoke-static {v1, v4, v0}, Lta9;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    instance-of v1, v0, Landroid/os/DeadObjectException;

    .line 615
    .line 616
    const/16 v4, 0x2a

    .line 617
    .line 618
    if-eqz v1, :cond_1c

    .line 619
    .line 620
    const/16 v5, 0x5b

    .line 621
    .line 622
    goto :goto_18

    .line 623
    :cond_1c
    instance-of v5, v0, Landroid/os/RemoteException;

    .line 624
    .line 625
    if-eqz v5, :cond_1d

    .line 626
    .line 627
    const/16 v5, 0x5a

    .line 628
    .line 629
    goto :goto_18

    .line 630
    :cond_1d
    instance-of v5, v0, Ljava/lang/SecurityException;

    .line 631
    .line 632
    if-eqz v5, :cond_1e

    .line 633
    .line 634
    const/16 v5, 0x5c

    .line 635
    .line 636
    goto :goto_18

    .line 637
    :cond_1e
    move v5, v4

    .line 638
    :goto_18
    invoke-static {v5, v4}, Ldj7;->a(II)Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    if-eqz v4, :cond_1f

    .line 643
    .line 644
    invoke-static {v0}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    goto :goto_19

    .line 649
    :cond_1f
    move-object v0, v3

    .line 650
    :goto_19
    iget-object v4, p0, Loa9;->d:Ldq0;

    .line 651
    .line 652
    invoke-virtual {v4, v6}, Ldq0;->r(I)V

    .line 653
    .line 654
    .line 655
    if-eqz v1, :cond_20

    .line 656
    .line 657
    sget-object v4, Lle9;->j:Lyq0;

    .line 658
    .line 659
    goto :goto_1a

    .line 660
    :cond_20
    sget-object v4, Lle9;->h:Lyq0;

    .line 661
    .line 662
    :goto_1a
    invoke-virtual {p0, v4, v5, v0, v2}, Loa9;->b(Lyq0;ILjava/lang/String;Z)V

    .line 663
    .line 664
    .line 665
    if-eqz v1, :cond_21

    .line 666
    .line 667
    sget-object v0, Lle9;->j:Lyq0;

    .line 668
    .line 669
    goto :goto_1b

    .line 670
    :cond_21
    sget-object v0, Lle9;->h:Lyq0;

    .line 671
    .line 672
    :goto_1b
    invoke-virtual {p0, v0}, Loa9;->c(Lyq0;)V

    .line 673
    .line 674
    .line 675
    :goto_1c
    return-object v3

    .line 676
    :catchall_2
    move-exception p0

    .line 677
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 678
    throw p0

    .line 679
    :goto_1d
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 680
    throw p0
.end method
