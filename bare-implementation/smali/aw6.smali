.class public final Law6;
.super Ljava/lang/Object;


# static fields
.field public static final A:Law6;

.field public static final B:Law6;

.field public static final C:Law6;

.field public static final D:Law6;

.field public static final E:Law6;

.field public static final F:Law6;

.field public static final G:Law6;

.field public static final H:Law6;

.field public static final I:Law6;

.field public static final J:Law6;

.field public static final K:Law6;

.field public static final L:Law6;

.field public static final M:Law6;

.field public static final N:Ljava/util/HashMap;

.field public static final d:Law6;

.field public static final e:Law6;

.field public static final f:Law6;

.field public static final g:Law6;

.field public static final h:Law6;

.field public static final i:Law6;

.field public static final j:Law6;

.field public static final k:Law6;

.field public static final l:Law6;

.field public static final m:Law6;

.field public static final n:Law6;

.field public static final o:Law6;

.field public static final p:Law6;

.field public static final q:Law6;

.field public static final r:Law6;

.field public static final s:Law6;

.field public static final t:Law6;

.field public static final u:Law6;

.field public static final v:Law6;

.field public static final w:Law6;

.field public static final x:Law6;

.field public static final y:Law6;

.field public static final z:Law6;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Lxv6;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v1, Law6;

    .line 2
    .line 3
    const v0, 0x10101

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v2, Lj15;

    .line 11
    .line 12
    const/16 v3, 0x10

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-direct {v2, v3, v4}, Lj15;-><init>(IZ)V

    .line 16
    .line 17
    .line 18
    const-string v5, "sha2-128f-robust"

    .line 19
    .line 20
    invoke-direct {v1, v0, v5, v2}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Law6;->d:Law6;

    .line 24
    .line 25
    new-instance v2, Law6;

    .line 26
    .line 27
    const v0, 0x10102

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v5, Lj15;

    .line 35
    .line 36
    invoke-direct {v5, v3, v4}, Lj15;-><init>(IZ)V

    .line 37
    .line 38
    .line 39
    const-string v6, "sha2-128s-robust"

    .line 40
    .line 41
    invoke-direct {v2, v0, v6, v5}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 42
    .line 43
    .line 44
    sput-object v2, Law6;->e:Law6;

    .line 45
    .line 46
    new-instance v0, Law6;

    .line 47
    .line 48
    const v5, 0x10103

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v6, Lj15;

    .line 56
    .line 57
    const/16 v7, 0x18

    .line 58
    .line 59
    invoke-direct {v6, v7, v4}, Lj15;-><init>(IZ)V

    .line 60
    .line 61
    .line 62
    const-string v8, "sha2-192f-robust"

    .line 63
    .line 64
    invoke-direct {v0, v5, v8, v6}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Law6;->f:Law6;

    .line 68
    .line 69
    new-instance v5, Law6;

    .line 70
    .line 71
    const v6, 0x10104

    .line 72
    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v8, Lj15;

    .line 79
    .line 80
    invoke-direct {v8, v7, v4}, Lj15;-><init>(IZ)V

    .line 81
    .line 82
    .line 83
    const-string v9, "sha2-192s-robust"

    .line 84
    .line 85
    invoke-direct {v5, v6, v9, v8}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 86
    .line 87
    .line 88
    sput-object v5, Law6;->g:Law6;

    .line 89
    .line 90
    move-object v6, v5

    .line 91
    new-instance v5, Law6;

    .line 92
    .line 93
    const v8, 0x10105

    .line 94
    .line 95
    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    new-instance v9, Lj15;

    .line 101
    .line 102
    const/16 v10, 0x20

    .line 103
    .line 104
    invoke-direct {v9, v10, v4}, Lj15;-><init>(IZ)V

    .line 105
    .line 106
    .line 107
    const-string v11, "sha2-256f-robust"

    .line 108
    .line 109
    invoke-direct {v5, v8, v11, v9}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 110
    .line 111
    .line 112
    sput-object v5, Law6;->h:Law6;

    .line 113
    .line 114
    move-object v8, v6

    .line 115
    new-instance v6, Law6;

    .line 116
    .line 117
    const v9, 0x10106

    .line 118
    .line 119
    .line 120
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    new-instance v11, Lj15;

    .line 125
    .line 126
    invoke-direct {v11, v10, v4}, Lj15;-><init>(IZ)V

    .line 127
    .line 128
    .line 129
    const-string v12, "sha2-256s-robust"

    .line 130
    .line 131
    invoke-direct {v6, v9, v12, v11}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 132
    .line 133
    .line 134
    sput-object v6, Law6;->i:Law6;

    .line 135
    .line 136
    new-instance v9, Law6;

    .line 137
    .line 138
    const v11, 0x10201

    .line 139
    .line 140
    .line 141
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    new-instance v12, Lj15;

    .line 146
    .line 147
    invoke-direct {v12, v3, v4}, Lj15;-><init>(IZ)V

    .line 148
    .line 149
    .line 150
    const-string v13, "sha2-128f"

    .line 151
    .line 152
    invoke-direct {v9, v11, v13, v12}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 153
    .line 154
    .line 155
    sput-object v9, Law6;->j:Law6;

    .line 156
    .line 157
    move-object v11, v8

    .line 158
    new-instance v8, Law6;

    .line 159
    .line 160
    const v12, 0x10202

    .line 161
    .line 162
    .line 163
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    new-instance v13, Lj15;

    .line 168
    .line 169
    invoke-direct {v13, v3, v4}, Lj15;-><init>(IZ)V

    .line 170
    .line 171
    .line 172
    const-string v14, "sha2-128s"

    .line 173
    .line 174
    invoke-direct {v8, v12, v14, v13}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 175
    .line 176
    .line 177
    sput-object v8, Law6;->k:Law6;

    .line 178
    .line 179
    move-object v12, v9

    .line 180
    new-instance v9, Law6;

    .line 181
    .line 182
    const v13, 0x10203

    .line 183
    .line 184
    .line 185
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    new-instance v14, Lj15;

    .line 190
    .line 191
    invoke-direct {v14, v7, v4}, Lj15;-><init>(IZ)V

    .line 192
    .line 193
    .line 194
    const-string v15, "sha2-192f"

    .line 195
    .line 196
    invoke-direct {v9, v13, v15, v14}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 197
    .line 198
    .line 199
    sput-object v9, Law6;->l:Law6;

    .line 200
    .line 201
    new-instance v13, Law6;

    .line 202
    .line 203
    const v14, 0x10204

    .line 204
    .line 205
    .line 206
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    new-instance v15, Lj15;

    .line 211
    .line 212
    invoke-direct {v15, v7, v4}, Lj15;-><init>(IZ)V

    .line 213
    .line 214
    .line 215
    const-string v7, "sha2-192s"

    .line 216
    .line 217
    invoke-direct {v13, v14, v7, v15}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 218
    .line 219
    .line 220
    sput-object v13, Law6;->m:Law6;

    .line 221
    .line 222
    move-object v7, v11

    .line 223
    new-instance v11, Law6;

    .line 224
    .line 225
    const v14, 0x10205

    .line 226
    .line 227
    .line 228
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    new-instance v15, Lj15;

    .line 233
    .line 234
    invoke-direct {v15, v10, v4}, Lj15;-><init>(IZ)V

    .line 235
    .line 236
    .line 237
    const-string v3, "sha2-256f"

    .line 238
    .line 239
    invoke-direct {v11, v14, v3, v15}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 240
    .line 241
    .line 242
    sput-object v11, Law6;->n:Law6;

    .line 243
    .line 244
    move-object v3, v7

    .line 245
    move-object v7, v12

    .line 246
    new-instance v12, Law6;

    .line 247
    .line 248
    const v14, 0x10206

    .line 249
    .line 250
    .line 251
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    new-instance v15, Lj15;

    .line 256
    .line 257
    invoke-direct {v15, v10, v4}, Lj15;-><init>(IZ)V

    .line 258
    .line 259
    .line 260
    const-string v4, "sha2-256s"

    .line 261
    .line 262
    invoke-direct {v12, v14, v4, v15}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 263
    .line 264
    .line 265
    sput-object v12, Law6;->o:Law6;

    .line 266
    .line 267
    move-object v4, v13

    .line 268
    new-instance v13, Law6;

    .line 269
    .line 270
    const v14, 0x20101

    .line 271
    .line 272
    .line 273
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    new-instance v15, Lci2;

    .line 278
    .line 279
    const/16 v10, 0x10

    .line 280
    .line 281
    invoke-direct {v15, v10}, Lci2;-><init>(I)V

    .line 282
    .line 283
    .line 284
    const-string v10, "shake-128f-robust"

    .line 285
    .line 286
    invoke-direct {v13, v14, v10, v15}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 287
    .line 288
    .line 289
    sput-object v13, Law6;->p:Law6;

    .line 290
    .line 291
    new-instance v14, Law6;

    .line 292
    .line 293
    const v10, 0x20102

    .line 294
    .line 295
    .line 296
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    new-instance v15, Lci2;

    .line 301
    .line 302
    move-object/from16 v20, v0

    .line 303
    .line 304
    const/16 v0, 0x10

    .line 305
    .line 306
    invoke-direct {v15, v0}, Lci2;-><init>(I)V

    .line 307
    .line 308
    .line 309
    const-string v0, "shake-128s-robust"

    .line 310
    .line 311
    invoke-direct {v14, v10, v0, v15}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 312
    .line 313
    .line 314
    sput-object v14, Law6;->q:Law6;

    .line 315
    .line 316
    new-instance v15, Law6;

    .line 317
    .line 318
    const v0, 0x20103

    .line 319
    .line 320
    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v10, Lci2;

    .line 326
    .line 327
    move-object/from16 v21, v1

    .line 328
    .line 329
    const/16 v1, 0x18

    .line 330
    .line 331
    invoke-direct {v10, v1}, Lci2;-><init>(I)V

    .line 332
    .line 333
    .line 334
    const-string v1, "shake-192f-robust"

    .line 335
    .line 336
    invoke-direct {v15, v0, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 337
    .line 338
    .line 339
    sput-object v15, Law6;->r:Law6;

    .line 340
    .line 341
    new-instance v0, Law6;

    .line 342
    .line 343
    const v1, 0x20104

    .line 344
    .line 345
    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    new-instance v10, Lci2;

    .line 351
    .line 352
    move-object/from16 v22, v2

    .line 353
    .line 354
    const/16 v2, 0x18

    .line 355
    .line 356
    invoke-direct {v10, v2}, Lci2;-><init>(I)V

    .line 357
    .line 358
    .line 359
    const-string v2, "shake-192s-robust"

    .line 360
    .line 361
    invoke-direct {v0, v1, v2, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 362
    .line 363
    .line 364
    sput-object v0, Law6;->s:Law6;

    .line 365
    .line 366
    new-instance v1, Law6;

    .line 367
    .line 368
    const v2, 0x20105

    .line 369
    .line 370
    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    new-instance v10, Lci2;

    .line 376
    .line 377
    move-object/from16 v23, v0

    .line 378
    .line 379
    const/16 v0, 0x20

    .line 380
    .line 381
    invoke-direct {v10, v0}, Lci2;-><init>(I)V

    .line 382
    .line 383
    .line 384
    const-string v0, "shake-256f-robust"

    .line 385
    .line 386
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 387
    .line 388
    .line 389
    sput-object v1, Law6;->t:Law6;

    .line 390
    .line 391
    new-instance v0, Law6;

    .line 392
    .line 393
    const v2, 0x20106

    .line 394
    .line 395
    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    new-instance v10, Lci2;

    .line 401
    .line 402
    move-object/from16 v24, v1

    .line 403
    .line 404
    const/16 v1, 0x20

    .line 405
    .line 406
    invoke-direct {v10, v1}, Lci2;-><init>(I)V

    .line 407
    .line 408
    .line 409
    const-string v1, "shake-256s-robust"

    .line 410
    .line 411
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 412
    .line 413
    .line 414
    sput-object v0, Law6;->u:Law6;

    .line 415
    .line 416
    new-instance v1, Law6;

    .line 417
    .line 418
    const v2, 0x20201

    .line 419
    .line 420
    .line 421
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    new-instance v10, Lci2;

    .line 426
    .line 427
    move-object/from16 v25, v0

    .line 428
    .line 429
    const/16 v0, 0x10

    .line 430
    .line 431
    invoke-direct {v10, v0}, Lci2;-><init>(I)V

    .line 432
    .line 433
    .line 434
    const-string v0, "shake-128f"

    .line 435
    .line 436
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 437
    .line 438
    .line 439
    sput-object v1, Law6;->v:Law6;

    .line 440
    .line 441
    new-instance v0, Law6;

    .line 442
    .line 443
    const v2, 0x20202

    .line 444
    .line 445
    .line 446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    new-instance v10, Lci2;

    .line 451
    .line 452
    move-object/from16 v26, v1

    .line 453
    .line 454
    const/16 v1, 0x10

    .line 455
    .line 456
    invoke-direct {v10, v1}, Lci2;-><init>(I)V

    .line 457
    .line 458
    .line 459
    const-string v1, "shake-128s"

    .line 460
    .line 461
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 462
    .line 463
    .line 464
    sput-object v0, Law6;->w:Law6;

    .line 465
    .line 466
    new-instance v1, Law6;

    .line 467
    .line 468
    const v2, 0x20203

    .line 469
    .line 470
    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    new-instance v10, Lci2;

    .line 476
    .line 477
    move-object/from16 v27, v0

    .line 478
    .line 479
    const/16 v0, 0x18

    .line 480
    .line 481
    invoke-direct {v10, v0}, Lci2;-><init>(I)V

    .line 482
    .line 483
    .line 484
    const-string v0, "shake-192f"

    .line 485
    .line 486
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 487
    .line 488
    .line 489
    sput-object v1, Law6;->x:Law6;

    .line 490
    .line 491
    new-instance v0, Law6;

    .line 492
    .line 493
    const v2, 0x20204

    .line 494
    .line 495
    .line 496
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    new-instance v10, Lci2;

    .line 501
    .line 502
    move-object/from16 v28, v1

    .line 503
    .line 504
    const/16 v1, 0x18

    .line 505
    .line 506
    invoke-direct {v10, v1}, Lci2;-><init>(I)V

    .line 507
    .line 508
    .line 509
    const-string v1, "shake-192s"

    .line 510
    .line 511
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 512
    .line 513
    .line 514
    sput-object v0, Law6;->y:Law6;

    .line 515
    .line 516
    new-instance v1, Law6;

    .line 517
    .line 518
    const v2, 0x20205

    .line 519
    .line 520
    .line 521
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    new-instance v10, Lci2;

    .line 526
    .line 527
    move-object/from16 v29, v0

    .line 528
    .line 529
    const/16 v0, 0x20

    .line 530
    .line 531
    invoke-direct {v10, v0}, Lci2;-><init>(I)V

    .line 532
    .line 533
    .line 534
    const-string v0, "shake-256f"

    .line 535
    .line 536
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 537
    .line 538
    .line 539
    sput-object v1, Law6;->z:Law6;

    .line 540
    .line 541
    new-instance v0, Law6;

    .line 542
    .line 543
    const v2, 0x20206

    .line 544
    .line 545
    .line 546
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    new-instance v10, Lci2;

    .line 551
    .line 552
    move-object/from16 v30, v1

    .line 553
    .line 554
    const/16 v1, 0x20

    .line 555
    .line 556
    invoke-direct {v10, v1}, Lci2;-><init>(I)V

    .line 557
    .line 558
    .line 559
    const-string v1, "shake-256s"

    .line 560
    .line 561
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 562
    .line 563
    .line 564
    sput-object v0, Law6;->A:Law6;

    .line 565
    .line 566
    new-instance v1, Law6;

    .line 567
    .line 568
    const v2, 0x30101

    .line 569
    .line 570
    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    new-instance v10, Lzv6;

    .line 576
    .line 577
    move-object/from16 v31, v0

    .line 578
    .line 579
    const/16 v0, 0x10

    .line 580
    .line 581
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 582
    .line 583
    .line 584
    const-string v0, "haraka-128f-robust"

    .line 585
    .line 586
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 587
    .line 588
    .line 589
    sput-object v1, Law6;->B:Law6;

    .line 590
    .line 591
    new-instance v0, Law6;

    .line 592
    .line 593
    const v2, 0x30102

    .line 594
    .line 595
    .line 596
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    new-instance v10, Lzv6;

    .line 601
    .line 602
    move-object/from16 v32, v1

    .line 603
    .line 604
    const/16 v1, 0x10

    .line 605
    .line 606
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 607
    .line 608
    .line 609
    const-string v1, "haraka-128s-robust"

    .line 610
    .line 611
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 612
    .line 613
    .line 614
    sput-object v0, Law6;->C:Law6;

    .line 615
    .line 616
    new-instance v1, Law6;

    .line 617
    .line 618
    const v2, 0x30103

    .line 619
    .line 620
    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    new-instance v10, Lzv6;

    .line 626
    .line 627
    move-object/from16 v33, v0

    .line 628
    .line 629
    const/16 v0, 0x18

    .line 630
    .line 631
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 632
    .line 633
    .line 634
    const-string v0, "haraka-192f-robust"

    .line 635
    .line 636
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 637
    .line 638
    .line 639
    sput-object v1, Law6;->D:Law6;

    .line 640
    .line 641
    new-instance v0, Law6;

    .line 642
    .line 643
    const v2, 0x30104

    .line 644
    .line 645
    .line 646
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    new-instance v10, Lzv6;

    .line 651
    .line 652
    move-object/from16 v34, v1

    .line 653
    .line 654
    const/16 v1, 0x18

    .line 655
    .line 656
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 657
    .line 658
    .line 659
    const-string v1, "haraka-192s-robust"

    .line 660
    .line 661
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 662
    .line 663
    .line 664
    sput-object v0, Law6;->E:Law6;

    .line 665
    .line 666
    new-instance v1, Law6;

    .line 667
    .line 668
    const v2, 0x30105

    .line 669
    .line 670
    .line 671
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    new-instance v10, Lzv6;

    .line 676
    .line 677
    move-object/from16 v35, v0

    .line 678
    .line 679
    const/16 v0, 0x20

    .line 680
    .line 681
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 682
    .line 683
    .line 684
    const-string v0, "haraka-256f-robust"

    .line 685
    .line 686
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 687
    .line 688
    .line 689
    sput-object v1, Law6;->F:Law6;

    .line 690
    .line 691
    new-instance v0, Law6;

    .line 692
    .line 693
    const v2, 0x30106

    .line 694
    .line 695
    .line 696
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    new-instance v10, Lzv6;

    .line 701
    .line 702
    move-object/from16 v36, v1

    .line 703
    .line 704
    const/16 v1, 0x20

    .line 705
    .line 706
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 707
    .line 708
    .line 709
    const-string v1, "haraka-256s-robust"

    .line 710
    .line 711
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 712
    .line 713
    .line 714
    sput-object v0, Law6;->G:Law6;

    .line 715
    .line 716
    new-instance v1, Law6;

    .line 717
    .line 718
    const v2, 0x30201

    .line 719
    .line 720
    .line 721
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    new-instance v10, Lzv6;

    .line 726
    .line 727
    move-object/from16 v37, v0

    .line 728
    .line 729
    const/16 v0, 0x10

    .line 730
    .line 731
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 732
    .line 733
    .line 734
    const-string v0, "haraka-128f-simple"

    .line 735
    .line 736
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 737
    .line 738
    .line 739
    sput-object v1, Law6;->H:Law6;

    .line 740
    .line 741
    new-instance v0, Law6;

    .line 742
    .line 743
    const v2, 0x30202

    .line 744
    .line 745
    .line 746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    new-instance v10, Lzv6;

    .line 751
    .line 752
    move-object/from16 v38, v1

    .line 753
    .line 754
    const/16 v1, 0x10

    .line 755
    .line 756
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 757
    .line 758
    .line 759
    const-string v1, "haraka-128s-simple"

    .line 760
    .line 761
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 762
    .line 763
    .line 764
    sput-object v0, Law6;->I:Law6;

    .line 765
    .line 766
    new-instance v1, Law6;

    .line 767
    .line 768
    const v2, 0x30203

    .line 769
    .line 770
    .line 771
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    new-instance v10, Lzv6;

    .line 776
    .line 777
    move-object/from16 v17, v0

    .line 778
    .line 779
    const/16 v0, 0x18

    .line 780
    .line 781
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 782
    .line 783
    .line 784
    const-string v0, "haraka-192f-simple"

    .line 785
    .line 786
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 787
    .line 788
    .line 789
    sput-object v1, Law6;->J:Law6;

    .line 790
    .line 791
    new-instance v0, Law6;

    .line 792
    .line 793
    const v2, 0x30204

    .line 794
    .line 795
    .line 796
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    new-instance v10, Lzv6;

    .line 801
    .line 802
    move-object/from16 v39, v1

    .line 803
    .line 804
    const/16 v1, 0x18

    .line 805
    .line 806
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 807
    .line 808
    .line 809
    const-string v1, "haraka-192s-simple"

    .line 810
    .line 811
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 812
    .line 813
    .line 814
    sput-object v0, Law6;->K:Law6;

    .line 815
    .line 816
    new-instance v1, Law6;

    .line 817
    .line 818
    const v2, 0x30205

    .line 819
    .line 820
    .line 821
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    new-instance v10, Lzv6;

    .line 826
    .line 827
    move-object/from16 v16, v0

    .line 828
    .line 829
    const/16 v0, 0x20

    .line 830
    .line 831
    invoke-direct {v10, v0}, Lzv6;-><init>(I)V

    .line 832
    .line 833
    .line 834
    const-string v0, "haraka-256f-simple"

    .line 835
    .line 836
    invoke-direct {v1, v2, v0, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 837
    .line 838
    .line 839
    sput-object v1, Law6;->L:Law6;

    .line 840
    .line 841
    new-instance v0, Law6;

    .line 842
    .line 843
    const v2, 0x30206

    .line 844
    .line 845
    .line 846
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    new-instance v10, Lzv6;

    .line 851
    .line 852
    move-object/from16 v40, v1

    .line 853
    .line 854
    const/16 v1, 0x20

    .line 855
    .line 856
    invoke-direct {v10, v1}, Lzv6;-><init>(I)V

    .line 857
    .line 858
    .line 859
    const-string v1, "haraka-256s-simple"

    .line 860
    .line 861
    invoke-direct {v0, v2, v1, v10}, Law6;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V

    .line 862
    .line 863
    .line 864
    sput-object v0, Law6;->M:Law6;

    .line 865
    .line 866
    new-instance v1, Ljava/util/HashMap;

    .line 867
    .line 868
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 869
    .line 870
    .line 871
    sput-object v1, Law6;->N:Ljava/util/HashMap;

    .line 872
    .line 873
    move-object v10, v4

    .line 874
    move-object/from16 v1, v21

    .line 875
    .line 876
    move-object/from16 v2, v22

    .line 877
    .line 878
    move-object/from16 v18, v25

    .line 879
    .line 880
    move-object/from16 v19, v26

    .line 881
    .line 882
    move-object/from16 v21, v28

    .line 883
    .line 884
    move-object/from16 v22, v29

    .line 885
    .line 886
    move-object/from16 v25, v32

    .line 887
    .line 888
    move-object/from16 v26, v33

    .line 889
    .line 890
    move-object/from16 v28, v35

    .line 891
    .line 892
    move-object/from16 v29, v36

    .line 893
    .line 894
    move-object/from16 v33, v39

    .line 895
    .line 896
    move-object/from16 v35, v40

    .line 897
    .line 898
    move-object/from16 v36, v0

    .line 899
    .line 900
    move-object v4, v3

    .line 901
    move-object/from16 v32, v17

    .line 902
    .line 903
    move-object/from16 v3, v20

    .line 904
    .line 905
    move-object/from16 v17, v24

    .line 906
    .line 907
    move-object/from16 v20, v27

    .line 908
    .line 909
    move-object/from16 v24, v31

    .line 910
    .line 911
    move-object/from16 v27, v34

    .line 912
    .line 913
    move-object/from16 v31, v38

    .line 914
    .line 915
    const/4 v0, 0x0

    .line 916
    move-object/from16 v34, v16

    .line 917
    .line 918
    move-object/from16 v16, v23

    .line 919
    .line 920
    move-object/from16 v23, v30

    .line 921
    .line 922
    move-object/from16 v30, v37

    .line 923
    .line 924
    filled-new-array/range {v1 .. v36}, [Law6;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    move v4, v0

    .line 929
    :goto_0
    const/16 v0, 0x24

    .line 930
    .line 931
    if-ge v4, v0, :cond_0

    .line 932
    .line 933
    aget-object v0, v1, v4

    .line 934
    .line 935
    sget-object v2, Law6;->N:Ljava/util/HashMap;

    .line 936
    .line 937
    iget-object v3, v0, Law6;->a:Ljava/lang/Integer;

    .line 938
    .line 939
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    add-int/lit8 v4, v4, 0x1

    .line 943
    .line 944
    goto :goto_0

    .line 945
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lxv6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Law6;->a:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Law6;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Law6;->c:Lxv6;

    .line 9
    .line 10
    return-void
.end method
