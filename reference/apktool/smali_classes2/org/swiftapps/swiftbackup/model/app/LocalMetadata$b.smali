.class public final Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
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

    .line 785
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$b;->createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 58

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    move-object v3, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    move-object v5, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    move-object v7, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    move-object v8, v4

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 76
    .line 77
    .line 78
    move-result-wide v8

    .line 79
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-nez v9, :cond_4

    .line 88
    .line 89
    move-object v9, v4

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-nez v10, :cond_5

    .line 104
    .line 105
    move-object v10, v4

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-nez v12, :cond_6

    .line 124
    .line 125
    move-object v12, v4

    .line 126
    goto :goto_6

    .line 127
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 128
    .line 129
    .line 130
    move-result-wide v12

    .line 131
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-nez v13, :cond_7

    .line 140
    .line 141
    move-object v13, v4

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 144
    .line 145
    .line 146
    move-result-wide v13

    .line 147
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v13

    .line 151
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result v14

    .line 155
    if-nez v14, :cond_8

    .line 156
    .line 157
    move-object v14, v4

    .line 158
    goto :goto_8

    .line 159
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 160
    .line 161
    .line 162
    move-result-wide v14

    .line 163
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    if-nez v16, :cond_9

    .line 176
    .line 177
    move-object/from16 v16, v4

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 181
    .line 182
    .line 183
    move-result-wide v16

    .line 184
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v16

    .line 188
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result v17

    .line 192
    if-nez v17, :cond_a

    .line 193
    .line 194
    move-object/from16 v17, v4

    .line 195
    .line 196
    goto :goto_a

    .line 197
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 198
    .line 199
    .line 200
    move-result-wide v17

    .line 201
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v17

    .line 205
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 206
    .line 207
    .line 208
    move-result v18

    .line 209
    if-nez v18, :cond_b

    .line 210
    .line 211
    move-object/from16 v18, v4

    .line 212
    .line 213
    goto :goto_b

    .line 214
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 215
    .line 216
    .line 217
    move-result-wide v18

    .line 218
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v18

    .line 222
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v19

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result v20

    .line 230
    if-nez v20, :cond_c

    .line 231
    .line 232
    move-object/from16 v20, v4

    .line 233
    .line 234
    goto :goto_c

    .line 235
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 236
    .line 237
    .line 238
    move-result-wide v20

    .line 239
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v20

    .line 243
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result v21

    .line 247
    if-nez v21, :cond_d

    .line 248
    .line 249
    move-object/from16 v21, v4

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 253
    .line 254
    .line 255
    move-result-wide v21

    .line 256
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    .line 258
    .line 259
    move-result-object v21

    .line 260
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 261
    .line 262
    .line 263
    move-result v22

    .line 264
    const/16 v23, 0x0

    .line 265
    .line 266
    const/16 v24, 0x1

    .line 267
    .line 268
    if-nez v22, :cond_e

    .line 269
    .line 270
    move-object/from16 v22, v4

    .line 271
    .line 272
    goto :goto_f

    .line 273
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result v22

    .line 277
    if-eqz v22, :cond_f

    .line 278
    .line 279
    move/from16 v22, v24

    .line 280
    .line 281
    goto :goto_e

    .line 282
    :cond_f
    move/from16 v22, v23

    .line 283
    .line 284
    :goto_e
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object v22

    .line 288
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v25

    .line 292
    move/from16 v26, v23

    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v23

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result v27

    .line 302
    if-nez v27, :cond_10

    .line 303
    .line 304
    move-object/from16 v27, v4

    .line 305
    .line 306
    goto :goto_10

    .line 307
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 308
    .line 309
    .line 310
    move-result-wide v27

    .line 311
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 312
    .line 313
    .line 314
    move-result-object v27

    .line 315
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 316
    .line 317
    .line 318
    move-result v28

    .line 319
    if-nez v28, :cond_11

    .line 320
    .line 321
    move-object/from16 v28, v4

    .line 322
    .line 323
    :goto_11
    move/from16 v29, v26

    .line 324
    .line 325
    goto :goto_12

    .line 326
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 327
    .line 328
    .line 329
    move-result-wide v28

    .line 330
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v28

    .line 334
    goto :goto_11

    .line 335
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v26

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 340
    .line 341
    .line 342
    move-result v30

    .line 343
    if-nez v30, :cond_12

    .line 344
    .line 345
    move-object/from16 v30, v4

    .line 346
    .line 347
    goto :goto_13

    .line 348
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 349
    .line 350
    .line 351
    move-result-wide v30

    .line 352
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 353
    .line 354
    .line 355
    move-result-object v30

    .line 356
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 357
    .line 358
    .line 359
    move-result v31

    .line 360
    if-nez v31, :cond_13

    .line 361
    .line 362
    move-object/from16 v31, v4

    .line 363
    .line 364
    goto :goto_14

    .line 365
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 366
    .line 367
    .line 368
    move-result-wide v31

    .line 369
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 370
    .line 371
    .line 372
    move-result-object v31

    .line 373
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result v32

    .line 377
    if-nez v32, :cond_14

    .line 378
    .line 379
    move-object/from16 v32, v4

    .line 380
    .line 381
    :goto_15
    move/from16 v33, v24

    .line 382
    .line 383
    move-object/from16 v24, v27

    .line 384
    .line 385
    move-object/from16 v27, v30

    .line 386
    .line 387
    goto :goto_17

    .line 388
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 389
    .line 390
    .line 391
    move-result v32

    .line 392
    if-eqz v32, :cond_15

    .line 393
    .line 394
    move/from16 v32, v24

    .line 395
    .line 396
    goto :goto_16

    .line 397
    :cond_15
    move/from16 v32, v29

    .line 398
    .line 399
    :goto_16
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 400
    .line 401
    .line 402
    move-result-object v32

    .line 403
    goto :goto_15

    .line 404
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v30

    .line 408
    move-object/from16 v34, v4

    .line 409
    .line 410
    move-object v4, v5

    .line 411
    move-object v5, v6

    .line 412
    move-object v6, v7

    .line 413
    move-object v7, v8

    .line 414
    move-object v8, v9

    .line 415
    move-object v9, v10

    .line 416
    move-object v10, v11

    .line 417
    move-object v11, v12

    .line 418
    move-object v12, v13

    .line 419
    move-object v13, v14

    .line 420
    move-object v14, v15

    .line 421
    move-object/from16 v15, v16

    .line 422
    .line 423
    move-object/from16 v16, v17

    .line 424
    .line 425
    move-object/from16 v17, v18

    .line 426
    .line 427
    move-object/from16 v18, v19

    .line 428
    .line 429
    move-object/from16 v19, v20

    .line 430
    .line 431
    move-object/from16 v20, v21

    .line 432
    .line 433
    move-object/from16 v21, v22

    .line 434
    .line 435
    move-object/from16 v22, v25

    .line 436
    .line 437
    move-object/from16 v25, v28

    .line 438
    .line 439
    move-object/from16 v28, v31

    .line 440
    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v31

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 446
    .line 447
    .line 448
    move-result v35

    .line 449
    if-nez v35, :cond_16

    .line 450
    .line 451
    move-object/from16 v35, v34

    .line 452
    .line 453
    goto :goto_18

    .line 454
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 455
    .line 456
    .line 457
    move-result-wide v35

    .line 458
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 459
    .line 460
    .line 461
    move-result-object v35

    .line 462
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 463
    .line 464
    .line 465
    move-result v36

    .line 466
    if-nez v36, :cond_17

    .line 467
    .line 468
    move-object/from16 v36, v34

    .line 469
    .line 470
    move-object/from16 v37, v36

    .line 471
    .line 472
    goto :goto_19

    .line 473
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 474
    .line 475
    .line 476
    move-result-wide v36

    .line 477
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 478
    .line 479
    .line 480
    move-result-object v36

    .line 481
    move-object/from16 v37, v34

    .line 482
    .line 483
    :goto_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v34

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 488
    .line 489
    .line 490
    move-result v38

    .line 491
    if-nez v38, :cond_18

    .line 492
    .line 493
    move-object/from16 v38, v37

    .line 494
    .line 495
    goto :goto_1a

    .line 496
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 497
    .line 498
    .line 499
    move-result-wide v38

    .line 500
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 501
    .line 502
    .line 503
    move-result-object v38

    .line 504
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 505
    .line 506
    .line 507
    move-result v39

    .line 508
    if-nez v39, :cond_19

    .line 509
    .line 510
    move-object/from16 v39, v37

    .line 511
    .line 512
    goto :goto_1b

    .line 513
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 514
    .line 515
    .line 516
    move-result-wide v39

    .line 517
    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v39

    .line 521
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v40

    .line 525
    if-nez v40, :cond_1a

    .line 526
    .line 527
    move-object/from16 v40, v37

    .line 528
    .line 529
    goto :goto_1c

    .line 530
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 531
    .line 532
    .line 533
    move-result-wide v40

    .line 534
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 535
    .line 536
    .line 537
    move-result-object v40

    .line 538
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 539
    .line 540
    .line 541
    move-result v41

    .line 542
    if-nez v41, :cond_1b

    .line 543
    .line 544
    move-object/from16 v41, v37

    .line 545
    .line 546
    :goto_1d
    move/from16 v42, v33

    .line 547
    .line 548
    move-object/from16 v33, v36

    .line 549
    .line 550
    move-object/from16 v36, v39

    .line 551
    .line 552
    goto :goto_1e

    .line 553
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 554
    .line 555
    .line 556
    move-result-wide v41

    .line 557
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 558
    .line 559
    .line 560
    move-result-object v41

    .line 561
    goto :goto_1d

    .line 562
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v39

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 567
    .line 568
    .line 569
    move-result v43

    .line 570
    if-nez v43, :cond_1c

    .line 571
    .line 572
    move-object/from16 v43, v37

    .line 573
    .line 574
    goto :goto_1f

    .line 575
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 576
    .line 577
    .line 578
    move-result-wide v43

    .line 579
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 580
    .line 581
    .line 582
    move-result-object v43

    .line 583
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 584
    .line 585
    .line 586
    move-result v44

    .line 587
    if-nez v44, :cond_1d

    .line 588
    .line 589
    move-object/from16 v44, v37

    .line 590
    .line 591
    goto :goto_20

    .line 592
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 593
    .line 594
    .line 595
    move-result-wide v44

    .line 596
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 597
    .line 598
    .line 599
    move-result-object v44

    .line 600
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 601
    .line 602
    .line 603
    move-result v45

    .line 604
    if-nez v45, :cond_1e

    .line 605
    .line 606
    move-object/from16 v45, v37

    .line 607
    .line 608
    move-object/from16 v46, v45

    .line 609
    .line 610
    :goto_21
    move-object/from16 v37, v40

    .line 611
    .line 612
    move-object/from16 v40, v43

    .line 613
    .line 614
    goto :goto_23

    .line 615
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 616
    .line 617
    .line 618
    move-result v45

    .line 619
    if-eqz v45, :cond_1f

    .line 620
    .line 621
    move/from16 v45, v42

    .line 622
    .line 623
    goto :goto_22

    .line 624
    :cond_1f
    move/from16 v45, v29

    .line 625
    .line 626
    :goto_22
    invoke-static/range {v45 .. v45}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 627
    .line 628
    .line 629
    move-result-object v45

    .line 630
    move-object/from16 v46, v37

    .line 631
    .line 632
    goto :goto_21

    .line 633
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v43

    .line 637
    move/from16 v47, v29

    .line 638
    .line 639
    move-object/from16 v29, v32

    .line 640
    .line 641
    move-object/from16 v32, v35

    .line 642
    .line 643
    move-object/from16 v35, v38

    .line 644
    .line 645
    move-object/from16 v38, v41

    .line 646
    .line 647
    move-object/from16 v41, v44

    .line 648
    .line 649
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v44

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 654
    .line 655
    .line 656
    move-result v48

    .line 657
    if-nez v48, :cond_20

    .line 658
    .line 659
    move-object/from16 v48, v46

    .line 660
    .line 661
    goto :goto_24

    .line 662
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 663
    .line 664
    .line 665
    move-result-wide v48

    .line 666
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 667
    .line 668
    .line 669
    move-result-object v48

    .line 670
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 671
    .line 672
    .line 673
    move-result v49

    .line 674
    if-nez v49, :cond_21

    .line 675
    .line 676
    move-object/from16 v49, v46

    .line 677
    .line 678
    :goto_25
    move/from16 v50, v47

    .line 679
    .line 680
    goto :goto_26

    .line 681
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 682
    .line 683
    .line 684
    move-result-wide v49

    .line 685
    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 686
    .line 687
    .line 688
    move-result-object v49

    .line 689
    goto :goto_25

    .line 690
    :goto_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v47

    .line 694
    move/from16 v51, v42

    .line 695
    .line 696
    move-object/from16 v42, v45

    .line 697
    .line 698
    move-object/from16 v45, v48

    .line 699
    .line 700
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v48

    .line 704
    move-object/from16 v52, v46

    .line 705
    .line 706
    move-object/from16 v46, v49

    .line 707
    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v49

    .line 712
    move/from16 v53, v50

    .line 713
    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v50

    .line 718
    move/from16 v54, v51

    .line 719
    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v51

    .line 724
    move-object/from16 v55, v52

    .line 725
    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v52

    .line 730
    move/from16 v56, v53

    .line 731
    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v53

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 737
    .line 738
    .line 739
    move-result v57

    .line 740
    if-nez v57, :cond_22

    .line 741
    .line 742
    move-object/from16 v54, v55

    .line 743
    .line 744
    move-object/from16 v56, v54

    .line 745
    .line 746
    goto :goto_28

    .line 747
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 748
    .line 749
    .line 750
    move-result v57

    .line 751
    if-eqz v57, :cond_23

    .line 752
    .line 753
    goto :goto_27

    .line 754
    :cond_23
    move/from16 v54, v56

    .line 755
    .line 756
    :goto_27
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 757
    .line 758
    .line 759
    move-result-object v54

    .line 760
    move-object/from16 v56, v55

    .line 761
    .line 762
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v55

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 767
    .line 768
    .line 769
    move-result v57

    .line 770
    if-nez v57, :cond_24

    .line 771
    .line 772
    goto :goto_29

    .line 773
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 774
    .line 775
    .line 776
    move-result v56

    .line 777
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v56

    .line 781
    :goto_29
    invoke-direct/range {v0 .. v56}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    .line 783
    .line 784
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata$b;->newArray(I)[Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;
    .locals 0

    .line 6
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    return-object p0
.end method
