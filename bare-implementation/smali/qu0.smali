.class public final Lqu0;
.super Ljava/security/Provider;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/lang/Class;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final k:[La42;

.field public static final n:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;

.field public static final q:[Ljava/lang/String;

.field public static final r:[Ljava/lang/String;

.field public static final t:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    const-class v0, Lqu0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    const-string v1, "BouncyCastle Security Provider v1.82"

    .line 11
    .line 12
    sput-object v1, Lqu0;->b:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Lru0;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/ThreadLocal;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lqu0;->c:Ljava/util/HashMap;

    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-string v1, "java.security.cert.PKIXRevocationChecker"

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Lr81;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lr81;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    sput-object v0, Lqu0;->d:Ljava/lang/Class;

    .line 70
    .line 71
    const-string v0, "TLSKDF"

    .line 72
    .line 73
    const-string v1, "SCRYPT"

    .line 74
    .line 75
    const-string v2, "PBEPBKDF1"

    .line 76
    .line 77
    const-string v3, "PBEPBKDF2"

    .line 78
    .line 79
    const-string v4, "PBEPKCS12"

    .line 80
    .line 81
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lqu0;->e:[Ljava/lang/String;

    .line 86
    .line 87
    const-string v0, "SipHash128"

    .line 88
    .line 89
    const-string v1, "Poly1305"

    .line 90
    .line 91
    const-string v2, "SipHash"

    .line 92
    .line 93
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, Lqu0;->f:[Ljava/lang/String;

    .line 98
    .line 99
    new-instance v0, Lrf9;

    .line 100
    .line 101
    const/4 v1, 0x2

    .line 102
    const-string v2, "AES"

    .line 103
    .line 104
    invoke-direct {v0, v2, v1}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lrf9;

    .line 108
    .line 109
    const/4 v2, 0x2

    .line 110
    const-string v3, "ARC4"

    .line 111
    .line 112
    invoke-direct {v1, v3, v2}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lrf9;

    .line 116
    .line 117
    const/4 v3, 0x2

    .line 118
    const-string v4, "ARIA"

    .line 119
    .line 120
    invoke-direct {v2, v4, v3}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    new-instance v3, Lrf9;

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    const-string v5, "Blowfish"

    .line 127
    .line 128
    invoke-direct {v3, v5, v4}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    new-instance v4, Lrf9;

    .line 132
    .line 133
    const/4 v5, 0x2

    .line 134
    const-string v6, "Camellia"

    .line 135
    .line 136
    invoke-direct {v4, v6, v5}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    new-instance v5, Lrf9;

    .line 140
    .line 141
    const/4 v6, 0x2

    .line 142
    const-string v7, "CAST5"

    .line 143
    .line 144
    invoke-direct {v5, v7, v6}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    new-instance v6, Lrf9;

    .line 148
    .line 149
    const/4 v7, 0x2

    .line 150
    const-string v8, "CAST6"

    .line 151
    .line 152
    invoke-direct {v6, v8, v7}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    new-instance v7, Lrf9;

    .line 156
    .line 157
    const/4 v8, 0x2

    .line 158
    const-string v9, "ChaCha"

    .line 159
    .line 160
    invoke-direct {v7, v9, v8}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    new-instance v8, Lrf9;

    .line 164
    .line 165
    const/4 v9, 0x2

    .line 166
    const-string v10, "DES"

    .line 167
    .line 168
    invoke-direct {v8, v10, v9}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    new-instance v9, Lrf9;

    .line 172
    .line 173
    const/4 v10, 0x2

    .line 174
    const-string v11, "DESede"

    .line 175
    .line 176
    invoke-direct {v9, v11, v10}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    new-instance v10, Lrf9;

    .line 180
    .line 181
    const/4 v11, 0x2

    .line 182
    const-string v12, "GOST28147"

    .line 183
    .line 184
    invoke-direct {v10, v12, v11}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    new-instance v11, Lrf9;

    .line 188
    .line 189
    const/4 v12, 0x2

    .line 190
    const-string v13, "Grainv1"

    .line 191
    .line 192
    invoke-direct {v11, v13, v12}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    new-instance v12, Lrf9;

    .line 196
    .line 197
    const/4 v13, 0x2

    .line 198
    const-string v14, "Grain128"

    .line 199
    .line 200
    invoke-direct {v12, v14, v13}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    .line 203
    new-instance v13, Lrf9;

    .line 204
    .line 205
    const/4 v14, 0x2

    .line 206
    const-string v15, "HC128"

    .line 207
    .line 208
    invoke-direct {v13, v15, v14}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    new-instance v14, Lrf9;

    .line 212
    .line 213
    const/4 v15, 0x2

    .line 214
    move-object/from16 v16, v0

    .line 215
    .line 216
    const-string v0, "HC256"

    .line 217
    .line 218
    invoke-direct {v14, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lrf9;

    .line 222
    .line 223
    move-object/from16 v17, v1

    .line 224
    .line 225
    const-string v1, "IDEA"

    .line 226
    .line 227
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lrf9;

    .line 231
    .line 232
    move-object/from16 v18, v0

    .line 233
    .line 234
    const-string v0, "Noekeon"

    .line 235
    .line 236
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    new-instance v0, Lrf9;

    .line 240
    .line 241
    move-object/from16 v19, v1

    .line 242
    .line 243
    const-string v1, "RC2"

    .line 244
    .line 245
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lrf9;

    .line 249
    .line 250
    move-object/from16 v20, v0

    .line 251
    .line 252
    const-string v0, "RC5"

    .line 253
    .line 254
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Lrf9;

    .line 258
    .line 259
    move-object/from16 v21, v1

    .line 260
    .line 261
    const-string v1, "RC6"

    .line 262
    .line 263
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Lrf9;

    .line 267
    .line 268
    move-object/from16 v22, v0

    .line 269
    .line 270
    const-string v0, "Rijndael"

    .line 271
    .line 272
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lrf9;

    .line 276
    .line 277
    move-object/from16 v23, v1

    .line 278
    .line 279
    const-string v1, "Salsa20"

    .line 280
    .line 281
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Lrf9;

    .line 285
    .line 286
    move-object/from16 v24, v0

    .line 287
    .line 288
    const-string v0, "SEED"

    .line 289
    .line 290
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    new-instance v0, Lrf9;

    .line 294
    .line 295
    move-object/from16 v25, v1

    .line 296
    .line 297
    const-string v1, "Serpent"

    .line 298
    .line 299
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    new-instance v1, Lrf9;

    .line 303
    .line 304
    move-object/from16 v26, v0

    .line 305
    .line 306
    const-string v0, "Shacal2"

    .line 307
    .line 308
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Lrf9;

    .line 312
    .line 313
    move-object/from16 v27, v1

    .line 314
    .line 315
    const-string v1, "Skipjack"

    .line 316
    .line 317
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    new-instance v1, Lrf9;

    .line 321
    .line 322
    move-object/from16 v28, v0

    .line 323
    .line 324
    const-string v0, "SM4"

    .line 325
    .line 326
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    new-instance v0, Lrf9;

    .line 330
    .line 331
    move-object/from16 v29, v1

    .line 332
    .line 333
    const-string v1, "TEA"

    .line 334
    .line 335
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Lrf9;

    .line 339
    .line 340
    move-object/from16 v30, v0

    .line 341
    .line 342
    const-string v0, "Twofish"

    .line 343
    .line 344
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Lrf9;

    .line 348
    .line 349
    move-object/from16 v31, v1

    .line 350
    .line 351
    const-string v1, "Threefish"

    .line 352
    .line 353
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    new-instance v1, Lrf9;

    .line 357
    .line 358
    move-object/from16 v32, v0

    .line 359
    .line 360
    const-string v0, "VMPC"

    .line 361
    .line 362
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    new-instance v0, Lrf9;

    .line 366
    .line 367
    move-object/from16 v33, v1

    .line 368
    .line 369
    const-string v1, "VMPCKSA3"

    .line 370
    .line 371
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Lrf9;

    .line 375
    .line 376
    move-object/from16 v34, v0

    .line 377
    .line 378
    const-string v0, "XTEA"

    .line 379
    .line 380
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Lrf9;

    .line 384
    .line 385
    move-object/from16 v35, v1

    .line 386
    .line 387
    const-string v1, "XSalsa20"

    .line 388
    .line 389
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 390
    .line 391
    .line 392
    new-instance v1, Lrf9;

    .line 393
    .line 394
    move-object/from16 v36, v0

    .line 395
    .line 396
    const-string v0, "OpenSSLPBKDF"

    .line 397
    .line 398
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Lrf9;

    .line 402
    .line 403
    move-object/from16 v37, v1

    .line 404
    .line 405
    const-string v1, "DSTU7624"

    .line 406
    .line 407
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lrf9;

    .line 411
    .line 412
    move-object/from16 v38, v0

    .line 413
    .line 414
    const-string v0, "GOST3412_2015"

    .line 415
    .line 416
    invoke-direct {v1, v0, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Lrf9;

    .line 420
    .line 421
    move-object/from16 v39, v1

    .line 422
    .line 423
    const-string v1, "Zuc"

    .line 424
    .line 425
    invoke-direct {v0, v1, v15}, Lrf9;-><init>(Ljava/lang/String;I)V

    .line 426
    .line 427
    .line 428
    const/16 v1, 0x26

    .line 429
    .line 430
    new-array v1, v1, [La42;

    .line 431
    .line 432
    const/4 v15, 0x0

    .line 433
    aput-object v16, v1, v15

    .line 434
    .line 435
    const/4 v15, 0x1

    .line 436
    aput-object v17, v1, v15

    .line 437
    .line 438
    const/4 v15, 0x2

    .line 439
    aput-object v2, v1, v15

    .line 440
    .line 441
    const/4 v2, 0x3

    .line 442
    aput-object v3, v1, v2

    .line 443
    .line 444
    const/4 v2, 0x4

    .line 445
    aput-object v4, v1, v2

    .line 446
    .line 447
    const/4 v2, 0x5

    .line 448
    aput-object v5, v1, v2

    .line 449
    .line 450
    const/4 v2, 0x6

    .line 451
    aput-object v6, v1, v2

    .line 452
    .line 453
    const/4 v2, 0x7

    .line 454
    aput-object v7, v1, v2

    .line 455
    .line 456
    const/16 v2, 0x8

    .line 457
    .line 458
    aput-object v8, v1, v2

    .line 459
    .line 460
    const/16 v2, 0x9

    .line 461
    .line 462
    aput-object v9, v1, v2

    .line 463
    .line 464
    const/16 v2, 0xa

    .line 465
    .line 466
    aput-object v10, v1, v2

    .line 467
    .line 468
    const/16 v2, 0xb

    .line 469
    .line 470
    aput-object v11, v1, v2

    .line 471
    .line 472
    const/16 v2, 0xc

    .line 473
    .line 474
    aput-object v12, v1, v2

    .line 475
    .line 476
    const/16 v2, 0xd

    .line 477
    .line 478
    aput-object v13, v1, v2

    .line 479
    .line 480
    const/16 v2, 0xe

    .line 481
    .line 482
    aput-object v14, v1, v2

    .line 483
    .line 484
    const/16 v2, 0xf

    .line 485
    .line 486
    aput-object v18, v1, v2

    .line 487
    .line 488
    const/16 v2, 0x10

    .line 489
    .line 490
    aput-object v19, v1, v2

    .line 491
    .line 492
    const/16 v2, 0x11

    .line 493
    .line 494
    aput-object v20, v1, v2

    .line 495
    .line 496
    const/16 v2, 0x12

    .line 497
    .line 498
    aput-object v21, v1, v2

    .line 499
    .line 500
    const/16 v2, 0x13

    .line 501
    .line 502
    aput-object v22, v1, v2

    .line 503
    .line 504
    const/16 v2, 0x14

    .line 505
    .line 506
    aput-object v23, v1, v2

    .line 507
    .line 508
    const/16 v2, 0x15

    .line 509
    .line 510
    aput-object v24, v1, v2

    .line 511
    .line 512
    const/16 v2, 0x16

    .line 513
    .line 514
    aput-object v25, v1, v2

    .line 515
    .line 516
    const/16 v2, 0x17

    .line 517
    .line 518
    aput-object v26, v1, v2

    .line 519
    .line 520
    const/16 v2, 0x18

    .line 521
    .line 522
    aput-object v27, v1, v2

    .line 523
    .line 524
    const/16 v2, 0x19

    .line 525
    .line 526
    aput-object v28, v1, v2

    .line 527
    .line 528
    const/16 v2, 0x1a

    .line 529
    .line 530
    aput-object v29, v1, v2

    .line 531
    .line 532
    const/16 v2, 0x1b

    .line 533
    .line 534
    aput-object v30, v1, v2

    .line 535
    .line 536
    const/16 v2, 0x1c

    .line 537
    .line 538
    aput-object v31, v1, v2

    .line 539
    .line 540
    const/16 v2, 0x1d

    .line 541
    .line 542
    aput-object v32, v1, v2

    .line 543
    .line 544
    const/16 v2, 0x1e

    .line 545
    .line 546
    aput-object v33, v1, v2

    .line 547
    .line 548
    const/16 v2, 0x1f

    .line 549
    .line 550
    aput-object v34, v1, v2

    .line 551
    .line 552
    const/16 v2, 0x20

    .line 553
    .line 554
    aput-object v35, v1, v2

    .line 555
    .line 556
    const/16 v2, 0x21

    .line 557
    .line 558
    aput-object v36, v1, v2

    .line 559
    .line 560
    const/16 v2, 0x22

    .line 561
    .line 562
    aput-object v37, v1, v2

    .line 563
    .line 564
    const/16 v2, 0x23

    .line 565
    .line 566
    aput-object v38, v1, v2

    .line 567
    .line 568
    const/16 v2, 0x24

    .line 569
    .line 570
    aput-object v39, v1, v2

    .line 571
    .line 572
    const/16 v2, 0x25

    .line 573
    .line 574
    aput-object v0, v1, v2

    .line 575
    .line 576
    sput-object v1, Lqu0;->k:[La42;

    .line 577
    .line 578
    const-string v7, "CompositeSignatures"

    .line 579
    .line 580
    const-string v8, "NoSig"

    .line 581
    .line 582
    const-string v3, "X509"

    .line 583
    .line 584
    const-string v4, "IES"

    .line 585
    .line 586
    const-string v5, "COMPOSITE"

    .line 587
    .line 588
    const-string v6, "EXTERNAL"

    .line 589
    .line 590
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    sput-object v0, Lqu0;->n:[Ljava/lang/String;

    .line 595
    .line 596
    const-string v18, "MLDSA"

    .line 597
    .line 598
    const-string v19, "MLKEM"

    .line 599
    .line 600
    const-string v1, "DSA"

    .line 601
    .line 602
    const-string v2, "DH"

    .line 603
    .line 604
    const-string v3, "EC"

    .line 605
    .line 606
    const-string v4, "RSA"

    .line 607
    .line 608
    const-string v5, "GOST"

    .line 609
    .line 610
    const-string v6, "ECGOST"

    .line 611
    .line 612
    const-string v7, "ElGamal"

    .line 613
    .line 614
    const-string v8, "DSTU4145"

    .line 615
    .line 616
    const-string v9, "GM"

    .line 617
    .line 618
    const-string v10, "EdEC"

    .line 619
    .line 620
    const-string v11, "LMS"

    .line 621
    .line 622
    const-string v12, "SPHINCSPlus"

    .line 623
    .line 624
    const-string v13, "Dilithium"

    .line 625
    .line 626
    const-string v14, "Falcon"

    .line 627
    .line 628
    const-string v15, "NTRU"

    .line 629
    .line 630
    const-string v16, "CONTEXT"

    .line 631
    .line 632
    const-string v17, "SLHDSA"

    .line 633
    .line 634
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    sput-object v0, Lqu0;->p:[Ljava/lang/String;

    .line 639
    .line 640
    const-string v23, "Haraka"

    .line 641
    .line 642
    const-string v24, "Blake3"

    .line 643
    .line 644
    const-string v1, "GOST3411"

    .line 645
    .line 646
    const-string v2, "Keccak"

    .line 647
    .line 648
    const-string v3, "MD2"

    .line 649
    .line 650
    const-string v4, "MD4"

    .line 651
    .line 652
    const-string v5, "MD5"

    .line 653
    .line 654
    const-string v6, "SHA1"

    .line 655
    .line 656
    const-string v7, "RIPEMD128"

    .line 657
    .line 658
    const-string v8, "RIPEMD160"

    .line 659
    .line 660
    const-string v9, "RIPEMD256"

    .line 661
    .line 662
    const-string v10, "RIPEMD320"

    .line 663
    .line 664
    const-string v11, "SHA224"

    .line 665
    .line 666
    const-string v12, "SHA256"

    .line 667
    .line 668
    const-string v13, "SHA384"

    .line 669
    .line 670
    const-string v14, "SHA512"

    .line 671
    .line 672
    const-string v15, "SHA3"

    .line 673
    .line 674
    const-string v16, "Skein"

    .line 675
    .line 676
    const-string v17, "SM3"

    .line 677
    .line 678
    const-string v18, "Tiger"

    .line 679
    .line 680
    const-string v19, "Whirlpool"

    .line 681
    .line 682
    const-string v20, "Blake2b"

    .line 683
    .line 684
    const-string v21, "Blake2s"

    .line 685
    .line 686
    const-string v22, "DSTU7564"

    .line 687
    .line 688
    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    sput-object v0, Lqu0;->q:[Ljava/lang/String;

    .line 693
    .line 694
    const-string v0, "BCFKS"

    .line 695
    .line 696
    const-string v1, "PKCS12"

    .line 697
    .line 698
    const-string v2, "BC"

    .line 699
    .line 700
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    sput-object v0, Lqu0;->r:[Ljava/lang/String;

    .line 705
    .line 706
    const-string v0, "DRBG"

    .line 707
    .line 708
    filled-new-array {v0}, [Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    sput-object v0, Lqu0;->t:[Ljava/lang/String;

    .line 713
    .line 714
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const-wide v0, 0x3ffd1eb851eb851fL    # 1.82

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    sget-object v2, Lqu0;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "BC"

    .line 9
    .line 10
    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lqu0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    new-instance v0, Lou0;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lou0;-><init>(Lqu0;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lqu0;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lqu0;Ljava/security/Provider$Service;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lf1;Lm60;)V
    .locals 1

    .line 1
    sget-object v0, Lqu0;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public static e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-eq v0, v1, :cond_0

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    invoke-static {p0, v1}, Lqu0;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "$Mappings"

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lqu0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lr81;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lr81;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-object v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    throw v2

    .line 44
    :catch_1
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    :goto_1
    new-instance v1, Ljava/lang/InternalError;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "cannot create instance of "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p0, "$Mappings : "

    .line 68
    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v1, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method


# virtual methods
.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 2

    .line 1
    invoke-static {p2}, Llq7;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "."

    .line 6
    .line 7
    invoke-static {p1, v1, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lqu0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/security/Provider$Service;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v1, p0, Lqu0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Lpu0;

    .line 31
    .line 32
    invoke-direct {v1, p0, p1, p2, v0}, Lpu0;-><init>(Lqu0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    check-cast p1, Ljava/security/Provider$Service;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    iget-object p1, p0, Lqu0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    return-object p1

    .line 53
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_1
    return-object v1
.end method
