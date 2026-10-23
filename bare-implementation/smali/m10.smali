.class public final Lm10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm10;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lm10;->a:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-char v3, v2

    .line 31
    if-eq v3, v7, :cond_0

    .line 32
    .line 33
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lih8;

    .line 46
    .line 47
    invoke-direct {v0, v6}, Lih8;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    move-object v6, v5

    .line 56
    move-object v7, v6

    .line 57
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-ge v8, v0, :cond_5

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    int-to-char v9, v8

    .line 68
    if-eq v9, v4, :cond_4

    .line 69
    .line 70
    if-eq v9, v3, :cond_3

    .line 71
    .line 72
    if-eq v9, v2, :cond_2

    .line 73
    .line 74
    invoke-static {v1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    sget-object v7, Lcom/google/android/gms/fido/common/Transport;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
    invoke-static {v1, v8, v7}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v1, v8}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lra6;

    .line 99
    .line 100
    invoke-direct {v0, v5, v6, v7}, Lra6;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 101
    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_1
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    move-object/from16 p0, v5

    .line 109
    .line 110
    move-object/from16 v2, p0

    .line 111
    .line 112
    move-object v3, v2

    .line 113
    move-object v4, v3

    .line 114
    move-object v7, v4

    .line 115
    move-object v8, v7

    .line 116
    move-object v9, v8

    .line 117
    move-object v10, v9

    .line 118
    move-object v11, v10

    .line 119
    move-object v12, v11

    .line 120
    move-object/from16 v17, v12

    .line 121
    .line 122
    move v14, v6

    .line 123
    move v15, v14

    .line 124
    move/from16 v16, v15

    .line 125
    .line 126
    move-object/from16 v6, v17

    .line 127
    .line 128
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    if-ge v13, v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    move-object/from16 v18, v12

    .line 139
    .line 140
    int-to-char v12, v13

    .line 141
    packed-switch v12, :pswitch_data_1

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v13}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 145
    .line 146
    .line 147
    :goto_3
    move-object/from16 v12, v18

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_2
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    move-object/from16 p0, v12

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :pswitch_3
    invoke-static {v1, v13}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 158
    .line 159
    .line 160
    move-result v16

    .line 161
    goto :goto_3

    .line 162
    :pswitch_4
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v17

    .line 166
    goto :goto_3

    .line 167
    :pswitch_5
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    goto :goto_2

    .line 172
    :pswitch_6
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    goto :goto_3

    .line 177
    :pswitch_7
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    goto :goto_3

    .line 182
    :pswitch_8
    invoke-static {v1, v13}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    goto :goto_3

    .line 187
    :pswitch_9
    invoke-static {v1, v13}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    goto :goto_3

    .line 192
    :pswitch_a
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    goto :goto_3

    .line 197
    :pswitch_b
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    goto :goto_3

    .line 202
    :pswitch_c
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    goto :goto_3

    .line 207
    :pswitch_d
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    goto :goto_3

    .line 212
    :pswitch_e
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    goto :goto_3

    .line 217
    :pswitch_f
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    goto :goto_3

    .line 222
    :pswitch_10
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    goto :goto_3

    .line 227
    :pswitch_11
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    goto :goto_3

    .line 232
    :cond_6
    move-object/from16 v18, v12

    .line 233
    .line 234
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lj69;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v5, v0, Lj69;->a:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v2, v0, Lj69;->b:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v3, v0, Lj69;->c:Ljava/lang/String;

    .line 247
    .line 248
    iput-object v4, v0, Lj69;->d:Ljava/lang/String;

    .line 249
    .line 250
    iput-object v6, v0, Lj69;->e:Ljava/lang/String;

    .line 251
    .line 252
    iput-object v7, v0, Lj69;->f:Ljava/lang/String;

    .line 253
    .line 254
    iput-object v8, v0, Lj69;->k:Ljava/lang/String;

    .line 255
    .line 256
    iput-object v9, v0, Lj69;->n:Ljava/lang/String;

    .line 257
    .line 258
    iput-boolean v15, v0, Lj69;->p:Z

    .line 259
    .line 260
    iput-boolean v14, v0, Lj69;->q:Z

    .line 261
    .line 262
    iput-object v10, v0, Lj69;->r:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v11, v0, Lj69;->t:Ljava/lang/String;

    .line 265
    .line 266
    move-object/from16 v5, v18

    .line 267
    .line 268
    iput-object v5, v0, Lj69;->x:Ljava/lang/String;

    .line 269
    .line 270
    move-object/from16 v5, v17

    .line 271
    .line 272
    iput-object v5, v0, Lj69;->y:Ljava/lang/String;

    .line 273
    .line 274
    move/from16 v6, v16

    .line 275
    .line 276
    iput-boolean v6, v0, Lj69;->G:Z

    .line 277
    .line 278
    move-object/from16 v5, p0

    .line 279
    .line 280
    iput-object v5, v0, Lj69;->H:Ljava/lang/String;

    .line 281
    .line 282
    return-object v0

    .line 283
    :pswitch_12
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-ge v2, v0, :cond_8

    .line 292
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    int-to-char v3, v2

    .line 298
    if-eq v3, v7, :cond_7

    .line 299
    .line 300
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 301
    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_7
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    goto :goto_4

    .line 309
    :cond_8
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Ld14;

    .line 313
    .line 314
    invoke-direct {v0, v6}, Ld14;-><init>(Z)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :pswitch_13
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    move-object v2, v5

    .line 323
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-ge v3, v0, :cond_b

    .line 328
    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    int-to-char v6, v3

    .line 334
    if-eq v6, v7, :cond_a

    .line 335
    .line 336
    if-eq v6, v4, :cond_9

    .line 337
    .line 338
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 339
    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_9
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    goto :goto_5

    .line 347
    :cond_a
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    goto :goto_5

    .line 352
    :cond_b
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 353
    .line 354
    .line 355
    new-instance v0, Llf7;

    .line 356
    .line 357
    invoke-direct {v0, v5, v2}, Llf7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    return-object v0

    .line 361
    :pswitch_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    new-instance v6, Lk17;

    .line 365
    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 371
    .line 372
    .line 373
    move-result v8

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 375
    .line 376
    .line 377
    move-result-wide v9

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 379
    .line 380
    .line 381
    move-result-wide v11

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 383
    .line 384
    .line 385
    move-result-wide v13

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 387
    .line 388
    .line 389
    move-result-wide v15

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 391
    .line 392
    .line 393
    move-result-wide v17

    .line 394
    sget-object v0, Lg17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 395
    .line 396
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    move-object/from16 v19, v0

    .line 401
    .line 402
    check-cast v19, Lg17;

    .line 403
    .line 404
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v20

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result v21

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-nez v0, :cond_c

    .line 417
    .line 418
    move-object/from16 v22, v5

    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_c
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 422
    .line 423
    .line 424
    move-result-wide v2

    .line 425
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    move-object/from16 v22, v0

    .line 430
    .line 431
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_d

    .line 436
    .line 437
    move-object/from16 v23, v5

    .line 438
    .line 439
    goto :goto_7

    .line 440
    :cond_d
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2

    .line 444
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    move-object/from16 v23, v0

    .line 449
    .line 450
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-nez v0, :cond_e

    .line 455
    .line 456
    :goto_8
    move-object/from16 v24, v5

    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_e
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 460
    .line 461
    .line 462
    move-result-wide v0

    .line 463
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    goto :goto_8

    .line 468
    :goto_9
    invoke-direct/range {v6 .. v24}, Lk17;-><init>(Ljava/lang/String;IJJJJJLg17;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 469
    .line 470
    .line 471
    return-object v6

    .line 472
    :pswitch_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    move v0, v7

    .line 476
    new-instance v7, Lzc6;

    .line 477
    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 487
    .line 488
    .line 489
    move-result v10

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 491
    .line 492
    .line 493
    move-result v11

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_f

    .line 499
    .line 500
    move v12, v0

    .line 501
    goto :goto_a

    .line 502
    :cond_f
    move v12, v6

    .line 503
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-eqz v2, :cond_10

    .line 508
    .line 509
    move v13, v0

    .line 510
    goto :goto_b

    .line 511
    :cond_10
    move v13, v6

    .line 512
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-eqz v2, :cond_11

    .line 517
    .line 518
    move v14, v0

    .line 519
    goto :goto_c

    .line 520
    :cond_11
    move v14, v6

    .line 521
    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_12

    .line 526
    .line 527
    move v15, v0

    .line 528
    goto :goto_d

    .line 529
    :cond_12
    move v15, v6

    .line 530
    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-eqz v2, :cond_13

    .line 535
    .line 536
    move/from16 v16, v0

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :cond_13
    move/from16 v16, v6

    .line 540
    .line 541
    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    if-eqz v2, :cond_14

    .line 546
    .line 547
    move/from16 v17, v0

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :cond_14
    move/from16 v17, v6

    .line 551
    .line 552
    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-eqz v2, :cond_15

    .line 557
    .line 558
    move/from16 v18, v0

    .line 559
    .line 560
    goto :goto_10

    .line 561
    :cond_15
    move/from16 v18, v6

    .line 562
    .line 563
    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_16

    .line 568
    .line 569
    move/from16 v19, v0

    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_16
    move/from16 v19, v6

    .line 573
    .line 574
    :goto_11
    invoke-direct/range {v7 .. v19}, Lzc6;-><init>(Ljava/lang/String;IIIZZZZZZZZ)V

    .line 575
    .line 576
    .line 577
    return-object v7

    .line 578
    :pswitch_16
    move v0, v7

    .line 579
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    move-object v7, v5

    .line 584
    move-object v8, v7

    .line 585
    move-object v9, v8

    .line 586
    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 587
    .line 588
    .line 589
    move-result v10

    .line 590
    if-ge v10, v6, :cond_1b

    .line 591
    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 593
    .line 594
    .line 595
    move-result v10

    .line 596
    int-to-char v11, v10

    .line 597
    if-eq v11, v0, :cond_1a

    .line 598
    .line 599
    if-eq v11, v4, :cond_19

    .line 600
    .line 601
    if-eq v11, v3, :cond_18

    .line 602
    .line 603
    if-eq v11, v2, :cond_17

    .line 604
    .line 605
    invoke-static {v1, v10}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 606
    .line 607
    .line 608
    goto :goto_12

    .line 609
    :cond_17
    sget-object v9, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 610
    .line 611
    invoke-static {v1, v10, v9}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    check-cast v9, Landroid/os/ResultReceiver;

    .line 616
    .line 617
    goto :goto_12

    .line 618
    :cond_18
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v8

    .line 622
    goto :goto_12

    .line 623
    :cond_19
    invoke-static {v1, v10}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    goto :goto_12

    .line 628
    :cond_1a
    sget-object v5, Lv22;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 629
    .line 630
    invoke-static {v1, v10, v5}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 631
    .line 632
    .line 633
    move-result-object v5

    .line 634
    goto :goto_12

    .line 635
    :cond_1b
    invoke-static {v1, v6}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 636
    .line 637
    .line 638
    new-instance v0, Lcom/google/android/gms/identitycredentials/GetCredentialRequest;

    .line 639
    .line 640
    invoke-direct {v0, v5, v7, v8, v9}, Lcom/google/android/gms/identitycredentials/GetCredentialRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 641
    .line 642
    .line 643
    return-object v0

    .line 644
    :pswitch_17
    move v0, v7

    .line 645
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    move-object v3, v5

    .line 650
    :goto_13
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    if-ge v6, v2, :cond_1e

    .line 655
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 657
    .line 658
    .line 659
    move-result v6

    .line 660
    int-to-char v7, v6

    .line 661
    if-eq v7, v0, :cond_1d

    .line 662
    .line 663
    if-eq v7, v4, :cond_1c

    .line 664
    .line 665
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 666
    .line 667
    .line 668
    goto :goto_13

    .line 669
    :cond_1c
    invoke-static {v1, v6}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    goto :goto_13

    .line 674
    :cond_1d
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v5

    .line 678
    goto :goto_13

    .line 679
    :cond_1e
    invoke-static {v1, v2}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 680
    .line 681
    .line 682
    new-instance v0, Lo22;

    .line 683
    .line 684
    invoke-direct {v0, v3, v5}, Lo22;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    return-object v0

    .line 688
    :pswitch_18
    move v0, v7

    .line 689
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    :goto_14
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-ge v3, v2, :cond_20

    .line 698
    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    int-to-char v4, v3

    .line 704
    if-eq v4, v0, :cond_1f

    .line 705
    .line 706
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 707
    .line 708
    .line 709
    goto :goto_14

    .line 710
    :cond_1f
    invoke-static {v1, v3}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 711
    .line 712
    .line 713
    move-result v6

    .line 714
    goto :goto_14

    .line 715
    :cond_20
    invoke-static {v1, v2}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 716
    .line 717
    .line 718
    new-instance v0, Lj91;

    .line 719
    .line 720
    invoke-direct {v0, v6}, Lj91;-><init>(Z)V

    .line 721
    .line 722
    .line 723
    return-object v0

    .line 724
    :pswitch_19
    new-instance v0, Lmoe/shizuku/api/BinderContainer;

    .line 725
    .line 726
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iput-object v1, v0, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 734
    .line 735
    return-object v0

    .line 736
    :pswitch_1a
    new-instance v0, Lxk0;

    .line 737
    .line 738
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 739
    .line 740
    .line 741
    const/16 v2, 0xff

    .line 742
    .line 743
    iput v2, v0, Lxk0;->p:I

    .line 744
    .line 745
    const/4 v2, -0x2

    .line 746
    iput v2, v0, Lxk0;->r:I

    .line 747
    .line 748
    iput v2, v0, Lxk0;->t:I

    .line 749
    .line 750
    iput v2, v0, Lxk0;->x:I

    .line 751
    .line 752
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 753
    .line 754
    iput-object v2, v0, Lxk0;->L:Ljava/lang/Boolean;

    .line 755
    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    iput v2, v0, Lxk0;->a:I

    .line 761
    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    check-cast v2, Ljava/lang/Integer;

    .line 767
    .line 768
    iput-object v2, v0, Lxk0;->b:Ljava/lang/Integer;

    .line 769
    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    check-cast v2, Ljava/lang/Integer;

    .line 775
    .line 776
    iput-object v2, v0, Lxk0;->c:Ljava/lang/Integer;

    .line 777
    .line 778
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    check-cast v2, Ljava/lang/Integer;

    .line 783
    .line 784
    iput-object v2, v0, Lxk0;->d:Ljava/lang/Integer;

    .line 785
    .line 786
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, Ljava/lang/Integer;

    .line 791
    .line 792
    iput-object v2, v0, Lxk0;->e:Ljava/lang/Integer;

    .line 793
    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    check-cast v2, Ljava/lang/Integer;

    .line 799
    .line 800
    iput-object v2, v0, Lxk0;->f:Ljava/lang/Integer;

    .line 801
    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    check-cast v2, Ljava/lang/Integer;

    .line 807
    .line 808
    iput-object v2, v0, Lxk0;->k:Ljava/lang/Integer;

    .line 809
    .line 810
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    check-cast v2, Ljava/lang/Integer;

    .line 815
    .line 816
    iput-object v2, v0, Lxk0;->n:Ljava/lang/Integer;

    .line 817
    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    iput v2, v0, Lxk0;->p:I

    .line 823
    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    iput-object v2, v0, Lxk0;->q:Ljava/lang/String;

    .line 829
    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    iput v2, v0, Lxk0;->r:I

    .line 835
    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    iput v2, v0, Lxk0;->t:I

    .line 841
    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    iput v2, v0, Lxk0;->x:I

    .line 847
    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    iput-object v2, v0, Lxk0;->G:Ljava/lang/CharSequence;

    .line 853
    .line 854
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    iput-object v2, v0, Lxk0;->H:Ljava/lang/CharSequence;

    .line 859
    .line 860
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 861
    .line 862
    .line 863
    move-result v2

    .line 864
    iput v2, v0, Lxk0;->I:I

    .line 865
    .line 866
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    check-cast v2, Ljava/lang/Integer;

    .line 871
    .line 872
    iput-object v2, v0, Lxk0;->K:Ljava/lang/Integer;

    .line 873
    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    check-cast v2, Ljava/lang/Integer;

    .line 879
    .line 880
    iput-object v2, v0, Lxk0;->M:Ljava/lang/Integer;

    .line 881
    .line 882
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    check-cast v2, Ljava/lang/Integer;

    .line 887
    .line 888
    iput-object v2, v0, Lxk0;->N:Ljava/lang/Integer;

    .line 889
    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 891
    .line 892
    .line 893
    move-result-object v2

    .line 894
    check-cast v2, Ljava/lang/Integer;

    .line 895
    .line 896
    iput-object v2, v0, Lxk0;->O:Ljava/lang/Integer;

    .line 897
    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 899
    .line 900
    .line 901
    move-result-object v2

    .line 902
    check-cast v2, Ljava/lang/Integer;

    .line 903
    .line 904
    iput-object v2, v0, Lxk0;->P:Ljava/lang/Integer;

    .line 905
    .line 906
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    check-cast v2, Ljava/lang/Integer;

    .line 911
    .line 912
    iput-object v2, v0, Lxk0;->Q:Ljava/lang/Integer;

    .line 913
    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    check-cast v2, Ljava/lang/Integer;

    .line 919
    .line 920
    iput-object v2, v0, Lxk0;->R:Ljava/lang/Integer;

    .line 921
    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    check-cast v2, Ljava/lang/Integer;

    .line 927
    .line 928
    iput-object v2, v0, Lxk0;->U:Ljava/lang/Integer;

    .line 929
    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    check-cast v2, Ljava/lang/Integer;

    .line 935
    .line 936
    iput-object v2, v0, Lxk0;->S:Ljava/lang/Integer;

    .line 937
    .line 938
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Ljava/lang/Integer;

    .line 943
    .line 944
    iput-object v2, v0, Lxk0;->T:Ljava/lang/Integer;

    .line 945
    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 947
    .line 948
    .line 949
    move-result-object v2

    .line 950
    check-cast v2, Ljava/lang/Boolean;

    .line 951
    .line 952
    iput-object v2, v0, Lxk0;->L:Ljava/lang/Boolean;

    .line 953
    .line 954
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 955
    .line 956
    .line 957
    move-result-object v2

    .line 958
    check-cast v2, Ljava/util/Locale;

    .line 959
    .line 960
    iput-object v2, v0, Lxk0;->y:Ljava/util/Locale;

    .line 961
    .line 962
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    check-cast v2, Ljava/lang/Boolean;

    .line 967
    .line 968
    iput-object v2, v0, Lxk0;->V:Ljava/lang/Boolean;

    .line 969
    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    check-cast v1, Ljava/lang/Integer;

    .line 975
    .line 976
    iput-object v1, v0, Lxk0;->W:Ljava/lang/Integer;

    .line 977
    .line 978
    return-object v0

    .line 979
    :pswitch_1b
    new-instance v0, Lzj0;

    .line 980
    .line 981
    invoke-direct {v0, v1}, Lzj0;-><init>(Landroid/os/Parcel;)V

    .line 982
    .line 983
    .line 984
    return-object v0

    .line 985
    :pswitch_1c
    move v0, v7

    .line 986
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    new-instance v1, Ln10;

    .line 990
    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 996
    .line 997
    .line 998
    move-result v3

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1000
    .line 1001
    .line 1002
    move-result v4

    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    move v7, v6

    .line 1008
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1009
    .line 1010
    .line 1011
    move-result v6

    .line 1012
    move v8, v7

    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1014
    .line 1015
    .line 1016
    move-result v7

    .line 1017
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1018
    .line 1019
    .line 1020
    move-result v9

    .line 1021
    if-eqz v9, :cond_21

    .line 1022
    .line 1023
    move v9, v8

    .line 1024
    move v8, v0

    .line 1025
    goto :goto_15

    .line 1026
    :cond_21
    move v9, v8

    .line 1027
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1028
    .line 1029
    .line 1030
    move-result v10

    .line 1031
    if-eqz v10, :cond_22

    .line 1032
    .line 1033
    move v9, v0

    .line 1034
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1035
    .line 1036
    .line 1037
    move-result v10

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1039
    .line 1040
    .line 1041
    move-result v11

    .line 1042
    invoke-direct/range {v1 .. v11}, Ln10;-><init>(Ljava/lang/String;IILjava/lang/String;IIZZII)V

    .line 1043
    .line 1044
    .line 1045
    return-object v1

    .line 1046
    nop

    .line 1047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lm10;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lih8;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lra6;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lj69;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Ld14;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Llf7;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lk17;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lzc6;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/identitycredentials/GetCredentialRequest;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lo22;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lj91;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lmoe/shizuku/api/BinderContainer;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lxk0;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lzj0;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Ln10;

    .line 46
    .line 47
    return-object p0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
