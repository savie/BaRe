.class public final Lyj0;
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
    iput p1, p0, Lyj0;->a:I

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
    iget p0, p0, Lyj0;->a:I

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    const/4 v1, 0x5

    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    move-object v8, v6

    .line 19
    move-object v9, v8

    .line 20
    move-object v10, v9

    .line 21
    move-object v11, v10

    .line 22
    move-object v12, v11

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ge v4, p0, :cond_5

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-char v6, v4

    .line 34
    if-eq v6, v5, :cond_4

    .line 35
    .line 36
    if-eq v6, v2, :cond_3

    .line 37
    .line 38
    if-eq v6, v3, :cond_2

    .line 39
    .line 40
    if-eq v6, v1, :cond_1

    .line 41
    .line 42
    if-eq v6, v0, :cond_0

    .line 43
    .line 44
    invoke-static {p1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {p1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-static {p1, v4}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Lm80;

    .line 77
    .line 78
    invoke-direct/range {v7 .. v12}, Lm80;-><init>([B[B[B[B[B)V

    .line 79
    .line 80
    .line 81
    return-object v7

    .line 82
    :pswitch_0
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    const-wide/16 v0, -0x1

    .line 87
    .line 88
    move-wide v11, v0

    .line 89
    move v10, v4

    .line 90
    move v13, v10

    .line 91
    move-object v9, v6

    .line 92
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ge v0, p0, :cond_a

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    int-to-char v1, v0

    .line 103
    if-eq v1, v7, :cond_9

    .line 104
    .line 105
    if-eq v1, v5, :cond_8

    .line 106
    .line 107
    if-eq v1, v2, :cond_7

    .line 108
    .line 109
    if-eq v1, v3, :cond_6

    .line 110
    .line 111
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    invoke-static {p1, v0}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    move v13, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_7
    invoke-static {p1, v0}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    move-wide v11, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_8
    invoke-static {p1, v0}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move v10, v0

    .line 132
    goto :goto_1

    .line 133
    :cond_9
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v9, v0

    .line 138
    goto :goto_1

    .line 139
    :cond_a
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 140
    .line 141
    .line 142
    new-instance v8, Ly53;

    .line 143
    .line 144
    invoke-direct/range {v8 .. v13}, Ly53;-><init>(Ljava/lang/String;IJZ)V

    .line 145
    .line 146
    .line 147
    return-object v8

    .line 148
    :pswitch_1
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    move-object v0, v6

    .line 153
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-ge v1, p0, :cond_d

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    int-to-char v2, v1

    .line 164
    if-eq v2, v7, :cond_c

    .line 165
    .line 166
    if-eq v2, v5, :cond_b

    .line 167
    .line 168
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_b
    invoke-static {p1, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_2

    .line 177
    :cond_c
    invoke-static {p1, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    goto :goto_2

    .line 182
    :cond_d
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 183
    .line 184
    .line 185
    new-instance p0, Lsb8;

    .line 186
    .line 187
    invoke-direct {p0, v6, v0}, Lsb8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_2
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    move v13, v4

    .line 196
    move-object v9, v6

    .line 197
    move-object v10, v9

    .line 198
    move-object v11, v10

    .line 199
    move-object v12, v11

    .line 200
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-ge v2, p0, :cond_13

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    int-to-char v4, v2

    .line 211
    if-eq v4, v7, :cond_12

    .line 212
    .line 213
    if-eq v4, v5, :cond_11

    .line 214
    .line 215
    if-eq v4, v3, :cond_10

    .line 216
    .line 217
    if-eq v4, v1, :cond_f

    .line 218
    .line 219
    if-eq v4, v0, :cond_e

    .line 220
    .line 221
    invoke-static {p1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_e
    invoke-static {p1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    goto :goto_3

    .line 230
    :cond_f
    invoke-static {p1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    goto :goto_3

    .line 235
    :cond_10
    invoke-static {p1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    goto :goto_3

    .line 240
    :cond_11
    invoke-static {p1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    goto :goto_3

    .line 245
    :cond_12
    invoke-static {p1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    goto :goto_3

    .line 250
    :cond_13
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Lxz5;

    .line 254
    .line 255
    invoke-direct/range {v8 .. v13}, Lxz5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    .line 257
    .line 258
    return-object v8

    .line 259
    :pswitch_3
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-ge v0, p0, :cond_15

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    int-to-char v1, v0

    .line 274
    if-eq v1, v7, :cond_14

    .line 275
    .line 276
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_14
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    goto :goto_4

    .line 285
    :cond_15
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 286
    .line 287
    .line 288
    new-instance p0, Lqx3;

    .line 289
    .line 290
    invoke-direct {p0, v6}, Lqx3;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object p0

    .line 294
    :pswitch_4
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-ge v0, p0, :cond_16

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 309
    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_16
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 313
    .line 314
    .line 315
    new-instance p0, Li69;

    .line 316
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    .line 319
    .line 320
    return-object p0

    .line 321
    :pswitch_5
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 322
    .line 323
    .line 324
    move-result p0

    .line 325
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-ge v0, p0, :cond_19

    .line 330
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    int-to-char v1, v0

    .line 336
    if-eq v1, v7, :cond_18

    .line 337
    .line 338
    if-eq v1, v5, :cond_17

    .line 339
    .line 340
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 341
    .line 342
    .line 343
    goto :goto_6

    .line 344
    :cond_17
    sget-object v1, Ltf5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 345
    .line 346
    invoke-static {p1, v0, v1}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    goto :goto_6

    .line 351
    :cond_18
    invoke-static {p1, v0}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    goto :goto_6

    .line 356
    :cond_19
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 357
    .line 358
    .line 359
    new-instance p0, Lsz7;

    .line 360
    .line 361
    invoke-direct {p0, v4, v6}, Lsz7;-><init>(ILjava/util/List;)V

    .line 362
    .line 363
    .line 364
    return-object p0

    .line 365
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    new-instance p0, Lzn7;

    .line 369
    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lq63;

    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_1a

    .line 381
    .line 382
    move v1, v7

    .line 383
    goto :goto_7

    .line 384
    :cond_1a
    move v1, v4

    .line 385
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-eqz p1, :cond_1b

    .line 390
    .line 391
    move v4, v7

    .line 392
    :cond_1b
    invoke-direct {p0, v0, v1, v4}, Lzn7;-><init>(Lq63;ZZ)V

    .line 393
    .line 394
    .line 395
    return-object p0

    .line 396
    :pswitch_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    new-instance v5, Lj17;

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    move p0, v7

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_1c

    .line 415
    .line 416
    move v8, p0

    .line 417
    goto :goto_8

    .line 418
    :cond_1c
    move v8, v4

    .line 419
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    invoke-direct/range {v5 .. v11}, Lj17;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    return-object v5

    .line 435
    :pswitch_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    new-instance p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-direct {p0, v0, v1, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-object p0

    .line 456
    :pswitch_9
    move p0, v7

    .line 457
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-ge v1, v0, :cond_1e

    .line 466
    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    int-to-char v2, v1

    .line 472
    if-eq v2, p0, :cond_1d

    .line 473
    .line 474
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 475
    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_1d
    invoke-static {p1, v1}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    goto :goto_9

    .line 483
    :cond_1e
    invoke-static {p1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 484
    .line 485
    .line 486
    new-instance p0, Lv32;

    .line 487
    .line 488
    invoke-direct {p0, v6}, Lv32;-><init>(Landroid/os/Bundle;)V

    .line 489
    .line 490
    .line 491
    return-object p0

    .line 492
    :pswitch_a
    new-instance p0, Landroidx/fragment/app/b;

    .line 493
    .line 494
    invoke-direct {p0, p1}, Landroidx/fragment/app/b;-><init>(Landroid/os/Parcel;)V

    .line 495
    .line 496
    .line 497
    return-object p0

    .line 498
    nop

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lyj0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lm80;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Ly53;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lsb8;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lxz5;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lqx3;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Li69;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lsz7;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lzn7;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lj17;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lv32;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Landroidx/fragment/app/b;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
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
