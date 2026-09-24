.class public final Lmn0;
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
    iput p1, p0, Lmn0;->a:I

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
    iget p0, p0, Lmn0;->a:I

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
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

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
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    move-object v11, v4

    .line 19
    move-object v12, v11

    .line 20
    move-object v13, v12

    .line 21
    move-wide v9, v6

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v3, p0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    int-to-char v4, v3

    .line 33
    if-eq v4, v5, :cond_3

    .line 34
    .line 35
    if-eq v4, v2, :cond_2

    .line 36
    .line 37
    if-eq v4, v1, :cond_1

    .line 38
    .line 39
    if-eq v4, v0, :cond_0

    .line 40
    .line 41
    invoke-static {p1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p1, v3}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    move-object v13, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1, v3}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    move-object v12, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {p1, v3}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v11, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p1, v3}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    move-wide v9, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 70
    .line 71
    .line 72
    new-instance v8, Lst9;

    .line 73
    .line 74
    invoke-direct/range {v8 .. v13}, Lst9;-><init>(J[B[B[B)V

    .line 75
    .line 76
    .line 77
    return-object v8

    .line 78
    :pswitch_0
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    move-object v0, v4

    .line 83
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ge v1, p0, :cond_7

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    int-to-char v6, v1

    .line 94
    if-eq v6, v5, :cond_6

    .line 95
    .line 96
    if-eq v6, v2, :cond_5

    .line 97
    .line 98
    invoke-static {p1, v1}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-static {p1, v1}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-static {p1, v1}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    goto :goto_1

    .line 112
    :cond_7
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 113
    .line 114
    .line 115
    new-instance p0, Lfl9;

    .line 116
    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    array-length p1, v0

    .line 121
    invoke-static {v0, p1}, Lwk9;->l([BI)Lwk9;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    :goto_2
    invoke-direct {p0, v3, v4}, Lfl9;-><init>(ZLwk9;)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_1
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ge v0, p0, :cond_a

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    int-to-char v1, v0

    .line 144
    if-eq v1, v5, :cond_9

    .line 145
    .line 146
    invoke-static {p1, v0}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    invoke-static {p1, v0}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    goto :goto_3

    .line 155
    :cond_a
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 156
    .line 157
    .line 158
    new-instance p0, Lc99;

    .line 159
    .line 160
    invoke-direct {p0, v4}, Lc99;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_2
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    move-object v0, v4

    .line 169
    move-object v3, v0

    .line 170
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ge v6, p0, :cond_e

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    int-to-char v7, v6

    .line 181
    if-eq v7, v5, :cond_d

    .line 182
    .line 183
    if-eq v7, v2, :cond_c

    .line 184
    .line 185
    if-eq v7, v1, :cond_b

    .line 186
    .line 187
    invoke-static {p1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_b
    invoke-static {p1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    goto :goto_4

    .line 196
    :cond_c
    invoke-static {p1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_4

    .line 201
    :cond_d
    invoke-static {p1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    goto :goto_4

    .line 206
    :cond_e
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 207
    .line 208
    .line 209
    new-instance p0, Lv89;

    .line 210
    .line 211
    invoke-direct {p0, v4, v0, v3}, Lv89;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
    :pswitch_3
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    move-object v6, v4

    .line 220
    move-object v7, v6

    .line 221
    move v4, v3

    .line 222
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-ge v8, p0, :cond_13

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    int-to-char v9, v8

    .line 233
    if-eq v9, v5, :cond_12

    .line 234
    .line 235
    if-eq v9, v2, :cond_11

    .line 236
    .line 237
    if-eq v9, v1, :cond_10

    .line 238
    .line 239
    if-eq v9, v0, :cond_f

    .line 240
    .line 241
    invoke-static {p1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_f
    sget-object v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-static {p1, v8, v7}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_10
    invoke-static {p1, v8}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    goto :goto_5

    .line 259
    :cond_11
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 260
    .line 261
    invoke-static {p1, v8, v6}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Landroid/accounts/Account;

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_12
    invoke-static {p1, v8}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    goto :goto_5

    .line 273
    :cond_13
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 274
    .line 275
    .line 276
    new-instance p0, Lm29;

    .line 277
    .line 278
    invoke-direct {p0, v3, v6, v4, v7}, Lm29;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 279
    .line 280
    .line 281
    return-object p0

    .line 282
    :pswitch_4
    invoke-static {p1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    move v0, v3

    .line 287
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-ge v6, p0, :cond_17

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    int-to-char v7, v6

    .line 298
    if-eq v7, v5, :cond_16

    .line 299
    .line 300
    if-eq v7, v2, :cond_15

    .line 301
    .line 302
    if-eq v7, v1, :cond_14

    .line 303
    .line 304
    invoke-static {p1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 305
    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_14
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 309
    .line 310
    invoke-static {p1, v6, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Landroid/content/Intent;

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_15
    invoke-static {p1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    goto :goto_6

    .line 322
    :cond_16
    invoke-static {p1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    goto :goto_6

    .line 327
    :cond_17
    invoke-static {p1, p0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 328
    .line 329
    .line 330
    new-instance p0, Lx09;

    .line 331
    .line 332
    invoke-direct {p0, v3, v0, v4}, Lx09;-><init>(IILandroid/content/Intent;)V

    .line 333
    .line 334
    .line 335
    return-object p0

    .line 336
    :pswitch_5
    new-instance p0, Ll67;

    .line 337
    .line 338
    invoke-direct {p0, p1}, Ll67;-><init>(Landroid/os/Parcel;)V

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-eqz p0, :cond_18

    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_18
    move v5, v3

    .line 353
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .line 361
    .line 362
    :goto_8
    if-eq v3, p0, :cond_19

    .line 363
    .line 364
    sget-object v1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 365
    .line 366
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    add-int/lit8 v3, v3, 0x1

    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_19
    new-instance p0, Lh37;

    .line 377
    .line 378
    invoke-direct {p0, v0, v5}, Lh37;-><init>(Ljava/util/ArrayList;Z)V

    .line 379
    .line 380
    .line 381
    return-object p0

    .line 382
    :pswitch_7
    new-instance p0, Lx85;

    .line 383
    .line 384
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 385
    .line 386
    .line 387
    const-class v0, Lx85;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    check-cast p1, Ljava/lang/Integer;

    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    iput p1, p0, Lx85;->a:I

    .line 404
    .line 405
    return-object p0

    .line 406
    :pswitch_8
    new-instance p0, Lrr3;

    .line 407
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iput-object v0, p0, Lrr3;->a:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    iput p1, p0, Lrr3;->b:I

    .line 422
    .line 423
    return-object p0

    .line 424
    :pswitch_9
    new-instance p0, Lsh3;

    .line 425
    .line 426
    invoke-direct {p0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 427
    .line 428
    .line 429
    iput v5, p0, Lsh3;->a:I

    .line 430
    .line 431
    const/4 v0, 0x0

    .line 432
    iput v0, p0, Lsh3;->b:F

    .line 433
    .line 434
    const/high16 v0, 0x3f800000    # 1.0f

    .line 435
    .line 436
    iput v0, p0, Lsh3;->c:F

    .line 437
    .line 438
    const/4 v0, -0x1

    .line 439
    iput v0, p0, Lsh3;->d:I

    .line 440
    .line 441
    const/high16 v1, -0x40800000    # -1.0f

    .line 442
    .line 443
    iput v1, p0, Lsh3;->e:F

    .line 444
    .line 445
    iput v0, p0, Lsh3;->f:I

    .line 446
    .line 447
    iput v0, p0, Lsh3;->k:I

    .line 448
    .line 449
    const v0, 0xffffff

    .line 450
    .line 451
    .line 452
    iput v0, p0, Lsh3;->n:I

    .line 453
    .line 454
    iput v0, p0, Lsh3;->p:I

    .line 455
    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    iput v0, p0, Lsh3;->a:I

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    iput v0, p0, Lsh3;->b:F

    .line 467
    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    iput v0, p0, Lsh3;->c:F

    .line 473
    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    iput v0, p0, Lsh3;->d:I

    .line 479
    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    iput v0, p0, Lsh3;->e:F

    .line 485
    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    iput v0, p0, Lsh3;->f:I

    .line 491
    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    iput v0, p0, Lsh3;->k:I

    .line 497
    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    iput v0, p0, Lsh3;->n:I

    .line 503
    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    iput v0, p0, Lsh3;->p:I

    .line 509
    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_1a

    .line 515
    .line 516
    move v3, v5

    .line 517
    :cond_1a
    iput-boolean v3, p0, Lsh3;->q:Z

    .line 518
    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 524
    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 530
    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 536
    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 548
    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 554
    .line 555
    return-object p0

    .line 556
    :pswitch_a
    new-instance p0, Lnn0;

    .line 557
    .line 558
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    iput v0, p0, Lnn0;->a:F

    .line 566
    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    iput v0, p0, Lnn0;->b:F

    .line 572
    .line 573
    new-instance v0, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .line 577
    .line 578
    iput-object v0, p0, Lnn0;->c:Ljava/util/ArrayList;

    .line 579
    .line 580
    const-class v1, Ljava/lang/Float;

    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    iput v0, p0, Lnn0;->d:F

    .line 594
    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    aget-boolean p1, p1, v3

    .line 600
    .line 601
    iput-boolean p1, p0, Lnn0;->e:Z

    .line 602
    .line 603
    return-object p0

    .line 604
    nop

    .line 605
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
    iget p0, p0, Lmn0;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lst9;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lfl9;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lc99;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lv89;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lm29;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lx09;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Ll67;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lh37;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lx85;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lrr3;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lsh3;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lnn0;

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
