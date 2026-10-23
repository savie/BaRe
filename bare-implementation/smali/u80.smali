.class public final Lu80;
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
    iput p1, p0, Lu80;->a:I

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lu80;->a:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x0

    .line 22
    const/4 v13, 0x0

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v2, v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-char v3, v2

    .line 34
    packed-switch v3, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    goto :goto_0

    .line 46
    :pswitch_1
    invoke-static {v1, v2}, Ljb9;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    goto :goto_0

    .line 61
    :pswitch_4
    invoke-static {v1, v2}, Ljb9;->Y(Landroid/os/Parcel;I)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    goto :goto_0

    .line 66
    :pswitch_5
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_0

    .line 71
    :pswitch_6
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/google/android/gms/auth/TokenData;

    .line 80
    .line 81
    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/auth/TokenData;-><init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object v6

    .line 85
    :pswitch_7
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-wide/16 v4, 0x0

    .line 90
    .line 91
    move-wide v6, v4

    .line 92
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-ge v8, v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    int-to-char v9, v8

    .line 103
    if-eq v9, v3, :cond_2

    .line 104
    .line 105
    if-eq v9, v2, :cond_1

    .line 106
    .line 107
    invoke-static {v1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    invoke-static {v1, v8}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-static {v1, v8}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ll59;

    .line 125
    .line 126
    invoke-direct {v0, v4, v5, v6, v7}, Ll59;-><init>(JJ)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :pswitch_8
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v2, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v7, 0x0

    .line 139
    const/4 v8, 0x0

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    const/4 v14, 0x0

    .line 146
    const/4 v15, 0x0

    .line 147
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-ge v3, v0, :cond_6

    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    move-object/from16 v17, v5

    .line 158
    .line 159
    int-to-char v5, v3

    .line 160
    packed-switch v5, :pswitch_data_2

    .line 161
    .line 162
    .line 163
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 164
    .line 165
    .line 166
    :goto_3
    move-object/from16 v5, v17

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :pswitch_9
    sget-object v5, Lv89;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    .line 171
    invoke-static {v1, v3, v5}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    goto :goto_2

    .line 176
    :pswitch_a
    sget-object v4, Lu99;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    move-object v4, v3

    .line 183
    check-cast v4, Lu99;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :pswitch_b
    sget-object v5, Lua9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-static {v1, v3, v5}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    move-object v15, v3

    .line 193
    check-cast v15, Lua9;

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :pswitch_c
    invoke-static {v1, v3}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    goto :goto_3

    .line 201
    :pswitch_d
    sget-object v5, Ll59;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    .line 203
    invoke-static {v1, v3, v5}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    move-object v13, v3

    .line 208
    check-cast v13, Ll59;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :pswitch_e
    invoke-static {v1, v3}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_4

    .line 216
    .line 217
    const/4 v12, 0x0

    .line 218
    goto :goto_3

    .line 219
    :cond_4
    const/4 v5, 0x4

    .line 220
    invoke-static {v1, v3, v5}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_5

    .line 228
    .line 229
    const/4 v3, 0x1

    .line 230
    goto :goto_4

    .line 231
    :cond_5
    const/4 v3, 0x0

    .line 232
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    move-object v12, v3

    .line 237
    goto :goto_3

    .line 238
    :pswitch_f
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    goto :goto_3

    .line 243
    :pswitch_10
    invoke-static {v1, v3}, Ljb9;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    goto :goto_3

    .line 248
    :pswitch_11
    sget-object v5, Lw1a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    .line 250
    invoke-static {v1, v3, v5}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    goto :goto_3

    .line 255
    :pswitch_12
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    goto :goto_3

    .line 260
    :pswitch_13
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    goto :goto_3

    .line 265
    :pswitch_14
    sget-object v5, Lw1a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 266
    .line 267
    invoke-static {v1, v3, v5}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object v6, v3

    .line 272
    check-cast v6, Lw1a;

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :pswitch_15
    sget-object v2, Lb69;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 276
    .line 277
    invoke-static {v1, v3, v2}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Lb69;

    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_6
    move-object/from16 v17, v5

    .line 285
    .line 286
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lp49;

    .line 290
    .line 291
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 292
    .line 293
    .line 294
    iput-object v2, v0, Lp49;->a:Lb69;

    .line 295
    .line 296
    iput-object v6, v0, Lp49;->b:Lw1a;

    .line 297
    .line 298
    iput-object v7, v0, Lp49;->c:Ljava/lang/String;

    .line 299
    .line 300
    iput-object v8, v0, Lp49;->d:Ljava/lang/String;

    .line 301
    .line 302
    iput-object v9, v0, Lp49;->e:Ljava/util/ArrayList;

    .line 303
    .line 304
    iput-object v10, v0, Lp49;->f:Ljava/util/ArrayList;

    .line 305
    .line 306
    iput-object v11, v0, Lp49;->k:Ljava/lang/String;

    .line 307
    .line 308
    iput-object v12, v0, Lp49;->n:Ljava/lang/Boolean;

    .line 309
    .line 310
    iput-object v13, v0, Lp49;->p:Ll59;

    .line 311
    .line 312
    iput-boolean v14, v0, Lp49;->q:Z

    .line 313
    .line 314
    iput-object v15, v0, Lp49;->r:Lua9;

    .line 315
    .line 316
    iput-object v4, v0, Lp49;->t:Lu99;

    .line 317
    .line 318
    iput-object v5, v0, Lp49;->x:Ljava/util/List;

    .line 319
    .line 320
    return-object v0

    .line 321
    :pswitch_16
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    const/4 v2, 0x0

    .line 326
    const/4 v3, 0x0

    .line 327
    const/4 v4, 0x0

    .line 328
    const/4 v5, 0x0

    .line 329
    const/4 v6, 0x0

    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    const/4 v9, 0x0

    .line 333
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 334
    .line 335
    .line 336
    move-result v10

    .line 337
    if-ge v10, v0, :cond_7

    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 340
    .line 341
    .line 342
    move-result v10

    .line 343
    int-to-char v11, v10

    .line 344
    packed-switch v11, :pswitch_data_3

    .line 345
    .line 346
    .line 347
    invoke-static {v1, v10}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :pswitch_17
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v9

    .line 355
    goto :goto_5

    .line 356
    :pswitch_18
    invoke-static {v1, v10}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    goto :goto_5

    .line 361
    :pswitch_19
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    goto :goto_5

    .line 366
    :pswitch_1a
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    goto :goto_5

    .line 371
    :pswitch_1b
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    goto :goto_5

    .line 376
    :pswitch_1c
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    goto :goto_5

    .line 381
    :pswitch_1d
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    goto :goto_5

    .line 386
    :pswitch_1e
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    goto :goto_5

    .line 391
    :cond_7
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 392
    .line 393
    .line 394
    new-instance v1, Lw1a;

    .line 395
    .line 396
    invoke-direct/range {v1 .. v9}, Lw1a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-object v1

    .line 400
    :pswitch_1f
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    const/4 v3, 0x0

    .line 405
    const/4 v5, 0x0

    .line 406
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-ge v4, v0, :cond_a

    .line 411
    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    int-to-char v6, v4

    .line 417
    if-eq v6, v2, :cond_9

    .line 418
    .line 419
    const/4 v7, 0x5

    .line 420
    if-eq v6, v7, :cond_8

    .line 421
    .line 422
    invoke-static {v1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 423
    .line 424
    .line 425
    goto :goto_6

    .line 426
    :cond_8
    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 427
    .line 428
    invoke-static {v1, v4, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    check-cast v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_9
    invoke-static {v1, v4}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    goto :goto_6

    .line 440
    :cond_a
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 441
    .line 442
    .line 443
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 444
    .line 445
    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 446
    .line 447
    .line 448
    return-object v0

    .line 449
    :pswitch_20
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    const/4 v2, 0x0

    .line 454
    const/4 v3, 0x0

    .line 455
    const/4 v4, 0x0

    .line 456
    const/4 v5, 0x0

    .line 457
    const/4 v6, 0x0

    .line 458
    const/4 v7, 0x0

    .line 459
    const/4 v8, 0x0

    .line 460
    const/4 v9, 0x0

    .line 461
    const/4 v11, 0x0

    .line 462
    const/16 v16, 0x0

    .line 463
    .line 464
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 465
    .line 466
    .line 467
    move-result v10

    .line 468
    if-ge v10, v0, :cond_b

    .line 469
    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v10

    .line 474
    int-to-char v12, v10

    .line 475
    packed-switch v12, :pswitch_data_4

    .line 476
    .line 477
    .line 478
    invoke-static {v1, v10}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 479
    .line 480
    .line 481
    goto :goto_7

    .line 482
    :pswitch_21
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    goto :goto_7

    .line 487
    :pswitch_22
    sget-object v12, Ly04;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 488
    .line 489
    invoke-static {v1, v10, v12}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 490
    .line 491
    .line 492
    move-result-object v16

    .line 493
    goto :goto_7

    .line 494
    :pswitch_23
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    goto :goto_7

    .line 499
    :pswitch_24
    invoke-static {v1, v10}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    goto :goto_7

    .line 504
    :pswitch_25
    invoke-static {v1, v10}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    goto :goto_7

    .line 509
    :pswitch_26
    invoke-static {v1, v10}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    goto :goto_7

    .line 514
    :pswitch_27
    invoke-static {v1, v10}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    goto :goto_7

    .line 519
    :pswitch_28
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 520
    .line 521
    invoke-static {v1, v10, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 522
    .line 523
    .line 524
    move-result-object v4

    .line 525
    check-cast v4, Landroid/accounts/Account;

    .line 526
    .line 527
    goto :goto_7

    .line 528
    :pswitch_29
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 529
    .line 530
    invoke-static {v1, v10, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    goto :goto_7

    .line 535
    :pswitch_2a
    invoke-static {v1, v10}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    goto :goto_7

    .line 540
    :cond_b
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 541
    .line 542
    .line 543
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 544
    .line 545
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->q(Ljava/util/ArrayList;)Ljava/util/HashMap;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    return-object v1

    .line 553
    :pswitch_2b
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    if-ge v2, v0, :cond_c

    .line 562
    .line 563
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 568
    .line 569
    .line 570
    goto :goto_8

    .line 571
    :cond_c
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 572
    .line 573
    .line 574
    new-instance v0, Lqf7;

    .line 575
    .line 576
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 577
    .line 578
    .line 579
    return-object v0

    .line 580
    :pswitch_2c
    new-instance v0, Ls36;

    .line 581
    .line 582
    invoke-direct {v0, v1}, Ls36;-><init>(Landroid/os/Parcel;)V

    .line 583
    .line 584
    .line 585
    return-object v0

    .line 586
    :pswitch_2d
    new-instance v0, Lhi5;

    .line 587
    .line 588
    invoke-direct {v0, v1}, Lhi5;-><init>(Landroid/os/Parcel;)V

    .line 589
    .line 590
    .line 591
    return-object v0

    .line 592
    :pswitch_2e
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    const/4 v5, 0x0

    .line 597
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    if-ge v2, v0, :cond_e

    .line 602
    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    int-to-char v3, v2

    .line 608
    const/4 v4, 0x1

    .line 609
    if-eq v3, v4, :cond_d

    .line 610
    .line 611
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 612
    .line 613
    .line 614
    goto :goto_9

    .line 615
    :cond_d
    invoke-static {v1, v2}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    goto :goto_9

    .line 620
    :cond_e
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 621
    .line 622
    .line 623
    new-instance v0, Lxw3;

    .line 624
    .line 625
    invoke-direct {v0, v5}, Lxw3;-><init>(Landroid/os/Bundle;)V

    .line 626
    .line 627
    .line 628
    return-object v0

    .line 629
    :pswitch_2f
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    const/4 v5, 0x0

    .line 634
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    if-ge v2, v0, :cond_10

    .line 639
    .line 640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    int-to-char v3, v2

    .line 645
    const/4 v4, 0x1

    .line 646
    if-eq v3, v4, :cond_f

    .line 647
    .line 648
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 649
    .line 650
    .line 651
    goto :goto_a

    .line 652
    :cond_f
    invoke-static {v1, v2}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    goto :goto_a

    .line 657
    :cond_10
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 658
    .line 659
    .line 660
    new-instance v0, Li22;

    .line 661
    .line 662
    invoke-direct {v0, v5}, Li22;-><init>(Landroid/os/Bundle;)V

    .line 663
    .line 664
    .line 665
    return-object v0

    .line 666
    :pswitch_30
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    const/4 v2, 0x0

    .line 671
    const/4 v3, 0x0

    .line 672
    const/4 v4, 0x0

    .line 673
    const/4 v5, 0x0

    .line 674
    const/4 v6, 0x0

    .line 675
    const/4 v7, 0x0

    .line 676
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 677
    .line 678
    .line 679
    move-result v8

    .line 680
    if-ge v8, v0, :cond_11

    .line 681
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result v8

    .line 686
    int-to-char v9, v8

    .line 687
    packed-switch v9, :pswitch_data_5

    .line 688
    .line 689
    .line 690
    invoke-static {v1, v8}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :pswitch_31
    sget-object v7, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 695
    .line 696
    invoke-static {v1, v8, v7}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 697
    .line 698
    .line 699
    move-result-object v7

    .line 700
    check-cast v7, Landroid/os/ResultReceiver;

    .line 701
    .line 702
    goto :goto_b

    .line 703
    :pswitch_32
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v6

    .line 707
    goto :goto_b

    .line 708
    :pswitch_33
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    goto :goto_b

    .line 713
    :pswitch_34
    invoke-static {v1, v8}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    goto :goto_b

    .line 718
    :pswitch_35
    invoke-static {v1, v8}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    goto :goto_b

    .line 723
    :pswitch_36
    invoke-static {v1, v8}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    goto :goto_b

    .line 728
    :cond_11
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 729
    .line 730
    .line 731
    new-instance v1, Lh12;

    .line 732
    .line 733
    invoke-direct/range {v1 .. v7}, Lh12;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 734
    .line 735
    .line 736
    return-object v1

    .line 737
    :pswitch_37
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 742
    .line 743
    .line 744
    move-result v2

    .line 745
    if-ge v2, v0, :cond_12

    .line 746
    .line 747
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 752
    .line 753
    .line 754
    goto :goto_c

    .line 755
    :cond_12
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 756
    .line 757
    .line 758
    new-instance v0, Lg91;

    .line 759
    .line 760
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 761
    .line 762
    .line 763
    return-object v0

    .line 764
    :pswitch_38
    new-instance v0, Lv80;

    .line 765
    .line 766
    invoke-direct {v0, v1}, Lv80;-><init>(Landroid/os/Parcel;)V

    .line 767
    .line 768
    .line 769
    return-object v0

    .line 770
    nop

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_20
        :pswitch_1f
        :pswitch_16
        :pswitch_8
        :pswitch_7
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

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
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lu80;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lcom/google/android/gms/auth/TokenData;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Ll59;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lp49;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lw1a;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lqf7;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Ls36;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lhi5;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lxw3;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Li22;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lh12;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lg91;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lv80;

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
