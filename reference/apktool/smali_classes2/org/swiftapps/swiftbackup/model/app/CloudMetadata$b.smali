.class public final Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
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

    .line 877
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$b;->createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 68

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

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
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_3

    .line 76
    .line 77
    move-object v9, v4

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-nez v10, :cond_4

    .line 92
    .line 93
    move-object v10, v4

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-nez v11, :cond_5

    .line 108
    .line 109
    move-object v11, v4

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 112
    .line 113
    .line 114
    move-result-wide v11

    .line 115
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    move-object v13, v4

    .line 124
    move-object v4, v5

    .line 125
    move-object v5, v6

    .line 126
    move-object v6, v7

    .line 127
    move-object v7, v8

    .line 128
    move-object v8, v9

    .line 129
    move-object v9, v10

    .line 130
    move-object v10, v11

    .line 131
    move-object v11, v12

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-nez v14, :cond_6

    .line 141
    .line 142
    move-object v14, v13

    .line 143
    goto :goto_6

    .line 144
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 145
    .line 146
    .line 147
    move-result-wide v14

    .line 148
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-nez v15, :cond_7

    .line 157
    .line 158
    move-object v15, v13

    .line 159
    goto :goto_7

    .line 160
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 161
    .line 162
    .line 163
    move-result-wide v15

    .line 164
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    if-nez v16, :cond_8

    .line 173
    .line 174
    move-object/from16 v16, v13

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 178
    .line 179
    .line 180
    move-result-wide v16

    .line 181
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v16

    .line 185
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v17

    .line 189
    move-object/from16 v18, v13

    .line 190
    .line 191
    move-object v13, v14

    .line 192
    move-object v14, v15

    .line 193
    move-object/from16 v15, v16

    .line 194
    .line 195
    move-object/from16 v16, v17

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v17

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v19

    .line 205
    if-nez v19, :cond_9

    .line 206
    .line 207
    move-object/from16 v19, v18

    .line 208
    .line 209
    goto :goto_9

    .line 210
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 211
    .line 212
    .line 213
    move-result-wide v19

    .line 214
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v19

    .line 218
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v20

    .line 222
    if-nez v20, :cond_a

    .line 223
    .line 224
    move-object/from16 v20, v18

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 228
    .line 229
    .line 230
    move-result-wide v20

    .line 231
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v20

    .line 235
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v21

    .line 239
    if-nez v21, :cond_b

    .line 240
    .line 241
    move-object/from16 v21, v18

    .line 242
    .line 243
    goto :goto_b

    .line 244
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 245
    .line 246
    .line 247
    move-result-wide v21

    .line 248
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v21

    .line 252
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v22

    .line 256
    move-object/from16 v23, v18

    .line 257
    .line 258
    move-object/from16 v18, v19

    .line 259
    .line 260
    move-object/from16 v19, v20

    .line 261
    .line 262
    move-object/from16 v20, v21

    .line 263
    .line 264
    move-object/from16 v21, v22

    .line 265
    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v22

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result v24

    .line 274
    if-nez v24, :cond_c

    .line 275
    .line 276
    move-object/from16 v24, v23

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 280
    .line 281
    .line 282
    move-result-wide v24

    .line 283
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 284
    .line 285
    .line 286
    move-result-object v24

    .line 287
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 288
    .line 289
    .line 290
    move-result v25

    .line 291
    if-nez v25, :cond_d

    .line 292
    .line 293
    move-object/from16 v25, v23

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 297
    .line 298
    .line 299
    move-result-wide v25

    .line 300
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v25

    .line 304
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 305
    .line 306
    .line 307
    move-result v26

    .line 308
    const/16 v27, 0x0

    .line 309
    .line 310
    const/16 v28, 0x1

    .line 311
    .line 312
    if-nez v26, :cond_e

    .line 313
    .line 314
    move-object/from16 v26, v23

    .line 315
    .line 316
    goto :goto_f

    .line 317
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result v26

    .line 321
    if-eqz v26, :cond_f

    .line 322
    .line 323
    move/from16 v26, v28

    .line 324
    .line 325
    goto :goto_e

    .line 326
    :cond_f
    move/from16 v26, v27

    .line 327
    .line 328
    :goto_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    move-result-object v26

    .line 332
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v29

    .line 336
    move/from16 v30, v27

    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v27

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 343
    .line 344
    .line 345
    move-result v31

    .line 346
    if-nez v31, :cond_10

    .line 347
    .line 348
    move-object/from16 v31, v23

    .line 349
    .line 350
    goto :goto_10

    .line 351
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 352
    .line 353
    .line 354
    move-result-wide v31

    .line 355
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 356
    .line 357
    .line 358
    move-result-object v31

    .line 359
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 360
    .line 361
    .line 362
    move-result v32

    .line 363
    if-nez v32, :cond_11

    .line 364
    .line 365
    move-object/from16 v32, v23

    .line 366
    .line 367
    :goto_11
    move/from16 v33, v30

    .line 368
    .line 369
    goto :goto_12

    .line 370
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 371
    .line 372
    .line 373
    move-result-wide v32

    .line 374
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    .line 376
    .line 377
    move-result-object v32

    .line 378
    goto :goto_11

    .line 379
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v30

    .line 383
    move/from16 v34, v28

    .line 384
    .line 385
    move-object/from16 v28, v31

    .line 386
    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v31

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 392
    .line 393
    .line 394
    move-result v35

    .line 395
    if-nez v35, :cond_12

    .line 396
    .line 397
    move-object/from16 v35, v23

    .line 398
    .line 399
    goto :goto_13

    .line 400
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 401
    .line 402
    .line 403
    move-result-wide v35

    .line 404
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 405
    .line 406
    .line 407
    move-result-object v35

    .line 408
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 409
    .line 410
    .line 411
    move-result v36

    .line 412
    if-nez v36, :cond_13

    .line 413
    .line 414
    move-object/from16 v36, v23

    .line 415
    .line 416
    goto :goto_14

    .line 417
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 418
    .line 419
    .line 420
    move-result-wide v36

    .line 421
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object v36

    .line 425
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 426
    .line 427
    .line 428
    move-result v37

    .line 429
    if-nez v37, :cond_14

    .line 430
    .line 431
    move-object/from16 v37, v23

    .line 432
    .line 433
    move-object/from16 v38, v37

    .line 434
    .line 435
    :goto_15
    move-object/from16 v23, v24

    .line 436
    .line 437
    move-object/from16 v24, v25

    .line 438
    .line 439
    move-object/from16 v25, v26

    .line 440
    .line 441
    move-object/from16 v26, v29

    .line 442
    .line 443
    move-object/from16 v29, v32

    .line 444
    .line 445
    move-object/from16 v32, v35

    .line 446
    .line 447
    goto :goto_17

    .line 448
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 449
    .line 450
    .line 451
    move-result v37

    .line 452
    if-eqz v37, :cond_15

    .line 453
    .line 454
    move/from16 v37, v34

    .line 455
    .line 456
    goto :goto_16

    .line 457
    :cond_15
    move/from16 v37, v33

    .line 458
    .line 459
    :goto_16
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 460
    .line 461
    .line 462
    move-result-object v37

    .line 463
    move-object/from16 v38, v23

    .line 464
    .line 465
    goto :goto_15

    .line 466
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v35

    .line 470
    move/from16 v39, v33

    .line 471
    .line 472
    move-object/from16 v33, v36

    .line 473
    .line 474
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v36

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 479
    .line 480
    .line 481
    move-result v40

    .line 482
    if-nez v40, :cond_16

    .line 483
    .line 484
    move-object/from16 v40, v38

    .line 485
    .line 486
    goto :goto_18

    .line 487
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 488
    .line 489
    .line 490
    move-result-wide v40

    .line 491
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 492
    .line 493
    .line 494
    move-result-object v40

    .line 495
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v41

    .line 499
    if-nez v41, :cond_17

    .line 500
    .line 501
    move-object/from16 v41, v38

    .line 502
    .line 503
    :goto_19
    move/from16 v42, v39

    .line 504
    .line 505
    goto :goto_1a

    .line 506
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 507
    .line 508
    .line 509
    move-result-wide v41

    .line 510
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 511
    .line 512
    .line 513
    move-result-object v41

    .line 514
    goto :goto_19

    .line 515
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v39

    .line 519
    move/from16 v43, v34

    .line 520
    .line 521
    move-object/from16 v34, v37

    .line 522
    .line 523
    move-object/from16 v37, v40

    .line 524
    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v40

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v44

    .line 533
    if-nez v44, :cond_18

    .line 534
    .line 535
    move-object/from16 v44, v38

    .line 536
    .line 537
    goto :goto_1b

    .line 538
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 539
    .line 540
    .line 541
    move-result-wide v44

    .line 542
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 543
    .line 544
    .line 545
    move-result-object v44

    .line 546
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 547
    .line 548
    .line 549
    move-result v45

    .line 550
    if-nez v45, :cond_19

    .line 551
    .line 552
    move-object/from16 v45, v38

    .line 553
    .line 554
    goto :goto_1c

    .line 555
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 556
    .line 557
    .line 558
    move-result-wide v45

    .line 559
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 560
    .line 561
    .line 562
    move-result-object v45

    .line 563
    :goto_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 564
    .line 565
    .line 566
    move-result v46

    .line 567
    if-nez v46, :cond_1a

    .line 568
    .line 569
    move-object/from16 v46, v38

    .line 570
    .line 571
    move-object/from16 v47, v46

    .line 572
    .line 573
    :goto_1d
    move-object/from16 v38, v41

    .line 574
    .line 575
    move-object/from16 v41, v44

    .line 576
    .line 577
    goto :goto_1f

    .line 578
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 579
    .line 580
    .line 581
    move-result v46

    .line 582
    if-eqz v46, :cond_1b

    .line 583
    .line 584
    move/from16 v46, v43

    .line 585
    .line 586
    goto :goto_1e

    .line 587
    :cond_1b
    move/from16 v46, v42

    .line 588
    .line 589
    :goto_1e
    invoke-static/range {v46 .. v46}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 590
    .line 591
    .line 592
    move-result-object v46

    .line 593
    move-object/from16 v47, v38

    .line 594
    .line 595
    goto :goto_1d

    .line 596
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v44

    .line 600
    move/from16 v48, v42

    .line 601
    .line 602
    move-object/from16 v42, v45

    .line 603
    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v45

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 609
    .line 610
    .line 611
    move-result v49

    .line 612
    if-nez v49, :cond_1c

    .line 613
    .line 614
    move-object/from16 v49, v47

    .line 615
    .line 616
    goto :goto_20

    .line 617
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 618
    .line 619
    .line 620
    move-result-wide v49

    .line 621
    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 622
    .line 623
    .line 624
    move-result-object v49

    .line 625
    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 626
    .line 627
    .line 628
    move-result v50

    .line 629
    if-nez v50, :cond_1d

    .line 630
    .line 631
    move-object/from16 v50, v47

    .line 632
    .line 633
    :goto_21
    move/from16 v51, v48

    .line 634
    .line 635
    goto :goto_22

    .line 636
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 637
    .line 638
    .line 639
    move-result-wide v50

    .line 640
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v50

    .line 644
    goto :goto_21

    .line 645
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v48

    .line 649
    move/from16 v52, v43

    .line 650
    .line 651
    move-object/from16 v43, v46

    .line 652
    .line 653
    move-object/from16 v46, v49

    .line 654
    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v49

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 660
    .line 661
    .line 662
    move-result v53

    .line 663
    if-nez v53, :cond_1e

    .line 664
    .line 665
    move-object/from16 v53, v47

    .line 666
    .line 667
    goto :goto_23

    .line 668
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 669
    .line 670
    .line 671
    move-result-wide v53

    .line 672
    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 673
    .line 674
    .line 675
    move-result-object v53

    .line 676
    :goto_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 677
    .line 678
    .line 679
    move-result v54

    .line 680
    if-nez v54, :cond_1f

    .line 681
    .line 682
    move-object/from16 v54, v47

    .line 683
    .line 684
    goto :goto_24

    .line 685
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 686
    .line 687
    .line 688
    move-result-wide v54

    .line 689
    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 690
    .line 691
    .line 692
    move-result-object v54

    .line 693
    :goto_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 694
    .line 695
    .line 696
    move-result v55

    .line 697
    if-nez v55, :cond_20

    .line 698
    .line 699
    move-object/from16 v55, v47

    .line 700
    .line 701
    goto :goto_25

    .line 702
    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 703
    .line 704
    .line 705
    move-result-wide v55

    .line 706
    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 707
    .line 708
    .line 709
    move-result-object v55

    .line 710
    :goto_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 711
    .line 712
    .line 713
    move-result v56

    .line 714
    if-nez v56, :cond_21

    .line 715
    .line 716
    move-object/from16 v56, v47

    .line 717
    .line 718
    :goto_26
    move/from16 v57, v51

    .line 719
    .line 720
    move-object/from16 v51, v54

    .line 721
    .line 722
    goto :goto_27

    .line 723
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 724
    .line 725
    .line 726
    move-result-wide v56

    .line 727
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 728
    .line 729
    .line 730
    move-result-object v56

    .line 731
    goto :goto_26

    .line 732
    :goto_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v54

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 737
    .line 738
    .line 739
    move-result v58

    .line 740
    if-nez v58, :cond_22

    .line 741
    .line 742
    move-object/from16 v58, v47

    .line 743
    .line 744
    move-object/from16 v59, v58

    .line 745
    .line 746
    :goto_28
    move-object/from16 v47, v50

    .line 747
    .line 748
    move-object/from16 v50, v53

    .line 749
    .line 750
    move-object/from16 v53, v56

    .line 751
    .line 752
    goto :goto_29

    .line 753
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 754
    .line 755
    .line 756
    move-result-wide v58

    .line 757
    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 758
    .line 759
    .line 760
    move-result-object v58

    .line 761
    move-object/from16 v59, v47

    .line 762
    .line 763
    goto :goto_28

    .line 764
    :goto_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v56

    .line 768
    move/from16 v60, v57

    .line 769
    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v57

    .line 774
    move/from16 v61, v52

    .line 775
    .line 776
    move-object/from16 v52, v55

    .line 777
    .line 778
    move-object/from16 v55, v58

    .line 779
    .line 780
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v58

    .line 784
    move-object/from16 v62, v59

    .line 785
    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v59

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 791
    .line 792
    .line 793
    move-result v63

    .line 794
    if-nez v63, :cond_23

    .line 795
    .line 796
    move-object/from16 v63, v62

    .line 797
    .line 798
    :goto_2a
    move/from16 v64, v61

    .line 799
    .line 800
    goto :goto_2b

    .line 801
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 802
    .line 803
    .line 804
    move-result-wide v63

    .line 805
    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 806
    .line 807
    .line 808
    move-result-object v63

    .line 809
    goto :goto_2a

    .line 810
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v61

    .line 814
    move-object/from16 v65, v62

    .line 815
    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v62

    .line 820
    move/from16 v66, v60

    .line 821
    .line 822
    move-object/from16 v60, v63

    .line 823
    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v63

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 829
    .line 830
    .line 831
    move-result v67

    .line 832
    if-nez v67, :cond_24

    .line 833
    .line 834
    move-object/from16 v64, v65

    .line 835
    .line 836
    move-object/from16 v66, v64

    .line 837
    .line 838
    goto :goto_2d

    .line 839
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 840
    .line 841
    .line 842
    move-result v67

    .line 843
    if-eqz v67, :cond_25

    .line 844
    .line 845
    goto :goto_2c

    .line 846
    :cond_25
    move/from16 v64, v66

    .line 847
    .line 848
    :goto_2c
    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 849
    .line 850
    .line 851
    move-result-object v64

    .line 852
    move-object/from16 v66, v65

    .line 853
    .line 854
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v65

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 859
    .line 860
    .line 861
    move-result v67

    .line 862
    if-nez v67, :cond_26

    .line 863
    .line 864
    goto :goto_2e

    .line 865
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 866
    .line 867
    .line 868
    move-result v66

    .line 869
    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v66

    .line 873
    :goto_2e
    invoke-direct/range {v0 .. v66}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    .line 875
    .line 876
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata$b;->newArray(I)[Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;
    .locals 0

    .line 6
    new-array p0, p1, [Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    return-object p0
.end method
