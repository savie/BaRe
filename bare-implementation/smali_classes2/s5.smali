.class public final enum Ls5;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lsx2;


# static fields
.field public static final enum b:Ls5;

.field public static final enum c:Ls5;

.field public static final enum d:Ls5;

.field public static final enum e:Ls5;

.field public static final enum f:Ls5;

.field public static final enum k:Ls5;

.field public static final enum n:Ls5;

.field public static final enum p:Ls5;

.field public static final enum q:Ls5;

.field public static final synthetic r:[Ls5;


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v1, Ls5;

    .line 2
    .line 3
    const-string v0, "FILE_READ_DATA"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v0, v2, v3, v4}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ls5;

    .line 12
    .line 13
    const-string v4, "FILE_WRITE_DATA"

    .line 14
    .line 15
    const-wide/16 v5, 0x2

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    invoke-direct {v0, v4, v5, v6, v7}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 19
    .line 20
    .line 21
    new-instance v4, Ls5;

    .line 22
    .line 23
    const-string v7, "FILE_APPEND_DATA"

    .line 24
    .line 25
    const-wide/16 v8, 0x4

    .line 26
    .line 27
    const/4 v10, 0x2

    .line 28
    invoke-direct {v4, v7, v8, v9, v10}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 29
    .line 30
    .line 31
    move-object v7, v4

    .line 32
    new-instance v4, Ls5;

    .line 33
    .line 34
    const-string v10, "FILE_EXECUTE"

    .line 35
    .line 36
    const-wide/16 v11, 0x20

    .line 37
    .line 38
    const/4 v13, 0x3

    .line 39
    invoke-direct {v4, v10, v11, v12, v13}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 40
    .line 41
    .line 42
    new-instance v10, Ls5;

    .line 43
    .line 44
    const-string v13, "FILE_LIST_DIRECTORY"

    .line 45
    .line 46
    const/4 v14, 0x4

    .line 47
    invoke-direct {v10, v13, v2, v3, v14}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 48
    .line 49
    .line 50
    sput-object v10, Ls5;->b:Ls5;

    .line 51
    .line 52
    new-instance v13, Ls5;

    .line 53
    .line 54
    const-string v14, "FILE_ADD_FILE"

    .line 55
    .line 56
    const/4 v15, 0x5

    .line 57
    invoke-direct {v13, v14, v5, v6, v15}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 58
    .line 59
    .line 60
    move-object v14, v7

    .line 61
    new-instance v7, Ls5;

    .line 62
    .line 63
    const-string v15, "FILE_ADD_SUBDIRECTORY"

    .line 64
    .line 65
    const/4 v5, 0x6

    .line 66
    invoke-direct {v7, v15, v8, v9, v5}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 67
    .line 68
    .line 69
    sput-object v7, Ls5;->c:Ls5;

    .line 70
    .line 71
    new-instance v8, Ls5;

    .line 72
    .line 73
    const-string v5, "FILE_TRAVERSE"

    .line 74
    .line 75
    const/4 v6, 0x7

    .line 76
    invoke-direct {v8, v5, v11, v12, v6}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 77
    .line 78
    .line 79
    new-instance v9, Ls5;

    .line 80
    .line 81
    const/16 v5, 0x8

    .line 82
    .line 83
    const-wide/16 v11, 0x40

    .line 84
    .line 85
    const-string v6, "FILE_DELETE_CHILD"

    .line 86
    .line 87
    invoke-direct {v9, v6, v11, v12, v5}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 88
    .line 89
    .line 90
    move-object v5, v10

    .line 91
    new-instance v10, Ls5;

    .line 92
    .line 93
    const/16 v6, 0x9

    .line 94
    .line 95
    const-wide/16 v11, 0x80

    .line 96
    .line 97
    const-string v15, "FILE_READ_ATTRIBUTES"

    .line 98
    .line 99
    invoke-direct {v10, v15, v11, v12, v6}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 100
    .line 101
    .line 102
    sput-object v10, Ls5;->d:Ls5;

    .line 103
    .line 104
    new-instance v11, Ls5;

    .line 105
    .line 106
    const-string v6, "FILE_WRITE_ATTRIBUTES"

    .line 107
    .line 108
    const-wide/16 v2, 0x100

    .line 109
    .line 110
    const/16 v12, 0xa

    .line 111
    .line 112
    invoke-direct {v11, v6, v2, v3, v12}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 113
    .line 114
    .line 115
    sput-object v11, Ls5;->e:Ls5;

    .line 116
    .line 117
    new-instance v12, Ls5;

    .line 118
    .line 119
    const-string v6, "FILE_READ_EA"

    .line 120
    .line 121
    const-wide/16 v2, 0x8

    .line 122
    .line 123
    const/16 v15, 0xb

    .line 124
    .line 125
    invoke-direct {v12, v6, v2, v3, v15}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 126
    .line 127
    .line 128
    sput-object v12, Ls5;->f:Ls5;

    .line 129
    .line 130
    move-object v6, v13

    .line 131
    new-instance v13, Ls5;

    .line 132
    .line 133
    const-string v15, "FILE_WRITE_EA"

    .line 134
    .line 135
    const-wide/16 v2, 0x10

    .line 136
    .line 137
    move-object/from16 v26, v0

    .line 138
    .line 139
    const/16 v0, 0xc

    .line 140
    .line 141
    invoke-direct {v13, v15, v2, v3, v0}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 142
    .line 143
    .line 144
    move-object v0, v14

    .line 145
    new-instance v14, Ls5;

    .line 146
    .line 147
    const/16 v15, 0xd

    .line 148
    .line 149
    const-wide/32 v2, 0x10000

    .line 150
    .line 151
    .line 152
    move-object/from16 v29, v0

    .line 153
    .line 154
    const-string v0, "DELETE"

    .line 155
    .line 156
    invoke-direct {v14, v0, v2, v3, v15}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 157
    .line 158
    .line 159
    sput-object v14, Ls5;->k:Ls5;

    .line 160
    .line 161
    new-instance v15, Ls5;

    .line 162
    .line 163
    const/16 v0, 0xe

    .line 164
    .line 165
    const-wide/32 v2, 0x20000

    .line 166
    .line 167
    .line 168
    move-object/from16 v30, v1

    .line 169
    .line 170
    const-string v1, "READ_CONTROL"

    .line 171
    .line 172
    invoke-direct {v15, v1, v2, v3, v0}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Ls5;

    .line 176
    .line 177
    const/16 v1, 0xf

    .line 178
    .line 179
    const-wide/32 v2, 0x40000

    .line 180
    .line 181
    .line 182
    move-object/from16 v31, v4

    .line 183
    .line 184
    const-string v4, "WRITE_DAC"

    .line 185
    .line 186
    invoke-direct {v0, v4, v2, v3, v1}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Ls5;

    .line 190
    .line 191
    const/16 v2, 0x10

    .line 192
    .line 193
    const-wide/32 v3, 0x80000

    .line 194
    .line 195
    .line 196
    move-object/from16 v32, v0

    .line 197
    .line 198
    const-string v0, "WRITE_OWNER"

    .line 199
    .line 200
    invoke-direct {v1, v0, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Ls5;

    .line 204
    .line 205
    const/16 v2, 0x11

    .line 206
    .line 207
    const-wide/32 v3, 0x100000

    .line 208
    .line 209
    .line 210
    move-object/from16 v33, v1

    .line 211
    .line 212
    const-string v1, "SYNCHRONIZE"

    .line 213
    .line 214
    invoke-direct {v0, v1, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 215
    .line 216
    .line 217
    new-instance v1, Ls5;

    .line 218
    .line 219
    const/16 v2, 0x12

    .line 220
    .line 221
    const-wide/32 v3, 0x1000000

    .line 222
    .line 223
    .line 224
    move-object/from16 v34, v0

    .line 225
    .line 226
    const-string v0, "ACCESS_SYSTEM_SECURITY"

    .line 227
    .line 228
    invoke-direct {v1, v0, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Ls5;

    .line 232
    .line 233
    const/16 v2, 0x13

    .line 234
    .line 235
    const-wide/32 v3, 0x2000000

    .line 236
    .line 237
    .line 238
    move-object/from16 v35, v1

    .line 239
    .line 240
    const-string v1, "MAXIMUM_ALLOWED"

    .line 241
    .line 242
    invoke-direct {v0, v1, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 243
    .line 244
    .line 245
    sput-object v0, Ls5;->n:Ls5;

    .line 246
    .line 247
    new-instance v1, Ls5;

    .line 248
    .line 249
    const/16 v2, 0x14

    .line 250
    .line 251
    const-wide/32 v3, 0x10000000

    .line 252
    .line 253
    .line 254
    move-object/from16 v36, v0

    .line 255
    .line 256
    const-string v0, "GENERIC_ALL"

    .line 257
    .line 258
    invoke-direct {v1, v0, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Ls5;

    .line 262
    .line 263
    const/16 v2, 0x15

    .line 264
    .line 265
    const-wide/32 v3, 0x20000000

    .line 266
    .line 267
    .line 268
    move-object/from16 v37, v1

    .line 269
    .line 270
    const-string v1, "GENERIC_EXECUTE"

    .line 271
    .line 272
    invoke-direct {v0, v1, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Ls5;

    .line 276
    .line 277
    const/16 v2, 0x16

    .line 278
    .line 279
    const-wide/32 v3, 0x40000000

    .line 280
    .line 281
    .line 282
    move-object/from16 v38, v0

    .line 283
    .line 284
    const-string v0, "GENERIC_WRITE"

    .line 285
    .line 286
    invoke-direct {v1, v0, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 287
    .line 288
    .line 289
    sput-object v1, Ls5;->p:Ls5;

    .line 290
    .line 291
    new-instance v0, Ls5;

    .line 292
    .line 293
    const/16 v2, 0x17

    .line 294
    .line 295
    const-wide v3, 0x80000000L

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    move-object/from16 v39, v1

    .line 301
    .line 302
    const-string v1, "GENERIC_READ"

    .line 303
    .line 304
    invoke-direct {v0, v1, v3, v4, v2}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 305
    .line 306
    .line 307
    sput-object v0, Ls5;->q:Ls5;

    .line 308
    .line 309
    new-instance v1, Ls5;

    .line 310
    .line 311
    const-string v2, "ADS_RIGHT_DS_CONTROL_ACCESS"

    .line 312
    .line 313
    const/16 v3, 0x18

    .line 314
    .line 315
    move-object/from16 v40, v5

    .line 316
    .line 317
    const-wide/16 v4, 0x100

    .line 318
    .line 319
    invoke-direct {v1, v2, v4, v5, v3}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 320
    .line 321
    .line 322
    new-instance v2, Ls5;

    .line 323
    .line 324
    const-string v3, "ADS_RIGHT_DS_CREATE_CHILD"

    .line 325
    .line 326
    const/16 v4, 0x19

    .line 327
    .line 328
    move-object v5, v0

    .line 329
    move-object/from16 v22, v1

    .line 330
    .line 331
    const-wide/16 v0, 0x1

    .line 332
    .line 333
    invoke-direct {v2, v3, v0, v1, v4}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Ls5;

    .line 337
    .line 338
    const-string v1, "ADS_RIGHT_DS_DELETE_CHILD"

    .line 339
    .line 340
    const/16 v3, 0x1a

    .line 341
    .line 342
    move-object/from16 v20, v5

    .line 343
    .line 344
    const-wide/16 v4, 0x2

    .line 345
    .line 346
    invoke-direct {v0, v1, v4, v5, v3}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 347
    .line 348
    .line 349
    new-instance v1, Ls5;

    .line 350
    .line 351
    const-string v3, "ADS_RIGHT_DS_READ_PROP"

    .line 352
    .line 353
    const/16 v4, 0x1b

    .line 354
    .line 355
    move-object/from16 v16, v6

    .line 356
    .line 357
    const-wide/16 v5, 0x10

    .line 358
    .line 359
    invoke-direct {v1, v3, v5, v6, v4}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 360
    .line 361
    .line 362
    new-instance v3, Ls5;

    .line 363
    .line 364
    const-string v4, "ADS_RIGHT_DS_WRITE_PROP"

    .line 365
    .line 366
    const/16 v5, 0x1c

    .line 367
    .line 368
    move-object/from16 v27, v0

    .line 369
    .line 370
    move-object/from16 v28, v1

    .line 371
    .line 372
    const-wide/16 v0, 0x20

    .line 373
    .line 374
    invoke-direct {v3, v4, v0, v1, v5}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 375
    .line 376
    .line 377
    new-instance v0, Ls5;

    .line 378
    .line 379
    const-string v1, "ADS_RIGHT_DS_SELF"

    .line 380
    .line 381
    const/16 v4, 0x1d

    .line 382
    .line 383
    const-wide/16 v5, 0x8

    .line 384
    .line 385
    invoke-direct {v0, v1, v5, v6, v4}, Ls5;-><init>(Ljava/lang/String;JI)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v1, v26

    .line 389
    .line 390
    move-object/from16 v26, v2

    .line 391
    .line 392
    move-object v2, v1

    .line 393
    move-object/from16 v1, v29

    .line 394
    .line 395
    move-object/from16 v29, v3

    .line 396
    .line 397
    move-object v3, v1

    .line 398
    move-object/from16 v6, v16

    .line 399
    .line 400
    move-object/from16 v24, v20

    .line 401
    .line 402
    move-object/from16 v25, v22

    .line 403
    .line 404
    move-object/from16 v1, v30

    .line 405
    .line 406
    move-object/from16 v4, v31

    .line 407
    .line 408
    move-object/from16 v16, v32

    .line 409
    .line 410
    move-object/from16 v17, v33

    .line 411
    .line 412
    move-object/from16 v18, v34

    .line 413
    .line 414
    move-object/from16 v19, v35

    .line 415
    .line 416
    move-object/from16 v20, v36

    .line 417
    .line 418
    move-object/from16 v21, v37

    .line 419
    .line 420
    move-object/from16 v22, v38

    .line 421
    .line 422
    move-object/from16 v23, v39

    .line 423
    .line 424
    move-object/from16 v5, v40

    .line 425
    .line 426
    move-object/from16 v30, v0

    .line 427
    .line 428
    filled-new-array/range {v1 .. v30}, [Ls5;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    sput-object v0, Ls5;->r:[Ls5;

    .line 433
    .line 434
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Ls5;->a:J

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls5;
    .locals 1

    .line 1
    const-class v0, Ls5;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ls5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ls5;
    .locals 1

    .line 1
    sget-object v0, Ls5;->r:[Ls5;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ls5;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ls5;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ls5;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
