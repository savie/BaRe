.class public final Lr39;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static final b:Lr39;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr39;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lr39;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lr39;->b:Lr39;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lr39;->a:I

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
    iget v0, v0, Lr39;->a:I

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    invoke-static {v0}, Ljh8;->c(Ljava/lang/String;)Ljh8;

    .line 21
    .line 22
    .line 23
    move-result-object v6
    :try_end_0
    .catch Ln99; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-object v6

    .line 30
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    move-object v2, v6

    .line 35
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ge v4, v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    int-to-char v5, v4

    .line 46
    if-eq v5, v3, :cond_1

    .line 47
    .line 48
    const/4 v7, 0x3

    .line 49
    if-eq v5, v7, :cond_0

    .line 50
    .line 51
    invoke-static {v1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-static {v1, v4}, Ljb9;->W(Landroid/os/Parcel;I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-static {v1, v4}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lsa6;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-direct {v0, v6, v1}, Lsa6;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_1
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    move-object v8, v6

    .line 83
    move-object v9, v8

    .line 84
    move-object v10, v9

    .line 85
    move-object v11, v10

    .line 86
    move-object v12, v11

    .line 87
    move-object v13, v12

    .line 88
    move-object v14, v13

    .line 89
    move-object v15, v14

    .line 90
    move-object/from16 v16, v15

    .line 91
    .line 92
    move-object/from16 v17, v16

    .line 93
    .line 94
    move-object/from16 v18, v17

    .line 95
    .line 96
    move-object/from16 v19, v18

    .line 97
    .line 98
    move-object/from16 v20, v19

    .line 99
    .line 100
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-ge v3, v0, :cond_4

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    int-to-char v4, v3

    .line 111
    packed-switch v4, :pswitch_data_1

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :pswitch_2
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    .line 120
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    move-object/from16 v20, v3

    .line 125
    .line 126
    check-cast v20, Landroid/os/ResultReceiver;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_3
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v19

    .line 133
    goto :goto_2

    .line 134
    :pswitch_4
    sget-object v4, Li80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 135
    .line 136
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    move-object/from16 v18, v3

    .line 141
    .line 142
    check-cast v18, Li80;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :pswitch_5
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v17

    .line 149
    goto :goto_2

    .line 150
    :pswitch_6
    sget-object v4, Lf58;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 151
    .line 152
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    move-object/from16 v16, v3

    .line 157
    .line 158
    check-cast v16, Lf58;

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_7
    invoke-static {v1, v3}, Ljb9;->W(Landroid/os/Parcel;I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    goto :goto_2

    .line 166
    :pswitch_8
    sget-object v4, Lp80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 167
    .line 168
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    move-object v14, v3

    .line 173
    check-cast v14, Lp80;

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :pswitch_9
    sget-object v4, Lra6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 177
    .line 178
    invoke-static {v1, v3, v4}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    goto :goto_2

    .line 183
    :pswitch_a
    invoke-static {v1, v3}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_3

    .line 188
    .line 189
    move-object v12, v6

    .line 190
    goto :goto_2

    .line 191
    :cond_3
    invoke-static {v1, v3, v2}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 195
    .line 196
    .line 197
    move-result-wide v3

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    move-object v12, v3

    .line 203
    goto :goto_2

    .line 204
    :pswitch_b
    sget-object v4, Lsa6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 205
    .line 206
    invoke-static {v1, v3, v4}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    goto :goto_2

    .line 211
    :pswitch_c
    invoke-static {v1, v3}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    goto :goto_2

    .line 216
    :pswitch_d
    sget-object v4, Lxa6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    .line 218
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    move-object v9, v3

    .line 223
    check-cast v9, Lxa6;

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :pswitch_e
    sget-object v4, Lua6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    .line 228
    invoke-static {v1, v3, v4}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    move-object v8, v3

    .line 233
    check-cast v8, Lua6;

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_4
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 238
    .line 239
    .line 240
    new-instance v7, Lqa6;

    .line 241
    .line 242
    invoke-direct/range {v7 .. v20}, Lqa6;-><init>(Lua6;Lxa6;[BLjava/util/ArrayList;Ljava/lang/Double;Ljava/util/ArrayList;Lp80;Ljava/lang/Integer;Lf58;Ljava/lang/String;Li80;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 243
    .line 244
    .line 245
    return-object v7

    .line 246
    :pswitch_f
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-ge v2, v0, :cond_6

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    int-to-char v3, v2

    .line 261
    if-eq v3, v5, :cond_5

    .line 262
    .line 263
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_5
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    goto :goto_3

    .line 272
    :cond_6
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lq49;

    .line 276
    .line 277
    invoke-direct {v0, v4}, Lq49;-><init>(Z)V

    .line 278
    .line 279
    .line 280
    return-object v0

    .line 281
    :pswitch_10
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    move v8, v4

    .line 286
    move v11, v8

    .line 287
    move v14, v11

    .line 288
    move-object v9, v6

    .line 289
    move-object v10, v9

    .line 290
    move-object v12, v10

    .line 291
    move-object v13, v12

    .line 292
    move-object v15, v13

    .line 293
    move-object/from16 v16, v15

    .line 294
    .line 295
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-ge v2, v0, :cond_7

    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    int-to-char v3, v2

    .line 306
    packed-switch v3, :pswitch_data_2

    .line 307
    .line 308
    .line 309
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_4

    .line 313
    :pswitch_11
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v16

    .line 317
    goto :goto_4

    .line 318
    :pswitch_12
    sget-object v3, Le39;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 319
    .line 320
    invoke-static {v1, v2, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    goto :goto_4

    .line 325
    :pswitch_13
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    goto :goto_4

    .line 330
    :pswitch_14
    invoke-static {v1, v2}, Ljb9;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v13

    .line 334
    goto :goto_4

    .line 335
    :pswitch_15
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    goto :goto_4

    .line 340
    :pswitch_16
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    goto :goto_4

    .line 345
    :pswitch_17
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    goto :goto_4

    .line 350
    :pswitch_18
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    goto :goto_4

    .line 355
    :pswitch_19
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    goto :goto_4

    .line 360
    :cond_7
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 361
    .line 362
    .line 363
    new-instance v7, Lsp0;

    .line 364
    .line 365
    invoke-direct/range {v7 .. v16}, Lsp0;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    return-object v7

    .line 369
    :pswitch_1a
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    const-string v3, ""

    .line 374
    .line 375
    move-object v4, v3

    .line 376
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    if-ge v5, v0, :cond_b

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    int-to-char v7, v5

    .line 387
    const/4 v8, 0x4

    .line 388
    if-eq v7, v8, :cond_a

    .line 389
    .line 390
    const/4 v8, 0x7

    .line 391
    if-eq v7, v8, :cond_9

    .line 392
    .line 393
    if-eq v7, v2, :cond_8

    .line 394
    .line 395
    invoke-static {v1, v5}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 396
    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_8
    invoke-static {v1, v5}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    goto :goto_5

    .line 404
    :cond_9
    sget-object v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 405
    .line 406
    invoke-static {v1, v5, v6}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 407
    .line 408
    .line 409
    move-result-object v5

    .line 410
    move-object v6, v5

    .line 411
    check-cast v6, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 412
    .line 413
    goto :goto_5

    .line 414
    :cond_a
    invoke-static {v1, v5}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    goto :goto_5

    .line 419
    :cond_b
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 420
    .line 421
    .line 422
    new-instance v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    .line 423
    .line 424
    invoke-direct {v0, v3, v6, v4}, Lcom/google/android/gms/auth/api/signin/SignInAccount;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-object v0

    .line 428
    :pswitch_1b
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 429
    .line 430
    .line 431
    move-result v0

    .line 432
    move-object v2, v6

    .line 433
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-ge v4, v0, :cond_e

    .line 438
    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    int-to-char v7, v4

    .line 444
    if-eq v7, v5, :cond_d

    .line 445
    .line 446
    if-eq v7, v3, :cond_c

    .line 447
    .line 448
    invoke-static {v1, v4}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 449
    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_c
    invoke-static {v1, v4}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    goto :goto_6

    .line 457
    :cond_d
    invoke-static {v1, v4}, Ljb9;->r(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    goto :goto_6

    .line 462
    :cond_e
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 463
    .line 464
    .line 465
    new-instance v0, La29;

    .line 466
    .line 467
    invoke-direct {v0, v2, v6}, La29;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 468
    .line 469
    .line 470
    return-object v0

    .line 471
    :pswitch_1c
    new-instance v0, Lvg7;

    .line 472
    .line 473
    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iput-object v2, v0, Lvg7;->a:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-ne v2, v5, :cond_f

    .line 487
    .line 488
    move v2, v5

    .line 489
    goto :goto_7

    .line 490
    :cond_f
    move v2, v4

    .line 491
    :goto_7
    iput-boolean v2, v0, Lvg7;->b:Z

    .line 492
    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    iput v2, v0, Lvg7;->c:I

    .line 498
    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    iput-object v2, v0, Lvg7;->d:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-ne v1, v5, :cond_10

    .line 510
    .line 511
    move v4, v5

    .line 512
    :cond_10
    iput-boolean v4, v0, Lvg7;->e:Z

    .line 513
    .line 514
    return-object v0

    .line 515
    :pswitch_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    move v0, v5

    .line 519
    new-instance v5, Lm17;

    .line 520
    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v7

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    invoke-virtual {v1}, Landroid/os/Parcel;->createCharArray()[C

    .line 538
    .line 539
    .line 540
    move-result-object v10

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 546
    .line 547
    .line 548
    move-result-wide v12

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    if-eqz v1, :cond_11

    .line 554
    .line 555
    move v14, v0

    .line 556
    goto :goto_8

    .line 557
    :cond_11
    move v14, v4

    .line 558
    :goto_8
    invoke-direct/range {v5 .. v14}, Lm17;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[CLjava/util/ArrayList;JZ)V

    .line 559
    .line 560
    .line 561
    return-object v5

    .line 562
    :pswitch_1e
    move v0, v5

    .line 563
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    if-ge v3, v2, :cond_13

    .line 572
    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    int-to-char v4, v3

    .line 578
    if-eq v4, v0, :cond_12

    .line 579
    .line 580
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 581
    .line 582
    .line 583
    goto :goto_9

    .line 584
    :cond_12
    invoke-static {v1, v3}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    goto :goto_9

    .line 589
    :cond_13
    invoke-static {v1, v2}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 590
    .line 591
    .line 592
    new-instance v0, Lp03;

    .line 593
    .line 594
    invoke-direct {v0, v6}, Lp03;-><init>(Landroid/os/Bundle;)V

    .line 595
    .line 596
    .line 597
    return-object v0

    .line 598
    :pswitch_1f
    new-instance v0, Lvs2;

    .line 599
    .line 600
    invoke-direct {v0, v1}, Lvs2;-><init>(Landroid/os/Parcel;)V

    .line 601
    .line 602
    .line 603
    return-object v0

    .line 604
    :pswitch_20
    move v0, v5

    .line 605
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-ge v3, v2, :cond_15

    .line 614
    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    int-to-char v4, v3

    .line 620
    if-eq v4, v0, :cond_14

    .line 621
    .line 622
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 623
    .line 624
    .line 625
    goto :goto_a

    .line 626
    :cond_14
    invoke-static {v1, v3}, Ljb9;->m(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    goto :goto_a

    .line 631
    :cond_15
    invoke-static {v1, v2}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 632
    .line 633
    .line 634
    new-instance v0, Lm91;

    .line 635
    .line 636
    invoke-direct {v0, v6}, Lm91;-><init>(Landroid/os/Bundle;)V

    .line 637
    .line 638
    .line 639
    return-object v0

    .line 640
    :pswitch_21
    move v0, v5

    .line 641
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    const v7, -0xc2a5d3a

    .line 650
    .line 651
    .line 652
    if-ne v5, v7, :cond_19

    .line 653
    .line 654
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    if-ge v5, v2, :cond_18

    .line 663
    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    int-to-char v7, v5

    .line 669
    if-eq v7, v0, :cond_17

    .line 670
    .line 671
    if-eq v7, v3, :cond_16

    .line 672
    .line 673
    invoke-static {v1, v5}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 674
    .line 675
    .line 676
    goto :goto_b

    .line 677
    :cond_16
    invoke-static {v1, v5}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 678
    .line 679
    .line 680
    move-result v4

    .line 681
    goto :goto_b

    .line 682
    :cond_17
    sget-object v6, Lqn1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 683
    .line 684
    invoke-static {v1, v5, v6}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    move-object v6, v5

    .line 689
    check-cast v6, Lqn1;

    .line 690
    .line 691
    goto :goto_b

    .line 692
    :cond_18
    invoke-static {v1, v2}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 693
    .line 694
    .line 695
    new-instance v0, Lef;

    .line 696
    .line 697
    invoke-direct {v0, v6, v4}, Lef;-><init>(Lqn1;Z)V

    .line 698
    .line 699
    .line 700
    goto :goto_c

    .line 701
    :cond_19
    add-int/lit8 v2, v2, -0x4

    .line 702
    .line 703
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 704
    .line 705
    .line 706
    sget-object v0, Lef;->d:Lef;

    .line 707
    .line 708
    :goto_c
    return-object v0

    .line 709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_10
        :pswitch_f
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    :pswitch_data_1
    .packed-switch 0x2
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

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
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
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lr39;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Ljh8;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lsa6;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lqa6;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lq49;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lsp0;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/SignInAccount;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [La29;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lvg7;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lm17;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lp03;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lvs2;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lm91;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lef;

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
