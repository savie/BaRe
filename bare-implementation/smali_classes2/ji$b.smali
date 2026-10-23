.class public final Lji$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lji;
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

    .line 453
    invoke-virtual {p0, p1}, Lji$b;->createFromParcel(Landroid/os/Parcel;)Lji;

    move-result-object p0

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lji;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    move-object v5, v6

    .line 30
    move-object v7, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 33
    .line 34
    .line 35
    move-result-wide v7

    .line 36
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v7, v6

    .line 41
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    move-object v8, v7

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    move-object v9, v8

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    move-object v10, v9

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    const/4 v12, 0x0

    .line 65
    if-nez v11, :cond_1

    .line 66
    .line 67
    move-object v13, v10

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    new-instance v13, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    move v14, v12

    .line 79
    :goto_1
    if-eq v14, v11, :cond_2

    .line 80
    .line 81
    sget-object v15, Lyc7;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 82
    .line 83
    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    add-int/lit8 v14, v14, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-nez v11, :cond_3

    .line 98
    .line 99
    move-object v11, v10

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 102
    .line 103
    .line 104
    move-result-wide v14

    .line 105
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-nez v14, :cond_4

    .line 114
    .line 115
    move-object v14, v10

    .line 116
    goto :goto_4

    .line 117
    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 118
    .line 119
    .line 120
    move-result-wide v14

    .line 121
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-nez v15, :cond_5

    .line 130
    .line 131
    move-object v15, v10

    .line 132
    goto :goto_5

    .line 133
    :cond_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 134
    .line 135
    .line 136
    move-result-wide v15

    .line 137
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 142
    .line 143
    .line 144
    move-result v16

    .line 145
    if-nez v16, :cond_6

    .line 146
    .line 147
    move-object/from16 v16, v10

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    .line 151
    .line 152
    .line 153
    move-result-wide v16

    .line 154
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v16

    .line 158
    :goto_6
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result v17

    .line 162
    const/16 v18, 0x1

    .line 163
    .line 164
    if-nez v17, :cond_7

    .line 165
    .line 166
    move-object/from16 v17, v10

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_7
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 170
    .line 171
    .line 172
    move-result v17

    .line 173
    if-eqz v17, :cond_8

    .line 174
    .line 175
    move/from16 v17, v18

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_8
    move/from16 v17, v12

    .line 179
    .line 180
    :goto_7
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    :goto_8
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 185
    .line 186
    .line 187
    move-result v19

    .line 188
    if-eqz v19, :cond_9

    .line 189
    .line 190
    move/from16 v19, v12

    .line 191
    .line 192
    move-object v12, v14

    .line 193
    move-object/from16 v14, v16

    .line 194
    .line 195
    move/from16 v16, v18

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_9
    move/from16 v19, v12

    .line 199
    .line 200
    move-object v12, v14

    .line 201
    move-object/from16 v14, v16

    .line 202
    .line 203
    move/from16 v16, v19

    .line 204
    .line 205
    :goto_9
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 206
    .line 207
    .line 208
    move-result v20

    .line 209
    if-eqz v20, :cond_a

    .line 210
    .line 211
    move-object/from16 v20, v10

    .line 212
    .line 213
    move-object v10, v13

    .line 214
    move-object v13, v15

    .line 215
    move-object/from16 v15, v17

    .line 216
    .line 217
    move/from16 v17, v18

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_a
    move-object/from16 v20, v10

    .line 221
    .line 222
    move-object v10, v13

    .line 223
    move-object v13, v15

    .line 224
    move-object/from16 v15, v17

    .line 225
    .line 226
    move/from16 v17, v19

    .line 227
    .line 228
    :goto_a
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result v21

    .line 232
    if-eqz v21, :cond_b

    .line 233
    .line 234
    move/from16 v21, v18

    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_b
    move/from16 v21, v18

    .line 238
    .line 239
    move/from16 v18, v19

    .line 240
    .line 241
    :goto_b
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result v22

    .line 245
    if-eqz v22, :cond_c

    .line 246
    .line 247
    move/from16 v22, v19

    .line 248
    .line 249
    move/from16 v19, v21

    .line 250
    .line 251
    goto :goto_c

    .line 252
    :cond_c
    move/from16 v22, v19

    .line 253
    .line 254
    :goto_c
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 255
    .line 256
    .line 257
    move-result v23

    .line 258
    move-object/from16 p0, v1

    .line 259
    .line 260
    if-nez v23, :cond_d

    .line 261
    .line 262
    move-object/from16 v1, v20

    .line 263
    .line 264
    goto :goto_d

    .line 265
    :cond_d
    sget-object v1, Lqx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 266
    .line 267
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    :goto_d
    check-cast v1, Lqx;

    .line 272
    .line 273
    move/from16 v23, v21

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v21

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 280
    .line 281
    .line 282
    move-result v24

    .line 283
    if-nez v24, :cond_e

    .line 284
    .line 285
    move-object/from16 v24, v1

    .line 286
    .line 287
    move-object/from16 v25, v2

    .line 288
    .line 289
    move-object/from16 v26, v3

    .line 290
    .line 291
    move-object/from16 v2, v20

    .line 292
    .line 293
    goto :goto_f

    .line 294
    :cond_e
    move-object/from16 v24, v1

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    move-object/from16 v25, v2

    .line 301
    .line 302
    new-instance v2, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v26, v3

    .line 308
    .line 309
    move/from16 v3, v22

    .line 310
    .line 311
    :goto_e
    if-eq v3, v1, :cond_f

    .line 312
    .line 313
    move/from16 v27, v1

    .line 314
    .line 315
    sget-object v1, Lgm;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 316
    .line 317
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 325
    .line 326
    move/from16 v1, v27

    .line 327
    .line 328
    goto :goto_e

    .line 329
    :cond_f
    :goto_f
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_10

    .line 334
    .line 335
    move/from16 v1, v23

    .line 336
    .line 337
    goto :goto_10

    .line 338
    :cond_10
    move/from16 v1, v23

    .line 339
    .line 340
    move/from16 v23, v22

    .line 341
    .line 342
    :goto_10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_11

    .line 347
    .line 348
    move-object/from16 v3, v20

    .line 349
    .line 350
    goto :goto_11

    .line 351
    :cond_11
    sget-object v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 352
    .line 353
    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    :goto_11
    check-cast v3, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 358
    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 360
    .line 361
    .line 362
    move-result v27

    .line 363
    if-eqz v27, :cond_12

    .line 364
    .line 365
    move-object/from16 v29, v25

    .line 366
    .line 367
    move/from16 v25, v1

    .line 368
    .line 369
    move/from16 v1, v22

    .line 370
    .line 371
    move-object/from16 v22, v2

    .line 372
    .line 373
    move-object/from16 v2, v29

    .line 374
    .line 375
    goto :goto_12

    .line 376
    :cond_12
    move/from16 v1, v22

    .line 377
    .line 378
    move-object/from16 v22, v2

    .line 379
    .line 380
    move-object/from16 v2, v25

    .line 381
    .line 382
    move/from16 v25, v1

    .line 383
    .line 384
    :goto_12
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 385
    .line 386
    .line 387
    move-result v27

    .line 388
    if-nez v27, :cond_13

    .line 389
    .line 390
    move-object/from16 v27, v2

    .line 391
    .line 392
    move-object/from16 v28, v3

    .line 393
    .line 394
    move-object/from16 v2, v20

    .line 395
    .line 396
    goto :goto_14

    .line 397
    :cond_13
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    move-object/from16 v27, v2

    .line 402
    .line 403
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 404
    .line 405
    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 406
    .line 407
    .line 408
    move-object/from16 v28, v3

    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    :goto_13
    if-eq v3, v1, :cond_14

    .line 412
    .line 413
    move/from16 v20, v1

    .line 414
    .line 415
    sget-object v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 416
    .line 417
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    .line 426
    move/from16 v1, v20

    .line 427
    .line 428
    goto :goto_13

    .line 429
    :cond_14
    :goto_14
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    move-object/from16 v3, v26

    .line 434
    .line 435
    move-object/from16 v26, v2

    .line 436
    .line 437
    move-object/from16 v2, v27

    .line 438
    .line 439
    move-object/from16 v27, v0

    .line 440
    .line 441
    new-instance v0, Lji;

    .line 442
    .line 443
    move-object/from16 v1, p0

    .line 444
    .line 445
    move-object/from16 v20, v24

    .line 446
    .line 447
    move-object/from16 v24, v28

    .line 448
    .line 449
    invoke-direct/range {v0 .. v27}, Lji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;ZZZZLqx;Ljava/lang/String;Ljava/util/List;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackups;ZLjava/util/Set;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lji$b;->newArray(I)[Lji;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final newArray(I)[Lji;
    .locals 0

    .line 6
    new-array p0, p1, [Lji;

    return-object p0
.end method
