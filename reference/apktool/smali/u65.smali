.class public final enum Lu65;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrq1;


# static fields
.field public static final enum G:Lu65;

.field public static final enum H:Lu65;

.field public static final enum I:Lu65;

.field public static final enum J:Lu65;

.field public static final enum K:Lu65;

.field public static final enum L:Lu65;

.field public static final enum M:Lu65;

.field public static final enum N:Lu65;

.field public static final enum O:Lu65;

.field public static final enum P:Lu65;

.field public static final enum Q:Lu65;

.field public static final enum R:Lu65;

.field public static final enum S:Lu65;

.field public static final enum T:Lu65;

.field public static final enum U:Lu65;

.field public static final enum V:Lu65;

.field public static final synthetic W:[Lu65;

.field public static final enum c:Lu65;

.field public static final enum d:Lu65;

.field public static final enum e:Lu65;

.field public static final enum f:Lu65;

.field public static final enum k:Lu65;

.field public static final enum n:Lu65;

.field public static final enum p:Lu65;

.field public static final enum q:Lu65;

.field public static final enum r:Lu65;

.field public static final enum t:Lu65;

.field public static final enum x:Lu65;

.field public static final enum y:Lu65;


# instance fields
.field public final a:Z

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 42

    .line 1
    new-instance v1, Lu65;

    .line 2
    .line 3
    const-string v0, "USE_ANNOTATIONS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v1, v0, v2, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v1, Lu65;->c:Lu65;

    .line 11
    .line 12
    new-instance v0, Lu65;

    .line 13
    .line 14
    const-string v4, "USE_GETTERS_AS_SETTERS"

    .line 15
    .line 16
    invoke-direct {v0, v4, v3, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lu65;

    .line 20
    .line 21
    const-string v5, "PROPAGATE_TRANSIENT_MARKER"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v4, v5, v6, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 25
    .line 26
    .line 27
    sput-object v4, Lu65;->d:Lu65;

    .line 28
    .line 29
    move-object v5, v4

    .line 30
    new-instance v4, Lu65;

    .line 31
    .line 32
    const-string v6, "AUTO_DETECT_CREATORS"

    .line 33
    .line 34
    const/4 v7, 0x3

    .line 35
    invoke-direct {v4, v6, v7, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 36
    .line 37
    .line 38
    sput-object v4, Lu65;->e:Lu65;

    .line 39
    .line 40
    move-object v6, v5

    .line 41
    new-instance v5, Lu65;

    .line 42
    .line 43
    const-string v7, "AUTO_DETECT_FIELDS"

    .line 44
    .line 45
    const/4 v8, 0x4

    .line 46
    invoke-direct {v5, v7, v8, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 47
    .line 48
    .line 49
    sput-object v5, Lu65;->f:Lu65;

    .line 50
    .line 51
    move-object v7, v6

    .line 52
    new-instance v6, Lu65;

    .line 53
    .line 54
    const-string v8, "AUTO_DETECT_GETTERS"

    .line 55
    .line 56
    const/4 v9, 0x5

    .line 57
    invoke-direct {v6, v8, v9, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 58
    .line 59
    .line 60
    sput-object v6, Lu65;->k:Lu65;

    .line 61
    .line 62
    move-object v8, v7

    .line 63
    new-instance v7, Lu65;

    .line 64
    .line 65
    const-string v9, "AUTO_DETECT_IS_GETTERS"

    .line 66
    .line 67
    const/4 v10, 0x6

    .line 68
    invoke-direct {v7, v9, v10, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lu65;->n:Lu65;

    .line 72
    .line 73
    move-object v9, v8

    .line 74
    new-instance v8, Lu65;

    .line 75
    .line 76
    const-string v10, "AUTO_DETECT_SETTERS"

    .line 77
    .line 78
    const/4 v11, 0x7

    .line 79
    invoke-direct {v8, v10, v11, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 80
    .line 81
    .line 82
    sput-object v8, Lu65;->p:Lu65;

    .line 83
    .line 84
    move-object v10, v9

    .line 85
    new-instance v9, Lu65;

    .line 86
    .line 87
    const-string v11, "REQUIRE_SETTERS_FOR_GETTERS"

    .line 88
    .line 89
    const/16 v12, 0x8

    .line 90
    .line 91
    invoke-direct {v9, v11, v12, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    sput-object v9, Lu65;->q:Lu65;

    .line 95
    .line 96
    move-object v11, v10

    .line 97
    new-instance v10, Lu65;

    .line 98
    .line 99
    const-string v12, "ALLOW_FINAL_FIELDS_AS_MUTATORS"

    .line 100
    .line 101
    const/16 v13, 0x9

    .line 102
    .line 103
    invoke-direct {v10, v12, v13, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 104
    .line 105
    .line 106
    move-object v12, v11

    .line 107
    new-instance v11, Lu65;

    .line 108
    .line 109
    const-string v13, "INFER_PROPERTY_MUTATORS"

    .line 110
    .line 111
    const/16 v14, 0xa

    .line 112
    .line 113
    invoke-direct {v11, v13, v14, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 114
    .line 115
    .line 116
    sput-object v11, Lu65;->r:Lu65;

    .line 117
    .line 118
    move-object v13, v12

    .line 119
    new-instance v12, Lu65;

    .line 120
    .line 121
    const-string v14, "INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES"

    .line 122
    .line 123
    const/16 v15, 0xb

    .line 124
    .line 125
    invoke-direct {v12, v14, v15, v3}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 126
    .line 127
    .line 128
    sput-object v12, Lu65;->t:Lu65;

    .line 129
    .line 130
    move-object v14, v13

    .line 131
    new-instance v13, Lu65;

    .line 132
    .line 133
    const-string v15, "ALLOW_IS_GETTERS_FOR_NON_BOOLEAN"

    .line 134
    .line 135
    const/16 v3, 0xc

    .line 136
    .line 137
    invoke-direct {v13, v15, v3, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 138
    .line 139
    .line 140
    sput-object v13, Lu65;->x:Lu65;

    .line 141
    .line 142
    move-object v3, v14

    .line 143
    new-instance v14, Lu65;

    .line 144
    .line 145
    const-string v15, "ALLOW_VOID_VALUED_PROPERTIES"

    .line 146
    .line 147
    move-object/from16 v17, v0

    .line 148
    .line 149
    const/16 v0, 0xd

    .line 150
    .line 151
    invoke-direct {v14, v15, v0, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 152
    .line 153
    .line 154
    sput-object v14, Lu65;->y:Lu65;

    .line 155
    .line 156
    new-instance v15, Lu65;

    .line 157
    .line 158
    const-string v0, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    .line 159
    .line 160
    const/16 v2, 0xe

    .line 161
    .line 162
    move-object/from16 v19, v1

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    invoke-direct {v15, v0, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 166
    .line 167
    .line 168
    sput-object v15, Lu65;->G:Lu65;

    .line 169
    .line 170
    new-instance v0, Lu65;

    .line 171
    .line 172
    const-string v2, "OVERRIDE_PUBLIC_ACCESS_MODIFIERS"

    .line 173
    .line 174
    move-object/from16 v20, v3

    .line 175
    .line 176
    const/16 v3, 0xf

    .line 177
    .line 178
    invoke-direct {v0, v2, v3, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 179
    .line 180
    .line 181
    sput-object v0, Lu65;->H:Lu65;

    .line 182
    .line 183
    new-instance v1, Lu65;

    .line 184
    .line 185
    const-string v2, "INVERSE_READ_WRITE_ACCESS"

    .line 186
    .line 187
    const/16 v3, 0x10

    .line 188
    .line 189
    move-object/from16 v21, v0

    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    invoke-direct {v1, v2, v3, v0}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 193
    .line 194
    .line 195
    sput-object v1, Lu65;->I:Lu65;

    .line 196
    .line 197
    new-instance v2, Lu65;

    .line 198
    .line 199
    const-string v3, "USE_STATIC_TYPING"

    .line 200
    .line 201
    move-object/from16 v22, v1

    .line 202
    .line 203
    const/16 v1, 0x11

    .line 204
    .line 205
    invoke-direct {v2, v3, v1, v0}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 206
    .line 207
    .line 208
    sput-object v2, Lu65;->J:Lu65;

    .line 209
    .line 210
    new-instance v1, Lu65;

    .line 211
    .line 212
    const-string v3, "USE_BASE_TYPE_AS_DEFAULT_IMPL"

    .line 213
    .line 214
    move-object/from16 v23, v2

    .line 215
    .line 216
    const/16 v2, 0x12

    .line 217
    .line 218
    invoke-direct {v1, v3, v2, v0}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Lu65;

    .line 222
    .line 223
    const-string v2, "INFER_BUILDER_TYPE_BINDINGS"

    .line 224
    .line 225
    const/16 v3, 0x13

    .line 226
    .line 227
    move-object/from16 v24, v1

    .line 228
    .line 229
    const/4 v1, 0x1

    .line 230
    invoke-direct {v0, v2, v3, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Lu65;

    .line 234
    .line 235
    const-string v3, "REQUIRE_TYPE_ID_FOR_SUBTYPES"

    .line 236
    .line 237
    move-object/from16 v25, v0

    .line 238
    .line 239
    const/16 v0, 0x14

    .line 240
    .line 241
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 242
    .line 243
    .line 244
    new-instance v0, Lu65;

    .line 245
    .line 246
    const-string v3, "DEFAULT_VIEW_INCLUSION"

    .line 247
    .line 248
    move-object/from16 v26, v2

    .line 249
    .line 250
    const/16 v2, 0x15

    .line 251
    .line 252
    invoke-direct {v0, v3, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 253
    .line 254
    .line 255
    sput-object v0, Lu65;->K:Lu65;

    .line 256
    .line 257
    new-instance v2, Lu65;

    .line 258
    .line 259
    const-string v3, "SORT_PROPERTIES_ALPHABETICALLY"

    .line 260
    .line 261
    const/16 v1, 0x16

    .line 262
    .line 263
    move-object/from16 v27, v0

    .line 264
    .line 265
    const/4 v0, 0x0

    .line 266
    invoke-direct {v2, v3, v1, v0}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 267
    .line 268
    .line 269
    sput-object v2, Lu65;->L:Lu65;

    .line 270
    .line 271
    new-instance v1, Lu65;

    .line 272
    .line 273
    const-string v3, "SORT_CREATOR_PROPERTIES_FIRST"

    .line 274
    .line 275
    const/16 v0, 0x17

    .line 276
    .line 277
    move-object/from16 v28, v2

    .line 278
    .line 279
    const/4 v2, 0x1

    .line 280
    invoke-direct {v1, v3, v0, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 281
    .line 282
    .line 283
    sput-object v1, Lu65;->M:Lu65;

    .line 284
    .line 285
    new-instance v0, Lu65;

    .line 286
    .line 287
    const-string v2, "SORT_CREATOR_PROPERTIES_BY_DECLARATION_ORDER"

    .line 288
    .line 289
    const/16 v3, 0x18

    .line 290
    .line 291
    move-object/from16 v29, v1

    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    invoke-direct {v0, v2, v3, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 295
    .line 296
    .line 297
    sput-object v0, Lu65;->N:Lu65;

    .line 298
    .line 299
    new-instance v2, Lu65;

    .line 300
    .line 301
    const-string v3, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    .line 302
    .line 303
    move-object/from16 v30, v0

    .line 304
    .line 305
    const/16 v0, 0x19

    .line 306
    .line 307
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 308
    .line 309
    .line 310
    sput-object v2, Lu65;->O:Lu65;

    .line 311
    .line 312
    new-instance v0, Lu65;

    .line 313
    .line 314
    const-string v3, "ACCEPT_CASE_INSENSITIVE_ENUMS"

    .line 315
    .line 316
    move-object/from16 v31, v2

    .line 317
    .line 318
    const/16 v2, 0x1a

    .line 319
    .line 320
    invoke-direct {v0, v3, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 321
    .line 322
    .line 323
    new-instance v2, Lu65;

    .line 324
    .line 325
    const-string v3, "ACCEPT_CASE_INSENSITIVE_VALUES"

    .line 326
    .line 327
    move-object/from16 v32, v0

    .line 328
    .line 329
    const/16 v0, 0x1b

    .line 330
    .line 331
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 332
    .line 333
    .line 334
    sput-object v2, Lu65;->P:Lu65;

    .line 335
    .line 336
    new-instance v0, Lu65;

    .line 337
    .line 338
    const-string v3, "USE_WRAPPER_NAME_AS_PROPERTY_NAME"

    .line 339
    .line 340
    move-object/from16 v33, v2

    .line 341
    .line 342
    const/16 v2, 0x1c

    .line 343
    .line 344
    invoke-direct {v0, v3, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 345
    .line 346
    .line 347
    sput-object v0, Lu65;->Q:Lu65;

    .line 348
    .line 349
    new-instance v2, Lu65;

    .line 350
    .line 351
    const-string v3, "USE_STD_BEAN_NAMING"

    .line 352
    .line 353
    move-object/from16 v34, v0

    .line 354
    .line 355
    const/16 v0, 0x1d

    .line 356
    .line 357
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 358
    .line 359
    .line 360
    sput-object v2, Lu65;->R:Lu65;

    .line 361
    .line 362
    new-instance v0, Lu65;

    .line 363
    .line 364
    const-string v3, "ALLOW_EXPLICIT_PROPERTY_RENAMING"

    .line 365
    .line 366
    move-object/from16 v35, v2

    .line 367
    .line 368
    const/16 v2, 0x1e

    .line 369
    .line 370
    invoke-direct {v0, v3, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 371
    .line 372
    .line 373
    new-instance v2, Lu65;

    .line 374
    .line 375
    const-string v3, "FIX_FIELD_NAME_UPPER_CASE_PREFIX"

    .line 376
    .line 377
    move-object/from16 v36, v0

    .line 378
    .line 379
    const/16 v0, 0x1f

    .line 380
    .line 381
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 382
    .line 383
    .line 384
    sput-object v2, Lu65;->S:Lu65;

    .line 385
    .line 386
    new-instance v0, Lu65;

    .line 387
    .line 388
    const-string v1, "ALLOW_COERCION_OF_SCALARS"

    .line 389
    .line 390
    const/16 v3, 0x20

    .line 391
    .line 392
    move-object/from16 v37, v2

    .line 393
    .line 394
    const/4 v2, 0x1

    .line 395
    invoke-direct {v0, v1, v3, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 396
    .line 397
    .line 398
    new-instance v1, Lu65;

    .line 399
    .line 400
    const-string v3, "IGNORE_DUPLICATE_MODULE_REGISTRATIONS"

    .line 401
    .line 402
    move-object/from16 v16, v0

    .line 403
    .line 404
    const/16 v0, 0x21

    .line 405
    .line 406
    invoke-direct {v1, v3, v0, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 407
    .line 408
    .line 409
    new-instance v0, Lu65;

    .line 410
    .line 411
    const-string v3, "IGNORE_MERGE_FOR_UNMERGEABLE"

    .line 412
    .line 413
    move-object/from16 v38, v1

    .line 414
    .line 415
    const/16 v1, 0x22

    .line 416
    .line 417
    invoke-direct {v0, v3, v1, v2}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Lu65;

    .line 421
    .line 422
    const-string v3, "BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES"

    .line 423
    .line 424
    const/16 v2, 0x23

    .line 425
    .line 426
    move-object/from16 v40, v0

    .line 427
    .line 428
    const/4 v0, 0x0

    .line 429
    invoke-direct {v1, v3, v2, v0}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 430
    .line 431
    .line 432
    sput-object v1, Lu65;->T:Lu65;

    .line 433
    .line 434
    new-instance v0, Lu65;

    .line 435
    .line 436
    const-string v2, "APPLY_DEFAULT_VALUES"

    .line 437
    .line 438
    const/16 v3, 0x24

    .line 439
    .line 440
    move-object/from16 v18, v1

    .line 441
    .line 442
    const/4 v1, 0x1

    .line 443
    invoke-direct {v0, v2, v3, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 444
    .line 445
    .line 446
    new-instance v2, Lu65;

    .line 447
    .line 448
    const-string v3, "REQUIRE_HANDLERS_FOR_JAVA8_OPTIONALS"

    .line 449
    .line 450
    move-object/from16 v39, v0

    .line 451
    .line 452
    const/16 v0, 0x25

    .line 453
    .line 454
    invoke-direct {v2, v3, v0, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 455
    .line 456
    .line 457
    sput-object v2, Lu65;->U:Lu65;

    .line 458
    .line 459
    new-instance v0, Lu65;

    .line 460
    .line 461
    const-string v3, "REQUIRE_HANDLERS_FOR_JAVA8_TIMES"

    .line 462
    .line 463
    move-object/from16 v41, v2

    .line 464
    .line 465
    const/16 v2, 0x26

    .line 466
    .line 467
    invoke-direct {v0, v3, v2, v1}, Lu65;-><init>(Ljava/lang/String;IZ)V

    .line 468
    .line 469
    .line 470
    sput-object v0, Lu65;->V:Lu65;

    .line 471
    .line 472
    move-object/from16 v1, v33

    .line 473
    .line 474
    move-object/from16 v33, v16

    .line 475
    .line 476
    move-object/from16 v16, v21

    .line 477
    .line 478
    move-object/from16 v21, v26

    .line 479
    .line 480
    move-object/from16 v26, v31

    .line 481
    .line 482
    move-object/from16 v31, v36

    .line 483
    .line 484
    move-object/from16 v36, v18

    .line 485
    .line 486
    move-object/from16 v18, v23

    .line 487
    .line 488
    move-object/from16 v23, v28

    .line 489
    .line 490
    move-object/from16 v28, v1

    .line 491
    .line 492
    move-object/from16 v2, v17

    .line 493
    .line 494
    move-object/from16 v1, v19

    .line 495
    .line 496
    move-object/from16 v3, v20

    .line 497
    .line 498
    move-object/from16 v17, v22

    .line 499
    .line 500
    move-object/from16 v19, v24

    .line 501
    .line 502
    move-object/from16 v20, v25

    .line 503
    .line 504
    move-object/from16 v22, v27

    .line 505
    .line 506
    move-object/from16 v24, v29

    .line 507
    .line 508
    move-object/from16 v25, v30

    .line 509
    .line 510
    move-object/from16 v27, v32

    .line 511
    .line 512
    move-object/from16 v29, v34

    .line 513
    .line 514
    move-object/from16 v30, v35

    .line 515
    .line 516
    move-object/from16 v32, v37

    .line 517
    .line 518
    move-object/from16 v34, v38

    .line 519
    .line 520
    move-object/from16 v37, v39

    .line 521
    .line 522
    move-object/from16 v35, v40

    .line 523
    .line 524
    move-object/from16 v38, v41

    .line 525
    .line 526
    move-object/from16 v39, v0

    .line 527
    .line 528
    filled-new-array/range {v1 .. v39}, [Lu65;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    sput-object v0, Lu65;->W:[Lu65;

    .line 533
    .line 534
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lu65;->a:Z

    .line 5
    .line 6
    const-wide/16 p1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    shl-long/2addr p1, p3

    .line 13
    iput-wide p1, p0, Lu65;->b:J

    .line 14
    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu65;
    .locals 1

    .line 1
    const-class v0, Lu65;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu65;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lu65;
    .locals 1

    .line 1
    sget-object v0, Lu65;->W:[Lu65;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lu65;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lu65;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lu65;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lu65;->b:J

    .line 2
    .line 3
    long-to-int p0, v0

    .line 4
    return p0
.end method
