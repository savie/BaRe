.class public final Lf9;
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
    iput p1, p0, Lf9;->a:I

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lf9;->a:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

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
    move-object v2, v7

    .line 22
    move-object v3, v2

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v4, v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-char v6, v4

    .line 34
    if-eq v6, v8, :cond_1

    .line 35
    .line 36
    if-eq v6, v5, :cond_0

    .line 37
    .line 38
    invoke-static {v1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lrh9;

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    move-object v1, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    array-length v1, v2

    .line 62
    invoke-static {v2, v1}, Lwk9;->l([BI)Lwk9;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    if-nez v3, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    array-length v2, v3

    .line 70
    invoke-static {v3, v2}, Lwk9;->l([BI)Lwk9;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    :goto_2
    invoke-direct {v0, v1, v7}, Lrh9;-><init>(Lwk9;Lwk9;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    move v14, v6

    .line 83
    move-object v10, v7

    .line 84
    move-object v11, v10

    .line 85
    move-object v12, v11

    .line 86
    move-object v13, v12

    .line 87
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-ge v6, v0, :cond_a

    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    int-to-char v7, v6

    .line 98
    if-eq v7, v8, :cond_9

    .line 99
    .line 100
    if-eq v7, v5, :cond_8

    .line 101
    .line 102
    if-eq v7, v4, :cond_7

    .line 103
    .line 104
    if-eq v7, v3, :cond_6

    .line 105
    .line 106
    if-eq v7, v2, :cond_5

    .line 107
    .line 108
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    invoke-static {v1, v6}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    goto :goto_3

    .line 127
    :cond_8
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    goto :goto_3

    .line 132
    :cond_9
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    goto :goto_3

    .line 137
    :cond_a
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 138
    .line 139
    .line 140
    new-instance v9, Lau2;

    .line 141
    .line 142
    invoke-direct/range {v9 .. v14}, Lau2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    return-object v9

    .line 146
    :pswitch_1
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-ge v2, v0, :cond_c

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    int-to-char v3, v2

    .line 161
    if-eq v3, v8, :cond_b

    .line 162
    .line 163
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_b
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    goto :goto_4

    .line 172
    :cond_c
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Lk80;

    .line 176
    .line 177
    invoke-direct {v0, v6}, Lk80;-><init>(Z)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :pswitch_2
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    move v2, v6

    .line 186
    move v7, v2

    .line 187
    move v9, v8

    .line 188
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-ge v10, v0, :cond_11

    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    int-to-char v11, v10

    .line 199
    if-eq v11, v8, :cond_10

    .line 200
    .line 201
    if-eq v11, v5, :cond_f

    .line 202
    .line 203
    if-eq v11, v4, :cond_e

    .line 204
    .line 205
    if-eq v11, v3, :cond_d

    .line 206
    .line 207
    invoke-static {v1, v10}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_d
    invoke-static {v1, v10}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    goto :goto_5

    .line 216
    :cond_e
    invoke-static {v1, v10}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    goto :goto_5

    .line 221
    :cond_f
    invoke-static {v1, v10}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    goto :goto_5

    .line 226
    :cond_10
    invoke-static {v1, v10}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    goto :goto_5

    .line 231
    :cond_11
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lqn1;

    .line 235
    .line 236
    invoke-direct {v0, v6, v2, v7, v9}, Lqn1;-><init>(IIIZ)V

    .line 237
    .line 238
    .line 239
    return-object v0

    .line 240
    :pswitch_3
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    move-object v2, v7

    .line 245
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-ge v3, v0, :cond_14

    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    int-to-char v6, v3

    .line 256
    if-eq v6, v5, :cond_13

    .line 257
    .line 258
    if-eq v6, v4, :cond_12

    .line 259
    .line 260
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_12
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    goto :goto_6

    .line 269
    :cond_13
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    goto :goto_6

    .line 274
    :cond_14
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Lf58;

    .line 278
    .line 279
    invoke-direct {v0, v7, v2}, Lf58;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-object v0

    .line 283
    :pswitch_4
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-ge v2, v0, :cond_16

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
    if-eq v3, v8, :cond_15

    .line 299
    .line 300
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 301
    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_15
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    goto :goto_7

    .line 309
    :cond_16
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Lc26;

    .line 313
    .line 314
    invoke-direct {v0, v7}, Lc26;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :pswitch_5
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    move-object v9, v7

    .line 323
    move-object v10, v9

    .line 324
    move-object v11, v10

    .line 325
    move-object v12, v11

    .line 326
    move-object v13, v12

    .line 327
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-ge v6, v0, :cond_1c

    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    int-to-char v7, v6

    .line 338
    if-eq v7, v5, :cond_1b

    .line 339
    .line 340
    if-eq v7, v4, :cond_1a

    .line 341
    .line 342
    if-eq v7, v3, :cond_19

    .line 343
    .line 344
    if-eq v7, v2, :cond_18

    .line 345
    .line 346
    const/4 v8, 0x6

    .line 347
    if-eq v7, v8, :cond_17

    .line 348
    .line 349
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 350
    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_17
    invoke-static {v1, v6}, Ljb9;->Y(Landroid/os/Parcel;I)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    goto :goto_8

    .line 358
    :cond_18
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    goto :goto_8

    .line 363
    :cond_19
    invoke-static {v1, v6}, Ljb9;->Y(Landroid/os/Parcel;I)Ljava/lang/Long;

    .line 364
    .line 365
    .line 366
    move-result-object v11

    .line 367
    goto :goto_8

    .line 368
    :cond_1a
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v10

    .line 372
    goto :goto_8

    .line 373
    :cond_1b
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    goto :goto_8

    .line 378
    :cond_1c
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 379
    .line 380
    .line 381
    new-instance v8, Lb69;

    .line 382
    .line 383
    invoke-direct/range {v8 .. v13}, Lb69;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    .line 385
    .line 386
    return-object v8

    .line 387
    :pswitch_6
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    move v10, v6

    .line 392
    move v11, v10

    .line 393
    move v12, v11

    .line 394
    move v13, v12

    .line 395
    move v14, v13

    .line 396
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 397
    .line 398
    .line 399
    move-result v6

    .line 400
    if-ge v6, v0, :cond_22

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    int-to-char v7, v6

    .line 407
    if-eq v7, v8, :cond_21

    .line 408
    .line 409
    if-eq v7, v5, :cond_20

    .line 410
    .line 411
    if-eq v7, v4, :cond_1f

    .line 412
    .line 413
    if-eq v7, v3, :cond_1e

    .line 414
    .line 415
    if-eq v7, v2, :cond_1d

    .line 416
    .line 417
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_1d
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    goto :goto_9

    .line 426
    :cond_1e
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    goto :goto_9

    .line 431
    :cond_1f
    invoke-static {v1, v6}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    goto :goto_9

    .line 436
    :cond_20
    invoke-static {v1, v6}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    goto :goto_9

    .line 441
    :cond_21
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    goto :goto_9

    .line 446
    :cond_22
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 447
    .line 448
    .line 449
    new-instance v9, Lkq6;

    .line 450
    .line 451
    invoke-direct/range {v9 .. v14}, Lkq6;-><init>(IZZII)V

    .line 452
    .line 453
    .line 454
    return-object v9

    .line 455
    :pswitch_7
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    move v10, v6

    .line 460
    move v11, v10

    .line 461
    move-object v12, v7

    .line 462
    move-object v13, v12

    .line 463
    move-object v14, v13

    .line 464
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    if-ge v6, v0, :cond_28

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    int-to-char v7, v6

    .line 475
    if-eq v7, v8, :cond_27

    .line 476
    .line 477
    if-eq v7, v5, :cond_26

    .line 478
    .line 479
    if-eq v7, v4, :cond_25

    .line 480
    .line 481
    if-eq v7, v3, :cond_24

    .line 482
    .line 483
    if-eq v7, v2, :cond_23

    .line 484
    .line 485
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 486
    .line 487
    .line 488
    goto :goto_a

    .line 489
    :cond_23
    invoke-static {v1, v6}, Ljb9;->W(Landroid/os/Parcel;I)Ljava/lang/Integer;

    .line 490
    .line 491
    .line 492
    move-result-object v14

    .line 493
    goto :goto_a

    .line 494
    :cond_24
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    goto :goto_a

    .line 499
    :cond_25
    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 500
    .line 501
    invoke-static {v1, v6, v7}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 502
    .line 503
    .line 504
    move-result-object v6

    .line 505
    move-object v12, v6

    .line 506
    check-cast v12, Landroid/app/PendingIntent;

    .line 507
    .line 508
    goto :goto_a

    .line 509
    :cond_26
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 510
    .line 511
    .line 512
    move-result v11

    .line 513
    goto :goto_a

    .line 514
    :cond_27
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    goto :goto_a

    .line 519
    :cond_28
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 520
    .line 521
    .line 522
    new-instance v9, Lhs1;

    .line 523
    .line 524
    invoke-direct/range {v9 .. v14}, Lhs1;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    .line 526
    .line 527
    return-object v9

    .line 528
    :pswitch_8
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-ge v2, v0, :cond_2a

    .line 537
    .line 538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    int-to-char v3, v2

    .line 543
    if-eq v3, v8, :cond_29

    .line 544
    .line 545
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 546
    .line 547
    .line 548
    goto :goto_b

    .line 549
    :cond_29
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    goto :goto_b

    .line 554
    :cond_2a
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 555
    .line 556
    .line 557
    new-instance v0, Lvp0;

    .line 558
    .line 559
    invoke-direct {v0, v6}, Lvp0;-><init>(Z)V

    .line 560
    .line 561
    .line 562
    return-object v0

    .line 563
    :pswitch_9
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    move v12, v6

    .line 568
    move v13, v12

    .line 569
    move/from16 v16, v13

    .line 570
    .line 571
    move-object v9, v7

    .line 572
    move-object v10, v9

    .line 573
    move-object v11, v10

    .line 574
    move-object v14, v11

    .line 575
    move-object v15, v14

    .line 576
    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    if-ge v2, v0, :cond_2b

    .line 581
    .line 582
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    int-to-char v3, v2

    .line 587
    packed-switch v3, :pswitch_data_1

    .line 588
    .line 589
    .line 590
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 591
    .line 592
    .line 593
    goto :goto_c

    .line 594
    :pswitch_a
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 595
    .line 596
    .line 597
    move-result v16

    .line 598
    goto :goto_c

    .line 599
    :pswitch_b
    sget-object v3, Ltp0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 600
    .line 601
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    move-object v15, v2

    .line 606
    check-cast v15, Ltp0;

    .line 607
    .line 608
    goto :goto_c

    .line 609
    :pswitch_c
    sget-object v3, Lup0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 610
    .line 611
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    move-object v14, v2

    .line 616
    check-cast v14, Lup0;

    .line 617
    .line 618
    goto :goto_c

    .line 619
    :pswitch_d
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 620
    .line 621
    .line 622
    move-result v13

    .line 623
    goto :goto_c

    .line 624
    :pswitch_e
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    goto :goto_c

    .line 629
    :pswitch_f
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v11

    .line 633
    goto :goto_c

    .line 634
    :pswitch_10
    sget-object v3, Lsp0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 635
    .line 636
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    move-object v10, v2

    .line 641
    check-cast v10, Lsp0;

    .line 642
    .line 643
    goto :goto_c

    .line 644
    :pswitch_11
    sget-object v3, Lvp0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 645
    .line 646
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    move-object v9, v2

    .line 651
    check-cast v9, Lvp0;

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_2b
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 655
    .line 656
    .line 657
    new-instance v8, Lwp0;

    .line 658
    .line 659
    invoke-direct/range {v8 .. v16}, Lwp0;-><init>(Lvp0;Lsp0;Ljava/lang/String;ZILup0;Ltp0;Z)V

    .line 660
    .line 661
    .line 662
    return-object v8

    .line 663
    :pswitch_12
    new-instance v0, Ltb8;

    .line 664
    .line 665
    invoke-direct {v0, v1}, Ltb8;-><init>(Landroid/os/Parcel;)V

    .line 666
    .line 667
    .line 668
    return-object v0

    .line 669
    :pswitch_13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    move-object v0, v1

    .line 673
    new-instance v1, Lp17;

    .line 674
    .line 675
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    move v9, v6

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 693
    .line 694
    .line 695
    move-result-wide v6

    .line 696
    move v11, v8

    .line 697
    move v10, v9

    .line 698
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 699
    .line 700
    .line 701
    move-result-wide v8

    .line 702
    move v12, v10

    .line 703
    move v13, v11

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 705
    .line 706
    .line 707
    move-result-wide v10

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 709
    .line 710
    .line 711
    move-result v14

    .line 712
    if-eqz v14, :cond_2c

    .line 713
    .line 714
    move v12, v13

    .line 715
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 716
    .line 717
    .line 718
    move-result-object v13

    .line 719
    invoke-direct/range {v1 .. v13}, Lp17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJZLjava/util/ArrayList;)V

    .line 720
    .line 721
    .line 722
    return-object v1

    .line 723
    :pswitch_14
    move-object v0, v1

    .line 724
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 725
    .line 726
    .line 727
    new-instance v2, Ld17;

    .line 728
    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 738
    .line 739
    .line 740
    move-result-wide v5

    .line 741
    sget-object v1, Lg17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 742
    .line 743
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    move-object v7, v1

    .line 748
    check-cast v7, Lg17;

    .line 749
    .line 750
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 751
    .line 752
    .line 753
    move-result v8

    .line 754
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result v9

    .line 758
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v10

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 763
    .line 764
    .line 765
    move-result v11

    .line 766
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 767
    .line 768
    .line 769
    move-result v12

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 771
    .line 772
    .line 773
    move-result v13

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 775
    .line 776
    .line 777
    move-result v14

    .line 778
    sget-object v1, Ln17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 779
    .line 780
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    move-object v15, v0

    .line 785
    check-cast v15, Ln17;

    .line 786
    .line 787
    invoke-direct/range {v2 .. v15}, Ld17;-><init>(IIJLg17;IILjava/lang/String;IIIILn17;)V

    .line 788
    .line 789
    .line 790
    return-object v2

    .line 791
    :pswitch_15
    move-object v0, v1

    .line 792
    move v13, v8

    .line 793
    invoke-static {v0}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    :goto_d
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    if-ge v2, v1, :cond_2e

    .line 802
    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    int-to-char v3, v2

    .line 808
    if-eq v3, v13, :cond_2d

    .line 809
    .line 810
    invoke-static {v0, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 811
    .line 812
    .line 813
    goto :goto_d

    .line 814
    :cond_2d
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 815
    .line 816
    invoke-static {v0, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    move-object v7, v2

    .line 821
    check-cast v7, Landroid/app/PendingIntent;

    .line 822
    .line 823
    goto :goto_d

    .line 824
    :cond_2e
    invoke-static {v0, v1}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 825
    .line 826
    .line 827
    new-instance v0, Lty5;

    .line 828
    .line 829
    invoke-direct {v0, v7}, Lty5;-><init>(Landroid/app/PendingIntent;)V

    .line 830
    .line 831
    .line 832
    return-object v0

    .line 833
    :pswitch_16
    move-object v0, v1

    .line 834
    new-instance v1, Lem5;

    .line 835
    .line 836
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 840
    .line 841
    .line 842
    move-result v0

    .line 843
    iput v0, v1, Lem5;->a:I

    .line 844
    .line 845
    return-object v1

    .line 846
    :pswitch_17
    move-object v0, v1

    .line 847
    move v12, v6

    .line 848
    move v13, v8

    .line 849
    new-instance v1, Luh3;

    .line 850
    .line 851
    const/4 v2, -0x2

    .line 852
    invoke-direct {v1, v2, v2}, Lqg6;-><init>(II)V

    .line 853
    .line 854
    .line 855
    const/4 v2, 0x0

    .line 856
    iput v2, v1, Luh3;->e:F

    .line 857
    .line 858
    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    .line 860
    iput v2, v1, Luh3;->f:F

    .line 861
    .line 862
    const/4 v2, -0x1

    .line 863
    iput v2, v1, Luh3;->k:I

    .line 864
    .line 865
    const/high16 v2, -0x40800000    # -1.0f

    .line 866
    .line 867
    iput v2, v1, Luh3;->n:F

    .line 868
    .line 869
    const v2, 0xffffff

    .line 870
    .line 871
    .line 872
    iput v2, v1, Luh3;->r:I

    .line 873
    .line 874
    iput v2, v1, Luh3;->t:I

    .line 875
    .line 876
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 877
    .line 878
    .line 879
    move-result v2

    .line 880
    iput v2, v1, Luh3;->e:F

    .line 881
    .line 882
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    iput v2, v1, Luh3;->f:F

    .line 887
    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    iput v2, v1, Luh3;->k:I

    .line 893
    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    iput v2, v1, Luh3;->n:F

    .line 899
    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    iput v2, v1, Luh3;->p:I

    .line 905
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 907
    .line 908
    .line 909
    move-result v2

    .line 910
    iput v2, v1, Luh3;->q:I

    .line 911
    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    iput v2, v1, Luh3;->r:I

    .line 917
    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    iput v2, v1, Luh3;->t:I

    .line 923
    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-eqz v2, :cond_2f

    .line 929
    .line 930
    move v6, v13

    .line 931
    goto :goto_e

    .line 932
    :cond_2f
    move v6, v12

    .line 933
    :goto_e
    iput-boolean v6, v1, Luh3;->x:Z

    .line 934
    .line 935
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 940
    .line 941
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 942
    .line 943
    .line 944
    move-result v2

    .line 945
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 946
    .line 947
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 948
    .line 949
    .line 950
    move-result v2

    .line 951
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 952
    .line 953
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 958
    .line 959
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 964
    .line 965
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 970
    .line 971
    return-object v1

    .line 972
    :pswitch_18
    move-object v0, v1

    .line 973
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    new-instance v1, Lg9;

    .line 977
    .line 978
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    if-nez v3, :cond_30

    .line 987
    .line 988
    goto :goto_f

    .line 989
    :cond_30
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 990
    .line 991
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    move-object v7, v0

    .line 996
    check-cast v7, Landroid/content/Intent;

    .line 997
    .line 998
    :goto_f
    invoke-direct {v1, v7, v2}, Lg9;-><init>(Landroid/content/Intent;I)V

    .line 999
    .line 1000
    .line 1001
    return-object v1

    .line 1002
    nop

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lf9;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lrh9;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lau2;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lk80;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lqn1;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lf58;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lc26;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lb69;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lkq6;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lhs1;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lvp0;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lwp0;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Ltb8;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lp17;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Ld17;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lty5;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lem5;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Luh3;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lg9;

    .line 58
    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
