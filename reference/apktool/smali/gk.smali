.class public final Lgk;
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
    iput p1, p0, Lgk;->a:I

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
    .locals 14

    .line 1
    iget p0, p0, Lgk;->a:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    move v8, v3

    .line 17
    move v9, v8

    .line 18
    move v11, v9

    .line 19
    move-object v7, v5

    .line 20
    move-object v10, v7

    .line 21
    move-object v12, v10

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge v0, p0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-char v1, v0

    .line 33
    packed-switch v1, :pswitch_data_1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    invoke-static {p1, v0}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    move-object v12, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    add-int/2addr v1, v0

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    .line 59
    .line 60
    move-object v12, v2

    .line 61
    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {p1, v0}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    invoke-static {p1, v0}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    move-object v10, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    add-int/2addr v1, v0

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    .line 86
    .line 87
    move-object v10, v2

    .line 88
    goto :goto_0

    .line 89
    :pswitch_3
    invoke-static {p1, v0}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    goto :goto_0

    .line 94
    :pswitch_4
    invoke-static {p1, v0}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    goto :goto_0

    .line 99
    :pswitch_5
    sget-object v1, Lkq6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    .line 101
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v7, v0

    .line 106
    check-cast v7, Lkq6;

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 110
    .line 111
    .line 112
    new-instance v6, Lis1;

    .line 113
    .line 114
    invoke-direct/range {v6 .. v12}, Lis1;-><init>(Lkq6;ZZ[II[I)V

    .line 115
    .line 116
    .line 117
    return-object v6

    .line 118
    :pswitch_6
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    move-object v6, v5

    .line 123
    move-object v7, v6

    .line 124
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-ge v8, p0, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    int-to-char v9, v8

    .line 135
    if-eq v9, v4, :cond_6

    .line 136
    .line 137
    if-eq v9, v2, :cond_5

    .line 138
    .line 139
    if-eq v9, v1, :cond_4

    .line 140
    .line 141
    if-eq v9, v0, :cond_3

    .line 142
    .line 143
    invoke-static {p1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    sget-object v7, Lhs1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 148
    .line 149
    invoke-static {p1, v8, v7}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lhs1;

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 157
    .line 158
    invoke-static {p1, v8, v6}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Landroid/app/PendingIntent;

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-static {p1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    goto :goto_1

    .line 170
    :cond_6
    invoke-static {p1, v8}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    goto :goto_1

    .line 175
    :cond_7
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 176
    .line 177
    .line 178
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    .line 179
    .line 180
    invoke-direct {p0, v3, v5, v6, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 181
    .line 182
    .line 183
    return-object p0

    .line 184
    :pswitch_7
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-ge v0, p0, :cond_a

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    int-to-char v1, v0

    .line 199
    if-eq v1, v4, :cond_9

    .line 200
    .line 201
    if-eq v1, v2, :cond_8

    .line 202
    .line 203
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_8
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    goto :goto_2

    .line 212
    :cond_9
    invoke-static {p1, v0}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    goto :goto_2

    .line 217
    :cond_a
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 218
    .line 219
    .line 220
    new-instance p0, Lcom/google/android/gms/common/api/Scope;

    .line 221
    .line 222
    invoke-direct {p0, v3, v5}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_8
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    move-object v0, v5

    .line 231
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ge v1, p0, :cond_d

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    int-to-char v3, v1

    .line 242
    if-eq v3, v4, :cond_c

    .line 243
    .line 244
    if-eq v3, v2, :cond_b

    .line 245
    .line 246
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_b
    sget-object v0, Lv88;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 251
    .line 252
    invoke-static {p1, v1, v0}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    goto :goto_3

    .line 257
    :cond_c
    sget-object v3, Lyz5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 258
    .line 259
    invoke-static {p1, v1, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    goto :goto_3

    .line 264
    :cond_d
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 265
    .line 266
    .line 267
    new-instance p0, Lu99;

    .line 268
    .line 269
    invoke-direct {p0, v5, v0}, Lu99;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 270
    .line 271
    .line 272
    return-object p0

    .line 273
    :pswitch_9
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    move v4, v3

    .line 278
    move-object v6, v5

    .line 279
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    if-ge v7, p0, :cond_12

    .line 284
    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    int-to-char v8, v7

    .line 290
    if-eq v8, v2, :cond_11

    .line 291
    .line 292
    if-eq v8, v1, :cond_10

    .line 293
    .line 294
    if-eq v8, v0, :cond_f

    .line 295
    .line 296
    const/4 v9, 0x5

    .line 297
    if-eq v8, v9, :cond_e

    .line 298
    .line 299
    invoke-static {p1, v7}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_e
    invoke-static {p1, v7}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    goto :goto_4

    .line 308
    :cond_f
    invoke-static {p1, v7}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 309
    .line 310
    .line 311
    move-result v3

    .line 312
    goto :goto_4

    .line 313
    :cond_10
    invoke-static {p1, v7}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    goto :goto_4

    .line 318
    :cond_11
    invoke-static {p1, v7}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    goto :goto_4

    .line 323
    :cond_12
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 324
    .line 325
    .line 326
    new-instance p0, Lhh8;

    .line 327
    .line 328
    invoke-direct {p0, v5, v6, v3, v4}, Lhh8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 329
    .line 330
    .line 331
    return-object p0

    .line 332
    :pswitch_a
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 333
    .line 334
    .line 335
    move-result p0

    .line 336
    const-wide/16 v6, 0x0

    .line 337
    .line 338
    move-object v9, v5

    .line 339
    move-object v10, v9

    .line 340
    move-object v13, v10

    .line 341
    move-wide v11, v6

    .line 342
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-ge v3, p0, :cond_17

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    int-to-char v5, v3

    .line 353
    if-eq v5, v4, :cond_16

    .line 354
    .line 355
    if-eq v5, v2, :cond_15

    .line 356
    .line 357
    if-eq v5, v1, :cond_14

    .line 358
    .line 359
    if-eq v5, v0, :cond_13

    .line 360
    .line 361
    invoke-static {p1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 362
    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_13
    invoke-static {p1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    goto :goto_5

    .line 370
    :cond_14
    invoke-static {p1, v3}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 371
    .line 372
    .line 373
    move-result-wide v11

    .line 374
    goto :goto_5

    .line 375
    :cond_15
    invoke-static {p1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    goto :goto_5

    .line 380
    :cond_16
    invoke-static {p1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    goto :goto_5

    .line 385
    :cond_17
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 386
    .line 387
    .line 388
    new-instance v8, Lyz5;

    .line 389
    .line 390
    invoke-direct/range {v8 .. v13}, Lyz5;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 391
    .line 392
    .line 393
    return-object v8

    .line 394
    :pswitch_b
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    move-object v6, v5

    .line 399
    move-object v7, v6

    .line 400
    move-object v8, v7

    .line 401
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    if-ge v9, p0, :cond_1c

    .line 406
    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 408
    .line 409
    .line 410
    move-result v9

    .line 411
    int-to-char v10, v9

    .line 412
    if-eq v10, v4, :cond_1b

    .line 413
    .line 414
    if-eq v10, v2, :cond_1a

    .line 415
    .line 416
    if-eq v10, v1, :cond_19

    .line 417
    .line 418
    if-eq v10, v0, :cond_18

    .line 419
    .line 420
    invoke-static {p1, v9}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 421
    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_18
    invoke-static {p1, v9}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    goto :goto_6

    .line 429
    :cond_19
    invoke-static {p1, v9}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    goto :goto_6

    .line 434
    :cond_1a
    invoke-static {p1, v9}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    goto :goto_6

    .line 439
    :cond_1b
    invoke-static {p1, v9}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    goto :goto_6

    .line 444
    :cond_1c
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 445
    .line 446
    .line 447
    new-instance p0, Lh69;

    .line 448
    .line 449
    if-nez v6, :cond_1d

    .line 450
    .line 451
    move-object p1, v5

    .line 452
    goto :goto_7

    .line 453
    :cond_1d
    array-length p1, v6

    .line 454
    invoke-static {v6, p1}, Lwk9;->l([BI)Lwk9;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    :goto_7
    if-nez v7, :cond_1e

    .line 459
    .line 460
    move-object v0, v5

    .line 461
    goto :goto_8

    .line 462
    :cond_1e
    array-length v0, v7

    .line 463
    invoke-static {v7, v0}, Lwk9;->l([BI)Lwk9;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    :goto_8
    if-nez v8, :cond_1f

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_1f
    array-length v1, v8

    .line 471
    invoke-static {v8, v1}, Lwk9;->l([BI)Lwk9;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    :goto_9
    invoke-direct {p0, p1, v0, v5, v3}, Lh69;-><init>(Lwk9;Lwk9;Lwk9;I)V

    .line 476
    .line 477
    .line 478
    return-object p0

    .line 479
    :pswitch_c
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 480
    .line 481
    .line 482
    move-result p0

    .line 483
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-ge v0, p0, :cond_21

    .line 488
    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    int-to-char v1, v0

    .line 494
    if-eq v1, v4, :cond_20

    .line 495
    .line 496
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 497
    .line 498
    .line 499
    goto :goto_a

    .line 500
    :cond_20
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    goto :goto_a

    .line 505
    :cond_21
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 506
    .line 507
    .line 508
    new-instance p0, Ls59;

    .line 509
    .line 510
    invoke-direct {p0, v5}, Ls59;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    return-object p0

    .line 514
    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/fido/common/Transport;->c(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;

    .line 519
    .line 520
    .line 521
    move-result-object v5
    :try_end_0
    .catch Lsa8; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_b

    .line 523
    :catch_0
    move-exception v0

    .line 524
    move-object p0, v0

    .line 525
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 526
    .line 527
    .line 528
    :goto_b
    return-object v5

    .line 529
    :pswitch_e
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 530
    .line 531
    .line 532
    move-result p0

    .line 533
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-ge v0, p0, :cond_24

    .line 538
    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    int-to-char v1, v0

    .line 544
    if-eq v1, v4, :cond_23

    .line 545
    .line 546
    if-eq v1, v2, :cond_22

    .line 547
    .line 548
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 549
    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_22
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    goto :goto_c

    .line 557
    :cond_23
    invoke-static {p1, v0}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    goto :goto_c

    .line 562
    :cond_24
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 563
    .line 564
    .line 565
    new-instance p0, Ltp0;

    .line 566
    .line 567
    invoke-direct {p0, v5, v3}, Ltp0;-><init>(Ljava/lang/String;Z)V

    .line 568
    .line 569
    .line 570
    return-object p0

    .line 571
    :pswitch_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    new-instance v6, Ln17;

    .line 575
    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 581
    .line 582
    .line 583
    move-result v8

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 585
    .line 586
    .line 587
    move-result v9

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 589
    .line 590
    .line 591
    move-result p0

    .line 592
    if-nez p0, :cond_25

    .line 593
    .line 594
    move-object v10, v5

    .line 595
    goto :goto_d

    .line 596
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 597
    .line 598
    .line 599
    move-result p0

    .line 600
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object p0

    .line 604
    move-object v10, p0

    .line 605
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 606
    .line 607
    .line 608
    move-result p0

    .line 609
    if-nez p0, :cond_26

    .line 610
    .line 611
    :goto_e
    move-object v11, v5

    .line 612
    goto :goto_f

    .line 613
    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 614
    .line 615
    .line 616
    move-result p0

    .line 617
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    goto :goto_e

    .line 622
    :goto_f
    invoke-direct/range {v6 .. v11}, Ln17;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 623
    .line 624
    .line 625
    return-object v6

    .line 626
    :pswitch_10
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 627
    .line 628
    .line 629
    move-result p0

    .line 630
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-ge v0, p0, :cond_28

    .line 635
    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    int-to-char v1, v0

    .line 641
    if-eq v1, v4, :cond_27

    .line 642
    .line 643
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 644
    .line 645
    .line 646
    goto :goto_10

    .line 647
    :cond_27
    invoke-static {p1, v0}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    goto :goto_10

    .line 652
    :cond_28
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 653
    .line 654
    .line 655
    new-instance p0, Lwa4;

    .line 656
    .line 657
    invoke-direct {p0, v5}, Lwa4;-><init>(Landroid/os/Bundle;)V

    .line 658
    .line 659
    .line 660
    return-object p0

    .line 661
    :pswitch_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 662
    .line 663
    .line 664
    new-instance p0, Lhk;

    .line 665
    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 675
    .line 676
    .line 677
    move-result p1

    .line 678
    if-eqz p1, :cond_29

    .line 679
    .line 680
    move v3, v4

    .line 681
    :cond_29
    invoke-direct {p0, v0, v1, v3}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 682
    .line 683
    .line 684
    return-object p0

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lgk;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lis1;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/common/api/Status;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/common/api/Scope;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lu99;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lhh8;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lyz5;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lh69;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Ls59;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/fido/common/Transport;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Ltp0;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Ln17;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lwa4;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lhk;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
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
