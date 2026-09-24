.class public final enum Lbp5;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Lbp5;

.field public static final synthetic c:[Lbp5;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 79

    .line 1
    new-instance v1, Lbp5;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-string v4, "STATUS_SUCCESS"

    .line 7
    .line 8
    invoke-direct {v1, v4, v2, v3, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lbp5;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    const-string v5, "STATUS_UNSUCCESSFUL"

    .line 17
    .line 18
    invoke-direct {v2, v5, v3, v4, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lbp5;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const-wide/16 v4, 0x102

    .line 25
    .line 26
    const-string v6, "STATUS_TIMEOUT"

    .line 27
    .line 28
    invoke-direct {v3, v6, v4, v5, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lbp5;

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    const-wide/16 v5, 0x103

    .line 35
    .line 36
    const-string v7, "STATUS_PENDING"

    .line 37
    .line 38
    invoke-direct {v4, v7, v5, v6, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Lbp5;

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    const-wide/16 v6, 0x10b

    .line 45
    .line 46
    const-string v8, "STATUS_NOTIFY_CLEANUP"

    .line 47
    .line 48
    invoke-direct {v5, v8, v6, v7, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lbp5;

    .line 52
    .line 53
    const/4 v0, 0x5

    .line 54
    const-wide/16 v7, 0x10c

    .line 55
    .line 56
    const-string v9, "STATUS_NOTIFY_ENUM_DIR"

    .line 57
    .line 58
    invoke-direct {v6, v9, v7, v8, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Lbp5;

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    const-wide v8, 0x80000005L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-string v10, "STATUS_BUFFER_OVERFLOW"

    .line 70
    .line 71
    invoke-direct {v7, v10, v8, v9, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lbp5;

    .line 75
    .line 76
    const/4 v0, 0x7

    .line 77
    const-wide v9, 0x80000006L

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-string v11, "STATUS_NO_MORE_FILES"

    .line 83
    .line 84
    invoke-direct {v8, v11, v9, v10, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lbp5;

    .line 88
    .line 89
    const/16 v0, 0x8

    .line 90
    .line 91
    const-wide v10, 0x8000002dL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const-string v12, "STATUS_STOPPED_ON_SYMLINK"

    .line 97
    .line 98
    invoke-direct {v9, v12, v10, v11, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 99
    .line 100
    .line 101
    new-instance v10, Lbp5;

    .line 102
    .line 103
    const/16 v0, 0x9

    .line 104
    .line 105
    const-wide v11, 0xc0000002L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const-string v13, "STATUS_NOT_IMPLEMENTED"

    .line 111
    .line 112
    invoke-direct {v10, v13, v11, v12, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 113
    .line 114
    .line 115
    new-instance v11, Lbp5;

    .line 116
    .line 117
    const/16 v0, 0xa

    .line 118
    .line 119
    const-wide v12, 0xc0000003L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const-string v14, "STATUS_INVALID_INFO_CLASS"

    .line 125
    .line 126
    invoke-direct {v11, v14, v12, v13, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 127
    .line 128
    .line 129
    new-instance v12, Lbp5;

    .line 130
    .line 131
    const/16 v0, 0xb

    .line 132
    .line 133
    const-wide v13, 0xc0000004L

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const-string v15, "STATUS_INFO_LENGTH_MISMATCH"

    .line 139
    .line 140
    invoke-direct {v12, v15, v13, v14, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 141
    .line 142
    .line 143
    new-instance v13, Lbp5;

    .line 144
    .line 145
    const/16 v0, 0xc

    .line 146
    .line 147
    const-wide v14, 0xc000000fL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    move-object/from16 v16, v1

    .line 153
    .line 154
    const-string v1, "STATUS_NO_SUCH_FILE"

    .line 155
    .line 156
    invoke-direct {v13, v1, v14, v15, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 157
    .line 158
    .line 159
    new-instance v14, Lbp5;

    .line 160
    .line 161
    const/16 v0, 0xd

    .line 162
    .line 163
    move-object v15, v2

    .line 164
    const-wide v1, 0xc000000dL

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    move-object/from16 v17, v3

    .line 170
    .line 171
    const-string v3, "STATUS_INVALID_PARAMETER"

    .line 172
    .line 173
    invoke-direct {v14, v3, v1, v2, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 174
    .line 175
    .line 176
    move-object v2, v15

    .line 177
    new-instance v15, Lbp5;

    .line 178
    .line 179
    const/16 v0, 0xe

    .line 180
    .line 181
    move-object v3, v2

    .line 182
    const-wide v1, 0xc0000011L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    move-object/from16 v18, v3

    .line 188
    .line 189
    const-string v3, "STATUS_END_OF_FILE"

    .line 190
    .line 191
    invoke-direct {v15, v3, v1, v2, v0}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Lbp5;

    .line 195
    .line 196
    const/16 v1, 0xf

    .line 197
    .line 198
    const-wide v2, 0xc0000016L

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    move-object/from16 v19, v4

    .line 204
    .line 205
    const-string v4, "STATUS_MORE_PROCESSING_REQUIRED"

    .line 206
    .line 207
    invoke-direct {v0, v4, v2, v3, v1}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lbp5;

    .line 211
    .line 212
    const/16 v2, 0x10

    .line 213
    .line 214
    const-wide v3, 0xc0000022L

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    move-object/from16 v20, v0

    .line 220
    .line 221
    const-string v0, "STATUS_ACCESS_DENIED"

    .line 222
    .line 223
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lbp5;

    .line 227
    .line 228
    const/16 v2, 0x11

    .line 229
    .line 230
    const-wide v3, 0xc0000023L

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    move-object/from16 v21, v1

    .line 236
    .line 237
    const-string v1, "STATUS_BUFFER_TOO_SMALL"

    .line 238
    .line 239
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 240
    .line 241
    .line 242
    new-instance v1, Lbp5;

    .line 243
    .line 244
    const/16 v2, 0x12

    .line 245
    .line 246
    const-wide v3, 0xc0000033L

    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    move-object/from16 v22, v0

    .line 252
    .line 253
    const-string v0, "STATUS_OBJECT_NAME_INVALID"

    .line 254
    .line 255
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lbp5;

    .line 259
    .line 260
    const/16 v2, 0x13

    .line 261
    .line 262
    const-wide v3, 0xc0000034L

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    move-object/from16 v23, v1

    .line 268
    .line 269
    const-string v1, "STATUS_OBJECT_NAME_NOT_FOUND"

    .line 270
    .line 271
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Lbp5;

    .line 275
    .line 276
    const/16 v2, 0x14

    .line 277
    .line 278
    const-wide v3, 0xc0000035L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    move-object/from16 v24, v0

    .line 284
    .line 285
    const-string v0, "STATUS_OBJECT_NAME_COLLISION"

    .line 286
    .line 287
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lbp5;

    .line 291
    .line 292
    const/16 v2, 0x15

    .line 293
    .line 294
    const-wide v3, 0xc000003aL

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    move-object/from16 v25, v1

    .line 300
    .line 301
    const-string v1, "STATUS_OBJECT_PATH_NOT_FOUND"

    .line 302
    .line 303
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 304
    .line 305
    .line 306
    new-instance v1, Lbp5;

    .line 307
    .line 308
    const/16 v2, 0x16

    .line 309
    .line 310
    const-wide v3, 0xc0000043L

    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    move-object/from16 v26, v0

    .line 316
    .line 317
    const-string v0, "STATUS_SHARING_VIOLATION"

    .line 318
    .line 319
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 320
    .line 321
    .line 322
    new-instance v0, Lbp5;

    .line 323
    .line 324
    const/16 v2, 0x17

    .line 325
    .line 326
    const-wide v3, 0xc0000054L

    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    move-object/from16 v27, v1

    .line 332
    .line 333
    const-string v1, "STATUS_FILE_LOCK_CONFLICT"

    .line 334
    .line 335
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Lbp5;

    .line 339
    .line 340
    const/16 v2, 0x18

    .line 341
    .line 342
    const-wide v3, 0xc0000055L

    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    move-object/from16 v28, v0

    .line 348
    .line 349
    const-string v0, "STATUS_LOCK_NOT_GRANTED"

    .line 350
    .line 351
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Lbp5;

    .line 355
    .line 356
    const/16 v2, 0x19

    .line 357
    .line 358
    const-wide v3, 0xc0000056L

    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    move-object/from16 v29, v1

    .line 364
    .line 365
    const-string v1, "STATUS_DELETE_PENDING"

    .line 366
    .line 367
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 368
    .line 369
    .line 370
    new-instance v1, Lbp5;

    .line 371
    .line 372
    const/16 v2, 0x1a

    .line 373
    .line 374
    const-wide v3, 0xc0000061L

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    move-object/from16 v30, v0

    .line 380
    .line 381
    const-string v0, "STATUS_PRIVILEGE_NOT_HELD"

    .line 382
    .line 383
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Lbp5;

    .line 387
    .line 388
    const/16 v2, 0x1b

    .line 389
    .line 390
    const-wide v3, 0xc000006dL

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    move-object/from16 v31, v1

    .line 396
    .line 397
    const-string v1, "STATUS_LOGON_FAILURE"

    .line 398
    .line 399
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 400
    .line 401
    .line 402
    new-instance v1, Lbp5;

    .line 403
    .line 404
    const/16 v2, 0x1c

    .line 405
    .line 406
    const-wide v3, 0xc0000071L

    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    move-object/from16 v32, v0

    .line 412
    .line 413
    const-string v0, "STATUS_PASSWORD_EXPIRED"

    .line 414
    .line 415
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lbp5;

    .line 419
    .line 420
    const/16 v2, 0x1d

    .line 421
    .line 422
    const-wide v3, 0xc0000072L

    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    move-object/from16 v33, v1

    .line 428
    .line 429
    const-string v1, "STATUS_ACCOUNT_DISABLED"

    .line 430
    .line 431
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 432
    .line 433
    .line 434
    new-instance v1, Lbp5;

    .line 435
    .line 436
    const/16 v2, 0x1e

    .line 437
    .line 438
    const-wide v3, 0xc000007eL

    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    move-object/from16 v34, v0

    .line 444
    .line 445
    const-string v0, "STATUS_RANGE_NOT_LOCKED"

    .line 446
    .line 447
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 448
    .line 449
    .line 450
    new-instance v0, Lbp5;

    .line 451
    .line 452
    const/16 v2, 0x1f

    .line 453
    .line 454
    const-wide v3, 0xc000007fL

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    move-object/from16 v35, v1

    .line 460
    .line 461
    const-string v1, "STATUS_DISK_FULL"

    .line 462
    .line 463
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 464
    .line 465
    .line 466
    new-instance v1, Lbp5;

    .line 467
    .line 468
    const/16 v2, 0x20

    .line 469
    .line 470
    const-wide v3, 0xc000009aL

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    move-object/from16 v36, v0

    .line 476
    .line 477
    const-string v0, "STATUS_INSUFFICIENT_RESOURCES"

    .line 478
    .line 479
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 480
    .line 481
    .line 482
    new-instance v0, Lbp5;

    .line 483
    .line 484
    const/16 v2, 0x21

    .line 485
    .line 486
    const-wide v3, 0xc00000acL

    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    move-object/from16 v37, v1

    .line 492
    .line 493
    const-string v1, "STATUS_PIPE_NOT_AVAILABLE"

    .line 494
    .line 495
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 496
    .line 497
    .line 498
    new-instance v1, Lbp5;

    .line 499
    .line 500
    const/16 v2, 0x22

    .line 501
    .line 502
    const-wide v3, 0xc00000adL

    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    move-object/from16 v38, v0

    .line 508
    .line 509
    const-string v0, "STATUS_INVALID_PIPE_STATE"

    .line 510
    .line 511
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 512
    .line 513
    .line 514
    new-instance v0, Lbp5;

    .line 515
    .line 516
    const/16 v2, 0x23

    .line 517
    .line 518
    const-wide v3, 0xc00000aeL

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    move-object/from16 v39, v1

    .line 524
    .line 525
    const-string v1, "STATUS_PIPE_BUSY"

    .line 526
    .line 527
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 528
    .line 529
    .line 530
    new-instance v1, Lbp5;

    .line 531
    .line 532
    const/16 v2, 0x24

    .line 533
    .line 534
    const-wide v3, 0xc00000b5L

    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    move-object/from16 v40, v0

    .line 540
    .line 541
    const-string v0, "STATUS_IO_TIMEOUT"

    .line 542
    .line 543
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 544
    .line 545
    .line 546
    new-instance v0, Lbp5;

    .line 547
    .line 548
    const/16 v2, 0x25

    .line 549
    .line 550
    const-wide v3, 0xc00000baL

    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    move-object/from16 v41, v1

    .line 556
    .line 557
    const-string v1, "STATUS_FILE_IS_A_DIRECTORY"

    .line 558
    .line 559
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 560
    .line 561
    .line 562
    new-instance v1, Lbp5;

    .line 563
    .line 564
    const/16 v2, 0x26

    .line 565
    .line 566
    const-wide v3, 0xc00000bbL

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    move-object/from16 v42, v0

    .line 572
    .line 573
    const-string v0, "STATUS_NOT_SUPPORTED"

    .line 574
    .line 575
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 576
    .line 577
    .line 578
    new-instance v0, Lbp5;

    .line 579
    .line 580
    const/16 v2, 0x27

    .line 581
    .line 582
    const-wide v3, 0xc00000beL

    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    move-object/from16 v43, v1

    .line 588
    .line 589
    const-string v1, "STATUS_BAD_NETWORK_PATH"

    .line 590
    .line 591
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 592
    .line 593
    .line 594
    new-instance v1, Lbp5;

    .line 595
    .line 596
    const/16 v2, 0x28

    .line 597
    .line 598
    const-wide v3, 0xc00000c9L

    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    move-object/from16 v44, v0

    .line 604
    .line 605
    const-string v0, "STATUS_NETWORK_NAME_DELETED"

    .line 606
    .line 607
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 608
    .line 609
    .line 610
    new-instance v0, Lbp5;

    .line 611
    .line 612
    const/16 v2, 0x29

    .line 613
    .line 614
    const-wide v3, 0xc00000ccL

    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    move-object/from16 v45, v1

    .line 620
    .line 621
    const-string v1, "STATUS_BAD_NETWORK_NAME"

    .line 622
    .line 623
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 624
    .line 625
    .line 626
    new-instance v1, Lbp5;

    .line 627
    .line 628
    const/16 v2, 0x2a

    .line 629
    .line 630
    const-wide v3, 0xc00000d0L

    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    move-object/from16 v46, v0

    .line 636
    .line 637
    const-string v0, "STATUS_REQUEST_NOT_ACCEPTED"

    .line 638
    .line 639
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 640
    .line 641
    .line 642
    new-instance v0, Lbp5;

    .line 643
    .line 644
    const/16 v2, 0x2b

    .line 645
    .line 646
    const-wide v3, 0xc00000d2L

    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    move-object/from16 v47, v1

    .line 652
    .line 653
    const-string v1, "STATUS_NET_WRITE_FAULT"

    .line 654
    .line 655
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 656
    .line 657
    .line 658
    new-instance v1, Lbp5;

    .line 659
    .line 660
    const/16 v2, 0x2c

    .line 661
    .line 662
    const-wide v3, 0xc00000d4L

    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    move-object/from16 v48, v0

    .line 668
    .line 669
    const-string v0, "STATUS_NOT_SAME_DEVICE"

    .line 670
    .line 671
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 672
    .line 673
    .line 674
    new-instance v0, Lbp5;

    .line 675
    .line 676
    const/16 v2, 0x2d

    .line 677
    .line 678
    const-wide v3, 0xc00000d5L

    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    move-object/from16 v49, v1

    .line 684
    .line 685
    const-string v1, "STATUS_FILE_RENAMED"

    .line 686
    .line 687
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 688
    .line 689
    .line 690
    new-instance v1, Lbp5;

    .line 691
    .line 692
    const/16 v2, 0x2e

    .line 693
    .line 694
    const-wide v3, 0xc00000e2L

    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    move-object/from16 v50, v0

    .line 700
    .line 701
    const-string v0, "STATUS_OPLOCK_NOT_GRANTED"

    .line 702
    .line 703
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 704
    .line 705
    .line 706
    new-instance v0, Lbp5;

    .line 707
    .line 708
    const/16 v2, 0x2f

    .line 709
    .line 710
    const-wide v3, 0xc00000e5L

    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    move-object/from16 v51, v1

    .line 716
    .line 717
    const-string v1, "STATUS_INTERNAL_ERROR"

    .line 718
    .line 719
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 720
    .line 721
    .line 722
    new-instance v1, Lbp5;

    .line 723
    .line 724
    const/16 v2, 0x30

    .line 725
    .line 726
    const-wide v3, 0xc00000e9L

    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    move-object/from16 v52, v0

    .line 732
    .line 733
    const-string v0, "STATUS_UNEXPECTED_IO_ERROR"

    .line 734
    .line 735
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 736
    .line 737
    .line 738
    new-instance v0, Lbp5;

    .line 739
    .line 740
    const/16 v2, 0x31

    .line 741
    .line 742
    const-wide v3, 0xc0000101L

    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    move-object/from16 v53, v1

    .line 748
    .line 749
    const-string v1, "STATUS_DIRECTORY_NOT_EMPTY"

    .line 750
    .line 751
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 752
    .line 753
    .line 754
    new-instance v1, Lbp5;

    .line 755
    .line 756
    const/16 v2, 0x32

    .line 757
    .line 758
    const-wide v3, 0xc0000103L

    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    move-object/from16 v54, v0

    .line 764
    .line 765
    const-string v0, "STATUS_NOT_A_DIRECTORY"

    .line 766
    .line 767
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 768
    .line 769
    .line 770
    new-instance v0, Lbp5;

    .line 771
    .line 772
    const/16 v2, 0x33

    .line 773
    .line 774
    const-wide v3, 0xc0000106L

    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    move-object/from16 v55, v1

    .line 780
    .line 781
    const-string v1, "STATUS_NAME_TOO_LONG"

    .line 782
    .line 783
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 784
    .line 785
    .line 786
    new-instance v1, Lbp5;

    .line 787
    .line 788
    const/16 v2, 0x34

    .line 789
    .line 790
    const-wide v3, 0xc0000107L

    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    move-object/from16 v56, v0

    .line 796
    .line 797
    const-string v0, "STATUS_FILES_OPEN"

    .line 798
    .line 799
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 800
    .line 801
    .line 802
    new-instance v0, Lbp5;

    .line 803
    .line 804
    const/16 v2, 0x35

    .line 805
    .line 806
    const-wide v3, 0xc0000108L

    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    move-object/from16 v57, v1

    .line 812
    .line 813
    const-string v1, "STATUS_CONNECTION_IN_USE"

    .line 814
    .line 815
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 816
    .line 817
    .line 818
    new-instance v1, Lbp5;

    .line 819
    .line 820
    const/16 v2, 0x36

    .line 821
    .line 822
    const-wide v3, 0xc000011fL

    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    move-object/from16 v58, v0

    .line 828
    .line 829
    const-string v0, "STATUS_TOO_MANY_OPENED_FILES"

    .line 830
    .line 831
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 832
    .line 833
    .line 834
    new-instance v0, Lbp5;

    .line 835
    .line 836
    const/16 v2, 0x37

    .line 837
    .line 838
    const-wide v3, 0xc0000120L

    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    move-object/from16 v59, v1

    .line 844
    .line 845
    const-string v1, "STATUS_CANCELLED"

    .line 846
    .line 847
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 848
    .line 849
    .line 850
    new-instance v1, Lbp5;

    .line 851
    .line 852
    const/16 v2, 0x38

    .line 853
    .line 854
    const-wide v3, 0xc0000121L

    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    move-object/from16 v60, v0

    .line 860
    .line 861
    const-string v0, "STATUS_CANNOT_DELETE"

    .line 862
    .line 863
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 864
    .line 865
    .line 866
    new-instance v0, Lbp5;

    .line 867
    .line 868
    const/16 v2, 0x39

    .line 869
    .line 870
    const-wide v3, 0xc0000123L

    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    move-object/from16 v61, v1

    .line 876
    .line 877
    const-string v1, "STATUS_FILE_DELETED"

    .line 878
    .line 879
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 880
    .line 881
    .line 882
    new-instance v1, Lbp5;

    .line 883
    .line 884
    const/16 v2, 0x3a

    .line 885
    .line 886
    const-wide v3, 0xc0000128L

    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    move-object/from16 v62, v0

    .line 892
    .line 893
    const-string v0, "STATUS_FILE_CLOSED"

    .line 894
    .line 895
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 896
    .line 897
    .line 898
    new-instance v0, Lbp5;

    .line 899
    .line 900
    const/16 v2, 0x3b

    .line 901
    .line 902
    const-wide v3, 0xc0000136L

    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    move-object/from16 v63, v1

    .line 908
    .line 909
    const-string v1, "STATUS_OPEN_FAILED"

    .line 910
    .line 911
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 912
    .line 913
    .line 914
    new-instance v1, Lbp5;

    .line 915
    .line 916
    const/16 v2, 0x3c

    .line 917
    .line 918
    const-wide v3, 0xc000015bL

    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    move-object/from16 v64, v0

    .line 924
    .line 925
    const-string v0, "STATUS_LOGON_TYPE_NOT_GRANTED"

    .line 926
    .line 927
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 928
    .line 929
    .line 930
    new-instance v0, Lbp5;

    .line 931
    .line 932
    const/16 v2, 0x3d

    .line 933
    .line 934
    const-wide v3, 0xc000017eL

    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    move-object/from16 v65, v1

    .line 940
    .line 941
    const-string v1, "STATUS_TOO_MANY_SIDS"

    .line 942
    .line 943
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 944
    .line 945
    .line 946
    new-instance v1, Lbp5;

    .line 947
    .line 948
    const/16 v2, 0x3e

    .line 949
    .line 950
    const-wide v3, 0xc0000203L

    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    move-object/from16 v66, v0

    .line 956
    .line 957
    const-string v0, "STATUS_USER_SESSION_DELETED"

    .line 958
    .line 959
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 960
    .line 961
    .line 962
    new-instance v0, Lbp5;

    .line 963
    .line 964
    const/16 v2, 0x3f

    .line 965
    .line 966
    const-wide v3, 0xc0000205L

    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    move-object/from16 v67, v1

    .line 972
    .line 973
    const-string v1, "STATUS_INSUFF_SERVER_RESOURCES"

    .line 974
    .line 975
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 976
    .line 977
    .line 978
    new-instance v1, Lbp5;

    .line 979
    .line 980
    const/16 v2, 0x40

    .line 981
    .line 982
    const-wide v3, 0xc000020cL

    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    move-object/from16 v68, v0

    .line 988
    .line 989
    const-string v0, "STATUS_CONNECTION_DISCONNECTED"

    .line 990
    .line 991
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 992
    .line 993
    .line 994
    new-instance v0, Lbp5;

    .line 995
    .line 996
    const/16 v2, 0x41

    .line 997
    .line 998
    const-wide v3, 0xc000020dL

    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    move-object/from16 v69, v1

    .line 1004
    .line 1005
    const-string v1, "STATUS_CONNECTION_RESET"

    .line 1006
    .line 1007
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1008
    .line 1009
    .line 1010
    new-instance v1, Lbp5;

    .line 1011
    .line 1012
    const/16 v2, 0x42

    .line 1013
    .line 1014
    const-wide v3, 0xc0000225L

    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v70, v0

    .line 1020
    .line 1021
    const-string v0, "STATUS_NOT_FOUND"

    .line 1022
    .line 1023
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1024
    .line 1025
    .line 1026
    new-instance v0, Lbp5;

    .line 1027
    .line 1028
    const/16 v2, 0x43

    .line 1029
    .line 1030
    const-wide v3, 0xc000022dL

    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    move-object/from16 v71, v1

    .line 1036
    .line 1037
    const-string v1, "STATUS_RETRY"

    .line 1038
    .line 1039
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1040
    .line 1041
    .line 1042
    new-instance v1, Lbp5;

    .line 1043
    .line 1044
    const/16 v2, 0x44

    .line 1045
    .line 1046
    const-wide v3, 0xc0000257L

    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    move-object/from16 v72, v0

    .line 1052
    .line 1053
    const-string v0, "STATUS_PATH_NOT_COVERED"

    .line 1054
    .line 1055
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1056
    .line 1057
    .line 1058
    new-instance v0, Lbp5;

    .line 1059
    .line 1060
    const/16 v2, 0x45

    .line 1061
    .line 1062
    const-wide v3, 0xc000026dL

    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    move-object/from16 v73, v1

    .line 1068
    .line 1069
    const-string v1, "STATUS_DFS_UNAVAILABLE"

    .line 1070
    .line 1071
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1072
    .line 1073
    .line 1074
    new-instance v1, Lbp5;

    .line 1075
    .line 1076
    const/16 v2, 0x46

    .line 1077
    .line 1078
    const-wide v3, 0xc000026eL

    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    move-object/from16 v74, v0

    .line 1084
    .line 1085
    const-string v0, "STATUS_VOLUME_DISMOUNTED"

    .line 1086
    .line 1087
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1088
    .line 1089
    .line 1090
    new-instance v0, Lbp5;

    .line 1091
    .line 1092
    const/16 v2, 0x47

    .line 1093
    .line 1094
    const-wide v3, 0xc0000279L

    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    move-object/from16 v75, v1

    .line 1100
    .line 1101
    const-string v1, "STATUS_IO_REPARSE_TAG_NOT_HANDLED"

    .line 1102
    .line 1103
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1104
    .line 1105
    .line 1106
    new-instance v1, Lbp5;

    .line 1107
    .line 1108
    const/16 v2, 0x48

    .line 1109
    .line 1110
    const-wide v3, 0xc0000293L

    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    move-object/from16 v76, v0

    .line 1116
    .line 1117
    const-string v0, "STATUS_FILE_ENCRYPTED"

    .line 1118
    .line 1119
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v0, Lbp5;

    .line 1123
    .line 1124
    const/16 v2, 0x49

    .line 1125
    .line 1126
    const-wide v3, 0xc000035cL

    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    move-object/from16 v77, v1

    .line 1132
    .line 1133
    const-string v1, "STATUS_NETWORK_SESSION_EXPIRED"

    .line 1134
    .line 1135
    invoke-direct {v0, v1, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1136
    .line 1137
    .line 1138
    new-instance v1, Lbp5;

    .line 1139
    .line 1140
    const/16 v2, 0x4a

    .line 1141
    .line 1142
    const-wide v3, 0xffffffffL

    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    move-object/from16 v78, v0

    .line 1148
    .line 1149
    const-string v0, "STATUS_OTHER"

    .line 1150
    .line 1151
    invoke-direct {v1, v0, v3, v4, v2}, Lbp5;-><init>(Ljava/lang/String;JI)V

    .line 1152
    .line 1153
    .line 1154
    sput-object v1, Lbp5;->b:Lbp5;

    .line 1155
    .line 1156
    move-object/from16 v3, v17

    .line 1157
    .line 1158
    move-object/from16 v2, v18

    .line 1159
    .line 1160
    move-object/from16 v4, v19

    .line 1161
    .line 1162
    move-object/from16 v17, v21

    .line 1163
    .line 1164
    move-object/from16 v18, v22

    .line 1165
    .line 1166
    move-object/from16 v19, v23

    .line 1167
    .line 1168
    move-object/from16 v21, v25

    .line 1169
    .line 1170
    move-object/from16 v22, v26

    .line 1171
    .line 1172
    move-object/from16 v23, v27

    .line 1173
    .line 1174
    move-object/from16 v25, v29

    .line 1175
    .line 1176
    move-object/from16 v26, v30

    .line 1177
    .line 1178
    move-object/from16 v27, v31

    .line 1179
    .line 1180
    move-object/from16 v29, v33

    .line 1181
    .line 1182
    move-object/from16 v30, v34

    .line 1183
    .line 1184
    move-object/from16 v31, v35

    .line 1185
    .line 1186
    move-object/from16 v33, v37

    .line 1187
    .line 1188
    move-object/from16 v34, v38

    .line 1189
    .line 1190
    move-object/from16 v35, v39

    .line 1191
    .line 1192
    move-object/from16 v37, v41

    .line 1193
    .line 1194
    move-object/from16 v38, v42

    .line 1195
    .line 1196
    move-object/from16 v39, v43

    .line 1197
    .line 1198
    move-object/from16 v41, v45

    .line 1199
    .line 1200
    move-object/from16 v42, v46

    .line 1201
    .line 1202
    move-object/from16 v43, v47

    .line 1203
    .line 1204
    move-object/from16 v45, v49

    .line 1205
    .line 1206
    move-object/from16 v46, v50

    .line 1207
    .line 1208
    move-object/from16 v47, v51

    .line 1209
    .line 1210
    move-object/from16 v49, v53

    .line 1211
    .line 1212
    move-object/from16 v50, v54

    .line 1213
    .line 1214
    move-object/from16 v51, v55

    .line 1215
    .line 1216
    move-object/from16 v53, v57

    .line 1217
    .line 1218
    move-object/from16 v54, v58

    .line 1219
    .line 1220
    move-object/from16 v55, v59

    .line 1221
    .line 1222
    move-object/from16 v57, v61

    .line 1223
    .line 1224
    move-object/from16 v58, v62

    .line 1225
    .line 1226
    move-object/from16 v59, v63

    .line 1227
    .line 1228
    move-object/from16 v61, v65

    .line 1229
    .line 1230
    move-object/from16 v62, v66

    .line 1231
    .line 1232
    move-object/from16 v63, v67

    .line 1233
    .line 1234
    move-object/from16 v65, v69

    .line 1235
    .line 1236
    move-object/from16 v66, v70

    .line 1237
    .line 1238
    move-object/from16 v67, v71

    .line 1239
    .line 1240
    move-object/from16 v69, v73

    .line 1241
    .line 1242
    move-object/from16 v70, v74

    .line 1243
    .line 1244
    move-object/from16 v71, v75

    .line 1245
    .line 1246
    move-object/from16 v73, v77

    .line 1247
    .line 1248
    move-object/from16 v74, v78

    .line 1249
    .line 1250
    move-object/from16 v75, v1

    .line 1251
    .line 1252
    move-object/from16 v1, v16

    .line 1253
    .line 1254
    move-object/from16 v16, v20

    .line 1255
    .line 1256
    move-object/from16 v20, v24

    .line 1257
    .line 1258
    move-object/from16 v24, v28

    .line 1259
    .line 1260
    move-object/from16 v28, v32

    .line 1261
    .line 1262
    move-object/from16 v32, v36

    .line 1263
    .line 1264
    move-object/from16 v36, v40

    .line 1265
    .line 1266
    move-object/from16 v40, v44

    .line 1267
    .line 1268
    move-object/from16 v44, v48

    .line 1269
    .line 1270
    move-object/from16 v48, v52

    .line 1271
    .line 1272
    move-object/from16 v52, v56

    .line 1273
    .line 1274
    move-object/from16 v56, v60

    .line 1275
    .line 1276
    move-object/from16 v60, v64

    .line 1277
    .line 1278
    move-object/from16 v64, v68

    .line 1279
    .line 1280
    move-object/from16 v68, v72

    .line 1281
    .line 1282
    move-object/from16 v72, v76

    .line 1283
    .line 1284
    filled-new-array/range {v1 .. v75}, [Lbp5;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v0

    .line 1288
    sput-object v0, Lbp5;->c:[Lbp5;

    .line 1289
    .line 1290
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lbp5;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static a(J)Z
    .locals 2

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    ushr-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p0, p0, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbp5;
    .locals 1

    .line 1
    const-class v0, Lbp5;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lbp5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lbp5;
    .locals 1

    .line 1
    sget-object v0, Lbp5;->c:[Lbp5;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lbp5;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lbp5;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbp5;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
