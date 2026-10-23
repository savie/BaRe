.class public final Lwg5$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 599
    invoke-virtual {p0, p1}, Lwg5$b;->createFromParcel(Landroid/os/Parcel;)Lwg5;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lwg5;
    .locals 40

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v4, v1

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v5, v1

    .line 40
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v6, v1

    .line 57
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v7, v1

    .line 74
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    move-object v8, v1

    .line 91
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    goto :goto_5

    .line 99
    :cond_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 100
    .line 101
    .line 102
    move-result-wide v9

    .line 103
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    move-object v9, v1

    .line 108
    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_6

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    move-object v10, v1

    .line 125
    :goto_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_7

    .line 130
    .line 131
    const/4 v11, 0x0

    .line 132
    goto :goto_7

    .line 133
    :cond_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    move-object v11, v1

    .line 142
    :goto_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_8

    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    goto :goto_8

    .line 150
    :cond_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    move-object v12, v1

    .line 159
    :goto_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_9

    .line 168
    .line 169
    const/4 v14, 0x0

    .line 170
    goto :goto_9

    .line 171
    :cond_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    move-object v14, v1

    .line 180
    :goto_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v16

    .line 188
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_a

    .line 193
    .line 194
    const/16 v17, 0x0

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_a
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 198
    .line 199
    .line 200
    move-result-wide v17

    .line 201
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object/from16 v17, v1

    .line 206
    .line 207
    :goto_a
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v18

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_b

    .line 216
    .line 217
    const/16 v19, 0x0

    .line 218
    .line 219
    goto :goto_b

    .line 220
    :cond_b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move-object/from16 v19, v1

    .line 229
    .line 230
    :goto_b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_c

    .line 235
    .line 236
    const/16 v20, 0x0

    .line 237
    .line 238
    goto :goto_c

    .line 239
    :cond_c
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    move-object/from16 v20, v1

    .line 248
    .line 249
    :goto_c
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_d

    .line 254
    .line 255
    const/16 v21, 0x0

    .line 256
    .line 257
    goto :goto_d

    .line 258
    :cond_d
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    move-object/from16 v21, v1

    .line 267
    .line 268
    :goto_d
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_e

    .line 273
    .line 274
    const/16 v22, 0x0

    .line 275
    .line 276
    goto :goto_e

    .line 277
    :cond_e
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    move-object/from16 v22, v1

    .line 286
    .line 287
    :goto_e
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_f

    .line 292
    .line 293
    const/16 v23, 0x0

    .line 294
    .line 295
    goto :goto_f

    .line 296
    :cond_f
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    move-object/from16 v23, v1

    .line 305
    .line 306
    :goto_f
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_10

    .line 311
    .line 312
    const/16 v24, 0x0

    .line 313
    .line 314
    goto :goto_10

    .line 315
    :cond_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    move-object/from16 v24, v1

    .line 324
    .line 325
    :goto_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-nez v1, :cond_11

    .line 330
    .line 331
    const/16 v25, 0x0

    .line 332
    .line 333
    goto :goto_11

    .line 334
    :cond_11
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    move-object/from16 v25, v1

    .line 343
    .line 344
    :goto_11
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v26

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-nez v1, :cond_12

    .line 353
    .line 354
    const/16 v27, 0x0

    .line 355
    .line 356
    goto :goto_12

    .line 357
    :cond_12
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    move-object/from16 v27, v1

    .line 366
    .line 367
    :goto_12
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v28

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_13

    .line 376
    .line 377
    const/16 v29, 0x0

    .line 378
    .line 379
    goto :goto_13

    .line 380
    :cond_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    move-object/from16 v29, v1

    .line 389
    .line 390
    :goto_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_14

    .line 395
    .line 396
    const/16 v30, 0x0

    .line 397
    .line 398
    goto :goto_14

    .line 399
    :cond_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    move-object/from16 v30, v1

    .line 408
    .line 409
    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_15

    .line 414
    .line 415
    const/16 v31, 0x0

    .line 416
    .line 417
    goto :goto_15

    .line 418
    :cond_15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    move-object/from16 v31, v1

    .line 427
    .line 428
    :goto_15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-nez v1, :cond_16

    .line 433
    .line 434
    const/16 v32, 0x0

    .line 435
    .line 436
    goto :goto_16

    .line 437
    :cond_16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    move-object/from16 v32, v1

    .line 446
    .line 447
    :goto_16
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_17

    .line 452
    .line 453
    const/16 v33, 0x0

    .line 454
    .line 455
    goto :goto_17

    .line 456
    :cond_17
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    move-object/from16 v33, v1

    .line 465
    .line 466
    :goto_17
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v34

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-nez v1, :cond_18

    .line 475
    .line 476
    const/16 v35, 0x0

    .line 477
    .line 478
    goto :goto_18

    .line 479
    :cond_18
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    move-object/from16 v35, v1

    .line 488
    .line 489
    :goto_18
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-nez v1, :cond_19

    .line 494
    .line 495
    const/16 v36, 0x0

    .line 496
    .line 497
    goto :goto_19

    .line 498
    :cond_19
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    move-object/from16 v36, v1

    .line 507
    .line 508
    :goto_19
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 509
    .line 510
    .line 511
    move-result-object v37

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-nez v1, :cond_1a

    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    goto :goto_1b

    .line 520
    :cond_1a
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    .line 525
    .line 526
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 527
    .line 528
    .line 529
    const/4 v3, 0x0

    .line 530
    :goto_1a
    if-eq v3, v1, :cond_1b

    .line 531
    .line 532
    move/from16 v39, v1

    .line 533
    .line 534
    sget-object v1, Lvg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 535
    .line 536
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    add-int/lit8 v3, v3, 0x1

    .line 544
    .line 545
    move/from16 v1, v39

    .line 546
    .line 547
    goto :goto_1a

    .line 548
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    if-nez v1, :cond_1c

    .line 553
    .line 554
    move-object/from16 p0, v2

    .line 555
    .line 556
    const/16 v39, 0x0

    .line 557
    .line 558
    goto :goto_1d

    .line 559
    :cond_1c
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    new-instance v3, Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .line 567
    .line 568
    move-object/from16 p0, v2

    .line 569
    .line 570
    const/4 v2, 0x0

    .line 571
    :goto_1c
    if-eq v2, v1, :cond_1d

    .line 572
    .line 573
    move/from16 v38, v1

    .line 574
    .line 575
    sget-object v1, Lxg5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 576
    .line 577
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    add-int/lit8 v2, v2, 0x1

    .line 585
    .line 586
    move/from16 v1, v38

    .line 587
    .line 588
    goto :goto_1c

    .line 589
    :cond_1d
    move-object/from16 v39, v3

    .line 590
    .line 591
    :goto_1d
    new-instance v3, Lwg5;

    .line 592
    .line 593
    move-object/from16 v38, p0

    .line 594
    .line 595
    invoke-direct/range {v3 .. v39}, Lwg5;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 596
    .line 597
    .line 598
    return-object v3
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lwg5$b;->newArray(I)[Lwg5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lwg5;
    .locals 0

    .line 6
    new-array p0, p1, [Lwg5;

    return-object p0
.end method
