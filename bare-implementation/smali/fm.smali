.class public final Lfm;
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
    iput p1, p0, Lfm;->a:I

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
    .locals 13

    .line 1
    iget p0, p0, Lfm;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    :try_start_0
    invoke-static {p0}, Lxx2;->c(I)Lxx2;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Lwx2; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :pswitch_0
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ge v0, p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-char v1, v0

    .line 43
    if-eq v1, v4, :cond_0

    .line 44
    .line 45
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object v1, Lst9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    .line 51
    invoke-static {p1, v0, v1}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Luu9;

    .line 60
    .line 61
    invoke-direct {p0, v3}, Luu9;-><init>(Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_1
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ge v0, p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    int-to-char v1, v0

    .line 80
    if-eq v1, v4, :cond_2

    .line 81
    .line 82
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Lu23;

    .line 95
    .line 96
    invoke-direct {p0, v3}, Lu23;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_2
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    const-wide/16 v5, 0x0

    .line 105
    .line 106
    move-object v8, v3

    .line 107
    move-object v9, v8

    .line 108
    move-object v12, v9

    .line 109
    move-wide v10, v5

    .line 110
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ge v0, p0, :cond_8

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    int-to-char v3, v0

    .line 121
    if-eq v3, v4, :cond_7

    .line 122
    .line 123
    if-eq v3, v2, :cond_6

    .line 124
    .line 125
    if-eq v3, v1, :cond_5

    .line 126
    .line 127
    const/4 v5, 0x4

    .line 128
    if-eq v3, v5, :cond_4

    .line 129
    .line 130
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_4
    sget-object v3, Li69;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    .line 136
    invoke-static {p1, v0, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    move-object v12, v0

    .line 141
    check-cast v12, Li69;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_5
    invoke-static {p1, v0}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v10

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    goto :goto_2

    .line 159
    :cond_8
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 160
    .line 161
    .line 162
    new-instance v7, Lv88;

    .line 163
    .line 164
    invoke-direct/range {v7 .. v12}, Lv88;-><init>(Ljava/lang/String;Ljava/lang/String;JLi69;)V

    .line 165
    .line 166
    .line 167
    return-object v7

    .line 168
    :pswitch_3
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    :goto_3
    move-object v1, v3

    .line 173
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-ge v2, p0, :cond_c

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    int-to-char v5, v2

    .line 184
    if-eq v5, v4, :cond_9

    .line 185
    .line 186
    invoke-static {p1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_9
    invoke-static {p1, v2}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v1, :cond_a

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    new-array v6, v5, [[B

    .line 206
    .line 207
    move v7, v0

    .line 208
    :goto_5
    if-ge v7, v5, :cond_b

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    aput-object v8, v6, v7

    .line 215
    .line 216
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_b
    add-int/2addr v2, v1

    .line 220
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 221
    .line 222
    .line 223
    move-object v1, v6

    .line 224
    goto :goto_4

    .line 225
    :cond_c
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 226
    .line 227
    .line 228
    new-instance p0, La79;

    .line 229
    .line 230
    invoke-direct {p0, v1}, La79;-><init>([[B)V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :pswitch_4
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    move-object v0, v3

    .line 239
    move-object v5, v0

    .line 240
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-ge v6, p0, :cond_10

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    int-to-char v7, v6

    .line 251
    if-eq v7, v4, :cond_f

    .line 252
    .line 253
    if-eq v7, v2, :cond_e

    .line 254
    .line 255
    if-eq v7, v1, :cond_d

    .line 256
    .line 257
    invoke-static {p1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 258
    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_d
    sget-object v5, Lua9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    .line 263
    invoke-static {p1, v6, v5}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Lua9;

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_e
    sget-object v0, Lyx9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 271
    .line 272
    invoke-static {p1, v6, v0}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lyx9;

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_f
    sget-object v3, Lp49;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 280
    .line 281
    invoke-static {p1, v6, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, Lp49;

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_10
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 289
    .line 290
    .line 291
    new-instance p0, Lf0a;

    .line 292
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    .line 295
    .line 296
    iput-object v3, p0, Lf0a;->a:Lp49;

    .line 297
    .line 298
    iput-object v0, p0, Lf0a;->b:Lyx9;

    .line 299
    .line 300
    iput-object v5, p0, Lf0a;->c:Lua9;

    .line 301
    .line 302
    return-object p0

    .line 303
    :pswitch_5
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-ge v0, p0, :cond_12

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    int-to-char v1, v0

    .line 318
    if-eq v1, v4, :cond_11

    .line 319
    .line 320
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_11
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 325
    .line 326
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    move-object v3, v0

    .line 331
    check-cast v3, Landroid/app/PendingIntent;

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_12
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 335
    .line 336
    .line 337
    new-instance p0, Llx6;

    .line 338
    .line 339
    invoke-direct {p0, v3}, Llx6;-><init>(Landroid/app/PendingIntent;)V

    .line 340
    .line 341
    .line 342
    return-object p0

    .line 343
    :pswitch_6
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-ge v1, p0, :cond_15

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    int-to-char v5, v1

    .line 358
    if-eq v5, v4, :cond_14

    .line 359
    .line 360
    if-eq v5, v2, :cond_13

    .line 361
    .line 362
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 363
    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_13
    invoke-static {p1, v1}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    goto :goto_8

    .line 371
    :cond_14
    invoke-static {p1, v1}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    goto :goto_8

    .line 376
    :cond_15
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 377
    .line 378
    .line 379
    new-instance p0, Le39;

    .line 380
    .line 381
    invoke-direct {p0, v3, v0}, Le39;-><init>(Ljava/lang/String;Z)V

    .line 382
    .line 383
    .line 384
    return-object p0

    .line 385
    :pswitch_7
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    move-object v5, v3

    .line 390
    move v3, v0

    .line 391
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-ge v6, p0, :cond_19

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    int-to-char v7, v6

    .line 402
    if-eq v7, v4, :cond_18

    .line 403
    .line 404
    if-eq v7, v2, :cond_17

    .line 405
    .line 406
    if-eq v7, v1, :cond_16

    .line 407
    .line 408
    invoke-static {p1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 409
    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_16
    invoke-static {p1, v6}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    goto :goto_9

    .line 417
    :cond_17
    invoke-static {p1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    goto :goto_9

    .line 422
    :cond_18
    invoke-static {p1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    goto :goto_9

    .line 427
    :cond_19
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 428
    .line 429
    .line 430
    new-instance p0, Ly04;

    .line 431
    .line 432
    invoke-direct {p0, v0, v3, v5}, Ly04;-><init>(IILandroid/os/Bundle;)V

    .line 433
    .line 434
    .line 435
    return-object p0

    .line 436
    :pswitch_8
    new-instance p0, Lyk7;

    .line 437
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    iput v1, p0, Lyk7;->a:I

    .line 446
    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    iput v1, p0, Lyk7;->b:I

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-ne v1, v4, :cond_1a

    .line 458
    .line 459
    move v0, v4

    .line 460
    :cond_1a
    iput-boolean v0, p0, Lyk7;->d:Z

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-lez v0, :cond_1b

    .line 467
    .line 468
    new-array v0, v0, [I

    .line 469
    .line 470
    iput-object v0, p0, Lyk7;->c:[I

    .line 471
    .line 472
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 473
    .line 474
    .line 475
    :cond_1b
    return-object p0

    .line 476
    :pswitch_9
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 477
    .line 478
    .line 479
    move-result p0

    .line 480
    move-object v0, v3

    .line 481
    move-object v5, v0

    .line 482
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-ge v6, p0, :cond_1f

    .line 487
    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    int-to-char v7, v6

    .line 493
    if-eq v7, v4, :cond_1e

    .line 494
    .line 495
    if-eq v7, v2, :cond_1d

    .line 496
    .line 497
    if-eq v7, v1, :cond_1c

    .line 498
    .line 499
    invoke-static {p1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_1c
    invoke-static {p1, v6}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    goto :goto_a

    .line 508
    :cond_1d
    invoke-static {p1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    goto :goto_a

    .line 513
    :cond_1e
    invoke-static {p1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    goto :goto_a

    .line 518
    :cond_1f
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 519
    .line 520
    .line 521
    new-instance p0, Lof7;

    .line 522
    .line 523
    invoke-direct {p0, v3, v0, v5}, Lof7;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 524
    .line 525
    .line 526
    return-object p0

    .line 527
    :pswitch_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    new-instance p0, Lg17;

    .line 531
    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    invoke-direct {p0, v0, p1}, Lg17;-><init>(Ljava/lang/String;I)V

    .line 541
    .line 542
    .line 543
    return-object p0

    .line 544
    :pswitch_b
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 545
    .line 546
    .line 547
    move-result p0

    .line 548
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-ge v0, p0, :cond_20

    .line 553
    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_20
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 563
    .line 564
    .line 565
    new-instance p0, Lgi6;

    .line 566
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    .line 569
    .line 570
    return-object p0

    .line 571
    :pswitch_c
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    .line 572
    .line 573
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 574
    .line 575
    .line 576
    return-object p0

    .line 577
    :pswitch_d
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 578
    .line 579
    .line 580
    move-result p0

    .line 581
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-ge v0, p0, :cond_21

    .line 586
    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 592
    .line 593
    .line 594
    goto :goto_c

    .line 595
    :cond_21
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 596
    .line 597
    .line 598
    new-instance p0, Le91;

    .line 599
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    .line 602
    .line 603
    return-object p0

    .line 604
    :pswitch_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    new-instance p0, Lgm;

    .line 608
    .line 609
    sget-object v0, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 610
    .line 611
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    check-cast v0, Lhk;

    .line 616
    .line 617
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 618
    .line 619
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 624
    .line 625
    invoke-direct {p0, v0, p1}, Lgm;-><init>(Lhk;Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;)V

    .line 626
    .line 627
    .line 628
    return-object p0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lfm;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lxx2;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Luu9;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lu23;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lv88;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [La79;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lf0a;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Llx6;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Le39;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Ly04;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lyk7;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lof7;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lg17;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lgi6;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Le91;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lgm;

    .line 52
    .line 53
    return-object p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
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
