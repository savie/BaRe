.class public final Lb90;
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
    iput p1, p0, Lb90;->a:I

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
    iget p0, p0, Lb90;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ge v0, p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-char v2, v0

    .line 25
    if-eq v2, v1, :cond_0

    .line 26
    .line 27
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Ld63;

    .line 40
    .line 41
    invoke-direct {p0, v3}, Ld63;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_0
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-ge v4, p0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    int-to-char v5, v4

    .line 60
    if-eq v5, v2, :cond_3

    .line 61
    .line 62
    if-eq v5, v1, :cond_2

    .line 63
    .line 64
    invoke-static {p1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {p1, v4}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-static {p1, v4}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 79
    .line 80
    .line 81
    new-instance p0, Lka9;

    .line 82
    .line 83
    invoke-direct {p0, v0, v3}, Lka9;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :try_start_0
    invoke-static {p0}, Lt70;->c(Ljava/lang/String;)Lt70;

    .line 92
    .line 93
    .line 94
    move-result-object v3
    :try_end_0
    .catch Ls70; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    move-object p0, v0

    .line 98
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-object v3

    .line 102
    :pswitch_2
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    move-object v0, v3

    .line 107
    move-object v2, v0

    .line 108
    move-object v4, v2

    .line 109
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-ge v5, p0, :cond_9

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    int-to-char v6, v5

    .line 120
    if-eq v6, v1, :cond_8

    .line 121
    .line 122
    const/4 v7, 0x3

    .line 123
    if-eq v6, v7, :cond_7

    .line 124
    .line 125
    const/4 v7, 0x4

    .line 126
    if-eq v6, v7, :cond_6

    .line 127
    .line 128
    const/4 v7, 0x5

    .line 129
    if-eq v6, v7, :cond_5

    .line 130
    .line 131
    invoke-static {p1, v5}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-static {p1, v5}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    invoke-static {p1, v5}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    invoke-static {p1, v5}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_3

    .line 150
    :cond_8
    invoke-static {p1, v5}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_3

    .line 155
    :cond_9
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 156
    .line 157
    .line 158
    new-instance p0, Lxa6;

    .line 159
    .line 160
    invoke-direct {p0, v3, v0, v2, v4}, Lxa6;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_3
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    move-object v5, v3

    .line 169
    move-object v6, v5

    .line 170
    move-object v7, v6

    .line 171
    move-object v8, v7

    .line 172
    move-object v9, v8

    .line 173
    move-object v10, v9

    .line 174
    move-object v11, v10

    .line 175
    move-object v12, v11

    .line 176
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-ge v0, p0, :cond_a

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    int-to-char v1, v0

    .line 187
    packed-switch v1, :pswitch_data_1

    .line 188
    .line 189
    .line 190
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :pswitch_4
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :pswitch_5
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v12

    .line 202
    goto :goto_4

    .line 203
    :pswitch_6
    sget-object v1, Lj80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 204
    .line 205
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object v11, v0

    .line 210
    check-cast v11, Lj80;

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :pswitch_7
    sget-object v1, Lo80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 214
    .line 215
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object v10, v0

    .line 220
    check-cast v10, Lo80;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :pswitch_8
    sget-object v1, Lm80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 224
    .line 225
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object v9, v0

    .line 230
    check-cast v9, Lm80;

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :pswitch_9
    sget-object v1, Ln80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    move-object v8, v0

    .line 240
    check-cast v8, Ln80;

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :pswitch_a
    invoke-static {p1, v0}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    goto :goto_4

    .line 248
    :pswitch_b
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    goto :goto_4

    .line 253
    :pswitch_c
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    goto :goto_4

    .line 258
    :cond_a
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Lna6;

    .line 262
    .line 263
    invoke-direct/range {v4 .. v12}, Lna6;-><init>(Ljava/lang/String;Ljava/lang/String;[BLn80;Lm80;Lo80;Lj80;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return-object v4

    .line 267
    :pswitch_d
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    const-wide/16 v0, 0x0

    .line 272
    .line 273
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-ge v3, p0, :cond_c

    .line 278
    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    int-to-char v4, v3

    .line 284
    if-eq v4, v2, :cond_b

    .line 285
    .line 286
    invoke-static {p1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_b
    invoke-static {p1, v3}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    goto :goto_5

    .line 295
    :cond_c
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 296
    .line 297
    .line 298
    new-instance p0, Ly39;

    .line 299
    .line 300
    invoke-direct {p0, v0, v1}, Ly39;-><init>(J)V

    .line 301
    .line 302
    .line 303
    return-object p0

    .line 304
    :pswitch_e
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    move-object v5, v3

    .line 309
    move-object v6, v5

    .line 310
    move-object v7, v6

    .line 311
    move-object v8, v7

    .line 312
    move-object v9, v8

    .line 313
    move-object v10, v9

    .line 314
    move-object v11, v10

    .line 315
    move-object v12, v11

    .line 316
    move-object v13, v12

    .line 317
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-ge v0, p0, :cond_d

    .line 322
    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    int-to-char v1, v0

    .line 328
    packed-switch v1, :pswitch_data_2

    .line 329
    .line 330
    .line 331
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :pswitch_f
    sget-object v1, Lna6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 336
    .line 337
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    move-object v13, v0

    .line 342
    check-cast v13, Lna6;

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :pswitch_10
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    goto :goto_6

    .line 350
    :pswitch_11
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    goto :goto_6

    .line 355
    :pswitch_12
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    goto :goto_6

    .line 360
    :pswitch_13
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 361
    .line 362
    invoke-static {p1, v0, v1}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    move-object v9, v0

    .line 367
    check-cast v9, Landroid/net/Uri;

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :pswitch_14
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    goto :goto_6

    .line 375
    :pswitch_15
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    goto :goto_6

    .line 380
    :pswitch_16
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    goto :goto_6

    .line 385
    :pswitch_17
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    goto :goto_6

    .line 390
    :cond_d
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 391
    .line 392
    .line 393
    new-instance v4, Ljf7;

    .line 394
    .line 395
    invoke-direct/range {v4 .. v13}, Ljf7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lna6;)V

    .line 396
    .line 397
    .line 398
    return-object v4

    .line 399
    :pswitch_18
    new-instance p0, Lzk7;

    .line 400
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    iput v1, p0, Lzk7;->a:I

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    iput v1, p0, Lzk7;->b:I

    .line 415
    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    iput v1, p0, Lzk7;->c:I

    .line 421
    .line 422
    if-lez v1, :cond_e

    .line 423
    .line 424
    new-array v1, v1, [I

    .line 425
    .line 426
    iput-object v1, p0, Lzk7;->d:[I

    .line 427
    .line 428
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 429
    .line 430
    .line 431
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    iput v1, p0, Lzk7;->e:I

    .line 436
    .line 437
    if-lez v1, :cond_f

    .line 438
    .line 439
    new-array v1, v1, [I

    .line 440
    .line 441
    iput-object v1, p0, Lzk7;->f:[I

    .line 442
    .line 443
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 444
    .line 445
    .line 446
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-ne v1, v2, :cond_10

    .line 451
    .line 452
    move v1, v2

    .line 453
    goto :goto_7

    .line 454
    :cond_10
    move v1, v0

    .line 455
    :goto_7
    iput-boolean v1, p0, Lzk7;->n:Z

    .line 456
    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-ne v1, v2, :cond_11

    .line 462
    .line 463
    move v1, v2

    .line 464
    goto :goto_8

    .line 465
    :cond_11
    move v1, v0

    .line 466
    :goto_8
    iput-boolean v1, p0, Lzk7;->p:Z

    .line 467
    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-ne v1, v2, :cond_12

    .line 473
    .line 474
    move v0, v2

    .line 475
    :cond_12
    iput-boolean v0, p0, Lzk7;->q:Z

    .line 476
    .line 477
    const-class v0, Lyk7;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    iput-object p1, p0, Lzk7;->k:Ljava/util/ArrayList;

    .line 488
    .line 489
    return-object p0

    .line 490
    :pswitch_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    move v4, v2

    .line 502
    new-instance v2, Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .line 506
    .line 507
    move v3, v0

    .line 508
    :goto_9
    if-eq v3, p0, :cond_13

    .line 509
    .line 510
    sget-object v5, Lj17;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 511
    .line 512
    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    add-int/lit8 v3, v3, 0x1

    .line 520
    .line 521
    goto :goto_9

    .line 522
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    move p0, v4

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 536
    .line 537
    .line 538
    move-result v6

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->createCharArray()[C

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 548
    .line 549
    .line 550
    move-result-wide v9

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    if-eqz p1, :cond_14

    .line 556
    .line 557
    move v11, p0

    .line 558
    goto :goto_a

    .line 559
    :cond_14
    move v11, v0

    .line 560
    :goto_a
    new-instance v0, Li17;

    .line 561
    .line 562
    invoke-direct/range {v0 .. v11}, Li17;-><init>(Ljava/lang/String;Ljava/util/ArrayList;IIII[CLjava/lang/String;JZ)V

    .line 563
    .line 564
    .line 565
    return-object v0

    .line 566
    :pswitch_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    new-instance p0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;

    .line 570
    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-direct {p0, v0, v1, p1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 584
    .line 585
    .line 586
    return-object p0

    .line 587
    :pswitch_1b
    move p0, v2

    .line 588
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-ge v1, v0, :cond_16

    .line 597
    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    int-to-char v2, v1

    .line 603
    if-eq v2, p0, :cond_15

    .line 604
    .line 605
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 606
    .line 607
    .line 608
    goto :goto_b

    .line 609
    :cond_15
    invoke-static {p1, v1}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    goto :goto_b

    .line 614
    :cond_16
    invoke-static {p1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 615
    .line 616
    .line 617
    new-instance p0, Lyw3;

    .line 618
    .line 619
    invoke-direct {p0, v3}, Lyw3;-><init>(Landroid/os/Bundle;)V

    .line 620
    .line 621
    .line 622
    return-object p0

    .line 623
    :pswitch_1c
    new-instance p0, Landroidx/fragment/app/c0;

    .line 624
    .line 625
    invoke-direct {p0, p1}, Landroidx/fragment/app/c0;-><init>(Landroid/os/Parcel;)V

    .line 626
    .line 627
    .line 628
    return-object p0

    .line 629
    :pswitch_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    new-instance v0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 633
    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 647
    .line 648
    .line 649
    move-result-wide v4

    .line 650
    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 651
    .line 652
    .line 653
    return-object v0

    .line 654
    :pswitch_1e
    move p0, v2

    .line 655
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 656
    .line 657
    .line 658
    new-instance v1, Llk3;

    .line 659
    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v4

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 673
    .line 674
    .line 675
    move-result v5

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 677
    .line 678
    .line 679
    move-result v6

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 681
    .line 682
    .line 683
    move-result v7

    .line 684
    if-eqz v7, :cond_17

    .line 685
    .line 686
    move v7, p0

    .line 687
    goto :goto_c

    .line 688
    :cond_17
    move v7, v0

    .line 689
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 690
    .line 691
    .line 692
    move-result v8

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v9

    .line 697
    invoke-direct/range {v1 .. v9}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 698
    .line 699
    .line 700
    return-object v1

    .line 701
    :pswitch_1f
    move p0, v2

    .line 702
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    move-object v2, v3

    .line 707
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 708
    .line 709
    .line 710
    move-result v4

    .line 711
    if-ge v4, v0, :cond_1a

    .line 712
    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    int-to-char v5, v4

    .line 718
    if-eq v5, p0, :cond_19

    .line 719
    .line 720
    if-eq v5, v1, :cond_18

    .line 721
    .line 722
    invoke-static {p1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 723
    .line 724
    .line 725
    goto :goto_d

    .line 726
    :cond_18
    invoke-static {p1, v4}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    goto :goto_d

    .line 731
    :cond_19
    invoke-static {p1, v4}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    goto :goto_d

    .line 736
    :cond_1a
    invoke-static {p1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 737
    .line 738
    .line 739
    new-instance p0, Lj12;

    .line 740
    .line 741
    invoke-direct {p0, v2, v3}, Lj12;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    return-object p0

    .line 745
    :pswitch_20
    new-instance p0, Lf90;

    .line 746
    .line 747
    invoke-direct {p0, p1}, Lf90;-><init>(Landroid/os/Parcel;)V

    .line 748
    .line 749
    .line 750
    return-object p0

    .line 751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

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
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lb90;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Ld63;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lka9;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lt70;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lxa6;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lna6;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Ly39;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Ljf7;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lzk7;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Li17;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelledApp;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lyw3;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Landroidx/fragment/app/c0;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Llk3;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lj12;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lf90;

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
