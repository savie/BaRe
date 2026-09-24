.class public final Leq1;
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
    iput p1, p0, Leq1;->a:I

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Leq1;->a:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move-object v9, v8

    .line 22
    move-object v10, v9

    .line 23
    move-object v11, v10

    .line 24
    move-object v12, v11

    .line 25
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    if-ge v13, v0, :cond_6

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    int-to-char v14, v13

    .line 36
    if-eq v14, v6, :cond_5

    .line 37
    .line 38
    if-eq v14, v3, :cond_2

    .line 39
    .line 40
    if-eq v14, v4, :cond_1

    .line 41
    .line 42
    if-eq v14, v2, :cond_0

    .line 43
    .line 44
    invoke-static {v1, v13}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v1, v13}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-nez v10, :cond_3

    .line 63
    .line 64
    move-object v10, v8

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-static {v1, v10, v4}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_4

    .line 74
    .line 75
    move v10, v7

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v10, v5

    .line 78
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-static {v1, v13}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lp80;

    .line 92
    .line 93
    invoke-direct {v0, v9, v10, v11, v12}, Lp80;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v0

    .line 97
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    move-object v5, v8

    .line 102
    move-object v7, v5

    .line 103
    move-object v9, v7

    .line 104
    move-object v10, v9

    .line 105
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-ge v11, v0, :cond_c

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    int-to-char v12, v11

    .line 116
    if-eq v12, v6, :cond_b

    .line 117
    .line 118
    if-eq v12, v3, :cond_a

    .line 119
    .line 120
    if-eq v12, v4, :cond_9

    .line 121
    .line 122
    if-eq v12, v2, :cond_7

    .line 123
    .line 124
    invoke-static {v1, v11}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    invoke-static {v1, v11}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-nez v10, :cond_8

    .line 137
    .line 138
    move-object v10, v8

    .line 139
    goto :goto_2

    .line 140
    :cond_8
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    add-int/2addr v11, v10

    .line 145
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 146
    .line 147
    .line 148
    move-object v10, v12

    .line 149
    goto :goto_2

    .line 150
    :cond_9
    invoke-static {v1, v11}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    goto :goto_2

    .line 155
    :cond_a
    invoke-static {v1, v11}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    goto :goto_2

    .line 160
    :cond_b
    invoke-static {v1, v11}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    goto :goto_2

    .line 165
    :cond_c
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Ln80;

    .line 169
    .line 170
    invoke-direct {v0, v5, v7, v9, v10}, Ln80;-><init>([B[B[B[Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v0

    .line 174
    :pswitch_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :try_start_0
    invoke-static {v0}, Lwa6;->c(Ljava/lang/String;)Lwa6;

    .line 179
    .line 180
    .line 181
    move-result-object v8
    :try_end_0
    .catch Lva6; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    :goto_3
    return-object v8

    .line 188
    :pswitch_2
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    move-object v2, v8

    .line 193
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-ge v3, v0, :cond_f

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    int-to-char v4, v3

    .line 204
    if-eq v4, v7, :cond_e

    .line 205
    .line 206
    if-eq v4, v6, :cond_d

    .line 207
    .line 208
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_d
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    goto :goto_4

    .line 217
    :cond_e
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    goto :goto_4

    .line 222
    :cond_f
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lqz3;

    .line 226
    .line 227
    invoke-direct {v0, v8, v2}, Lqz3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :pswitch_3
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-ge v2, v0, :cond_11

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    int-to-char v3, v2

    .line 246
    if-eq v3, v7, :cond_10

    .line 247
    .line 248
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_10
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 253
    .line 254
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    move-object v8, v2

    .line 259
    check-cast v8, Landroid/app/PendingIntent;

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_11
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 263
    .line 264
    .line 265
    new-instance v0, Lxp0;

    .line 266
    .line 267
    invoke-direct {v0, v8}, Lxp0;-><init>(Landroid/app/PendingIntent;)V

    .line 268
    .line 269
    .line 270
    return-object v0

    .line 271
    :pswitch_4
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    const/4 v2, -0x1

    .line 276
    const-wide/16 v3, 0x0

    .line 277
    .line 278
    move/from16 v20, v2

    .line 279
    .line 280
    move-wide v13, v3

    .line 281
    move-wide v15, v13

    .line 282
    move v10, v5

    .line 283
    move v11, v10

    .line 284
    move v12, v11

    .line 285
    move/from16 v19, v12

    .line 286
    .line 287
    move-object/from16 v17, v8

    .line 288
    .line 289
    move-object/from16 v18, v17

    .line 290
    .line 291
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-ge v2, v0, :cond_12

    .line 296
    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    int-to-char v3, v2

    .line 302
    packed-switch v3, :pswitch_data_1

    .line 303
    .line 304
    .line 305
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :pswitch_5
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    move/from16 v20, v2

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :pswitch_6
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    move/from16 v19, v2

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :pswitch_7
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    move-object/from16 v18, v2

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :pswitch_8
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    move-object/from16 v17, v2

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :pswitch_9
    invoke-static {v1, v2}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 338
    .line 339
    .line 340
    move-result-wide v2

    .line 341
    move-wide v15, v2

    .line 342
    goto :goto_6

    .line 343
    :pswitch_a
    invoke-static {v1, v2}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 344
    .line 345
    .line 346
    move-result-wide v2

    .line 347
    move-wide v13, v2

    .line 348
    goto :goto_6

    .line 349
    :pswitch_b
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    move v12, v2

    .line 354
    goto :goto_6

    .line 355
    :pswitch_c
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    move v11, v2

    .line 360
    goto :goto_6

    .line 361
    :pswitch_d
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    move v10, v2

    .line 366
    goto :goto_6

    .line 367
    :cond_12
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 368
    .line 369
    .line 370
    new-instance v9, Ltf5;

    .line 371
    .line 372
    invoke-direct/range {v9 .. v20}, Ltf5;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 373
    .line 374
    .line 375
    return-object v9

    .line 376
    :pswitch_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    new-instance v0, Ls17;

    .line 380
    .line 381
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    move-object/from16 v9, p1

    .line 394
    .line 395
    invoke-virtual {v9}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    .line 400
    .line 401
    .line 402
    move-result-wide v5

    .line 403
    invoke-direct/range {v0 .. v6}, Ls17;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;J)V

    .line 404
    .line 405
    .line 406
    return-object v0

    .line 407
    :pswitch_f
    move-object v9, v1

    .line 408
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    move v0, v5

    .line 424
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    .line 425
    .line 426
    .line 427
    move-result-wide v5

    .line 428
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    sget-object v1, Ld17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 433
    .line 434
    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    move-object v8, v1

    .line 439
    check-cast v8, Ld17;

    .line 440
    .line 441
    sget-object v1, Le17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 442
    .line 443
    invoke-interface {v1, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Le17;

    .line 448
    .line 449
    sget-object v10, Lc17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 450
    .line 451
    invoke-interface {v10, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v10

    .line 455
    check-cast v10, Lc17;

    .line 456
    .line 457
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    new-instance v12, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .line 465
    .line 466
    :goto_7
    if-eq v0, v11, :cond_13

    .line 467
    .line 468
    sget-object v13, Lk17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 469
    .line 470
    invoke-interface {v13, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    add-int/lit8 v0, v0, 0x1

    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_13
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    move-object v9, v1

    .line 485
    new-instance v1, Lf17;

    .line 486
    .line 487
    move-object v11, v12

    .line 488
    move v12, v0

    .line 489
    invoke-direct/range {v1 .. v12}, Lf17;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ld17;Le17;Lc17;Ljava/util/ArrayList;I)V

    .line 490
    .line 491
    .line 492
    return-object v1

    .line 493
    :pswitch_10
    move-object v9, v1

    .line 494
    invoke-static {v9}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    :goto_8
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-ge v1, v0, :cond_14

    .line 503
    .line 504
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    invoke-static {v9, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 509
    .line 510
    .line 511
    goto :goto_8

    .line 512
    :cond_14
    invoke-static {v9, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 513
    .line 514
    .line 515
    new-instance v0, Ldi6;

    .line 516
    .line 517
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 518
    .line 519
    .line 520
    return-object v0

    .line 521
    :pswitch_11
    move-object v9, v1

    .line 522
    new-instance v0, Lly4;

    .line 523
    .line 524
    invoke-direct {v0, v9}, Lly4;-><init>(Landroid/os/Parcel;)V

    .line 525
    .line 526
    .line 527
    return-object v0

    .line 528
    :pswitch_12
    move-object v9, v1

    .line 529
    new-instance v0, Lwh3;

    .line 530
    .line 531
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    iput v1, v0, Lwh3;->a:I

    .line 539
    .line 540
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    iput v1, v0, Lwh3;->b:I

    .line 545
    .line 546
    return-object v0

    .line 547
    :pswitch_13
    move-object v9, v1

    .line 548
    invoke-static {v9}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    const-string v1, ""

    .line 553
    .line 554
    move-object v10, v1

    .line 555
    move-object v14, v10

    .line 556
    move-object v15, v14

    .line 557
    move-object v11, v8

    .line 558
    move-object v12, v11

    .line 559
    move-object v13, v12

    .line 560
    :goto_9
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-ge v1, v0, :cond_15

    .line 565
    .line 566
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    int-to-char v2, v1

    .line 571
    packed-switch v2, :pswitch_data_2

    .line 572
    .line 573
    .line 574
    invoke-static {v9, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 575
    .line 576
    .line 577
    goto :goto_9

    .line 578
    :pswitch_14
    invoke-static {v9, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v15

    .line 582
    goto :goto_9

    .line 583
    :pswitch_15
    invoke-static {v9, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v14

    .line 587
    goto :goto_9

    .line 588
    :pswitch_16
    invoke-static {v9, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v13

    .line 592
    goto :goto_9

    .line 593
    :pswitch_17
    invoke-static {v9, v1}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 594
    .line 595
    .line 596
    move-result-object v12

    .line 597
    goto :goto_9

    .line 598
    :pswitch_18
    invoke-static {v9, v1}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 599
    .line 600
    .line 601
    move-result-object v11

    .line 602
    goto :goto_9

    .line 603
    :pswitch_19
    invoke-static {v9, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v10

    .line 607
    goto :goto_9

    .line 608
    :cond_15
    invoke-static {v9, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 609
    .line 610
    .line 611
    new-instance v9, Lv22;

    .line 612
    .line 613
    invoke-direct/range {v9 .. v15}, Lv22;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    return-object v9

    .line 617
    :pswitch_1a
    move-object v9, v1

    .line 618
    invoke-static {v9}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    :goto_a
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-ge v1, v0, :cond_17

    .line 627
    .line 628
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    int-to-char v2, v1

    .line 633
    if-eq v2, v7, :cond_16

    .line 634
    .line 635
    invoke-static {v9, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 636
    .line 637
    .line 638
    goto :goto_a

    .line 639
    :cond_16
    invoke-static {v9, v1}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 640
    .line 641
    .line 642
    move-result-object v8

    .line 643
    goto :goto_a

    .line 644
    :cond_17
    invoke-static {v9, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 645
    .line 646
    .line 647
    new-instance v0, Lg22;

    .line 648
    .line 649
    invoke-direct {v0, v8}, Lg22;-><init>(Landroid/os/Bundle;)V

    .line 650
    .line 651
    .line 652
    return-object v0

    .line 653
    :pswitch_1b
    move-object v9, v1

    .line 654
    invoke-static {v9}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    move-object v1, v8

    .line 659
    :goto_b
    invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    if-ge v2, v0, :cond_1a

    .line 664
    .line 665
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    int-to-char v3, v2

    .line 670
    if-eq v3, v7, :cond_19

    .line 671
    .line 672
    if-eq v3, v6, :cond_18

    .line 673
    .line 674
    invoke-static {v9, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 675
    .line 676
    .line 677
    goto :goto_b

    .line 678
    :cond_18
    sget-object v1, Lj12;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 679
    .line 680
    invoke-static {v9, v2, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    check-cast v1, Lj12;

    .line 685
    .line 686
    goto :goto_b

    .line 687
    :cond_19
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 688
    .line 689
    invoke-static {v9, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    move-object v8, v2

    .line 694
    check-cast v8, Landroid/app/PendingIntent;

    .line 695
    .line 696
    goto :goto_b

    .line 697
    :cond_1a
    invoke-static {v9, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 698
    .line 699
    .line 700
    new-instance v0, Ld12;

    .line 701
    .line 702
    invoke-direct {v0, v8, v1}, Ld12;-><init>(Landroid/app/PendingIntent;Lj12;)V

    .line 703
    .line 704
    .line 705
    return-object v0

    .line 706
    :pswitch_1c
    move-object v9, v1

    .line 707
    move v0, v5

    .line 708
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    invoke-virtual {v9}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    if-nez v1, :cond_1b

    .line 728
    .line 729
    move-object v6, v8

    .line 730
    goto :goto_d

    .line 731
    :cond_1b
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    new-instance v2, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 738
    .line 739
    .line 740
    :goto_c
    if-eq v0, v1, :cond_1c

    .line 741
    .line 742
    sget-object v6, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 743
    .line 744
    invoke-interface {v6, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v6

    .line 748
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    add-int/lit8 v0, v0, 0x1

    .line 752
    .line 753
    goto :goto_c

    .line 754
    :cond_1c
    move-object v6, v2

    .line 755
    :goto_d
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    if-nez v0, :cond_1d

    .line 760
    .line 761
    :goto_e
    move-object v7, v8

    .line 762
    goto :goto_f

    .line 763
    :cond_1d
    invoke-virtual {v9}, Landroid/os/Parcel;->readLong()J

    .line 764
    .line 765
    .line 766
    move-result-wide v0

    .line 767
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 768
    .line 769
    .line 770
    move-result-object v8

    .line 771
    goto :goto_e

    .line 772
    :goto_f
    new-instance v2, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 773
    .line 774
    invoke-direct/range {v2 .. v7}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;)V

    .line 775
    .line 776
    .line 777
    return-object v2

    .line 778
    nop

    .line 779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Leq1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lp80;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Ln80;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lwa6;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lqz3;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lxp0;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Ltf5;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Ls17;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lf17;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Ldi6;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lly4;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lwh3;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lv22;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lg22;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Ld12;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
