.class public final Lmk;
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
    iput p1, p0, Lmk;->a:I

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
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lmk;->a:I

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
    move-object v2, v8

    .line 22
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v3, v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    int-to-char v9, v3

    .line 33
    if-eq v9, v7, :cond_2

    .line 34
    .line 35
    if-eq v9, v5, :cond_1

    .line 36
    .line 37
    if-eq v9, v4, :cond_0

    .line 38
    .line 39
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v1, v3}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lyx9;

    .line 62
    .line 63
    invoke-direct {v0, v8, v2, v6}, Lyx9;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_0
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-ge v2, v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    int-to-char v3, v2

    .line 82
    if-eq v3, v7, :cond_4

    .line 83
    .line 84
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-static {v1, v2}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lvw9;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :pswitch_1
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    move-object v10, v8

    .line 106
    move-object v11, v10

    .line 107
    move-object v12, v11

    .line 108
    move-object v13, v12

    .line 109
    move-object v14, v13

    .line 110
    move-object v15, v14

    .line 111
    move-object/from16 v16, v15

    .line 112
    .line 113
    move-object/from16 v17, v16

    .line 114
    .line 115
    move-object/from16 v18, v17

    .line 116
    .line 117
    move-object/from16 v19, v18

    .line 118
    .line 119
    move-object/from16 v20, v19

    .line 120
    .line 121
    move-object/from16 v21, v20

    .line 122
    .line 123
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ge v2, v0, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    int-to-char v3, v2

    .line 134
    packed-switch v3, :pswitch_data_1

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_2
    sget-object v3, Lh69;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    .line 143
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    move-object/from16 v21, v2

    .line 148
    .line 149
    check-cast v21, Lh69;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :pswitch_3
    sget-object v3, Lc99;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 153
    .line 154
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object/from16 v20, v2

    .line 159
    .line 160
    check-cast v20, Lc99;

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :pswitch_4
    sget-object v3, La79;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 164
    .line 165
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    move-object/from16 v19, v2

    .line 170
    .line 171
    check-cast v19, La79;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :pswitch_5
    sget-object v3, Ld14;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    .line 176
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    move-object/from16 v18, v2

    .line 181
    .line 182
    check-cast v18, Ld14;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :pswitch_6
    sget-object v3, Ls59;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 186
    .line 187
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    move-object/from16 v17, v2

    .line 192
    .line 193
    check-cast v17, Ls59;

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :pswitch_7
    sget-object v3, Lvw9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 197
    .line 198
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    move-object/from16 v16, v2

    .line 203
    .line 204
    check-cast v16, Lvw9;

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :pswitch_8
    sget-object v3, Lq49;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 208
    .line 209
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    move-object v15, v2

    .line 214
    check-cast v15, Lq49;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :pswitch_9
    sget-object v3, Ly39;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 218
    .line 219
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    move-object v14, v2

    .line 224
    check-cast v14, Ly39;

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_a
    sget-object v3, Lx1a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 228
    .line 229
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    move-object v13, v2

    .line 234
    check-cast v13, Lx1a;

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :pswitch_b
    sget-object v3, Lih8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 238
    .line 239
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    move-object v12, v2

    .line 244
    check-cast v12, Lih8;

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :pswitch_c
    sget-object v3, Luu9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 248
    .line 249
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    move-object v11, v2

    .line 254
    check-cast v11, Luu9;

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_d
    sget-object v3, Ld63;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 259
    .line 260
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    move-object v10, v2

    .line 265
    check-cast v10, Ld63;

    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_6
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 270
    .line 271
    .line 272
    new-instance v9, Li80;

    .line 273
    .line 274
    invoke-direct/range {v9 .. v21}, Li80;-><init>(Ld63;Luu9;Lih8;Lx1a;Ly39;Lq49;Lvw9;Ls59;Ld14;La79;Lc99;Lh69;)V

    .line 275
    .line 276
    .line 277
    return-object v9

    .line 278
    :pswitch_e
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    move-object v10, v8

    .line 283
    move-object v11, v10

    .line 284
    move-object v12, v11

    .line 285
    move-object v13, v12

    .line 286
    move-object v14, v13

    .line 287
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-ge v6, v0, :cond_c

    .line 292
    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 294
    .line 295
    .line 296
    move-result v6

    .line 297
    int-to-char v8, v6

    .line 298
    if-eq v8, v7, :cond_b

    .line 299
    .line 300
    if-eq v8, v5, :cond_a

    .line 301
    .line 302
    if-eq v8, v4, :cond_9

    .line 303
    .line 304
    if-eq v8, v3, :cond_8

    .line 305
    .line 306
    if-eq v8, v2, :cond_7

    .line 307
    .line 308
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 309
    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_7
    invoke-static {v1, v6}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v14

    .line 316
    goto :goto_3

    .line 317
    :cond_8
    sget-object v8, Lfl9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 318
    .line 319
    invoke-static {v1, v6, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    move-object v13, v6

    .line 324
    check-cast v13, Lfl9;

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_9
    sget-object v8, Lk80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    .line 329
    invoke-static {v1, v6, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    move-object v12, v6

    .line 334
    check-cast v12, Lk80;

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_a
    sget-object v8, Lrh9;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-static {v1, v6, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    move-object v11, v6

    .line 344
    check-cast v11, Lrh9;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_b
    sget-object v8, Loi8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    .line 349
    invoke-static {v1, v6, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    move-object v10, v6

    .line 354
    check-cast v10, Loi8;

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_c
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 358
    .line 359
    .line 360
    new-instance v9, Lj80;

    .line 361
    .line 362
    invoke-direct/range {v9 .. v14}, Lj80;-><init>(Loi8;Lrh9;Lk80;Lfl9;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v9

    .line 366
    :pswitch_f
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-ge v2, v0, :cond_e

    .line 375
    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    int-to-char v3, v2

    .line 381
    if-eq v3, v7, :cond_d

    .line 382
    .line 383
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 384
    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_d
    sget-object v3, Lpi8;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 388
    .line 389
    invoke-static {v1, v2, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    goto :goto_4

    .line 394
    :cond_e
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Loi8;

    .line 398
    .line 399
    invoke-direct {v0, v8}, Loi8;-><init>(Ljava/util/ArrayList;)V

    .line 400
    .line 401
    .line 402
    return-object v0

    .line 403
    :pswitch_10
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    :try_start_0
    invoke-static {v0}, Ld58;->c(Ljava/lang/String;)Ld58;

    .line 408
    .line 409
    .line 410
    move-result-object v8
    :try_end_0
    .catch Le58; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_5

    .line 412
    :catch_0
    move-exception v0

    .line 413
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 414
    .line 415
    .line 416
    :goto_5
    return-object v8

    .line 417
    :pswitch_11
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    move-object v10, v8

    .line 422
    move-object v11, v10

    .line 423
    move-object v12, v11

    .line 424
    move-object v13, v12

    .line 425
    move-object v14, v13

    .line 426
    move-object v15, v14

    .line 427
    move-object/from16 v16, v15

    .line 428
    .line 429
    move-object/from16 v17, v16

    .line 430
    .line 431
    move-object/from16 v18, v17

    .line 432
    .line 433
    move-object/from16 v19, v18

    .line 434
    .line 435
    move-object/from16 v20, v19

    .line 436
    .line 437
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-ge v2, v0, :cond_10

    .line 442
    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    int-to-char v3, v2

    .line 448
    packed-switch v3, :pswitch_data_2

    .line 449
    .line 450
    .line 451
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :pswitch_12
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 456
    .line 457
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    move-object/from16 v20, v2

    .line 462
    .line 463
    check-cast v20, Landroid/os/ResultReceiver;

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :pswitch_13
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v19

    .line 470
    goto :goto_6

    .line 471
    :pswitch_14
    invoke-static {v1, v2}, Ljb9;->Y(Landroid/os/Parcel;I)Ljava/lang/Long;

    .line 472
    .line 473
    .line 474
    move-result-object v18

    .line 475
    goto :goto_6

    .line 476
    :pswitch_15
    sget-object v3, Li80;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 477
    .line 478
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    move-object/from16 v17, v2

    .line 483
    .line 484
    check-cast v17, Li80;

    .line 485
    .line 486
    goto :goto_6

    .line 487
    :pswitch_16
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v16

    .line 491
    goto :goto_6

    .line 492
    :pswitch_17
    sget-object v3, Lf58;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 493
    .line 494
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    move-object v15, v2

    .line 499
    check-cast v15, Lf58;

    .line 500
    .line 501
    goto :goto_6

    .line 502
    :pswitch_18
    invoke-static {v1, v2}, Ljb9;->W(Landroid/os/Parcel;I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v14

    .line 506
    goto :goto_6

    .line 507
    :pswitch_19
    sget-object v3, Lra6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 508
    .line 509
    invoke-static {v1, v2, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 510
    .line 511
    .line 512
    move-result-object v13

    .line 513
    goto :goto_6

    .line 514
    :pswitch_1a
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v12

    .line 518
    goto :goto_6

    .line 519
    :pswitch_1b
    invoke-static {v1, v2}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-nez v2, :cond_f

    .line 524
    .line 525
    move-object v11, v8

    .line 526
    goto :goto_6

    .line 527
    :cond_f
    const/16 v3, 0x8

    .line 528
    .line 529
    invoke-static {v1, v2, v3}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->readDouble()D

    .line 533
    .line 534
    .line 535
    move-result-wide v2

    .line 536
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    move-object v11, v2

    .line 541
    goto :goto_6

    .line 542
    :pswitch_1c
    invoke-static {v1, v2}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    goto :goto_6

    .line 547
    :cond_10
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 548
    .line 549
    .line 550
    new-instance v9, Lta6;

    .line 551
    .line 552
    invoke-direct/range {v9 .. v20}, Lta6;-><init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Integer;Lf58;Ljava/lang/String;Li80;Ljava/lang/Long;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 553
    .line 554
    .line 555
    return-object v9

    .line 556
    :pswitch_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    :try_start_1
    invoke-static {v0}, Lr70;->c(Ljava/lang/String;)Lr70;

    .line 561
    .line 562
    .line 563
    move-result-object v8
    :try_end_1
    .catch Lq70; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    goto :goto_7

    .line 565
    :catch_1
    move-exception v0

    .line 566
    invoke-static {v0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 567
    .line 568
    .line 569
    :goto_7
    return-object v8

    .line 570
    :pswitch_1e
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    move-object v2, v8

    .line 575
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    if-ge v3, v0, :cond_14

    .line 580
    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    int-to-char v9, v3

    .line 586
    if-eq v9, v7, :cond_13

    .line 587
    .line 588
    if-eq v9, v5, :cond_12

    .line 589
    .line 590
    if-eq v9, v4, :cond_11

    .line 591
    .line 592
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 593
    .line 594
    .line 595
    goto :goto_8

    .line 596
    :cond_11
    invoke-static {v1, v3}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    goto :goto_8

    .line 601
    :cond_12
    invoke-static {v1, v3}, Ljb9;->n(Landroid/os/Parcel;I)[B

    .line 602
    .line 603
    .line 604
    move-result-object v8

    .line 605
    goto :goto_8

    .line 606
    :cond_13
    invoke-static {v1, v3}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 607
    .line 608
    .line 609
    move-result v6

    .line 610
    goto :goto_8

    .line 611
    :cond_14
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 612
    .line 613
    .line 614
    new-instance v0, Lup0;

    .line 615
    .line 616
    invoke-direct {v0, v6, v8, v2}, Lup0;-><init>(Z[BLjava/lang/String;)V

    .line 617
    .line 618
    .line 619
    return-object v0

    .line 620
    :pswitch_1f
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    move v10, v6

    .line 625
    move v13, v10

    .line 626
    move v14, v13

    .line 627
    move-object v11, v8

    .line 628
    move-object v12, v11

    .line 629
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    if-ge v6, v0, :cond_1b

    .line 634
    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    int-to-char v9, v6

    .line 640
    if-eq v9, v7, :cond_1a

    .line 641
    .line 642
    if-eq v9, v5, :cond_18

    .line 643
    .line 644
    if-eq v9, v4, :cond_17

    .line 645
    .line 646
    if-eq v9, v3, :cond_16

    .line 647
    .line 648
    if-eq v9, v2, :cond_15

    .line 649
    .line 650
    invoke-static {v1, v6}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 651
    .line 652
    .line 653
    goto :goto_9

    .line 654
    :cond_15
    invoke-static {v1, v6}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 655
    .line 656
    .line 657
    move-result v14

    .line 658
    goto :goto_9

    .line 659
    :cond_16
    invoke-static {v1, v6}, Ljb9;->U(Landroid/os/Parcel;I)Z

    .line 660
    .line 661
    .line 662
    move-result v13

    .line 663
    goto :goto_9

    .line 664
    :cond_17
    sget-object v9, Lhs1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 665
    .line 666
    invoke-static {v1, v6, v9}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 667
    .line 668
    .line 669
    move-result-object v6

    .line 670
    move-object v12, v6

    .line 671
    check-cast v12, Lhs1;

    .line 672
    .line 673
    goto :goto_9

    .line 674
    :cond_18
    invoke-static {v1, v6}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 679
    .line 680
    .line 681
    move-result v9

    .line 682
    if-nez v6, :cond_19

    .line 683
    .line 684
    move-object v11, v8

    .line 685
    goto :goto_9

    .line 686
    :cond_19
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 687
    .line 688
    .line 689
    move-result-object v11

    .line 690
    add-int/2addr v9, v6

    .line 691
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 692
    .line 693
    .line 694
    goto :goto_9

    .line 695
    :cond_1a
    invoke-static {v1, v6}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 696
    .line 697
    .line 698
    move-result v10

    .line 699
    goto :goto_9

    .line 700
    :cond_1b
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 701
    .line 702
    .line 703
    new-instance v9, Lo29;

    .line 704
    .line 705
    invoke-direct/range {v9 .. v14}, Lo29;-><init>(ILandroid/os/IBinder;Lhs1;ZZ)V

    .line 706
    .line 707
    .line 708
    return-object v9

    .line 709
    :pswitch_20
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    move-object v2, v8

    .line 714
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-ge v3, v0, :cond_1f

    .line 719
    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    int-to-char v9, v3

    .line 725
    if-eq v9, v7, :cond_1e

    .line 726
    .line 727
    if-eq v9, v5, :cond_1d

    .line 728
    .line 729
    if-eq v9, v4, :cond_1c

    .line 730
    .line 731
    invoke-static {v1, v3}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 732
    .line 733
    .line 734
    goto :goto_a

    .line 735
    :cond_1c
    sget-object v2, Lo29;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 736
    .line 737
    invoke-static {v1, v3, v2}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    check-cast v2, Lo29;

    .line 742
    .line 743
    goto :goto_a

    .line 744
    :cond_1d
    sget-object v8, Lhs1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 745
    .line 746
    invoke-static {v1, v3, v8}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    move-object v8, v3

    .line 751
    check-cast v8, Lhs1;

    .line 752
    .line 753
    goto :goto_a

    .line 754
    :cond_1e
    invoke-static {v1, v3}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 755
    .line 756
    .line 757
    move-result v6

    .line 758
    goto :goto_a

    .line 759
    :cond_1f
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 760
    .line 761
    .line 762
    new-instance v0, Lf29;

    .line 763
    .line 764
    invoke-direct {v0, v6, v8, v2}, Lf29;-><init>(ILhs1;Lo29;)V

    .line 765
    .line 766
    .line 767
    return-object v0

    .line 768
    :pswitch_21
    invoke-static {v1}, Ljb9;->k0(Landroid/os/Parcel;)I

    .line 769
    .line 770
    .line 771
    move-result v0

    .line 772
    const-wide/16 v2, 0x0

    .line 773
    .line 774
    move-wide/from16 v17, v2

    .line 775
    .line 776
    move v10, v6

    .line 777
    move-object v11, v8

    .line 778
    move-object v12, v11

    .line 779
    move-object v13, v12

    .line 780
    move-object v14, v13

    .line 781
    move-object v15, v14

    .line 782
    move-object/from16 v16, v15

    .line 783
    .line 784
    move-object/from16 v19, v16

    .line 785
    .line 786
    move-object/from16 v20, v19

    .line 787
    .line 788
    move-object/from16 v21, v20

    .line 789
    .line 790
    move-object/from16 v22, v21

    .line 791
    .line 792
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    if-ge v2, v0, :cond_20

    .line 797
    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    int-to-char v3, v2

    .line 803
    packed-switch v3, :pswitch_data_3

    .line 804
    .line 805
    .line 806
    invoke-static {v1, v2}, Ljb9;->e0(Landroid/os/Parcel;I)V

    .line 807
    .line 808
    .line 809
    goto :goto_b

    .line 810
    :pswitch_22
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    move-object/from16 v22, v2

    .line 815
    .line 816
    goto :goto_b

    .line 817
    :pswitch_23
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    move-object/from16 v21, v2

    .line 822
    .line 823
    goto :goto_b

    .line 824
    :pswitch_24
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 825
    .line 826
    invoke-static {v1, v2, v3}, Ljb9;->t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    move-object/from16 v20, v2

    .line 831
    .line 832
    goto :goto_b

    .line 833
    :pswitch_25
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    move-object/from16 v19, v2

    .line 838
    .line 839
    goto :goto_b

    .line 840
    :pswitch_26
    invoke-static {v1, v2}, Ljb9;->X(Landroid/os/Parcel;I)J

    .line 841
    .line 842
    .line 843
    move-result-wide v2

    .line 844
    move-wide/from16 v17, v2

    .line 845
    .line 846
    goto :goto_b

    .line 847
    :pswitch_27
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    move-object/from16 v16, v2

    .line 852
    .line 853
    goto :goto_b

    .line 854
    :pswitch_28
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 855
    .line 856
    invoke-static {v1, v2, v3}, Ljb9;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    check-cast v2, Landroid/net/Uri;

    .line 861
    .line 862
    move-object v15, v2

    .line 863
    goto :goto_b

    .line 864
    :pswitch_29
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    move-object v14, v2

    .line 869
    goto :goto_b

    .line 870
    :pswitch_2a
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v2

    .line 874
    move-object v13, v2

    .line 875
    goto :goto_b

    .line 876
    :pswitch_2b
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    move-object v12, v2

    .line 881
    goto :goto_b

    .line 882
    :pswitch_2c
    invoke-static {v1, v2}, Ljb9;->q(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    move-object v11, v2

    .line 887
    goto :goto_b

    .line 888
    :pswitch_2d
    invoke-static {v1, v2}, Ljb9;->V(Landroid/os/Parcel;I)I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    move v10, v2

    .line 893
    goto :goto_b

    .line 894
    :cond_20
    invoke-static {v1, v0}, Ljb9;->x(Landroid/os/Parcel;I)V

    .line 895
    .line 896
    .line 897
    new-instance v9, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 898
    .line 899
    invoke-direct/range {v9 .. v22}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    return-object v9

    .line 903
    :pswitch_2e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    new-instance v10, Lyn8;

    .line 907
    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    move-object v11, v0

    .line 913
    check-cast v11, Lq63;

    .line 914
    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 916
    .line 917
    .line 918
    move-result-wide v12

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 920
    .line 921
    .line 922
    move-result-wide v14

    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v16

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v17

    .line 931
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v18

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    if-eqz v0, :cond_21

    .line 940
    .line 941
    move/from16 v19, v7

    .line 942
    .line 943
    goto :goto_c

    .line 944
    :cond_21
    move/from16 v19, v6

    .line 945
    .line 946
    :goto_c
    invoke-direct/range {v10 .. v19}, Lyn8;-><init>(Lq63;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 947
    .line 948
    .line 949
    return-object v10

    .line 950
    :pswitch_2f
    new-instance v0, Lse7;

    .line 951
    .line 952
    invoke-direct {v0}, Ljava/lang/Process;-><init>()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    sget v2, Ls84;->a:I

    .line 960
    .line 961
    if-nez v1, :cond_22

    .line 962
    .line 963
    goto :goto_d

    .line 964
    :cond_22
    const-string v2, "moe.shizuku.server.IRemoteProcess"

    .line 965
    .line 966
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    if-eqz v2, :cond_23

    .line 971
    .line 972
    instance-of v3, v2, Lt84;

    .line 973
    .line 974
    if-eqz v3, :cond_23

    .line 975
    .line 976
    move-object v8, v2

    .line 977
    check-cast v8, Lt84;

    .line 978
    .line 979
    goto :goto_d

    .line 980
    :cond_23
    new-instance v8, Lr84;

    .line 981
    .line 982
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 983
    .line 984
    .line 985
    iput-object v1, v8, Lr84;->a:Landroid/os/IBinder;

    .line 986
    .line 987
    :goto_d
    iput-object v8, v0, Lse7;->a:Lt84;

    .line 988
    .line 989
    return-object v0

    .line 990
    :pswitch_30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    .line 992
    .line 993
    new-instance v9, Lo17;

    .line 994
    .line 995
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 996
    .line 997
    .line 998
    move-result-wide v10

    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1000
    .line 1001
    .line 1002
    move-result v12

    .line 1003
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1004
    .line 1005
    .line 1006
    move-result v13

    .line 1007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1008
    .line 1009
    .line 1010
    move-result v14

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v15

    .line 1015
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v16

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v17

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1024
    .line 1025
    .line 1026
    move-result-wide v19

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v21

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1032
    .line 1033
    .line 1034
    move-result-wide v22

    .line 1035
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1036
    .line 1037
    .line 1038
    move-result-wide v24

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1040
    .line 1041
    .line 1042
    move-result-wide v26

    .line 1043
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1044
    .line 1045
    .line 1046
    move-result-wide v28

    .line 1047
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1048
    .line 1049
    .line 1050
    move-result-wide v30

    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1052
    .line 1053
    .line 1054
    move-result-wide v32

    .line 1055
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1056
    .line 1057
    .line 1058
    move-result-wide v34

    .line 1059
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v36

    .line 1063
    invoke-direct/range {v9 .. v37}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJ)V

    .line 1064
    .line 1065
    .line 1066
    return-object v9

    .line 1067
    :pswitch_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    new-instance v0, Lc17;

    .line 1071
    .line 1072
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1073
    .line 1074
    .line 1075
    move-result-wide v3

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    move-object/from16 v5, p1

    .line 1081
    .line 1082
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    .line 1083
    .line 1084
    .line 1085
    move-result v2

    .line 1086
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v5

    .line 1090
    invoke-direct/range {v0 .. v5}, Lc17;-><init>(IIJLjava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    return-object v0

    .line 1094
    :pswitch_32
    move-object v5, v1

    .line 1095
    new-instance v0, Lgl5;

    .line 1096
    .line 1097
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    .line 1101
    .line 1102
    .line 1103
    move-result v1

    .line 1104
    iput v1, v0, Lgl5;->a:I

    .line 1105
    .line 1106
    const-class v1, Lgl5;

    .line 1107
    .line 1108
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    check-cast v1, Lyw5;

    .line 1117
    .line 1118
    iput-object v1, v0, Lgl5;->b:Lyw5;

    .line 1119
    .line 1120
    return-object v0

    .line 1121
    :pswitch_33
    move-object v5, v1

    .line 1122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    .line 1124
    .line 1125
    new-instance v2, Ld41;

    .line 1126
    .line 1127
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    .line 1132
    .line 1133
    .line 1134
    move-result v0

    .line 1135
    if-eqz v0, :cond_24

    .line 1136
    .line 1137
    move v4, v7

    .line 1138
    goto :goto_e

    .line 1139
    :cond_24
    move v4, v6

    .line 1140
    :goto_e
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    if-eqz v0, :cond_25

    .line 1145
    .line 1146
    move v5, v7

    .line 1147
    goto :goto_f

    .line 1148
    :cond_25
    move v5, v6

    .line 1149
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1150
    .line 1151
    .line 1152
    move-result v0

    .line 1153
    if-eqz v0, :cond_26

    .line 1154
    .line 1155
    move v6, v7

    .line 1156
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v7

    .line 1160
    invoke-direct/range {v2 .. v7}, Ld41;-><init>(Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    return-object v2

    .line 1164
    :pswitch_34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1165
    .line 1166
    .line 1167
    new-instance v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 1168
    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1174
    .line 1175
    .line 1176
    move-result v2

    .line 1177
    if-nez v2, :cond_27

    .line 1178
    .line 1179
    move-object v2, v8

    .line 1180
    goto :goto_10

    .line 1181
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 1182
    .line 1183
    .line 1184
    move-result-wide v2

    .line 1185
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v2

    .line 1189
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1190
    .line 1191
    .line 1192
    move-result v3

    .line 1193
    if-nez v3, :cond_28

    .line 1194
    .line 1195
    goto :goto_11

    .line 1196
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 1197
    .line 1198
    .line 1199
    move-result-wide v3

    .line 1200
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v8

    .line 1204
    :goto_11
    invoke-direct {v0, v1, v2, v8}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1205
    .line 1206
    .line 1207
    return-object v0

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
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

    :pswitch_data_2
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lmk;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lyx9;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lvw9;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Li80;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lj80;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Loi8;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Ld58;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lta6;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lr70;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lup0;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lo29;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lf29;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lyn8;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lse7;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lo17;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lc17;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lgl5;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Ld41;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 61
    .line 62
    return-object p0

    .line 63
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
