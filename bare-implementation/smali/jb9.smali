.class public abstract Ljb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lom8;


# static fields
.field public static G:[Ll22; = null

.field public static H:[I = null

.field public static final I:Lb05;

.field public static final J:Ly53;

.field public static final K:Ly53;

.field public static final L:[Ly53;

.field public static a:Landroid/os/UserManager; = null

.field public static volatile b:Z = false

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final k:[I

.field public static final n:[I

.field public static final p:[I

.field public static final q:[I

.field public static final r:[I

.field public static final t:[I

.field public static final x:Ljava/lang/Object;

.field public static y:[Ll22;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 15

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Ljb9;->c:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Ljb9;->d:[I

    .line 16
    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v0, Ljb9;->e:[I

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    new-array v1, v0, [I

    .line 27
    .line 28
    fill-array-data v1, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v1, Ljb9;->f:[I

    .line 32
    .line 33
    new-array v1, v0, [I

    .line 34
    .line 35
    fill-array-data v1, :array_4

    .line 36
    .line 37
    .line 38
    sput-object v1, Ljb9;->k:[I

    .line 39
    .line 40
    new-array v1, v0, [I

    .line 41
    .line 42
    fill-array-data v1, :array_5

    .line 43
    .line 44
    .line 45
    sput-object v1, Ljb9;->n:[I

    .line 46
    .line 47
    new-array v1, v0, [I

    .line 48
    .line 49
    fill-array-data v1, :array_6

    .line 50
    .line 51
    .line 52
    sput-object v1, Ljb9;->p:[I

    .line 53
    .line 54
    new-array v1, v0, [I

    .line 55
    .line 56
    fill-array-data v1, :array_7

    .line 57
    .line 58
    .line 59
    sput-object v1, Ljb9;->q:[I

    .line 60
    .line 61
    new-array v1, v0, [I

    .line 62
    .line 63
    fill-array-data v1, :array_8

    .line 64
    .line 65
    .line 66
    sput-object v1, Ljb9;->r:[I

    .line 67
    .line 68
    new-array v0, v0, [I

    .line 69
    .line 70
    fill-array-data v0, :array_9

    .line 71
    .line 72
    .line 73
    sput-object v0, Ljb9;->t:[I

    .line 74
    .line 75
    new-instance v0, Ljava/lang/Object;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Ljb9;->x:Ljava/lang/Object;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    sput-object v0, Ljb9;->y:[Ll22;

    .line 84
    .line 85
    sput-object v0, Ljb9;->G:[Ll22;

    .line 86
    .line 87
    sput-object v0, Ljb9;->H:[I

    .line 88
    .line 89
    new-instance v0, Lb05;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Ljb9;->I:Lb05;

    .line 95
    .line 96
    new-instance v1, Ly53;

    .line 97
    .line 98
    const-string v0, "auth_blockstore"

    .line 99
    .line 100
    const-wide/16 v2, 0x3

    .line 101
    .line 102
    invoke-direct {v1, v0, v2, v3}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    move-wide v3, v2

    .line 106
    new-instance v2, Ly53;

    .line 107
    .line 108
    const-string v0, "blockstore_data_transfer"

    .line 109
    .line 110
    const-wide/16 v5, 0x1

    .line 111
    .line 112
    invoke-direct {v2, v0, v5, v6}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    move-wide v7, v3

    .line 116
    new-instance v3, Ly53;

    .line 117
    .line 118
    const-string v0, "blockstore_notify_app_restore"

    .line 119
    .line 120
    invoke-direct {v3, v0, v5, v6}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 121
    .line 122
    .line 123
    new-instance v4, Ly53;

    .line 124
    .line 125
    const-string v0, "blockstore_store_bytes_with_options"

    .line 126
    .line 127
    const-wide/16 v9, 0x2

    .line 128
    .line 129
    invoke-direct {v4, v0, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    move-wide v11, v5

    .line 133
    new-instance v5, Ly53;

    .line 134
    .line 135
    const-string v0, "blockstore_is_end_to_end_encryption_available"

    .line 136
    .line 137
    invoke-direct {v5, v0, v11, v12}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 138
    .line 139
    .line 140
    new-instance v6, Ly53;

    .line 141
    .line 142
    const-string v0, "blockstore_enable_cloud_backup"

    .line 143
    .line 144
    invoke-direct {v6, v0, v11, v12}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 145
    .line 146
    .line 147
    move-wide v13, v7

    .line 148
    new-instance v7, Ly53;

    .line 149
    .line 150
    const-string v0, "blockstore_delete_bytes"

    .line 151
    .line 152
    invoke-direct {v7, v0, v9, v10}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 153
    .line 154
    .line 155
    new-instance v8, Ly53;

    .line 156
    .line 157
    const-string v0, "blockstore_retrieve_bytes_with_options"

    .line 158
    .line 159
    invoke-direct {v8, v0, v13, v14}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 160
    .line 161
    .line 162
    new-instance v9, Ly53;

    .line 163
    .line 164
    const-string v0, "auth_clear_restore_credential"

    .line 165
    .line 166
    invoke-direct {v9, v0, v11, v12}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    sput-object v9, Ljb9;->J:Ly53;

    .line 170
    .line 171
    new-instance v10, Ly53;

    .line 172
    .line 173
    const-string v0, "auth_create_restore_credential"

    .line 174
    .line 175
    invoke-direct {v10, v0, v11, v12}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 176
    .line 177
    .line 178
    move-wide v12, v11

    .line 179
    new-instance v11, Ly53;

    .line 180
    .line 181
    const-string v0, "auth_get_restore_credential"

    .line 182
    .line 183
    invoke-direct {v11, v0, v12, v13}, Ly53;-><init>(Ljava/lang/String;J)V

    .line 184
    .line 185
    .line 186
    sput-object v11, Ljb9;->K:Ly53;

    .line 187
    .line 188
    filled-new-array/range {v1 .. v11}, [Ly53;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, Ljb9;->L:[Ly53;

    .line 193
    .line 194
    return-void

    .line 195
    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_1
    .array-data 4
        0x706a17c7
        0x4fd84d3d
        0x760b3cba
        0xf67100d
        -0x5acdfd6
        -0x3933c6d4
        0x77fdc74e
        0x7a03ac92
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_2
    .array-data 4
        -0x706a17da
        -0x4fd84d3e
        -0x760b3cbb
        -0xf67100e
        0x5acdfd5
        0x3933c6d3
        -0x77fdc74f
        0x5fc536d
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    :array_3
    .array-data 4
        0x325d51a
        0x18b5823
        0x7b2c95
        0x304a92d
        0xd2598e
        0x1d6dc5c
        0x1388c7f
        0x13fec0a
        0x29e6b72
        0x42d26d
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_4
    .array-data 4
        0x2666658
        0x1999999
        0x666666
        0x3333333
        0xcccccc
        0x2666666
        0x1999999
        0x666666
        0x3333333
        0xcccccc
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    :array_5
    .array-data 4
        0xb7e824
        0x11eb98
        0x3e5fc8
        0x24e1739
        0x131cd0b
        0x14e29a0
        0x34e6138
        0x132c952
        0x3f9e22f
        0x984f5f
    .end array-data

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :array_6
    .array-data 4
        0x3f5a66b
        0x2af4452
        0x49e5bb
        0xf28d26
        0x121a17c
        0x2c29c3a
        0x47ad89
        0x87d95f
        0x332936e
        0xbe5933
    .end array-data

    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :array_7
    .array-data 4
        0x35978a3
        0x2d37284
        0x18ab75e
        0x26a0a0e
        0xe014
        0x379e898
        0x1d01e5d
        0x1e738cc
        0x3715b7f
        0xa406d9
    .end array-data

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    :array_8
    .array-data 4
        0x2b2f159
        0x1a6e509
        0x1156ebd
        0xd4141d
        0x1c029
        0x2f3d130
        0x3a03cbb
        0x1ce7198
        0x2e2b6ff
        0x480db3
    .end array-data

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_9
    .array-data 4
        0x165e2b2
        0x34dca13
        0x2add7a
        0x1a8283b
        0x38052
        0x1e7a260
        0x3407977
        0x19ce331
        0x1c56dff
        0x901b67
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static E([BLke;B[BI)Z
    .locals 73

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Liz1;->c:[I

    const/4 v3, 0x0

    if-nez p2, :cond_24

    const/16 v4, 0x20

    .line 1
    new-array v5, v4, [B

    invoke-static {v0, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v4, [B

    invoke-static {v0, v4, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    .line 2
    invoke-static {v5, v0}, Lg67;->l([BI)I

    move-result v7

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    sget-object v9, Ljb9;->c:[I

    const/4 v10, 0x7

    aget v11, v9, v10

    const/high16 v12, -0x80000000

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-ge v7, v11, :cond_0

    move v7, v14

    goto :goto_3

    :cond_0
    new-array v7, v13, [I

    invoke-static {v5, v13, v7}, Lg67;->m([BI[I)V

    aget v11, v7, v10

    and-int/2addr v8, v11

    aput v8, v7, v10

    move v8, v10

    :goto_0
    if-ltz v8, :cond_3

    .line 3
    aget v11, v7, v8

    xor-int/2addr v11, v12

    aget v15, v9, v8

    xor-int/2addr v15, v12

    if-ge v11, v15, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    if-le v11, v15, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v7, v14

    :goto_2
    xor-int/2addr v7, v14

    :goto_3
    if-nez v7, :cond_5

    :cond_4
    :goto_4
    move/from16 v26, v3

    goto/16 :goto_17

    .line 4
    :cond_5
    new-array v7, v13, [I

    .line 5
    invoke-static {v6, v7}, Liz1;->i([B[I)V

    move v6, v10

    :goto_5
    if-ltz v6, :cond_4

    .line 6
    aget v8, v7, v6

    xor-int/2addr v8, v12

    aget v9, v2, v6

    xor-int/2addr v9, v12

    if-ge v8, v9, :cond_22

    .line 7
    new-instance v11, Lix0;

    const/4 v15, 0x2

    invoke-direct {v11, v15}, Lix0;-><init>(I)V

    invoke-static {v5, v14, v11}, Ljb9;->v([BZLix0;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance v6, Lix0;

    invoke-direct {v6, v15}, Lix0;-><init>(I)V

    iget-object v8, v1, Lke;->b:Ljava/lang/Object;

    check-cast v8, [I

    iget-object v9, v6, Lix0;->b:Ljava/lang/Object;

    check-cast v9, [I

    invoke-static {v8, v9}, Lnc8;->L([I[I)V

    iget-object v8, v1, Lke;->b:Ljava/lang/Object;

    check-cast v8, [I

    iget-object v9, v6, Lix0;->c:Ljava/lang/Object;

    check-cast v9, [I

    move/from16 p0, v12

    const/16 v12, 0xa

    invoke-static {v12, v3, v8, v9}, Lnc8;->n(II[I[I)V

    new-array v8, v4, [B

    invoke-static {v1, v8}, Ljb9;->w(Lke;[B)V

    .line 8
    new-instance v1, Lkr6;

    invoke-direct {v1}, Lkr6;-><init>()V

    const/16 v9, 0x40

    move/from16 p2, v14

    .line 9
    new-array v14, v9, [B

    invoke-virtual {v1, v5, v3, v4}, Lq15;->update([BII)V

    invoke-virtual {v1, v8, v3, v4}, Lq15;->update([BII)V

    move-object/from16 v5, p3

    move/from16 v8, p4

    invoke-virtual {v1, v5, v3, v8}, Lq15;->update([BII)V

    invoke-virtual {v1, v14, v3}, Lkr6;->doFinal([BI)I

    invoke-static {v14}, Liz1;->y([B)[B

    move-result-object v1

    new-array v14, v13, [I

    invoke-static {v1, v14}, Liz1;->i([B[I)V

    const/4 v1, 0x4

    new-array v5, v1, [I

    new-array v8, v1, [I

    move/from16 v16, v15

    const/16 v15, 0x10

    move/from16 v17, v12

    .line 10
    new-array v12, v15, [I

    sget-object v9, Liz1;->d:[I

    invoke-static {v9, v3, v12, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v9, v15, [I

    move/from16 v18, v4

    .line 11
    aget v4, v14, v3

    move/from16 v19, v10

    move-object/from16 v20, v11

    int-to-long v10, v4

    const-wide v21, 0xffffffffL

    and-long v10, v10, v21

    move/from16 v24, v3

    move/from16 v23, v15

    move/from16 v4, v19

    :goto_6
    add-int/lit8 v25, v4, -0x1

    aget v4, v14, v4

    move/from16 v26, v3

    int-to-long v3, v4

    and-long v3, v3, v21

    mul-long/2addr v3, v3

    add-int/lit8 v27, v23, -0x1

    shl-int/lit8 v24, v24, 0x1f

    const/16 v28, 0x21

    move/from16 p3, v1

    ushr-long v0, v3, v28

    long-to-int v0, v0

    or-int v0, v24, v0

    aput v0, v9, v27

    add-int/lit8 v23, v23, -0x2

    ushr-long v0, v3, p2

    long-to-int v0, v0

    aput v0, v9, v23

    long-to-int v0, v3

    if-gtz v25, :cond_21

    mul-long v3, v10, v10

    shl-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    and-long v0, v0, v21

    ushr-long v23, v3, v28

    or-long v0, v0, v23

    move/from16 v24, v13

    long-to-int v13, v3

    aput v13, v9, v26

    ushr-long v3, v3, v18

    long-to-int v3, v3

    and-int/lit8 v3, v3, 0x1

    aget v4, v14, p2

    move-wide/from16 v27, v0

    int-to-long v0, v4

    and-long v32, v0, v21

    aget v0, v9, v16

    int-to-long v0, v0

    and-long v0, v0, v21

    mul-long v30, v32, v10

    move-wide/from16 v34, v0

    add-long v0, v30, v27

    long-to-int v4, v0

    shl-int/lit8 v23, v4, 0x1

    or-int v3, v23, v3

    aput v3, v9, p2

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v0, v0, v18

    add-long v0, v34, v0

    aget v4, v14, v16

    move-wide/from16 v27, v0

    int-to-long v0, v4

    and-long v36, v0, v21

    const/4 v0, 0x3

    aget v1, v9, v0

    move/from16 p4, v0

    int-to-long v0, v1

    and-long v0, v0, v21

    aget v4, v9, p3

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    mul-long v34, v36, v10

    move-wide/from16 v38, v0

    add-long v0, v34, v27

    long-to-int v4, v0

    shl-int/lit8 v23, v4, 0x1

    or-int v3, v23, v3

    aput v3, v9, v16

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v0, v18

    move-wide/from16 v71, v36

    move-wide/from16 v36, v30

    move-wide/from16 v30, v71

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    move-wide/from16 v27, v30

    ushr-long v30, v0, v18

    add-long v30, v38, v30

    and-long v0, v0, v21

    aget v4, v14, p4

    move-wide/from16 v34, v0

    int-to-long v0, v4

    and-long v38, v0, v21

    const/4 v0, 0x5

    aget v1, v9, v0

    move v4, v0

    int-to-long v0, v1

    and-long v0, v0, v21

    ushr-long v36, v30, v18

    add-long v0, v0, v36

    and-long v36, v30, v21

    move/from16 v23, v4

    const/16 v25, 0x6

    aget v4, v9, v25

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    ushr-long v40, v30, v18

    add-long v0, v0, v40

    and-long v40, v30, v21

    mul-long v30, v38, v10

    move-wide/from16 v42, v0

    add-long v0, v30, v34

    long-to-int v4, v0

    shl-int/lit8 v30, v4, 0x1

    or-int v3, v30, v3

    aput v3, v9, p4

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v0, v18

    move-wide/from16 v30, v38

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    ushr-long v30, v0, v18

    move-wide/from16 v36, v27

    move-wide/from16 v34, v38

    move-wide/from16 v38, v30

    invoke-static/range {v34 .. v41}, Ldj7;->d(JJJJ)J

    move-result-wide v27

    move-wide/from16 v44, v34

    move-wide/from16 v38, v36

    and-long v0, v0, v21

    ushr-long v30, v27, v18

    add-long v30, v42, v30

    and-long v36, v27, v21

    aget v4, v14, p3

    move-wide/from16 v27, v0

    int-to-long v0, v4

    and-long v48, v0, v21

    aget v0, v9, v19

    int-to-long v0, v0

    and-long v0, v0, v21

    ushr-long v34, v30, v18

    add-long v0, v0, v34

    and-long v40, v30, v21

    aget v4, v9, v24

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    ushr-long v34, v30, v18

    add-long v0, v0, v34

    and-long v42, v30, v21

    mul-long v30, v48, v10

    move-wide/from16 v46, v0

    add-long v0, v30, v27

    long-to-int v4, v0

    shl-int/lit8 v27, v4, 0x1

    or-int v3, v27, v3

    aput v3, v9, p3

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v0, v18

    move-wide/from16 v30, v48

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    move-wide/from16 v36, v38

    ushr-long v38, v0, v18

    move-wide/from16 v34, v48

    invoke-static/range {v34 .. v41}, Ldj7;->d(JJJJ)J

    move-result-wide v27

    move-wide/from16 v30, v34

    move-wide/from16 v48, v36

    and-long v0, v0, v21

    ushr-long v40, v27, v18

    move-wide/from16 v36, v30

    move-wide/from16 v38, v44

    invoke-static/range {v36 .. v43}, Ldj7;->d(JJJJ)J

    move-result-wide v30

    move-wide/from16 v38, v48

    move-wide/from16 v48, v36

    and-long v36, v27, v21

    ushr-long v27, v30, v18

    add-long v27, v46, v27

    and-long v40, v30, v21

    aget v4, v14, v23

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v52, v0, v21

    const/16 v0, 0x9

    aget v1, v9, v0

    move v4, v0

    int-to-long v0, v1

    and-long v0, v0, v21

    ushr-long v34, v27, v18

    add-long v0, v0, v34

    and-long v42, v27, v21

    move/from16 v27, v4

    aget v4, v9, v17

    move-wide/from16 v34, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    ushr-long v46, v34, v18

    add-long v0, v0, v46

    and-long v46, v34, v21

    mul-long v34, v52, v10

    move-wide/from16 v54, v0

    add-long v0, v34, v30

    long-to-int v4, v0

    shl-int/lit8 v28, v4, 0x1

    or-int v3, v28, v3

    aput v3, v9, v23

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v0, v18

    move-wide/from16 v30, v52

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    move-wide/from16 v36, v38

    ushr-long v38, v0, v18

    move-wide/from16 v34, v52

    invoke-static/range {v34 .. v41}, Ldj7;->d(JJJJ)J

    move-result-wide v30

    move-wide/from16 v56, v36

    and-long v0, v0, v21

    ushr-long v40, v30, v18

    move-wide/from16 v38, v44

    move-wide/from16 v36, v52

    invoke-static/range {v36 .. v43}, Ldj7;->d(JJJJ)J

    move-result-wide v34

    and-long v36, v30, v21

    ushr-long v50, v34, v18

    move-wide/from16 v71, v52

    move-wide/from16 v52, v46

    move-wide/from16 v46, v71

    invoke-static/range {v46 .. v53}, Ldj7;->d(JJJJ)J

    move-result-wide v30

    move-wide/from16 v58, v46

    and-long v40, v34, v21

    ushr-long v34, v30, v18

    add-long v34, v54, v34

    and-long v42, v30, v21

    aget v4, v14, v25

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v46, v0, v21

    const/16 v0, 0xb

    aget v1, v9, v0

    move v4, v0

    int-to-long v0, v1

    and-long v0, v0, v21

    ushr-long v38, v34, v18

    add-long v0, v0, v38

    and-long v52, v34, v21

    move/from16 v28, v4

    const/16 v68, 0xc

    aget v4, v9, v68

    move-wide/from16 v34, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    ushr-long v38, v34, v18

    add-long v0, v0, v38

    and-long v54, v34, v21

    mul-long v34, v46, v10

    move-wide/from16 v60, v0

    add-long v0, v34, v30

    long-to-int v4, v0

    shl-int/lit8 v30, v4, 0x1

    or-int v3, v30, v3

    aput v3, v9, v25

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v0, v18

    move-wide/from16 v30, v46

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    ushr-long v38, v0, v18

    move-wide/from16 v34, v30

    move-wide/from16 v36, v56

    invoke-static/range {v34 .. v41}, Ldj7;->d(JJJJ)J

    move-result-wide v30

    move-wide/from16 v46, v34

    move-wide/from16 v62, v36

    and-long v0, v0, v21

    ushr-long v40, v30, v18

    move-wide/from16 v38, v44

    move-wide/from16 v36, v46

    invoke-static/range {v36 .. v43}, Ldj7;->d(JJJJ)J

    move-result-wide v34

    and-long v36, v30, v21

    ushr-long v50, v34, v18

    invoke-static/range {v46 .. v53}, Ldj7;->d(JJJJ)J

    move-result-wide v30

    and-long v40, v34, v21

    move-wide/from16 v56, v54

    ushr-long v54, v30, v18

    move-wide/from16 v50, v46

    move-wide/from16 v52, v58

    invoke-static/range {v50 .. v57}, Ldj7;->d(JJJJ)J

    move-result-wide v34

    move-wide/from16 v38, v62

    move-wide/from16 v62, v50

    and-long v42, v30, v21

    ushr-long v30, v34, v18

    add-long v30, v60, v30

    and-long v52, v34, v21

    aget v4, v14, v19

    move-wide/from16 v34, v0

    int-to-long v0, v4

    and-long v60, v0, v21

    const/16 v0, 0xd

    aget v1, v9, v0

    move v4, v0

    int-to-long v0, v1

    and-long v0, v0, v21

    ushr-long v46, v30, v18

    add-long v0, v0, v46

    and-long v56, v30, v21

    move/from16 v69, v4

    const/16 v70, 0xe

    aget v4, v9, v70

    move-wide/from16 v30, v0

    int-to-long v0, v4

    and-long v0, v0, v21

    ushr-long v46, v30, v18

    add-long v0, v0, v46

    and-long v66, v30, v21

    mul-long v10, v10, v60

    add-long v10, v10, v34

    long-to-int v4, v10

    shl-int/lit8 v30, v4, 0x1

    or-int v3, v30, v3

    aput v3, v9, v19

    ushr-int/lit8 v3, v4, 0x1f

    ushr-long v34, v10, v18

    move-wide/from16 v30, v60

    invoke-static/range {v30 .. v37}, Ldj7;->d(JJJJ)J

    move-result-wide v10

    move-wide/from16 v36, v38

    ushr-long v38, v10, v18

    move-wide/from16 v30, v0

    move-wide/from16 v34, v60

    invoke-static/range {v34 .. v41}, Ldj7;->d(JJJJ)J

    move-result-wide v0

    ushr-long v40, v0, v18

    move/from16 v32, v3

    move-wide/from16 v38, v44

    move-wide/from16 v36, v60

    invoke-static/range {v36 .. v43}, Ldj7;->d(JJJJ)J

    move-result-wide v3

    ushr-long v50, v3, v18

    move-object/from16 v33, v12

    move/from16 v34, v13

    move-wide/from16 v46, v60

    invoke-static/range {v46 .. v53}, Ldj7;->d(JJJJ)J

    move-result-wide v12

    ushr-long v54, v12, v18

    move-object/from16 v36, v6

    move-object/from16 v35, v7

    move-wide/from16 v52, v58

    move-wide/from16 v50, v60

    invoke-static/range {v50 .. v57}, Ldj7;->d(JJJJ)J

    move-result-wide v6

    ushr-long v64, v6, v18

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    invoke-static/range {v60 .. v67}, Ldj7;->d(JJJJ)J

    move-result-wide v8

    ushr-long v39, v8, v18

    move-object/from16 v41, v14

    add-long v14, v30, v39

    long-to-int v10, v10

    shl-int/lit8 v11, v10, 0x1

    or-int v11, v11, v32

    aput v11, v38, v24

    ushr-int/lit8 v10, v10, 0x1f

    long-to-int v0, v0

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v10

    aput v1, v38, v27

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v1, v3

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v17

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v12

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v28

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v6

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v68

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v8

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v69

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v14

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v70

    ushr-int/lit8 v0, v1, 0x1f

    const/16 v1, 0xf

    aget v3, v38, v1

    ushr-long v6, v14, v18

    long-to-int v4, v6

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    aput v0, v38, v1

    add-int/lit8 v13, v34, 0x1

    .line 12
    aput v13, v38, v26

    const/16 v0, 0x10

    new-array v10, v0, [I

    .line 13
    aget v0, v41, v26

    int-to-long v3, v0

    and-long v3, v3, v21

    aget v0, v41, p2

    int-to-long v6, v0

    and-long v6, v6, v21

    aget v0, v41, v16

    int-to-long v8, v0

    and-long v8, v8, v21

    aget v0, v41, p4

    int-to-long v11, v0

    and-long v11, v11, v21

    aget v0, v41, p3

    int-to-long v13, v0

    and-long v13, v13, v21

    aget v0, v41, v23

    move-object v15, v2

    int-to-long v1, v0

    and-long v0, v1, v21

    aget v2, v41, v25

    move-wide/from16 v31, v0

    int-to-long v0, v2

    and-long v0, v0, v21

    aget v2, v41, v19

    move-wide/from16 v39, v0

    int-to-long v0, v2

    and-long v0, v0, v21

    aget v2, v15, v26

    move-wide/from16 v43, v0

    int-to-long v0, v2

    and-long v0, v0, v21

    move-wide/from16 v45, v0

    mul-long v0, v45, v3

    long-to-int v2, v0

    aput v2, v10, v26

    ushr-long v0, v0, v18

    mul-long v47, v45, v6

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, p2

    ushr-long v0, v0, v18

    mul-long v47, v45, v8

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, v16

    ushr-long v0, v0, v18

    mul-long v47, v45, v11

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, p4

    ushr-long v0, v0, v18

    mul-long v47, v45, v13

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, p3

    ushr-long v0, v0, v18

    mul-long v47, v45, v31

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, v23

    ushr-long v0, v0, v18

    mul-long v47, v45, v39

    add-long v0, v47, v0

    long-to-int v2, v0

    aput v2, v10, v25

    ushr-long v0, v0, v18

    mul-long v45, v45, v43

    add-long v0, v45, v0

    long-to-int v2, v0

    aput v2, v10, v19

    ushr-long v0, v0, v18

    long-to-int v0, v0

    aput v0, v10, v24

    move/from16 v0, p2

    move/from16 v1, v24

    :goto_7
    if-ge v0, v1, :cond_7

    aget v1, v15, v0

    int-to-long v1, v1

    and-long v1, v1, v21

    mul-long v45, v1, v3

    move/from16 v34, v0

    aget v0, v10, v34

    move-wide/from16 v47, v1

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v0, v45, v0

    long-to-int v2, v0

    aput v2, v10, v34

    ushr-long v0, v0, v18

    mul-long v45, v47, v6

    add-int/lit8 v2, v34, 0x1

    move-wide/from16 v49, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v45, v45, v0

    add-long v0, v45, v49

    move/from16 v45, v2

    long-to-int v2, v0

    aput v2, v10, v45

    ushr-long v0, v0, v18

    mul-long v49, v47, v8

    add-int/lit8 v2, v34, 0x2

    move-wide/from16 v51, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v49, v49, v0

    add-long v0, v49, v51

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    mul-long v49, v47, v11

    add-int/lit8 v2, v34, 0x3

    move-wide/from16 v51, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v49, v49, v0

    add-long v0, v49, v51

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    mul-long v49, v47, v13

    add-int/lit8 v2, v34, 0x4

    move-wide/from16 v51, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v49, v49, v0

    add-long v0, v49, v51

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    mul-long v49, v47, v31

    add-int/lit8 v2, v34, 0x5

    move-wide/from16 v51, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v49, v49, v0

    add-long v0, v49, v51

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    mul-long v49, v47, v39

    add-int/lit8 v2, v34, 0x6

    move-wide/from16 v51, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v49, v49, v0

    add-long v0, v49, v51

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    mul-long v46, v47, v43

    add-int/lit8 v2, v34, 0x7

    move-wide/from16 v48, v0

    aget v0, v10, v2

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v46, v46, v0

    add-long v0, v46, v48

    move/from16 v46, v2

    long-to-int v2, v0

    aput v2, v10, v46

    ushr-long v0, v0, v18

    add-int/lit8 v2, v34, 0x8

    long-to-int v0, v0

    aput v0, v10, v2

    move/from16 v0, v45

    const/16 v1, 0x8

    goto/16 :goto_7

    :cond_7
    const/16 v2, 0x10

    .line 14
    new-array v11, v2, [I

    move/from16 v0, p3

    new-array v1, v0, [I

    move/from16 v2, v26

    invoke-static {v15, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v0, [I

    new-array v4, v0, [I

    move-object/from16 v7, v41

    invoke-static {v7, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v6, v0, [I

    aput p2, v6, v2

    move-object/from16 v8, v38

    const/16 v0, 0xf

    invoke-static {v8, v0}, Lzm5;->n([II)I

    move-result v2

    const/16 v7, 0x3f8

    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move-object/from16 v42, v4

    move-object/from16 v43, v6

    move-object v9, v8

    move-object/from16 v8, v33

    move v6, v0

    :goto_8
    const/16 v0, 0xfe

    if-le v2, v0, :cond_d

    add-int/lit8 v0, v7, -0x1

    if-ltz v0, :cond_c

    invoke-static {v10, v6}, Lzm5;->m([II)I

    move-result v1

    sub-int/2addr v1, v2

    shr-int/lit8 v3, v1, 0x1f

    not-int v3, v3

    and-int v7, v1, v3

    aget v1, v10, v6

    if-gez v1, :cond_8

    invoke-static/range {v6 .. v11}, Lzm5;->c(II[I[I[I[I)V

    const/16 v38, 0x3

    move/from16 v39, v7

    invoke-static/range {v38 .. v43}, Lzm5;->d(II[I[I[I[I)V

    :goto_9
    move-object/from16 v4, v42

    move-object/from16 v1, v43

    goto :goto_a

    :cond_8
    invoke-static/range {v6 .. v11}, Lzm5;->F(II[I[I[I[I)V

    const/16 v38, 0x3

    move/from16 v39, v7

    invoke-static/range {v38 .. v43}, Lzm5;->G(II[I[I[I[I)V

    goto :goto_9

    :goto_a
    move v3, v6

    .line 15
    :cond_9
    aget v7, v8, v3

    add-int v7, v7, p0

    aget v12, v9, v3

    add-int v12, v12, p0

    if-ge v7, v12, :cond_a

    ushr-int/lit8 v2, v2, 0x5

    .line 16
    invoke-static {v8, v2}, Lzm5;->n([II)I

    move-result v3

    move-object v6, v9

    move-object v9, v8

    move-object v8, v6

    move v6, v2

    move v2, v3

    move-object/from16 v42, v40

    move-object/from16 v43, v41

    move-object/from16 v41, v1

    move-object/from16 v40, v4

    goto :goto_c

    :cond_a
    if-le v7, v12, :cond_b

    goto :goto_b

    :cond_b
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_9

    :goto_b
    move-object/from16 v43, v1

    move-object/from16 v42, v4

    :goto_c
    move v7, v0

    goto :goto_8

    .line 17
    :cond_c
    invoke-static {}, Lg84;->c()V

    const/4 v2, 0x0

    return v2

    :cond_d
    move-object/from16 v4, v42

    move-object/from16 v1, v43

    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 18
    invoke-static {v4, v2, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, v37

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v68

    .line 19
    new-array v1, v0, [I

    .line 20
    aget v0, v35, v2

    int-to-long v6, v0

    and-long v6, v6, v21

    aget v0, v35, p2

    int-to-long v8, v0

    and-long v8, v8, v21

    aget v0, v35, v16

    int-to-long v10, v0

    and-long v10, v10, v21

    aget v0, v35, p4

    int-to-long v12, v0

    and-long v12, v12, v21

    const/4 v0, 0x4

    aget v2, v35, v0

    move-wide/from16 v30, v6

    int-to-long v6, v2

    and-long v6, v6, v21

    aget v0, v35, v23

    move-wide/from16 v32, v6

    int-to-long v6, v0

    and-long v6, v6, v21

    aget v0, v35, v25

    move-wide/from16 v37, v6

    int-to-long v6, v0

    and-long v6, v6, v21

    aget v0, v35, v19

    move-wide/from16 v39, v6

    int-to-long v6, v0

    and-long v6, v6, v21

    const/16 v26, 0x0

    aget v0, v3, v26

    move-wide/from16 v41, v6

    int-to-long v6, v0

    and-long v6, v6, v21

    move-wide/from16 v43, v6

    mul-long v6, v43, v30

    long-to-int v0, v6

    aput v0, v1, v26

    ushr-long v6, v6, v18

    mul-long v45, v43, v8

    add-long v6, v45, v6

    long-to-int v0, v6

    aput v0, v1, p2

    ushr-long v6, v6, v18

    mul-long v45, v43, v10

    add-long v6, v45, v6

    long-to-int v0, v6

    aput v0, v1, v16

    ushr-long v6, v6, v18

    mul-long v45, v43, v12

    add-long v6, v45, v6

    long-to-int v0, v6

    aput v0, v1, p4

    ushr-long v6, v6, v18

    mul-long v45, v43, v32

    add-long v6, v45, v6

    long-to-int v0, v6

    const/4 v2, 0x4

    aput v0, v1, v2

    ushr-long v6, v6, v18

    mul-long v45, v43, v37

    add-long v6, v45, v6

    long-to-int v0, v6

    aput v0, v1, v23

    ushr-long v6, v6, v18

    mul-long v45, v43, v39

    add-long v6, v45, v6

    long-to-int v0, v6

    aput v0, v1, v25

    ushr-long v6, v6, v18

    mul-long v43, v43, v41

    add-long v6, v43, v6

    long-to-int v0, v6

    aput v0, v1, v19

    ushr-long v6, v6, v18

    long-to-int v0, v6

    const/16 v24, 0x8

    aput v0, v1, v24

    move/from16 v0, p2

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_e

    aget v2, v3, v0

    int-to-long v6, v2

    and-long v6, v6, v21

    mul-long v43, v6, v30

    aget v2, v1, v0

    move-wide/from16 v45, v6

    int-to-long v6, v2

    and-long v6, v6, v21

    add-long v6, v43, v6

    long-to-int v2, v6

    aput v2, v1, v0

    ushr-long v6, v6, v18

    mul-long v43, v45, v8

    add-int/lit8 v2, v0, 0x1

    aget v4, v1, v2

    move-wide/from16 v47, v6

    int-to-long v6, v4

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v4, v6

    aput v4, v1, v2

    ushr-long v6, v6, v18

    mul-long v43, v45, v10

    add-int/lit8 v4, v0, 0x2

    aget v14, v1, v4

    move-wide/from16 v47, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    mul-long v43, v45, v12

    add-int/lit8 v4, v0, 0x3

    aget v14, v1, v4

    move-wide/from16 v47, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    mul-long v43, v45, v32

    add-int/lit8 v4, v0, 0x4

    aget v14, v1, v4

    move-wide/from16 v47, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    mul-long v43, v45, v37

    add-int/lit8 v4, v0, 0x5

    aget v14, v1, v4

    move-wide/from16 v47, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    mul-long v43, v45, v39

    add-int/lit8 v4, v0, 0x6

    aget v14, v1, v4

    move-wide/from16 v47, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v47

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    mul-long v43, v45, v41

    add-int/lit8 v4, v0, 0x7

    aget v14, v1, v4

    move-wide/from16 v45, v6

    int-to-long v6, v14

    and-long v6, v6, v21

    add-long v43, v43, v6

    add-long v6, v43, v45

    long-to-int v14, v6

    aput v14, v1, v4

    ushr-long v6, v6, v18

    add-int/lit8 v0, v0, 0x8

    long-to-int v4, v6

    aput v4, v1, v0

    move v0, v2

    goto/16 :goto_d

    .line 21
    :cond_e
    aget v0, v3, p4

    if-gez v0, :cond_f

    const/16 v26, 0x0

    .line 22
    aget v0, v15, v26

    int-to-long v6, v0

    and-long v6, v6, v21

    const/4 v0, 0x4

    aget v2, v1, v0

    int-to-long v8, v2

    and-long v8, v8, v21

    add-long/2addr v6, v8

    long-to-int v2, v6

    aput v2, v1, v0

    ushr-long v6, v6, v18

    aget v0, v15, p2

    int-to-long v8, v0

    and-long v8, v8, v21

    aget v0, v1, v23

    int-to-long v10, v0

    and-long v10, v10, v21

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    long-to-int v0, v8

    aput v0, v1, v23

    ushr-long v6, v8, v18

    aget v4, v15, v16

    int-to-long v8, v4

    and-long v8, v8, v21

    aget v4, v1, v25

    int-to-long v10, v4

    and-long v10, v10, v21

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    long-to-int v4, v8

    aput v4, v1, v25

    ushr-long v6, v8, v18

    aget v8, v15, p4

    int-to-long v8, v8

    and-long v8, v8, v21

    aget v10, v1, v19

    int-to-long v10, v10

    and-long v10, v10, v21

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    long-to-int v6, v8

    aput v6, v1, v19

    ushr-long v7, v8, v18

    const/4 v9, 0x4

    aget v10, v15, v9

    int-to-long v9, v10

    and-long v9, v9, v21

    const/16 v24, 0x8

    aget v11, v1, v24

    int-to-long v11, v11

    and-long v11, v11, v21

    add-long/2addr v9, v11

    add-long/2addr v9, v7

    long-to-int v7, v9

    aput v7, v1, v24

    ushr-long v8, v9, v18

    aget v10, v15, v23

    int-to-long v10, v10

    and-long v10, v10, v21

    aget v12, v1, v27

    int-to-long v12, v12

    and-long v12, v12, v21

    add-long/2addr v10, v12

    add-long/2addr v10, v8

    long-to-int v8, v10

    aput v8, v1, v27

    ushr-long v9, v10, v18

    aget v11, v15, v25

    int-to-long v11, v11

    and-long v11, v11, v21

    aget v13, v1, v17

    int-to-long v13, v13

    and-long v13, v13, v21

    add-long/2addr v11, v13

    add-long/2addr v11, v9

    long-to-int v9, v11

    aput v9, v1, v17

    ushr-long v10, v11, v18

    aget v12, v15, v19

    int-to-long v12, v12

    and-long v12, v12, v21

    aget v14, v1, v28

    int-to-long v14, v14

    and-long v14, v14, v21

    add-long/2addr v12, v14

    add-long/2addr v12, v10

    long-to-int v10, v12

    aput v10, v1, v28

    int-to-long v11, v2

    and-long v11, v11, v21

    const/16 v26, 0x0

    .line 23
    aget v2, v35, v26

    int-to-long v13, v2

    and-long v13, v13, v21

    sub-long/2addr v11, v13

    long-to-int v2, v11

    const/4 v13, 0x4

    aput v2, v1, v13

    shr-long v11, v11, v18

    int-to-long v13, v0

    and-long v13, v13, v21

    aget v0, v35, p2

    move-wide/from16 v30, v11

    int-to-long v11, v0

    and-long v11, v11, v21

    sub-long/2addr v13, v11

    add-long v13, v13, v30

    long-to-int v0, v13

    aput v0, v1, v23

    shr-long v11, v13, v18

    int-to-long v13, v4

    and-long v13, v13, v21

    aget v0, v35, v16

    move-wide/from16 v30, v11

    int-to-long v11, v0

    and-long v11, v11, v21

    sub-long/2addr v13, v11

    add-long v13, v13, v30

    long-to-int v0, v13

    aput v0, v1, v25

    shr-long v11, v13, v18

    int-to-long v13, v6

    and-long v13, v13, v21

    aget v0, v35, p4

    move-wide v15, v11

    int-to-long v11, v0

    and-long v11, v11, v21

    sub-long/2addr v13, v11

    add-long/2addr v13, v15

    long-to-int v0, v13

    aput v0, v1, v19

    shr-long v11, v13, v18

    int-to-long v6, v7

    and-long v6, v6, v21

    const/4 v0, 0x4

    aget v2, v35, v0

    int-to-long v13, v2

    and-long v13, v13, v21

    sub-long/2addr v6, v13

    add-long/2addr v6, v11

    long-to-int v0, v6

    const/16 v24, 0x8

    aput v0, v1, v24

    shr-long v6, v6, v18

    int-to-long v11, v8

    and-long v11, v11, v21

    aget v0, v35, v23

    int-to-long v13, v0

    and-long v13, v13, v21

    sub-long/2addr v11, v13

    add-long/2addr v11, v6

    long-to-int v0, v11

    aput v0, v1, v27

    shr-long v6, v11, v18

    int-to-long v8, v9

    and-long v8, v8, v21

    aget v0, v35, v25

    int-to-long v11, v0

    and-long v11, v11, v21

    sub-long/2addr v8, v11

    add-long/2addr v8, v6

    long-to-int v0, v8

    aput v0, v1, v17

    shr-long v6, v8, v18

    int-to-long v8, v10

    and-long v8, v8, v21

    aget v0, v35, v19

    int-to-long v10, v0

    and-long v10, v10, v21

    sub-long/2addr v8, v10

    add-long/2addr v8, v6

    long-to-int v0, v8

    aput v0, v1, v28

    :cond_f
    const/16 v0, 0x30

    .line 24
    new-array v0, v0, [B

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lg67;->o([BI[I)V

    const/4 v2, 0x0

    .line 25
    invoke-static {v0, v2}, Lg67;->l([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v21

    const/4 v13, 0x4

    invoke-static {v0, v13}, Lg67;->k([BI)I

    move-result v4

    shl-int/2addr v4, v13

    int-to-long v6, v4

    and-long v6, v6, v21

    move/from16 v4, v19

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v8

    int-to-long v8, v8

    and-long v8, v8, v21

    move/from16 v4, v28

    invoke-static {v0, v4}, Lg67;->k([BI)I

    move-result v4

    shl-int/2addr v4, v13

    int-to-long v10, v4

    and-long v10, v10, v21

    move/from16 v4, v70

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v12

    int-to-long v14, v12

    and-long v14, v14, v21

    const/16 v4, 0x12

    invoke-static {v0, v4}, Lg67;->k([BI)I

    move-result v4

    shl-int/2addr v4, v13

    move/from16 p3, v13

    move-wide/from16 v27, v14

    int-to-long v13, v4

    and-long v12, v13, v21

    const/16 v4, 0x15

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v14

    int-to-long v14, v14

    and-long v14, v14, v21

    const/16 v4, 0x19

    invoke-static {v0, v4}, Lg67;->k([BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    move-wide/from16 v30, v1

    int-to-long v1, v4

    and-long v1, v1, v21

    move-wide/from16 v32, v1

    const/16 v4, 0x1c

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v21

    move/from16 v4, v18

    invoke-static {v0, v4}, Lg67;->k([BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    move-wide/from16 v37, v1

    int-to-long v1, v4

    and-long v39, v1, v21

    const/16 v4, 0x23

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v4

    move-wide/from16 v41, v1

    int-to-long v1, v4

    and-long v43, v1, v21

    const/16 v4, 0x27

    invoke-static {v0, v4}, Lg67;->k([BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    move-wide/from16 v45, v1

    int-to-long v1, v4

    and-long v47, v1, v21

    const/16 v4, 0x2a

    invoke-static {v0, v4}, Lg67;->l([BI)I

    move-result v4

    move-object/from16 v16, v0

    move-wide/from16 v49, v1

    int-to-long v0, v4

    and-long v51, v0, v21

    const/16 v2, 0x2e

    .line 26
    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x2f

    aget-byte v4, v16, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v24, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x4

    shl-int/2addr v2, v4

    move-wide/from16 v53, v0

    int-to-long v0, v2

    and-long v0, v0, v21

    const/16 v29, 0x1c

    shr-long v21, v51, v29

    add-long v0, v0, v21

    const-wide/32 v21, 0xfffffff

    and-long v51, v53, v21

    const-wide/32 v53, -0x30a2c13

    mul-long v55, v0, v53

    sub-long v27, v27, v55

    const-wide/32 v55, 0x12631a6

    mul-long v57, v0, v55

    sub-long v12, v12, v57

    const-wide/32 v57, 0x79cd658

    mul-long v59, v0, v57

    sub-long v14, v14, v59

    const-wide/32 v59, -0x6215d1

    mul-long v61, v0, v59

    sub-long v32, v32, v61

    const-wide/16 v61, 0x14df

    mul-long v0, v0, v61

    sub-long v1, v37, v0

    const/16 v29, 0x1c

    shr-long v37, v47, v29

    add-long v51, v51, v37

    and-long v37, v49, v21

    mul-long v47, v51, v53

    sub-long v10, v10, v47

    mul-long v47, v51, v55

    sub-long v27, v27, v47

    mul-long v47, v51, v57

    sub-long v12, v12, v47

    mul-long v47, v51, v59

    sub-long v14, v14, v47

    mul-long v51, v51, v61

    sub-long v32, v32, v51

    const/16 v29, 0x1c

    shr-long v43, v43, v29

    add-long v37, v37, v43

    and-long v43, v45, v21

    mul-long v45, v37, v53

    sub-long v8, v8, v45

    mul-long v45, v37, v55

    sub-long v10, v10, v45

    mul-long v45, v37, v57

    sub-long v27, v27, v45

    mul-long v45, v37, v59

    sub-long v12, v12, v45

    mul-long v37, v37, v61

    sub-long v14, v14, v37

    const/16 v29, 0x1c

    shr-long v37, v39, v29

    add-long v43, v43, v37

    and-long v37, v41, v21

    mul-long v39, v43, v53

    sub-long v6, v6, v39

    mul-long v39, v43, v55

    sub-long v8, v8, v39

    mul-long v39, v43, v57

    sub-long v10, v10, v39

    mul-long v39, v43, v59

    sub-long v27, v27, v39

    mul-long v43, v43, v61

    sub-long v12, v12, v43

    const/16 v29, 0x1c

    shr-long v39, v32, v29

    add-long v1, v1, v39

    and-long v32, v32, v21

    shr-long v39, v1, v29

    add-long v37, v37, v39

    and-long v0, v1, v21

    const/16 v2, 0x1b

    ushr-long v39, v0, v2

    add-long v37, v37, v39

    mul-long v41, v37, v53

    sub-long v30, v30, v41

    mul-long v41, v37, v55

    sub-long v6, v6, v41

    mul-long v41, v37, v57

    sub-long v8, v8, v41

    mul-long v41, v37, v59

    sub-long v10, v10, v41

    mul-long v37, v37, v61

    sub-long v27, v27, v37

    const/16 v29, 0x1c

    shr-long v37, v30, v29

    add-long v6, v6, v37

    and-long v30, v30, v21

    shr-long v37, v6, v29

    add-long v8, v8, v37

    and-long v6, v6, v21

    shr-long v37, v8, v29

    add-long v10, v10, v37

    and-long v8, v8, v21

    shr-long v37, v10, v29

    add-long v27, v27, v37

    and-long v10, v10, v21

    shr-long v37, v27, v29

    add-long v12, v12, v37

    and-long v27, v27, v21

    shr-long v37, v12, v29

    add-long v14, v14, v37

    and-long v12, v12, v21

    shr-long v37, v14, v29

    add-long v32, v32, v37

    and-long v14, v14, v21

    shr-long v37, v32, v29

    add-long v0, v0, v37

    and-long v32, v32, v21

    shr-long v37, v0, v29

    and-long v0, v0, v21

    sub-long v37, v37, v39

    and-long v39, v37, v53

    add-long v30, v30, v39

    and-long v39, v37, v55

    add-long v6, v6, v39

    and-long v39, v37, v57

    add-long v8, v8, v39

    and-long v39, v37, v59

    add-long v10, v10, v39

    and-long v37, v37, v61

    add-long v27, v27, v37

    const/16 v2, 0x1c

    shr-long v37, v30, v2

    add-long v6, v6, v37

    and-long v29, v30, v21

    shr-long v37, v6, v2

    add-long v8, v8, v37

    and-long v6, v6, v21

    shr-long v37, v8, v2

    add-long v10, v10, v37

    and-long v8, v8, v21

    shr-long v37, v10, v2

    add-long v27, v27, v37

    and-long v10, v10, v21

    shr-long v37, v27, v2

    add-long v12, v12, v37

    and-long v27, v27, v21

    shr-long v37, v12, v2

    add-long v14, v14, v37

    and-long v12, v12, v21

    shr-long v37, v14, v2

    add-long v32, v32, v37

    and-long v14, v14, v21

    shr-long v37, v32, v2

    add-long v0, v0, v37

    and-long v21, v32, v21

    const/16 v4, 0x40

    .line 27
    new-array v4, v4, [B

    shl-long/2addr v6, v2

    or-long v6, v29, v6

    move/from16 v29, v2

    const/4 v2, 0x0

    invoke-static {v2, v6, v7, v4}, Lg67;->p(IJ[B)V

    shl-long v6, v10, v29

    or-long/2addr v6, v8

    const/4 v9, 0x7

    invoke-static {v9, v6, v7, v4}, Lg67;->p(IJ[B)V

    shl-long v6, v12, v29

    or-long v6, v27, v6

    const/16 v2, 0xe

    invoke-static {v2, v6, v7, v4}, Lg67;->p(IJ[B)V

    shl-long v6, v21, v29

    or-long/2addr v6, v14

    const/16 v2, 0x15

    invoke-static {v2, v6, v7, v4}, Lg67;->p(IJ[B)V

    long-to-int v0, v0

    move/from16 v2, v29

    invoke-static {v4, v0, v2}, Lg67;->n([BII)V

    move-object/from16 v12, v35

    .line 28
    invoke-static {v4, v12}, Liz1;->i([B[I)V

    .line 29
    new-instance v0, Las2;

    invoke-direct {v0}, Las2;-><init>()V

    .line 30
    invoke-static {}, Ljb9;->S()V

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/16 v2, 0x80

    new-array v4, v2, [B

    new-array v6, v2, [B

    move/from16 v7, v25

    invoke-static {v1, v7, v12}, Ll73;->p([BI[I)V

    const/4 v13, 0x4

    invoke-static {v4, v13, v5}, Ll73;->p([BI[I)V

    invoke-static {v6, v13, v3}, Ll73;->p([BI[I)V

    new-array v3, v13, [Lbs2;

    new-array v5, v13, [Lbs2;

    new-instance v7, Lot9;

    move/from16 v8, v23

    invoke-direct {v7, v8}, Lot9;-><init>(I)V

    move-object/from16 v14, v36

    invoke-static {v14, v3, v7}, Ljb9;->R(Lix0;[Lbs2;Lot9;)V

    move-object/from16 v8, v20

    invoke-static {v8, v5, v7}, Ljb9;->R(Lix0;[Lbs2;Lot9;)V

    .line 31
    iget-object v8, v0, Las2;->a:Ljava/lang/Object;

    check-cast v8, [I

    move/from16 v10, v17

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v10, :cond_10

    const/16 v26, 0x0

    .line 32
    aput v26, v8, v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0xa

    goto :goto_e

    .line 33
    :cond_10
    iget-object v8, v0, Las2;->b:Ljava/lang/Object;

    check-cast v8, [I

    invoke-static {v8}, Lnc8;->T([I)V

    iget-object v8, v0, Las2;->c:Ljava/io/Serializable;

    check-cast v8, [I

    invoke-static {v8}, Lnc8;->T([I)V

    iget-object v8, v0, Las2;->d:Ljava/lang/Object;

    check-cast v8, [I

    const/4 v9, 0x0

    :goto_f
    const/16 v10, 0xa

    if-ge v9, v10, :cond_11

    const/16 v26, 0x0

    .line 34
    aput v26, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 35
    :cond_11
    iget-object v8, v0, Las2;->e:Ljava/lang/Object;

    check-cast v8, [I

    invoke-static {v8}, Lnc8;->T([I)V

    :goto_10
    add-int/lit8 v8, v2, -0x1

    if-ltz v8, :cond_13

    .line 36
    aget-byte v9, v1, v8

    add-int/lit8 v2, v2, 0x7f

    aget-byte v2, v1, v2

    or-int/2addr v2, v9

    aget-byte v9, v4, v8

    or-int/2addr v2, v9

    aget-byte v9, v6, v8

    or-int/2addr v2, v9

    if-eqz v2, :cond_12

    goto :goto_11

    :cond_12
    move v2, v8

    goto :goto_10

    :cond_13
    :goto_11
    if-ltz v8, :cond_1c

    aget-byte v2, v1, v8

    if-eqz v2, :cond_15

    shr-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v2, 0x1f

    xor-int/2addr v9, v10

    if-gez v2, :cond_14

    move/from16 v2, p2

    goto :goto_12

    :cond_14
    const/4 v2, 0x0

    :goto_12
    sget-object v10, Ljb9;->y:[Ll22;

    aget-object v9, v10, v9

    invoke-static {v2, v9, v0, v7}, Ljb9;->N(ZLl22;Las2;Lot9;)V

    :cond_15
    add-int/lit16 v2, v8, 0x80

    aget-byte v2, v1, v2

    if-eqz v2, :cond_17

    shr-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v2, 0x1f

    xor-int/2addr v9, v10

    if-gez v2, :cond_16

    move/from16 v2, p2

    goto :goto_13

    :cond_16
    const/4 v2, 0x0

    :goto_13
    sget-object v10, Ljb9;->G:[Ll22;

    aget-object v9, v10, v9

    invoke-static {v2, v9, v0, v7}, Ljb9;->N(ZLl22;Las2;Lot9;)V

    :cond_17
    aget-byte v2, v4, v8

    if-eqz v2, :cond_19

    shr-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v2, 0x1f

    xor-int/2addr v9, v10

    if-gez v2, :cond_18

    move/from16 v2, p2

    goto :goto_14

    :cond_18
    const/4 v2, 0x0

    :goto_14
    aget-object v9, v3, v9

    invoke-static {v2, v9, v0, v7}, Ljb9;->O(ZLbs2;Las2;Lot9;)V

    :cond_19
    aget-byte v2, v6, v8

    if-eqz v2, :cond_1b

    shr-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v2, 0x1f

    xor-int/2addr v9, v10

    if-gez v2, :cond_1a

    move/from16 v2, p2

    goto :goto_15

    :cond_1a
    const/4 v2, 0x0

    :goto_15
    aget-object v9, v5, v9

    invoke-static {v2, v9, v0, v7}, Ljb9;->O(ZLbs2;Las2;Lot9;)V

    :cond_1b
    invoke-static {v0}, Ljb9;->Q(Las2;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    :cond_1c
    invoke-static {v0}, Ljb9;->Q(Las2;)V

    invoke-static {v0}, Ljb9;->Q(Las2;)V

    .line 37
    iget-object v1, v0, Las2;->a:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Lnc8;->M([I)V

    iget-object v1, v0, Las2;->b:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v1}, Lnc8;->M([I)V

    iget-object v2, v0, Las2;->c:Ljava/io/Serializable;

    check-cast v2, [I

    invoke-static {v2}, Lnc8;->M([I)V

    iget-object v0, v0, Las2;->a:Ljava/lang/Object;

    check-cast v0, [I

    .line 38
    invoke-static {v0}, Lnc8;->H([I)I

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {v1}, Lnc8;->H([I)I

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v26, 0x0

    return v26

    :cond_1d
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v6, 0xa

    :goto_16
    if-ge v0, v6, :cond_1e

    .line 39
    aget v4, v1, v0

    aget v5, v2, v0

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1e
    ushr-int/lit8 v0, v3, 0x1

    and-int/lit8 v1, v3, 0x1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_1f

    return p2

    :cond_1f
    const/16 v26, 0x0

    goto :goto_17

    :cond_20
    const/16 v26, 0x0

    return v26

    :cond_21
    move v3, v15

    move-object v15, v2

    move v2, v3

    move-object v3, v8

    move-object/from16 v33, v12

    const/16 v29, 0x1c

    move-object v12, v7

    move-object v1, v15

    move v15, v2

    move-object v2, v1

    move/from16 v1, p3

    move/from16 v24, v0

    move/from16 v4, v25

    move/from16 v3, v26

    move/from16 v0, v29

    move-object/from16 v12, v33

    goto/16 :goto_6

    :cond_22
    move/from16 v29, v0

    move-object v15, v2

    move/from16 v26, v3

    move/from16 v19, v10

    move/from16 p0, v12

    move/from16 v24, v13

    move/from16 p2, v14

    move-object v12, v7

    if-le v8, v9, :cond_23

    goto :goto_17

    :cond_23
    add-int/lit8 v6, v6, -0x1

    move/from16 v14, p2

    move-object v7, v12

    move-object v2, v15

    move/from16 v10, v19

    move/from16 v13, v24

    move/from16 v3, v26

    move/from16 v0, v29

    move/from16 v12, p0

    goto/16 :goto_5

    :goto_17
    return v26

    :cond_24
    move/from16 v26, v3

    .line 40
    const-string v0, "ctx"

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return v26
.end method

.method public static F([Lkb2;)V
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v1, v0, 0xa

    .line 3
    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    new-array v3, v2, [I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aget-object v5, p0, v4

    .line 12
    .line 13
    iget-object v5, v5, Lkb2;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, [I

    .line 16
    .line 17
    invoke-static {v4, v4, v5, v3}, Lnc8;->n(II[I[I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v4, v4, v3, v1}, Lnc8;->n(II[I[I)V

    .line 21
    .line 22
    .line 23
    move v5, v4

    .line 24
    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 25
    .line 26
    if-ge v6, v0, :cond_0

    .line 27
    .line 28
    aget-object v5, p0, v6

    .line 29
    .line 30
    iget-object v5, v5, Lkb2;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, [I

    .line 33
    .line 34
    invoke-static {v3, v5, v3}, Lnc8;->K([I[I[I)V

    .line 35
    .line 36
    .line 37
    mul-int/lit8 v5, v6, 0xa

    .line 38
    .line 39
    invoke-static {v4, v5, v3, v1}, Lnc8;->n(II[I[I)V

    .line 40
    .line 41
    .line 42
    move v5, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v3, v3, v3}, Lnc8;->b([I[I[I)V

    .line 45
    .line 46
    .line 47
    new-array v0, v2, [I

    .line 48
    .line 49
    const/16 v6, 0x8

    .line 50
    .line 51
    new-array v6, v6, [I

    .line 52
    .line 53
    invoke-static {v4, v4, v3, v0}, Lnc8;->n(II[I[I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lnc8;->M([I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v4, v0, v6}, Lnc8;->y(II[I[I)V

    .line 60
    .line 61
    .line 62
    const/4 v7, 0x5

    .line 63
    const/4 v8, 0x4

    .line 64
    invoke-static {v7, v8, v0, v6}, Lnc8;->y(II[I[I)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lnc8;->c:[I

    .line 68
    .line 69
    invoke-static {v0, v6, v6}, Llg7;->z([I[I[I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v4, v6, v3}, Lnc8;->t(II[I[I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v8, v7, v6, v3}, Lnc8;->t(II[I[I)V

    .line 76
    .line 77
    .line 78
    const/16 v0, 0x9

    .line 79
    .line 80
    aget v6, v3, v0

    .line 81
    .line 82
    const v7, 0xffffff

    .line 83
    .line 84
    .line 85
    and-int/2addr v6, v7

    .line 86
    aput v6, v3, v0

    .line 87
    .line 88
    new-array v0, v2, [I

    .line 89
    .line 90
    :goto_1
    if-lez v5, :cond_1

    .line 91
    .line 92
    add-int/lit8 v2, v5, -0x1

    .line 93
    .line 94
    mul-int/lit8 v6, v2, 0xa

    .line 95
    .line 96
    invoke-static {v6, v4, v1, v0}, Lnc8;->n(II[I[I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v3, v0}, Lnc8;->K([I[I[I)V

    .line 100
    .line 101
    .line 102
    aget-object v6, p0, v5

    .line 103
    .line 104
    iget-object v6, v6, Lkb2;->c:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v6, [I

    .line 107
    .line 108
    invoke-static {v3, v6, v3}, Lnc8;->K([I[I[I)V

    .line 109
    .line 110
    .line 111
    aget-object v5, p0, v5

    .line 112
    .line 113
    iget-object v5, v5, Lkb2;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v5, [I

    .line 116
    .line 117
    invoke-static {v4, v4, v0, v5}, Lnc8;->n(II[I[I)V

    .line 118
    .line 119
    .line 120
    move v5, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    aget-object p0, p0, v4

    .line 123
    .line 124
    iget-object p0, p0, Lkb2;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p0, [I

    .line 127
    .line 128
    invoke-static {v4, v4, v3, p0}, Lnc8;->n(II[I[I)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static H(II[I[I)I
    .locals 11

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    :cond_0
    aget v6, p2, p0

    .line 12
    .line 13
    int-to-long v6, v6

    .line 14
    and-long/2addr v6, v2

    .line 15
    mul-long/2addr v6, v0

    .line 16
    add-int v8, p1, p0

    .line 17
    .line 18
    aget v9, p3, v8

    .line 19
    .line 20
    int-to-long v9, v9

    .line 21
    and-long/2addr v9, v2

    .line 22
    add-long/2addr v6, v9

    .line 23
    add-long/2addr v6, v4

    .line 24
    long-to-int v4, v6

    .line 25
    aput v4, p3, v8

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    ushr-long v4, v6, v4

    .line 30
    .line 31
    add-int/lit8 p0, p0, 0x1

    .line 32
    .line 33
    const/16 v6, 0xe

    .line 34
    .line 35
    if-lt p0, v6, :cond_0

    .line 36
    .line 37
    long-to-int p0, v4

    .line 38
    return p0
.end method

.method public static I(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    return-void
.end method

.method public static L(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljb9;->j0(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/io/IOException;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static M(Lkb2;Lkb2;Lkb2;Lot9;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lkb2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p2, Lkb2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    iget-object v2, p3, Lot9;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [I

    .line 12
    .line 13
    iget-object p3, p3, Lot9;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p3, [I

    .line 16
    .line 17
    iget-object v3, p0, Lkb2;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, [I

    .line 20
    .line 21
    iget-object v4, p0, Lkb2;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, [I

    .line 24
    .line 25
    invoke-static {v3, v4, v1, v0}, Lnc8;->c([I[I[I[I)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p1, Lkb2;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, [I

    .line 31
    .line 32
    iget-object v4, p1, Lkb2;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, [I

    .line 35
    .line 36
    invoke-static {v3, v4, p3, v2}, Lnc8;->c([I[I[I[I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2, v0}, Lnc8;->K([I[I[I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p3, v1}, Lnc8;->K([I[I[I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lkb2;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, [I

    .line 48
    .line 49
    iget-object v4, p1, Lkb2;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, [I

    .line 52
    .line 53
    invoke-static {v3, v4, v2}, Lnc8;->K([I[I[I)V

    .line 54
    .line 55
    .line 56
    sget-object v3, Ljb9;->r:[I

    .line 57
    .line 58
    invoke-static {v2, v3, v2}, Lnc8;->K([I[I[I)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lkb2;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, [I

    .line 64
    .line 65
    invoke-static {p0, p0, p3}, Lnc8;->b([I[I[I)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p1, Lkb2;->c:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, [I

    .line 71
    .line 72
    invoke-static {p3, p0, p3}, Lnc8;->K([I[I[I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v0, v1, v0}, Lnc8;->c([I[I[I[I)V

    .line 76
    .line 77
    .line 78
    invoke-static {p3, v2, p3, v2}, Lnc8;->c([I[I[I[I)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p2, Lkb2;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, [I

    .line 84
    .line 85
    invoke-static {v0, v1, p0}, Lnc8;->K([I[I[I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p2, Lkb2;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, [I

    .line 91
    .line 92
    invoke-static {v2, p3, p0}, Lnc8;->K([I[I[I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2, v0}, Lnc8;->K([I[I[I)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p3, v1}, Lnc8;->K([I[I[I)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public static N(ZLl22;Las2;Lot9;)V
    .locals 6

    .line 1
    iget-object v0, p2, Las2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p2, Las2;->c:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    iget-object v2, p2, Las2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [I

    .line 12
    .line 13
    iget-object p3, p3, Lot9;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p3, [I

    .line 16
    .line 17
    iget-object v3, p2, Las2;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, [I

    .line 20
    .line 21
    iget-object p2, p2, Las2;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, [I

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move-object v4, v0

    .line 28
    move-object p0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p0, v0

    .line 31
    move-object v4, v2

    .line 32
    :goto_0
    invoke-static {v2, v0, v2, v0}, Lnc8;->c([I[I[I[I)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p1, Ll22;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, [I

    .line 38
    .line 39
    invoke-static {p0, v5, p0}, Lnc8;->K([I[I[I)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p1, Ll22;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, [I

    .line 45
    .line 46
    invoke-static {v4, v5, v4}, Lnc8;->K([I[I[I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3, p2, p3}, Lnc8;->K([I[I[I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Ll22;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, [I

    .line 55
    .line 56
    invoke-static {p3, p1, p3}, Lnc8;->K([I[I[I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v0, p2, v3}, Lnc8;->c([I[I[I[I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p3, v4, p0}, Lnc8;->c([I[I[I[I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2, v1}, Lnc8;->K([I[I[I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v3, v0}, Lnc8;->K([I[I[I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2, p2, v2}, Lnc8;->K([I[I[I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static O(ZLbs2;Las2;Lot9;)V
    .locals 6

    .line 1
    iget-object v0, p2, Las2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p2, Las2;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    iget-object p3, p3, Lot9;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p3, [I

    .line 12
    .line 13
    iget-object v2, p2, Las2;->c:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v2, [I

    .line 16
    .line 17
    iget-object v3, p2, Las2;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, [I

    .line 20
    .line 21
    iget-object p2, p2, Las2;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p2, [I

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move-object v4, v0

    .line 28
    move-object p0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p0, v0

    .line 31
    move-object v4, v1

    .line 32
    :goto_0
    invoke-static {v1, v0, v1, v0}, Lnc8;->c([I[I[I[I)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p1, Lbs2;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, [I

    .line 38
    .line 39
    invoke-static {p0, v5, p0}, Lnc8;->K([I[I[I)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p1, Lbs2;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, [I

    .line 45
    .line 46
    invoke-static {v4, v5, v4}, Lnc8;->K([I[I[I)V

    .line 47
    .line 48
    .line 49
    invoke-static {v3, p2, p3}, Lnc8;->K([I[I[I)V

    .line 50
    .line 51
    .line 52
    iget-object v5, p1, Lbs2;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, [I

    .line 55
    .line 56
    invoke-static {p3, v5, p3}, Lnc8;->K([I[I[I)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lbs2;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, [I

    .line 62
    .line 63
    invoke-static {v2, p1, v2}, Lnc8;->K([I[I[I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0, p2, v3}, Lnc8;->c([I[I[I[I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p3, v4, p0}, Lnc8;->c([I[I[I[I)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1, v2}, Lnc8;->K([I[I[I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v3, v0}, Lnc8;->K([I[I[I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, p2, v1}, Lnc8;->K([I[I[I)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static P(Las2;Lkb2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Las2;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    iget-object v1, p1, Lkb2;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2, v2, v0, v1}, Lnc8;->n(II[I[I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Las2;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, [I

    .line 16
    .line 17
    iget-object v1, p1, Lkb2;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, [I

    .line 20
    .line 21
    invoke-static {v2, v2, v0, v1}, Lnc8;->n(II[I[I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Las2;->c:Ljava/io/Serializable;

    .line 25
    .line 26
    check-cast v0, [I

    .line 27
    .line 28
    iget-object v1, p1, Lkb2;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, [I

    .line 31
    .line 32
    invoke-static {v2, v2, v0, v1}, Lnc8;->n(II[I[I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Las2;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, [I

    .line 38
    .line 39
    iget-object p0, p0, Las2;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, [I

    .line 42
    .line 43
    iget-object p1, p1, Lkb2;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, [I

    .line 46
    .line 47
    invoke-static {v0, p0, p1}, Lnc8;->K([I[I[I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static Q(Las2;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Las2;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [I

    .line 6
    .line 7
    iget-object v2, v0, Las2;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, [I

    .line 10
    .line 11
    iget-object v3, v0, Las2;->c:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v3, [I

    .line 14
    .line 15
    iget-object v4, v0, Las2;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, [I

    .line 18
    .line 19
    iget-object v0, v0, Las2;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, [I

    .line 22
    .line 23
    invoke-static {v1, v2, v4}, Lnc8;->b([I[I[I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v1}, Lnc8;->i0([I[I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v2}, Lnc8;->i0([I[I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v3}, Lnc8;->i0([I[I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v3, v3}, Lnc8;->b([I[I[I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2, v0, v2}, Lnc8;->c([I[I[I[I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v4}, Lnc8;->i0([I[I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v4, v4}, Lnc8;->l0([I[I[I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v2, v1}, Lnc8;->b([I[I[I)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    aget v6, v1, v5

    .line 52
    .line 53
    const/4 v7, 0x1

    .line 54
    aget v8, v1, v7

    .line 55
    .line 56
    const/4 v9, 0x2

    .line 57
    aget v10, v1, v9

    .line 58
    .line 59
    const/4 v11, 0x3

    .line 60
    aget v12, v1, v11

    .line 61
    .line 62
    const/4 v13, 0x4

    .line 63
    aget v14, v1, v13

    .line 64
    .line 65
    const/4 v15, 0x5

    .line 66
    aget v16, v1, v15

    .line 67
    .line 68
    const/16 v17, 0x6

    .line 69
    .line 70
    aget v18, v1, v17

    .line 71
    .line 72
    const/16 v19, 0x7

    .line 73
    .line 74
    aget v20, v1, v19

    .line 75
    .line 76
    const/16 v21, 0x8

    .line 77
    .line 78
    aget v22, v1, v21

    .line 79
    .line 80
    const/16 v23, 0x9

    .line 81
    .line 82
    aget v24, v1, v23

    .line 83
    .line 84
    shr-int/lit8 v25, v8, 0x1a

    .line 85
    .line 86
    add-int v10, v10, v25

    .line 87
    .line 88
    const v25, 0x3ffffff

    .line 89
    .line 90
    .line 91
    and-int v8, v8, v25

    .line 92
    .line 93
    shr-int/lit8 v26, v12, 0x1a

    .line 94
    .line 95
    add-int v14, v14, v26

    .line 96
    .line 97
    and-int v12, v12, v25

    .line 98
    .line 99
    shr-int/lit8 v26, v18, 0x1a

    .line 100
    .line 101
    add-int v20, v20, v26

    .line 102
    .line 103
    and-int v18, v18, v25

    .line 104
    .line 105
    shr-int/lit8 v26, v22, 0x1a

    .line 106
    .line 107
    add-int v24, v24, v26

    .line 108
    .line 109
    and-int v22, v22, v25

    .line 110
    .line 111
    shr-int/lit8 v26, v10, 0x19

    .line 112
    .line 113
    add-int v12, v12, v26

    .line 114
    .line 115
    const v26, 0x1ffffff

    .line 116
    .line 117
    .line 118
    and-int v10, v10, v26

    .line 119
    .line 120
    shr-int/lit8 v27, v14, 0x19

    .line 121
    .line 122
    add-int v16, v16, v27

    .line 123
    .line 124
    and-int v14, v14, v26

    .line 125
    .line 126
    shr-int/lit8 v27, v20, 0x19

    .line 127
    .line 128
    add-int v22, v22, v27

    .line 129
    .line 130
    and-int v20, v20, v26

    .line 131
    .line 132
    shr-int/lit8 v27, v24, 0x19

    .line 133
    .line 134
    mul-int/lit8 v27, v27, 0x26

    .line 135
    .line 136
    add-int v27, v27, v6

    .line 137
    .line 138
    and-int v6, v24, v26

    .line 139
    .line 140
    shr-int/lit8 v24, v27, 0x1a

    .line 141
    .line 142
    add-int v8, v8, v24

    .line 143
    .line 144
    and-int v24, v27, v25

    .line 145
    .line 146
    shr-int/lit8 v26, v16, 0x1a

    .line 147
    .line 148
    add-int v18, v18, v26

    .line 149
    .line 150
    and-int v16, v16, v25

    .line 151
    .line 152
    shr-int/lit8 v26, v8, 0x1a

    .line 153
    .line 154
    add-int v10, v10, v26

    .line 155
    .line 156
    and-int v8, v8, v25

    .line 157
    .line 158
    shr-int/lit8 v26, v12, 0x1a

    .line 159
    .line 160
    add-int v14, v14, v26

    .line 161
    .line 162
    and-int v12, v12, v25

    .line 163
    .line 164
    shr-int/lit8 v26, v18, 0x1a

    .line 165
    .line 166
    add-int v20, v20, v26

    .line 167
    .line 168
    and-int v18, v18, v25

    .line 169
    .line 170
    shr-int/lit8 v26, v22, 0x1a

    .line 171
    .line 172
    add-int v6, v6, v26

    .line 173
    .line 174
    and-int v22, v22, v25

    .line 175
    .line 176
    aput v24, v1, v5

    .line 177
    .line 178
    aput v8, v1, v7

    .line 179
    .line 180
    aput v10, v1, v9

    .line 181
    .line 182
    aput v12, v1, v11

    .line 183
    .line 184
    aput v14, v1, v13

    .line 185
    .line 186
    aput v16, v1, v15

    .line 187
    .line 188
    aput v18, v1, v17

    .line 189
    .line 190
    aput v20, v1, v19

    .line 191
    .line 192
    aput v22, v1, v21

    .line 193
    .line 194
    aput v6, v1, v23

    .line 195
    .line 196
    invoke-static {v1, v2, v3}, Lnc8;->K([I[I[I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1, v4, v1}, Lnc8;->K([I[I[I)V

    .line 200
    .line 201
    .line 202
    invoke-static {v2, v0, v2}, Lnc8;->K([I[I[I)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method public static R(Lix0;[Lbs2;Lot9;)V
    .locals 12

    .line 1
    new-instance v0, Lkb2;

    .line 2
    .line 3
    invoke-direct {v0}, Lkb2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lix0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, [I

    .line 9
    .line 10
    iget-object v2, v0, Lkb2;->a:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, v2

    .line 13
    check-cast v3, [I

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v4, v4, v1, v3}, Lnc8;->n(II[I[I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lix0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, [I

    .line 22
    .line 23
    iget-object v3, v0, Lkb2;->b:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v5, v3

    .line 26
    check-cast v5, [I

    .line 27
    .line 28
    invoke-static {v4, v4, p0, v5}, Lnc8;->n(II[I[I)V

    .line 29
    .line 30
    .line 31
    iget-object v5, v0, Lkb2;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, [I

    .line 34
    .line 35
    invoke-static {v5}, Lnc8;->T([I)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v0, Lkb2;->d:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, v5

    .line 41
    check-cast v6, [I

    .line 42
    .line 43
    invoke-static {v1, p0, v6}, Lnc8;->K([I[I[I)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Lkb2;

    .line 47
    .line 48
    invoke-direct {p0}, Lkb2;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v0, p0, p2}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 52
    .line 53
    .line 54
    move v1, v4

    .line 55
    :goto_0
    new-instance v6, Lbs2;

    .line 56
    .line 57
    invoke-direct {v6, v4}, Lbs2;-><init>(I)V

    .line 58
    .line 59
    .line 60
    const/16 v7, 0xa

    .line 61
    .line 62
    new-array v8, v7, [I

    .line 63
    .line 64
    iput-object v8, v6, Lbs2;->b:Ljava/lang/Object;

    .line 65
    .line 66
    new-array v9, v7, [I

    .line 67
    .line 68
    iput-object v9, v6, Lbs2;->c:Ljava/lang/Object;

    .line 69
    .line 70
    new-array v10, v7, [I

    .line 71
    .line 72
    iput-object v10, v6, Lbs2;->d:Ljava/lang/Object;

    .line 73
    .line 74
    new-array v7, v7, [I

    .line 75
    .line 76
    iput-object v7, v6, Lbs2;->e:Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v6, p1, v1

    .line 79
    .line 80
    move-object v6, v3

    .line 81
    check-cast v6, [I

    .line 82
    .line 83
    move-object v11, v2

    .line 84
    check-cast v11, [I

    .line 85
    .line 86
    invoke-static {v6, v11, v9, v8}, Lnc8;->c([I[I[I[I)V

    .line 87
    .line 88
    .line 89
    move-object v6, v5

    .line 90
    check-cast v6, [I

    .line 91
    .line 92
    sget-object v8, Ljb9;->r:[I

    .line 93
    .line 94
    invoke-static {v6, v8, v10}, Lnc8;->K([I[I[I)V

    .line 95
    .line 96
    .line 97
    iget-object v6, v0, Lkb2;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v6, [I

    .line 100
    .line 101
    invoke-static {v6, v6, v7}, Lnc8;->b([I[I[I)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    if-ne v1, v6, :cond_0

    .line 108
    .line 109
    return-void

    .line 110
    :cond_0
    invoke-static {v0, p0, v0, p2}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0
.end method

.method public static S()V
    .locals 19

    .line 1
    sget-object v1, Ljb9;->x:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Ljb9;->H:[I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit v1

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto/16 :goto_c

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x60

    .line 14
    .line 15
    new-array v2, v0, [Lkb2;

    .line 16
    .line 17
    new-instance v3, Lot9;

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    invoke-direct {v3, v4}, Lot9;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    new-array v5, v4, [I

    .line 26
    .line 27
    new-array v6, v4, [I

    .line 28
    .line 29
    sget-object v7, Ljb9;->f:[I

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    invoke-static {v8, v8, v7, v5}, Lnc8;->n(II[I[I)V

    .line 33
    .line 34
    .line 35
    sget-object v9, Ljb9;->k:[I

    .line 36
    .line 37
    invoke-static {v8, v8, v9, v6}, Lnc8;->n(II[I[I)V

    .line 38
    .line 39
    .line 40
    new-instance v10, Lkb2;

    .line 41
    .line 42
    invoke-direct {v10}, Lkb2;-><init>()V

    .line 43
    .line 44
    .line 45
    aput-object v10, v2, v8

    .line 46
    .line 47
    iget-object v11, v10, Lkb2;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v11, [I

    .line 50
    .line 51
    invoke-static {v8, v8, v5, v11}, Lnc8;->n(II[I[I)V

    .line 52
    .line 53
    .line 54
    iget-object v11, v10, Lkb2;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v11, [I

    .line 57
    .line 58
    invoke-static {v8, v8, v6, v11}, Lnc8;->n(II[I[I)V

    .line 59
    .line 60
    .line 61
    iget-object v11, v10, Lkb2;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v11, [I

    .line 64
    .line 65
    invoke-static {v11}, Lnc8;->T([I)V

    .line 66
    .line 67
    .line 68
    iget-object v10, v10, Lkb2;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v10, [I

    .line 71
    .line 72
    invoke-static {v5, v6, v10}, Lnc8;->K([I[I[I)V

    .line 73
    .line 74
    .line 75
    new-instance v5, Lkb2;

    .line 76
    .line 77
    invoke-direct {v5}, Lkb2;-><init>()V

    .line 78
    .line 79
    .line 80
    aget-object v6, v2, v8

    .line 81
    .line 82
    invoke-static {v6, v6, v5, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 83
    .line 84
    .line 85
    const/4 v10, 0x1

    .line 86
    :goto_0
    const/16 v11, 0x10

    .line 87
    .line 88
    if-ge v10, v11, :cond_1

    .line 89
    .line 90
    add-int v11, v8, v10

    .line 91
    .line 92
    add-int/lit8 v12, v11, -0x1

    .line 93
    .line 94
    aget-object v12, v2, v12

    .line 95
    .line 96
    new-instance v13, Lkb2;

    .line 97
    .line 98
    invoke-direct {v13}, Lkb2;-><init>()V

    .line 99
    .line 100
    .line 101
    aput-object v13, v2, v11

    .line 102
    .line 103
    invoke-static {v12, v5, v13, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v10, v10, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    new-array v5, v4, [I

    .line 110
    .line 111
    new-array v10, v4, [I

    .line 112
    .line 113
    sget-object v12, Ljb9;->n:[I

    .line 114
    .line 115
    invoke-static {v8, v8, v12, v5}, Lnc8;->n(II[I[I)V

    .line 116
    .line 117
    .line 118
    sget-object v12, Ljb9;->p:[I

    .line 119
    .line 120
    invoke-static {v8, v8, v12, v10}, Lnc8;->n(II[I[I)V

    .line 121
    .line 122
    .line 123
    new-instance v12, Lkb2;

    .line 124
    .line 125
    invoke-direct {v12}, Lkb2;-><init>()V

    .line 126
    .line 127
    .line 128
    aput-object v12, v2, v11

    .line 129
    .line 130
    iget-object v13, v12, Lkb2;->a:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v13, [I

    .line 133
    .line 134
    invoke-static {v8, v8, v5, v13}, Lnc8;->n(II[I[I)V

    .line 135
    .line 136
    .line 137
    iget-object v13, v12, Lkb2;->b:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v13, [I

    .line 140
    .line 141
    invoke-static {v8, v8, v10, v13}, Lnc8;->n(II[I[I)V

    .line 142
    .line 143
    .line 144
    iget-object v13, v12, Lkb2;->c:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v13, [I

    .line 147
    .line 148
    invoke-static {v13}, Lnc8;->T([I)V

    .line 149
    .line 150
    .line 151
    iget-object v12, v12, Lkb2;->d:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v12, [I

    .line 154
    .line 155
    invoke-static {v5, v10, v12}, Lnc8;->K([I[I[I)V

    .line 156
    .line 157
    .line 158
    new-instance v5, Lkb2;

    .line 159
    .line 160
    invoke-direct {v5}, Lkb2;-><init>()V

    .line 161
    .line 162
    .line 163
    aget-object v10, v2, v11

    .line 164
    .line 165
    invoke-static {v10, v10, v5, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 166
    .line 167
    .line 168
    const/4 v10, 0x1

    .line 169
    :goto_1
    if-ge v10, v11, :cond_2

    .line 170
    .line 171
    add-int v12, v11, v10

    .line 172
    .line 173
    add-int/lit8 v13, v12, -0x1

    .line 174
    .line 175
    aget-object v13, v2, v13

    .line 176
    .line 177
    new-instance v14, Lkb2;

    .line 178
    .line 179
    invoke-direct {v14}, Lkb2;-><init>()V

    .line 180
    .line 181
    .line 182
    aput-object v14, v2, v12

    .line 183
    .line 184
    invoke-static {v13, v5, v14, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 185
    .line 186
    .line 187
    add-int/lit8 v10, v10, 0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_2
    new-instance v5, Las2;

    .line 191
    .line 192
    invoke-direct {v5}, Las2;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-object v10, v5, Las2;->a:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v10, [I

    .line 198
    .line 199
    invoke-static {v8, v8, v7, v10}, Lnc8;->n(II[I[I)V

    .line 200
    .line 201
    .line 202
    iget-object v7, v5, Las2;->b:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v7, [I

    .line 205
    .line 206
    invoke-static {v8, v8, v9, v7}, Lnc8;->n(II[I[I)V

    .line 207
    .line 208
    .line 209
    iget-object v7, v5, Las2;->c:Ljava/io/Serializable;

    .line 210
    .line 211
    check-cast v7, [I

    .line 212
    .line 213
    invoke-static {v7}, Lnc8;->T([I)V

    .line 214
    .line 215
    .line 216
    iget-object v7, v5, Las2;->a:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v7, [I

    .line 219
    .line 220
    iget-object v9, v5, Las2;->d:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v9, [I

    .line 223
    .line 224
    invoke-static {v8, v8, v7, v9}, Lnc8;->n(II[I[I)V

    .line 225
    .line 226
    .line 227
    iget-object v7, v5, Las2;->b:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v7, [I

    .line 230
    .line 231
    iget-object v9, v5, Las2;->e:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v9, [I

    .line 234
    .line 235
    invoke-static {v8, v8, v7, v9}, Lnc8;->n(II[I[I)V

    .line 236
    .line 237
    .line 238
    const/4 v7, 0x4

    .line 239
    new-array v9, v7, [Lkb2;

    .line 240
    .line 241
    move v10, v8

    .line 242
    :goto_2
    if-ge v10, v7, :cond_3

    .line 243
    .line 244
    new-instance v12, Lkb2;

    .line 245
    .line 246
    invoke-direct {v12}, Lkb2;-><init>()V

    .line 247
    .line 248
    .line 249
    aput-object v12, v9, v10

    .line 250
    .line 251
    add-int/lit8 v10, v10, 0x1

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_3
    new-instance v10, Lkb2;

    .line 255
    .line 256
    invoke-direct {v10}, Lkb2;-><init>()V

    .line 257
    .line 258
    .line 259
    move v13, v8

    .line 260
    const/16 v14, 0x20

    .line 261
    .line 262
    :goto_3
    const/16 v15, 0x8

    .line 263
    .line 264
    if-ge v13, v15, :cond_9

    .line 265
    .line 266
    add-int/lit8 v16, v14, 0x1

    .line 267
    .line 268
    const/16 v17, 0x1

    .line 269
    .line 270
    new-instance v6, Lkb2;

    .line 271
    .line 272
    invoke-direct {v6}, Lkb2;-><init>()V

    .line 273
    .line 274
    .line 275
    aput-object v6, v2, v14

    .line 276
    .line 277
    move v14, v8

    .line 278
    :goto_4
    if-ge v14, v7, :cond_6

    .line 279
    .line 280
    if-nez v14, :cond_4

    .line 281
    .line 282
    invoke-static {v5, v6}, Ljb9;->P(Las2;Lkb2;)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_4
    invoke-static {v5, v10}, Ljb9;->P(Las2;Lkb2;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v6, v10, v6, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 290
    .line 291
    .line 292
    :goto_5
    invoke-static {v5}, Ljb9;->Q(Las2;)V

    .line 293
    .line 294
    .line 295
    aget-object v7, v9, v14

    .line 296
    .line 297
    invoke-static {v5, v7}, Ljb9;->P(Las2;Lkb2;)V

    .line 298
    .line 299
    .line 300
    add-int v7, v13, v14

    .line 301
    .line 302
    if-eq v7, v4, :cond_5

    .line 303
    .line 304
    move/from16 v7, v17

    .line 305
    .line 306
    :goto_6
    if-ge v7, v15, :cond_5

    .line 307
    .line 308
    invoke-static {v5}, Ljb9;->Q(Las2;)V

    .line 309
    .line 310
    .line 311
    add-int/lit8 v7, v7, 0x1

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 315
    .line 316
    const/4 v7, 0x4

    .line 317
    goto :goto_4

    .line 318
    :cond_6
    iget-object v7, v6, Lkb2;->a:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v7, [I

    .line 321
    .line 322
    invoke-static {v7, v7}, Lnc8;->L([I[I)V

    .line 323
    .line 324
    .line 325
    iget-object v6, v6, Lkb2;->d:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v6, [I

    .line 328
    .line 329
    invoke-static {v6, v6}, Lnc8;->L([I[I)V

    .line 330
    .line 331
    .line 332
    move v6, v8

    .line 333
    move/from16 v14, v16

    .line 334
    .line 335
    :goto_7
    const/4 v7, 0x3

    .line 336
    if-ge v6, v7, :cond_8

    .line 337
    .line 338
    shl-int v7, v17, v6

    .line 339
    .line 340
    move v15, v8

    .line 341
    :goto_8
    if-ge v15, v7, :cond_7

    .line 342
    .line 343
    new-instance v12, Lkb2;

    .line 344
    .line 345
    invoke-direct {v12}, Lkb2;-><init>()V

    .line 346
    .line 347
    .line 348
    aput-object v12, v2, v14

    .line 349
    .line 350
    sub-int v18, v14, v7

    .line 351
    .line 352
    aget-object v8, v2, v18

    .line 353
    .line 354
    aget-object v0, v9, v6

    .line 355
    .line 356
    invoke-static {v8, v0, v12, v3}, Ljb9;->M(Lkb2;Lkb2;Lkb2;Lot9;)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v15, v15, 0x1

    .line 360
    .line 361
    add-int/lit8 v14, v14, 0x1

    .line 362
    .line 363
    const/16 v0, 0x60

    .line 364
    .line 365
    const/4 v8, 0x0

    .line 366
    goto :goto_8

    .line 367
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 368
    .line 369
    const/16 v0, 0x60

    .line 370
    .line 371
    const/4 v8, 0x0

    .line 372
    goto :goto_7

    .line 373
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 374
    .line 375
    const/16 v0, 0x60

    .line 376
    .line 377
    const/4 v7, 0x4

    .line 378
    const/4 v8, 0x0

    .line 379
    goto :goto_3

    .line 380
    :cond_9
    invoke-static {v2}, Ljb9;->F([Lkb2;)V

    .line 381
    .line 382
    .line 383
    new-array v0, v11, [Ll22;

    .line 384
    .line 385
    sput-object v0, Ljb9;->y:[Ll22;

    .line 386
    .line 387
    const/4 v0, 0x0

    .line 388
    :goto_9
    if-ge v0, v11, :cond_a

    .line 389
    .line 390
    aget-object v3, v2, v0

    .line 391
    .line 392
    sget-object v5, Ljb9;->y:[Ll22;

    .line 393
    .line 394
    new-instance v6, Ll22;

    .line 395
    .line 396
    invoke-direct {v6}, Ll22;-><init>()V

    .line 397
    .line 398
    .line 399
    aput-object v6, v5, v0

    .line 400
    .line 401
    iget-object v5, v3, Lkb2;->a:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v5, [I

    .line 404
    .line 405
    iget-object v7, v3, Lkb2;->c:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v7, [I

    .line 408
    .line 409
    invoke-static {v5, v7, v5}, Lnc8;->K([I[I[I)V

    .line 410
    .line 411
    .line 412
    iget-object v5, v3, Lkb2;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v5, [I

    .line 415
    .line 416
    iget-object v7, v3, Lkb2;->c:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v7, [I

    .line 419
    .line 420
    invoke-static {v5, v7, v5}, Lnc8;->K([I[I[I)V

    .line 421
    .line 422
    .line 423
    iget-object v5, v3, Lkb2;->b:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v5, [I

    .line 426
    .line 427
    iget-object v7, v3, Lkb2;->a:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v7, [I

    .line 430
    .line 431
    iget-object v8, v6, Ll22;->c:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v8, [I

    .line 434
    .line 435
    iget-object v9, v6, Ll22;->b:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v9, [I

    .line 438
    .line 439
    invoke-static {v5, v7, v8, v9}, Lnc8;->c([I[I[I[I)V

    .line 440
    .line 441
    .line 442
    iget-object v5, v3, Lkb2;->a:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v5, [I

    .line 445
    .line 446
    iget-object v3, v3, Lkb2;->b:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v3, [I

    .line 449
    .line 450
    iget-object v7, v6, Ll22;->d:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v7, [I

    .line 453
    .line 454
    invoke-static {v5, v3, v7}, Lnc8;->K([I[I[I)V

    .line 455
    .line 456
    .line 457
    iget-object v3, v6, Ll22;->d:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v3, [I

    .line 460
    .line 461
    sget-object v5, Ljb9;->t:[I

    .line 462
    .line 463
    invoke-static {v3, v5, v3}, Lnc8;->K([I[I[I)V

    .line 464
    .line 465
    .line 466
    iget-object v3, v6, Ll22;->b:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v3, [I

    .line 469
    .line 470
    invoke-static {v3}, Lnc8;->M([I)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v6, Ll22;->c:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v3, [I

    .line 476
    .line 477
    invoke-static {v3}, Lnc8;->M([I)V

    .line 478
    .line 479
    .line 480
    iget-object v3, v6, Ll22;->d:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v3, [I

    .line 483
    .line 484
    invoke-static {v3}, Lnc8;->M([I)V

    .line 485
    .line 486
    .line 487
    add-int/lit8 v0, v0, 0x1

    .line 488
    .line 489
    goto :goto_9

    .line 490
    :cond_a
    new-array v0, v11, [Ll22;

    .line 491
    .line 492
    sput-object v0, Ljb9;->G:[Ll22;

    .line 493
    .line 494
    const/4 v0, 0x0

    .line 495
    :goto_a
    if-ge v0, v11, :cond_b

    .line 496
    .line 497
    add-int v3, v11, v0

    .line 498
    .line 499
    aget-object v3, v2, v3

    .line 500
    .line 501
    sget-object v5, Ljb9;->G:[Ll22;

    .line 502
    .line 503
    new-instance v6, Ll22;

    .line 504
    .line 505
    invoke-direct {v6}, Ll22;-><init>()V

    .line 506
    .line 507
    .line 508
    aput-object v6, v5, v0

    .line 509
    .line 510
    iget-object v5, v3, Lkb2;->a:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v5, [I

    .line 513
    .line 514
    iget-object v7, v3, Lkb2;->c:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v7, [I

    .line 517
    .line 518
    invoke-static {v5, v7, v5}, Lnc8;->K([I[I[I)V

    .line 519
    .line 520
    .line 521
    iget-object v5, v3, Lkb2;->b:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v5, [I

    .line 524
    .line 525
    iget-object v7, v3, Lkb2;->c:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v7, [I

    .line 528
    .line 529
    invoke-static {v5, v7, v5}, Lnc8;->K([I[I[I)V

    .line 530
    .line 531
    .line 532
    iget-object v5, v3, Lkb2;->b:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v5, [I

    .line 535
    .line 536
    iget-object v7, v3, Lkb2;->a:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v7, [I

    .line 539
    .line 540
    iget-object v8, v6, Ll22;->c:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v8, [I

    .line 543
    .line 544
    iget-object v9, v6, Ll22;->b:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v9, [I

    .line 547
    .line 548
    invoke-static {v5, v7, v8, v9}, Lnc8;->c([I[I[I[I)V

    .line 549
    .line 550
    .line 551
    iget-object v5, v3, Lkb2;->a:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast v5, [I

    .line 554
    .line 555
    iget-object v3, v3, Lkb2;->b:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v3, [I

    .line 558
    .line 559
    iget-object v7, v6, Ll22;->d:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v7, [I

    .line 562
    .line 563
    invoke-static {v5, v3, v7}, Lnc8;->K([I[I[I)V

    .line 564
    .line 565
    .line 566
    iget-object v3, v6, Ll22;->d:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v3, [I

    .line 569
    .line 570
    sget-object v5, Ljb9;->t:[I

    .line 571
    .line 572
    invoke-static {v3, v5, v3}, Lnc8;->K([I[I[I)V

    .line 573
    .line 574
    .line 575
    iget-object v3, v6, Ll22;->b:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast v3, [I

    .line 578
    .line 579
    invoke-static {v3}, Lnc8;->M([I)V

    .line 580
    .line 581
    .line 582
    iget-object v3, v6, Ll22;->c:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v3, [I

    .line 585
    .line 586
    invoke-static {v3}, Lnc8;->M([I)V

    .line 587
    .line 588
    .line 589
    iget-object v3, v6, Ll22;->d:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v3, [I

    .line 592
    .line 593
    invoke-static {v3}, Lnc8;->M([I)V

    .line 594
    .line 595
    .line 596
    add-int/lit8 v0, v0, 0x1

    .line 597
    .line 598
    goto :goto_a

    .line 599
    :cond_b
    const/16 v0, 0x780

    .line 600
    .line 601
    new-array v0, v0, [I

    .line 602
    .line 603
    sput-object v0, Ljb9;->H:[I

    .line 604
    .line 605
    new-array v0, v4, [I

    .line 606
    .line 607
    new-array v3, v4, [I

    .line 608
    .line 609
    new-array v4, v4, [I

    .line 610
    .line 611
    const/4 v5, 0x0

    .line 612
    const/16 v6, 0x60

    .line 613
    .line 614
    const/16 v12, 0x20

    .line 615
    .line 616
    :goto_b
    if-ge v12, v6, :cond_c

    .line 617
    .line 618
    aget-object v7, v2, v12

    .line 619
    .line 620
    iget-object v8, v7, Lkb2;->a:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v8, [I

    .line 623
    .line 624
    iget-object v9, v7, Lkb2;->c:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v9, [I

    .line 627
    .line 628
    invoke-static {v8, v9, v8}, Lnc8;->K([I[I[I)V

    .line 629
    .line 630
    .line 631
    iget-object v8, v7, Lkb2;->b:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v8, [I

    .line 634
    .line 635
    iget-object v9, v7, Lkb2;->c:Ljava/lang/Object;

    .line 636
    .line 637
    check-cast v9, [I

    .line 638
    .line 639
    invoke-static {v8, v9, v8}, Lnc8;->K([I[I[I)V

    .line 640
    .line 641
    .line 642
    iget-object v8, v7, Lkb2;->b:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v8, [I

    .line 645
    .line 646
    iget-object v9, v7, Lkb2;->a:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v9, [I

    .line 649
    .line 650
    invoke-static {v8, v9, v3, v0}, Lnc8;->c([I[I[I[I)V

    .line 651
    .line 652
    .line 653
    iget-object v8, v7, Lkb2;->a:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v8, [I

    .line 656
    .line 657
    iget-object v7, v7, Lkb2;->b:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast v7, [I

    .line 660
    .line 661
    invoke-static {v8, v7, v4}, Lnc8;->K([I[I[I)V

    .line 662
    .line 663
    .line 664
    sget-object v7, Ljb9;->t:[I

    .line 665
    .line 666
    invoke-static {v4, v7, v4}, Lnc8;->K([I[I[I)V

    .line 667
    .line 668
    .line 669
    invoke-static {v0}, Lnc8;->M([I)V

    .line 670
    .line 671
    .line 672
    invoke-static {v3}, Lnc8;->M([I)V

    .line 673
    .line 674
    .line 675
    invoke-static {v4}, Lnc8;->M([I)V

    .line 676
    .line 677
    .line 678
    sget-object v7, Ljb9;->H:[I

    .line 679
    .line 680
    const/4 v8, 0x0

    .line 681
    invoke-static {v8, v5, v0, v7}, Lnc8;->n(II[I[I)V

    .line 682
    .line 683
    .line 684
    add-int/lit8 v7, v5, 0xa

    .line 685
    .line 686
    sget-object v9, Ljb9;->H:[I

    .line 687
    .line 688
    invoke-static {v8, v7, v3, v9}, Lnc8;->n(II[I[I)V

    .line 689
    .line 690
    .line 691
    add-int/lit8 v7, v5, 0x14

    .line 692
    .line 693
    sget-object v9, Ljb9;->H:[I

    .line 694
    .line 695
    invoke-static {v8, v7, v4, v9}, Lnc8;->n(II[I[I)V

    .line 696
    .line 697
    .line 698
    add-int/lit8 v5, v5, 0x1e

    .line 699
    .line 700
    add-int/lit8 v12, v12, 0x1

    .line 701
    .line 702
    goto :goto_b

    .line 703
    :cond_c
    monitor-exit v1

    .line 704
    return-void

    .line 705
    :goto_c
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    throw v0
.end method

.method public static T([B[B)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    aget-byte p0, p1, v1

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xf8

    .line 10
    .line 11
    int-to-byte p0, p0

    .line 12
    aput-byte p0, p1, v1

    .line 13
    .line 14
    const/16 p0, 0x1f

    .line 15
    .line 16
    aget-byte v0, p1, p0

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x7f

    .line 19
    .line 20
    int-to-byte v0, v0

    .line 21
    aput-byte v0, p1, p0

    .line 22
    .line 23
    or-int/lit8 v0, v0, 0x40

    .line 24
    .line 25
    int-to-byte v0, v0

    .line 26
    aput-byte v0, p1, p0

    .line 27
    .line 28
    return-void
.end method

.method public static U(Landroid/os/Parcel;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Ljb9;->n0(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public static V(Landroid/os/Parcel;I)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, p1, v0}, Ljb9;->n0(Landroid/os/Parcel;II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static W(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    invoke-static {p0, p1, v0}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static X(Landroid/os/Parcel;I)J
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Ljb9;->n0(Landroid/os/Parcel;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public static Y(Landroid/os/Parcel;I)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Ljb9;->o0(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static Z(Landroid/os/Parcel;I)I
    .locals 2

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    if-eq v1, v0, :cond_0

    .line 6
    .line 7
    shr-int/lit8 p0, p1, 0x10

    .line 8
    .line 9
    int-to-char p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static a0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/InterruptedException;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p0, Ljava/lang/ClassCircularityError;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p0, Ljava/lang/ClassFormatError;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p0, Ljava/lang/IncompatibleClassChangeError;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of v0, p0, Ljava/lang/BootstrapMethodError;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    instance-of v0, p0, Ljava/lang/VerifyError;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    :goto_0
    instance-of v0, p0, Ljava/lang/Error;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Ly5;->k(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    throw p0

    .line 50
    :cond_3
    check-cast p0, Ljava/lang/Error;

    .line 51
    .line 52
    throw p0
.end method

.method public static b0([BLas2;)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Las2;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [I

    .line 6
    .line 7
    iget-object v2, v0, Las2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, [I

    .line 10
    .line 11
    iget-object v3, v0, Las2;->c:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v3, [I

    .line 14
    .line 15
    iget-object v4, v0, Las2;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, [I

    .line 18
    .line 19
    iget-object v5, v0, Las2;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, [I

    .line 22
    .line 23
    invoke-static {}, Ljb9;->S()V

    .line 24
    .line 25
    .line 26
    const/16 v6, 0x8

    .line 27
    .line 28
    new-array v7, v6, [I

    .line 29
    .line 30
    move-object/from16 v8, p0

    .line 31
    .line 32
    invoke-static {v8, v7}, Liz1;->i([B[I)V

    .line 33
    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    aget v9, v7, v8

    .line 37
    .line 38
    not-int v9, v9

    .line 39
    sget-object v10, Liz1;->c:[I

    .line 40
    .line 41
    const/4 v11, 0x1

    .line 42
    and-int/2addr v9, v11

    .line 43
    neg-int v9, v9

    .line 44
    int-to-long v12, v9

    .line 45
    const-wide v14, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v12, v14

    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    move v9, v8

    .line 54
    :goto_0
    if-ge v9, v6, :cond_0

    .line 55
    .line 56
    move/from16 p0, v8

    .line 57
    .line 58
    aget v8, v7, v9

    .line 59
    .line 60
    move/from16 v18, v11

    .line 61
    .line 62
    move-wide/from16 v19, v12

    .line 63
    .line 64
    int-to-long v11, v8

    .line 65
    and-long/2addr v11, v14

    .line 66
    aget v8, v10, v9

    .line 67
    .line 68
    int-to-long v14, v8

    .line 69
    and-long v13, v14, v19

    .line 70
    .line 71
    add-long/2addr v11, v13

    .line 72
    add-long v11, v11, v16

    .line 73
    .line 74
    long-to-int v8, v11

    .line 75
    aput v8, v7, v9

    .line 76
    .line 77
    const/16 v8, 0x20

    .line 78
    .line 79
    ushr-long v16, v11, v8

    .line 80
    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    move/from16 v8, p0

    .line 84
    .line 85
    move/from16 v11, v18

    .line 86
    .line 87
    move-wide/from16 v12, v19

    .line 88
    .line 89
    const-wide v14, 0xffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move/from16 p0, v8

    .line 96
    .line 97
    move/from16 v18, v11

    .line 98
    .line 99
    move v8, v6

    .line 100
    move/from16 v9, v18

    .line 101
    .line 102
    :goto_1
    add-int/lit8 v8, v8, -0x1

    .line 103
    .line 104
    if-ltz v8, :cond_1

    .line 105
    .line 106
    aget v10, v7, v8

    .line 107
    .line 108
    ushr-int/lit8 v11, v10, 0x1

    .line 109
    .line 110
    shl-int/lit8 v9, v9, 0x1f

    .line 111
    .line 112
    or-int/2addr v9, v11

    .line 113
    aput v9, v7, v8

    .line 114
    .line 115
    move v9, v10

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    move/from16 v8, p0

    .line 118
    .line 119
    :goto_2
    const/4 v9, 0x7

    .line 120
    if-ge v8, v6, :cond_2

    .line 121
    .line 122
    aget v10, v7, v8

    .line 123
    .line 124
    const v11, 0xaa00aa

    .line 125
    .line 126
    .line 127
    invoke-static {v10, v11, v9}, Lw13;->d(III)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    const v10, 0xcccc

    .line 132
    .line 133
    .line 134
    const/16 v11, 0xe

    .line 135
    .line 136
    invoke-static {v9, v10, v11}, Lw13;->d(III)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    const v10, 0xf000f0

    .line 141
    .line 142
    .line 143
    const/4 v11, 0x4

    .line 144
    invoke-static {v9, v10, v11}, Lw13;->d(III)I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    const v10, 0xff00

    .line 149
    .line 150
    .line 151
    invoke-static {v9, v10, v6}, Lw13;->d(III)I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    aput v9, v7, v8

    .line 156
    .line 157
    add-int/lit8 v8, v8, 0x1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    const/16 v8, 0xa

    .line 161
    .line 162
    new-array v10, v8, [I

    .line 163
    .line 164
    new-array v11, v8, [I

    .line 165
    .line 166
    new-array v12, v8, [I

    .line 167
    .line 168
    new-array v13, v8, [I

    .line 169
    .line 170
    move/from16 v14, p0

    .line 171
    .line 172
    :goto_3
    if-ge v14, v8, :cond_3

    .line 173
    .line 174
    aput p0, v5, v14

    .line 175
    .line 176
    add-int/lit8 v14, v14, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_3
    invoke-static {v4}, Lnc8;->T([I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v3}, Lnc8;->T([I)V

    .line 183
    .line 184
    .line 185
    move/from16 v14, p0

    .line 186
    .line 187
    :goto_4
    if-ge v14, v8, :cond_4

    .line 188
    .line 189
    aput p0, v2, v14

    .line 190
    .line 191
    add-int/lit8 v14, v14, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_4
    invoke-static {v1}, Lnc8;->T([I)V

    .line 195
    .line 196
    .line 197
    const/16 v8, 0x1c

    .line 198
    .line 199
    move/from16 v14, p0

    .line 200
    .line 201
    :goto_5
    move/from16 v15, p0

    .line 202
    .line 203
    :goto_6
    if-ge v15, v6, :cond_6

    .line 204
    .line 205
    aget v16, v7, v15

    .line 206
    .line 207
    ushr-int v16, v16, v8

    .line 208
    .line 209
    ushr-int/lit8 v17, v16, 0x3

    .line 210
    .line 211
    move/from16 v19, v9

    .line 212
    .line 213
    and-int/lit8 v9, v17, 0x1

    .line 214
    .line 215
    neg-int v6, v9

    .line 216
    xor-int v6, v16, v6

    .line 217
    .line 218
    and-int/lit8 v6, v6, 0x7

    .line 219
    .line 220
    mul-int/lit16 v0, v15, 0xf0

    .line 221
    .line 222
    move/from16 v16, v6

    .line 223
    .line 224
    move-object/from16 v17, v7

    .line 225
    .line 226
    move/from16 v6, p0

    .line 227
    .line 228
    :goto_7
    const/16 v7, 0x8

    .line 229
    .line 230
    if-ge v6, v7, :cond_5

    .line 231
    .line 232
    xor-int v20, v6, v16

    .line 233
    .line 234
    add-int/lit8 v20, v20, -0x1

    .line 235
    .line 236
    shr-int/lit8 v7, v20, 0x1f

    .line 237
    .line 238
    move/from16 v20, v6

    .line 239
    .line 240
    sget-object v6, Ljb9;->H:[I

    .line 241
    .line 242
    invoke-static {v7, v0, v6, v10}, Lnc8;->j(II[I[I)V

    .line 243
    .line 244
    .line 245
    add-int/lit8 v6, v0, 0xa

    .line 246
    .line 247
    move/from16 v21, v0

    .line 248
    .line 249
    sget-object v0, Ljb9;->H:[I

    .line 250
    .line 251
    invoke-static {v7, v6, v0, v11}, Lnc8;->j(II[I[I)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v0, v21, 0x14

    .line 255
    .line 256
    sget-object v6, Ljb9;->H:[I

    .line 257
    .line 258
    invoke-static {v7, v0, v6, v12}, Lnc8;->j(II[I[I)V

    .line 259
    .line 260
    .line 261
    add-int/lit8 v0, v21, 0x1e

    .line 262
    .line 263
    add-int/lit8 v6, v20, 0x1

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_5
    xor-int v0, v14, v9

    .line 267
    .line 268
    invoke-static {v5, v0}, Lnc8;->k([II)V

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v0}, Lnc8;->k([II)V

    .line 272
    .line 273
    .line 274
    invoke-static {v4, v5, v4, v5}, Lnc8;->c([I[I[I[I)V

    .line 275
    .line 276
    .line 277
    invoke-static {v5, v10, v5}, Lnc8;->K([I[I[I)V

    .line 278
    .line 279
    .line 280
    invoke-static {v4, v11, v4}, Lnc8;->K([I[I[I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v2, v1, v13}, Lnc8;->K([I[I[I)V

    .line 284
    .line 285
    .line 286
    invoke-static {v13, v12, v13}, Lnc8;->K([I[I[I)V

    .line 287
    .line 288
    .line 289
    invoke-static {v4, v5, v1, v2}, Lnc8;->c([I[I[I[I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v3, v13, v4, v5}, Lnc8;->c([I[I[I[I)V

    .line 293
    .line 294
    .line 295
    invoke-static {v5, v4, v3}, Lnc8;->K([I[I[I)V

    .line 296
    .line 297
    .line 298
    invoke-static {v5, v2, v5}, Lnc8;->K([I[I[I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v4, v1, v4}, Lnc8;->K([I[I[I)V

    .line 302
    .line 303
    .line 304
    add-int/lit8 v15, v15, 0x1

    .line 305
    .line 306
    move-object/from16 v0, p1

    .line 307
    .line 308
    move v14, v9

    .line 309
    move-object/from16 v7, v17

    .line 310
    .line 311
    move/from16 v9, v19

    .line 312
    .line 313
    const/16 v6, 0x8

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_6
    move-object/from16 v17, v7

    .line 317
    .line 318
    move/from16 v19, v9

    .line 319
    .line 320
    add-int/lit8 v8, v8, -0x4

    .line 321
    .line 322
    if-gez v8, :cond_7

    .line 323
    .line 324
    invoke-static {v5, v14}, Lnc8;->k([II)V

    .line 325
    .line 326
    .line 327
    invoke-static {v2, v14}, Lnc8;->k([II)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_7
    invoke-static/range {p1 .. p1}, Ljb9;->Q(Las2;)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v0, p1

    .line 335
    .line 336
    move-object/from16 v7, v17

    .line 337
    .line 338
    move/from16 v9, v19

    .line 339
    .line 340
    const/16 v6, 0x8

    .line 341
    .line 342
    goto/16 :goto_5
.end method

.method public static c0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :try_start_0
    check-cast p0, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v1, "Could not serialize number"

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    const-string p0, "true"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_3
    const-string p0, "false"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_4
    :try_start_1
    new-instance v0, Lorg/json/JSONStringer;

    .line 56
    .line 57
    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Ljb9;->d0(Ljava/lang/Object;Lorg/json/JSONStringer;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    return-object p0

    .line 68
    :catch_1
    move-exception p0

    .line 69
    new-instance v0, Ljava/io/IOException;

    .line 70
    .line 71
    const-string v1, "Failed to serialize JSON"

    .line 72
    .line 73
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public static d0(Ljava/lang/Object;Lorg/json/JSONStringer;)V
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, p1}, Ljb9;->d0(Ljava/lang/Object;Lorg/json/JSONStringer;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    check-cast p0, Ljava/util/Collection;

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0, p1}, Ljb9;->d0(Ljava/lang/Object;Lorg/json/JSONStringer;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {p1, p0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static e(I[I[I)I
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0xe

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    aget v3, p1, v2

    .line 9
    .line 10
    int-to-long v3, v3

    .line 11
    const-wide v5, 0xffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    and-long/2addr v3, v5

    .line 17
    add-int v7, p0, v2

    .line 18
    .line 19
    aget v8, p2, v7

    .line 20
    .line 21
    int-to-long v8, v8

    .line 22
    and-long/2addr v5, v8

    .line 23
    add-long/2addr v3, v5

    .line 24
    add-long/2addr v3, v0

    .line 25
    long-to-int v0, v3

    .line 26
    aput v0, p2, v7

    .line 27
    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    ushr-long v0, v3, v0

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    long-to-int p0, v0

    .line 36
    return p0
.end method

.method public static e0(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, p1

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static f([II)V
    .locals 6

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide v2, 0xffffffffL

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    const/16 p1, 0x15

    .line 9
    .line 10
    aget v4, p0, p1

    .line 11
    .line 12
    int-to-long v4, v4

    .line 13
    and-long/2addr v2, v4

    .line 14
    add-long/2addr v0, v2

    .line 15
    long-to-int v2, v0

    .line 16
    aput v2, p0, p1

    .line 17
    .line 18
    const/16 p1, 0x20

    .line 19
    .line 20
    ushr-long/2addr v0, p1

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long p1, v0, v2

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/16 p1, 0x16

    .line 29
    .line 30
    :goto_0
    const/16 v0, 0x1c

    .line 31
    .line 32
    if-ge p1, v0, :cond_2

    .line 33
    .line 34
    aget v0, p0, p1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    aput v0, p0, p1

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method public static f0(Lsa1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lmp6;->a:Lmp6;

    .line 5
    .line 6
    invoke-static {}, Lmp6;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->N(Lil0;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 25
    .line 26
    invoke-static {p0}, Lrs9;->u(Lk28;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-class v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 31
    .line 32
    invoke-static {p0, v0}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static g0(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "category"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string p1, "category_title"

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static h(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static h0(I[I[I)I
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/16 v3, 0xe

    .line 5
    .line 6
    if-ge v2, v3, :cond_0

    .line 7
    .line 8
    add-int v3, p0, v2

    .line 9
    .line 10
    aget v4, p2, v3

    .line 11
    .line 12
    int-to-long v4, v4

    .line 13
    const-wide v6, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr v4, v6

    .line 19
    aget v8, p1, v2

    .line 20
    .line 21
    int-to-long v8, v8

    .line 22
    and-long/2addr v6, v8

    .line 23
    sub-long/2addr v4, v6

    .line 24
    add-long/2addr v4, v0

    .line 25
    long-to-int v0, v4

    .line 26
    aput v0, p2, v3

    .line 27
    .line 28
    const/16 v0, 0x20

    .line 29
    .line 30
    shr-long v0, v4, v0

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    long-to-int p0, v0

    .line 36
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljb9;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    xor-int/lit8 p0, p0, 0x1

    .line 9
    .line 10
    invoke-static {p1, p0}, Ljb9;->h(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static i0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-static {p0}, Ljb9;->j0(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p0, Lorg/json/JSONArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ge v1, v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Ljb9;->i0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0

    .line 49
    :cond_2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    :cond_3
    return-object p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lf6;->n(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static j0(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljb9;->i0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljb9;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static k0(Landroid/os/Parcel;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-char v2, v0

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x4f45

    .line 15
    .line 16
    if-ne v2, v4, :cond_1

    .line 17
    .line 18
    add-int/2addr v1, v3

    .line 19
    if-lt v1, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-gt v1, v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    new-instance v0, Lhp5;

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v2, v2, 0x20

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v2, v4

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const-string v2, "Size read is invalid start="

    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, " end="

    .line 63
    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1, p0}, Lhp5;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    new-instance v1, Lhp5;

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v2, "Expected object header. Got 0x"

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {v1, v0, p0}, Lhp5;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 95
    .line 96
    .line 97
    throw v1
.end method

.method public static l(Landroid/content/Context;)Lhq3;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lfe2;

    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcz4;-><init>(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcz4;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lcz4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Package manager required to locate emoji font provider"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lyc9;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v3, "androidx.content.action.LOAD_EMOJI_FONT"

    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 57
    .line 58
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    and-int/2addr v6, v7

    .line 70
    if-ne v6, v7, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v5

    .line 74
    :goto_1
    if-nez v4, :cond_3

    .line 75
    .line 76
    :goto_2
    move-object v6, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    :try_start_0
    iget-object v7, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v8}, Lcz4;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    array-length v2, v0

    .line 92
    :goto_3
    if-ge v3, v2, :cond_4

    .line 93
    .line 94
    aget-object v4, v0, v3

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    new-instance v6, Lfq3;

    .line 111
    .line 112
    const-string v9, "emojicompat-emoji-font"

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    const/4 v12, 0x0

    .line 116
    invoke-direct/range {v6 .. v12}, Lfq3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "emoji2.text.DefaultEmojiConfig"

    .line 122
    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :goto_4
    if-nez v6, :cond_5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    new-instance v5, Lhq3;

    .line 131
    .line 132
    new-instance v0, Lgq3;

    .line 133
    .line 134
    invoke-direct {v0, p0, v6}, Lgq3;-><init>(Landroid/content/Context;Lfq3;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v5, v0}, Lgu2;-><init>(Lju2;)V

    .line 138
    .line 139
    .line 140
    :goto_5
    return-object v5
.end method

.method public static l0(Landroid/content/Context;Ljava/util/concurrent/Executor;Lx76;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v8, 0x7

    .line 37
    const/4 v9, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_12

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v3, "ProfileInstaller"

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_0

    .line 63
    .line 64
    :catch_0
    move v0, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v14, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    move-wide/from16 v16, v14

    .line 84
    .line 85
    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 86
    .line 87
    cmp-long v0, v16, v13

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v0, v9

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-interface {v5, v7, v12}, Lx76;->k(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v13, v0

    .line 103
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_5
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Skipping profile installation for "

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, La86;->c(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_36

    .line 140
    .line 141
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "Installing profile for "

    .line 144
    .line 145
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    sget-object v13, Lyc9;->l:[B

    .line 163
    .line 164
    new-instance v7, Ljava/io/File;

    .line 165
    .line 166
    new-instance v0, Ljava/io/File;

    .line 167
    .line 168
    const-string v3, "/data/misc/profiles/cur/0"

    .line 169
    .line 170
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "primary.prof"

    .line 174
    .line 175
    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Lsk2;

    .line 179
    .line 180
    const-string v0, "dexopt/baseline.prof"

    .line 181
    .line 182
    move-object v3, v4

    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    invoke-direct/range {v2 .. v7}, Lsk2;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Lx76;Ljava/lang/String;Ljava/io/File;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, v2, Lsk2;->c:[B

    .line 189
    .line 190
    if-nez v4, :cond_5

    .line 191
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const/4 v3, 0x3

    .line 199
    invoke-virtual {v2, v3, v0}, Lsk2;->b(ILjava/io/Serializable;)V

    .line 200
    .line 201
    .line 202
    :goto_4
    const/4 v7, 0x1

    .line 203
    goto/16 :goto_33

    .line 204
    .line 205
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    const/4 v14, 0x4

    .line 210
    if-eqz v6, :cond_7

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-nez v6, :cond_6

    .line 217
    .line 218
    invoke-virtual {v2, v14, v12}, Lsk2;->b(ILjava/io/Serializable;)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_6
    const/4 v6, 0x1

    .line 223
    goto :goto_5

    .line 224
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 225
    .line 226
    .line 227
    move-result v6

    .line 228
    if-nez v6, :cond_6

    .line 229
    .line 230
    invoke-virtual {v2, v14, v12}, Lsk2;->b(ILjava/io/Serializable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :catch_1
    const/4 v7, 0x1

    .line 235
    goto/16 :goto_32

    .line 236
    .line 237
    :goto_5
    iput-boolean v6, v2, Lsk2;->f:Z

    .line 238
    .line 239
    const/4 v6, 0x6

    .line 240
    :try_start_7
    invoke-virtual {v2, v3, v0}, Lsk2;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 241
    .line 242
    .line 243
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 244
    move-object v7, v0

    .line 245
    goto :goto_7

    .line 246
    :catch_2
    move-exception v0

    .line 247
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :catch_3
    move-exception v0

    .line 252
    invoke-interface {v5, v6, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :goto_6
    move-object v7, v12

    .line 256
    :goto_7
    const-string v15, "Invalid magic"

    .line 257
    .line 258
    const/16 v6, 0x8

    .line 259
    .line 260
    if-eqz v7, :cond_9

    .line 261
    .line 262
    :try_start_8
    invoke-static {v7, v14}, Lms8;->F(Ljava/io/InputStream;I)[B

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-static {v7, v14}, Lms8;->F(Ljava/io/InputStream;I)[B

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v9, v2, Lsk2;->e:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {v7, v0, v9}, Lyc9;->a0(Ljava/io/FileInputStream;[BLjava/lang/String;)[Ltk2;

    .line 279
    .line 280
    .line 281
    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 282
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 283
    .line 284
    .line 285
    goto :goto_c

    .line 286
    :catch_4
    move-exception v0

    .line 287
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_c

    .line 291
    :catchall_2
    move-exception v0

    .line 292
    move-object v1, v0

    .line 293
    goto :goto_d

    .line 294
    :catch_5
    move-exception v0

    .line 295
    goto :goto_8

    .line 296
    :catch_6
    move-exception v0

    .line 297
    goto :goto_a

    .line 298
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 304
    :goto_8
    :try_start_b
    invoke-interface {v5, v6, v0}, Lx76;->k(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 305
    .line 306
    .line 307
    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :catch_7
    move-exception v0

    .line 312
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :goto_a
    :try_start_d
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :goto_b
    move-object v9, v12

    .line 321
    :goto_c
    iput-object v9, v2, Lsk2;->g:[Ltk2;

    .line 322
    .line 323
    goto :goto_f

    .line 324
    :goto_d
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 325
    .line 326
    .line 327
    goto :goto_e

    .line 328
    :catch_8
    move-exception v0

    .line 329
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :goto_e
    throw v1

    .line 333
    :cond_9
    :goto_f
    iget-object v0, v2, Lsk2;->g:[Ltk2;

    .line 334
    .line 335
    if-eqz v0, :cond_d

    .line 336
    .line 337
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 338
    .line 339
    const/16 v9, 0x1f

    .line 340
    .line 341
    if-lt v7, v9, :cond_d

    .line 342
    .line 343
    :try_start_f
    const-string v7, "dexopt/baseline.profm"

    .line 344
    .line 345
    invoke-virtual {v2, v3, v7}, Lsk2;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 346
    .line 347
    .line 348
    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9

    .line 349
    if-eqz v3, :cond_b

    .line 350
    .line 351
    :try_start_10
    sget-object v7, Lyc9;->m:[B

    .line 352
    .line 353
    invoke-static {v3, v14}, Lms8;->F(Ljava/io/InputStream;I)[B

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eqz v7, :cond_a

    .line 362
    .line 363
    invoke-static {v3, v14}, Lms8;->F(Ljava/io/InputStream;I)[B

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    invoke-static {v3, v7, v4, v0}, Lyc9;->X(Ljava/io/FileInputStream;[B[B[Ltk2;)[Ltk2;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iput-object v0, v2, Lsk2;->g:[Ltk2;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 372
    .line 373
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_9

    .line 374
    .line 375
    .line 376
    move-object v0, v2

    .line 377
    goto :goto_16

    .line 378
    :catch_9
    move-exception v0

    .line 379
    goto :goto_12

    .line 380
    :catch_a
    move-exception v0

    .line 381
    goto :goto_13

    .line 382
    :catch_b
    move-exception v0

    .line 383
    goto :goto_14

    .line 384
    :catchall_3
    move-exception v0

    .line 385
    move-object v4, v0

    .line 386
    goto :goto_10

    .line 387
    :cond_a
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 388
    .line 389
    invoke-direct {v0, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 393
    :goto_10
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 394
    .line 395
    .line 396
    goto :goto_11

    .line 397
    :catchall_4
    move-exception v0

    .line 398
    :try_start_14
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 399
    .line 400
    .line 401
    :goto_11
    throw v4

    .line 402
    :cond_b
    if-eqz v3, :cond_c

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_9

    .line 405
    .line 406
    .line 407
    goto :goto_15

    .line 408
    :goto_12
    iput-object v12, v2, Lsk2;->g:[Ltk2;

    .line 409
    .line 410
    invoke-interface {v5, v6, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    goto :goto_15

    .line 414
    :goto_13
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto :goto_15

    .line 418
    :goto_14
    const/16 v3, 0x9

    .line 419
    .line 420
    invoke-interface {v5, v3, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_c
    :goto_15
    move-object v0, v12

    .line 424
    :goto_16
    if-eqz v0, :cond_d

    .line 425
    .line 426
    move-object v2, v0

    .line 427
    :cond_d
    iget-object v3, v2, Lsk2;->b:Lx76;

    .line 428
    .line 429
    iget-object v0, v2, Lsk2;->g:[Ltk2;

    .line 430
    .line 431
    iget-object v4, v2, Lsk2;->c:[B

    .line 432
    .line 433
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 434
    .line 435
    if-eqz v0, :cond_11

    .line 436
    .line 437
    if-nez v4, :cond_e

    .line 438
    .line 439
    goto :goto_1c

    .line 440
    :cond_e
    iget-boolean v7, v2, Lsk2;->f:Z

    .line 441
    .line 442
    if-eqz v7, :cond_10

    .line 443
    .line 444
    :try_start_15
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 445
    .line 446
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_c

    .line 447
    .line 448
    .line 449
    :try_start_16
    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 453
    .line 454
    .line 455
    invoke-static {v7, v4, v0}, Lyc9;->j0(Ljava/io/ByteArrayOutputStream;[B[Ltk2;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_f

    .line 460
    .line 461
    const/4 v0, 0x5

    .line 462
    invoke-interface {v3, v0, v12}, Lx76;->k(ILjava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    iput-object v12, v2, Lsk2;->g:[Ltk2;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 466
    .line 467
    :try_start_17
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_c

    .line 468
    .line 469
    .line 470
    goto :goto_1c

    .line 471
    :catch_c
    move-exception v0

    .line 472
    goto :goto_19

    .line 473
    :catch_d
    move-exception v0

    .line 474
    goto :goto_1a

    .line 475
    :catchall_5
    move-exception v0

    .line 476
    move-object v4, v0

    .line 477
    goto :goto_17

    .line 478
    :cond_f
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iput-object v0, v2, Lsk2;->h:[B
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 483
    .line 484
    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_c

    .line 485
    .line 486
    .line 487
    goto :goto_1b

    .line 488
    :goto_17
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 489
    .line 490
    .line 491
    goto :goto_18

    .line 492
    :catchall_6
    move-exception v0

    .line 493
    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 494
    .line 495
    .line 496
    :goto_18
    throw v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 497
    :goto_19
    invoke-interface {v3, v6, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    goto :goto_1b

    .line 501
    :goto_1a
    invoke-interface {v3, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :goto_1b
    iput-object v12, v2, Lsk2;->g:[Ltk2;

    .line 505
    .line 506
    goto :goto_1c

    .line 507
    :cond_10
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    return-void

    .line 511
    :cond_11
    :goto_1c
    iget-object v0, v2, Lsk2;->h:[B

    .line 512
    .line 513
    if-nez v0, :cond_12

    .line 514
    .line 515
    const/4 v6, 0x0

    .line 516
    const/4 v7, 0x1

    .line 517
    goto/16 :goto_30

    .line 518
    .line 519
    :cond_12
    iget-boolean v3, v2, Lsk2;->f:Z

    .line 520
    .line 521
    if-eqz v3, :cond_18

    .line 522
    .line 523
    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 524
    .line 525
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 526
    .line 527
    .line 528
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    .line 529
    .line 530
    iget-object v0, v2, Lsk2;->d:Ljava/io/File;

    .line 531
    .line 532
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 533
    .line 534
    .line 535
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 536
    .line 537
    .line 538
    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 539
    :try_start_1f
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 540
    .line 541
    .line 542
    move-result-object v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 543
    if-eqz v6, :cond_14

    .line 544
    .line 545
    :try_start_20
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_14

    .line 550
    .line 551
    const/16 v0, 0x200

    .line 552
    .line 553
    new-array v0, v0, [B

    .line 554
    .line 555
    :goto_1d
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 556
    .line 557
    .line 558
    move-result v7

    .line 559
    if-lez v7, :cond_13

    .line 560
    .line 561
    const/4 v9, 0x0

    .line 562
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 563
    .line 564
    .line 565
    goto :goto_1d

    .line 566
    :cond_13
    const/4 v7, 0x1

    .line 567
    :try_start_21
    invoke-virtual {v2, v7, v12}, Lsk2;->b(ILjava/io/Serializable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 568
    .line 569
    .line 570
    :try_start_22
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 571
    .line 572
    .line 573
    :try_start_23
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 574
    .line 575
    .line 576
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 577
    .line 578
    .line 579
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 580
    .line 581
    .line 582
    iput-object v12, v2, Lsk2;->h:[B

    .line 583
    .line 584
    iput-object v12, v2, Lsk2;->g:[Ltk2;

    .line 585
    .line 586
    move v6, v7

    .line 587
    goto/16 :goto_30

    .line 588
    .line 589
    :catchall_7
    move-exception v0

    .line 590
    goto/16 :goto_31

    .line 591
    .line 592
    :catch_e
    move-exception v0

    .line 593
    goto/16 :goto_2c

    .line 594
    .line 595
    :catch_f
    move-exception v0

    .line 596
    :goto_1e
    const/4 v3, 0x6

    .line 597
    goto/16 :goto_2e

    .line 598
    .line 599
    :catchall_8
    move-exception v0

    .line 600
    :goto_1f
    move-object v4, v0

    .line 601
    goto :goto_2a

    .line 602
    :catchall_9
    move-exception v0

    .line 603
    :goto_20
    move-object v5, v0

    .line 604
    goto :goto_28

    .line 605
    :catchall_a
    move-exception v0

    .line 606
    :goto_21
    move-object v6, v0

    .line 607
    goto :goto_26

    .line 608
    :catchall_b
    move-exception v0

    .line 609
    :goto_22
    move-object v9, v0

    .line 610
    goto :goto_24

    .line 611
    :cond_14
    const/4 v7, 0x1

    .line 612
    goto :goto_23

    .line 613
    :catchall_c
    move-exception v0

    .line 614
    const/4 v7, 0x1

    .line 615
    goto :goto_22

    .line 616
    :goto_23
    :try_start_26
    new-instance v0, Ljava/io/IOException;

    .line 617
    .line 618
    const-string v9, "Unable to acquire a lock on the underlying file channel."

    .line 619
    .line 620
    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 624
    :goto_24
    if-eqz v6, :cond_15

    .line 625
    .line 626
    :try_start_27
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 627
    .line 628
    .line 629
    goto :goto_25

    .line 630
    :catchall_d
    move-exception v0

    .line 631
    :try_start_28
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 632
    .line 633
    .line 634
    :cond_15
    :goto_25
    throw v9
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 635
    :catchall_e
    move-exception v0

    .line 636
    const/4 v7, 0x1

    .line 637
    goto :goto_21

    .line 638
    :goto_26
    if-eqz v5, :cond_16

    .line 639
    .line 640
    :try_start_29
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 641
    .line 642
    .line 643
    goto :goto_27

    .line 644
    :catchall_f
    move-exception v0

    .line 645
    :try_start_2a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 646
    .line 647
    .line 648
    :cond_16
    :goto_27
    throw v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    .line 649
    :catchall_10
    move-exception v0

    .line 650
    const/4 v7, 0x1

    .line 651
    goto :goto_20

    .line 652
    :goto_28
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    .line 653
    .line 654
    .line 655
    goto :goto_29

    .line 656
    :catchall_11
    move-exception v0

    .line 657
    :try_start_2c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 658
    .line 659
    .line 660
    :goto_29
    throw v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    .line 661
    :catchall_12
    move-exception v0

    .line 662
    const/4 v7, 0x1

    .line 663
    goto :goto_1f

    .line 664
    :goto_2a
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 665
    .line 666
    .line 667
    goto :goto_2b

    .line 668
    :catchall_13
    move-exception v0

    .line 669
    :try_start_2e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 670
    .line 671
    .line 672
    :goto_2b
    throw v4
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 673
    :catch_10
    move-exception v0

    .line 674
    const/4 v7, 0x1

    .line 675
    goto :goto_2c

    .line 676
    :catch_11
    move-exception v0

    .line 677
    const/4 v7, 0x1

    .line 678
    goto :goto_1e

    .line 679
    :goto_2c
    :try_start_2f
    invoke-virtual {v2, v8, v0}, Lsk2;->b(ILjava/io/Serializable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    .line 680
    .line 681
    .line 682
    :goto_2d
    iput-object v12, v2, Lsk2;->h:[B

    .line 683
    .line 684
    iput-object v12, v2, Lsk2;->g:[Ltk2;

    .line 685
    .line 686
    goto :goto_2f

    .line 687
    :goto_2e
    :try_start_30
    invoke-virtual {v2, v3, v0}, Lsk2;->b(ILjava/io/Serializable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 688
    .line 689
    .line 690
    goto :goto_2d

    .line 691
    :goto_2f
    const/4 v6, 0x0

    .line 692
    :goto_30
    if-eqz v6, :cond_17

    .line 693
    .line 694
    invoke-static {v10, v11}, Ljb9;->I(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 695
    .line 696
    .line 697
    :cond_17
    move v9, v6

    .line 698
    goto :goto_34

    .line 699
    :goto_31
    iput-object v12, v2, Lsk2;->h:[B

    .line 700
    .line 701
    iput-object v12, v2, Lsk2;->g:[Ltk2;

    .line 702
    .line 703
    throw v0

    .line 704
    :cond_18
    invoke-static {v5}, Ll0;->e(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    return-void

    .line 708
    :goto_32
    invoke-virtual {v2, v14, v12}, Lsk2;->b(ILjava/io/Serializable;)V

    .line 709
    .line 710
    .line 711
    :goto_33
    const/4 v9, 0x0

    .line 712
    :goto_34
    if-eqz v9, :cond_19

    .line 713
    .line 714
    if-eqz p3, :cond_19

    .line 715
    .line 716
    move v9, v7

    .line 717
    goto :goto_35

    .line 718
    :cond_19
    const/4 v9, 0x0

    .line 719
    :goto_35
    invoke-static {v1, v9}, La86;->c(Landroid/content/Context;Z)V

    .line 720
    .line 721
    .line 722
    :goto_36
    return-void

    .line 723
    :catch_12
    move-exception v0

    .line 724
    invoke-interface {v5, v8, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    const/4 v9, 0x0

    .line 728
    invoke-static {v1, v9}, La86;->c(Landroid/content/Context;Z)V

    .line 729
    .line 730
    .line 731
    return-void
.end method

.method public static m(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static m0(II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-gt p1, p0, :cond_0

    .line 4
    .line 5
    return p0

    .line 6
    :cond_0
    shr-int/lit8 v0, p0, 0x1

    .line 7
    .line 8
    add-int/2addr p0, v0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    if-ge p0, p1, :cond_1

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    shl-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    :cond_1
    if-gez p0, :cond_2

    .line 22
    .line 23
    const p0, 0x7fffffff

    .line 24
    .line 25
    .line 26
    :cond_2
    return p0

    .line 27
    :cond_3
    const-string p0, "cannot store more than Integer.MAX_VALUE elements"

    .line 28
    .line 29
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static n(Landroid/os/Parcel;I)[B
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static n0(Landroid/os/Parcel;II)V
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lhp5;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x13

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    add-int/2addr v2, v3

    .line 37
    add-int/lit8 v2, v2, 0x4

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    add-int/2addr v3, v2

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    const-string v3, "Expected size "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, " got "

    .line 60
    .line 61
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " (0x"

    .line 68
    .line 69
    const-string p2, ")"

    .line 70
    .line 71
    invoke-static {v2, p1, v1, p2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1, p0}, Lhp5;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Lwv3;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lvw3;

    .line 2
    .line 3
    new-instance v1, Lcg4;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v1, v2}, Lcg4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, v3}, Lvw3;-><init>(Lzn2;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ABORT_ERROR"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lt2;

    .line 23
    .line 24
    invoke-direct {v1, v3}, Lt2;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_CONSTRAINT_ERROR"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    new-instance v1, Lat1;

    .line 42
    .line 43
    invoke-direct {v1}, Lat1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_1
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_CLONE_ERROR"

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lja2;

    .line 61
    .line 62
    invoke-direct {v1, v3}, Lja2;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_2
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR"

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v4, 0x1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    new-instance v1, Lt2;

    .line 81
    .line 82
    invoke-direct {v1, v4}, Lt2;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_3
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ENCODING_ERROR"

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    new-instance v1, Lew2;

    .line 100
    .line 101
    invoke-direct {v1, v3}, Lew2;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_4
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR"

    .line 111
    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    new-instance v1, Lr44;

    .line 119
    .line 120
    invoke-direct {v1, v3}, Lr44;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_5
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR"

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    new-instance v1, Ldb4;

    .line 138
    .line 139
    invoke-direct {v1, v3}, Ldb4;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_6
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_CHARACTER_ERROR"

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    new-instance v1, Lxf4;

    .line 157
    .line 158
    invoke-direct {v1, v3}, Lxf4;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR"

    .line 168
    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_8

    .line 174
    .line 175
    new-instance v1, Lew2;

    .line 176
    .line 177
    invoke-direct {v1, v4}, Lew2;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_8
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_NODE_TYPE_ERROR"

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    new-instance v1, Lcg4;

    .line 195
    .line 196
    invoke-direct {v1, v3}, Lcg4;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_9
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR"

    .line 206
    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    new-instance v1, Lig4;

    .line 214
    .line 215
    invoke-direct {v1, v3}, Lig4;-><init>(I)V

    .line 216
    .line 217
    .line 218
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_a
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NAMESPACE_ERROR"

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_b

    .line 231
    .line 232
    new-instance v1, Lcg4;

    .line 233
    .line 234
    invoke-direct {v1, v4}, Lcg4;-><init>(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_b
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NETWORK_ERROR"

    .line 244
    .line 245
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_c

    .line 250
    .line 251
    new-instance v1, Lr44;

    .line 252
    .line 253
    invoke-direct {v1, v4}, Lr44;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_c
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR"

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_d

    .line 269
    .line 270
    new-instance v1, Lt2;

    .line 271
    .line 272
    invoke-direct {v1, v2}, Lt2;-><init>(I)V

    .line 273
    .line 274
    .line 275
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_d
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_ALLOWED_ERROR"

    .line 282
    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_e

    .line 288
    .line 289
    new-instance v1, Lig4;

    .line 290
    .line 291
    invoke-direct {v1, v4}, Lig4;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :cond_e
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_FOUND_ERROR"

    .line 301
    .line 302
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_f

    .line 307
    .line 308
    new-instance v1, Ldb4;

    .line 309
    .line 310
    invoke-direct {v1, v4}, Ldb4;-><init>(I)V

    .line 311
    .line 312
    .line 313
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_f
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_READABLE_ERROR"

    .line 320
    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_10

    .line 326
    .line 327
    new-instance v1, Ljo5;

    .line 328
    .line 329
    invoke-direct {v1, v3}, Ljo5;-><init>(I)V

    .line 330
    .line 331
    .line 332
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_10
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_SUPPORTED_ERROR"

    .line 339
    .line 340
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_11

    .line 345
    .line 346
    new-instance v1, Lja2;

    .line 347
    .line 348
    invoke-direct {v1, v4}, Lja2;-><init>(I)V

    .line 349
    .line 350
    .line 351
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_11
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPERATION_ERROR"

    .line 358
    .line 359
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_12

    .line 364
    .line 365
    new-instance v1, Ljo5;

    .line 366
    .line 367
    invoke-direct {v1, v4}, Ljo5;-><init>(I)V

    .line 368
    .line 369
    .line 370
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_12
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPT_OUT_ERROR"

    .line 377
    .line 378
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_13

    .line 383
    .line 384
    new-instance v1, Lja2;

    .line 385
    .line 386
    invoke-direct {v1, v2}, Lja2;-><init>(I)V

    .line 387
    .line 388
    .line 389
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_13
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_QUOTA_EXCEEDED_ERROR"

    .line 396
    .line 397
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_14

    .line 402
    .line 403
    new-instance v1, Ljo5;

    .line 404
    .line 405
    invoke-direct {v1, v2}, Ljo5;-><init>(I)V

    .line 406
    .line 407
    .line 408
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_14
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_READ_ONLY_ERROR"

    .line 415
    .line 416
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_15

    .line 421
    .line 422
    new-instance v1, Lig4;

    .line 423
    .line 424
    invoke-direct {v1, v2}, Lig4;-><init>(I)V

    .line 425
    .line 426
    .line 427
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_15
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SECURITY_ERROR"

    .line 434
    .line 435
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_16

    .line 440
    .line 441
    new-instance v1, Lxf4;

    .line 442
    .line 443
    invoke-direct {v1, v4}, Lxf4;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    goto :goto_0

    .line 451
    :cond_16
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SYNTAX_ERROR"

    .line 452
    .line 453
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_17

    .line 458
    .line 459
    new-instance v1, Lhv7;

    .line 460
    .line 461
    invoke-direct {v1, v3}, Lhv7;-><init>(I)V

    .line 462
    .line 463
    .line 464
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    goto :goto_0

    .line 469
    :cond_17
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TIMEOUT_ERROR"

    .line 470
    .line 471
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_18

    .line 476
    .line 477
    new-instance v1, Lew2;

    .line 478
    .line 479
    invoke-direct {v1, v2}, Lew2;-><init>(I)V

    .line 480
    .line 481
    .line 482
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    goto :goto_0

    .line 487
    :cond_18
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TRANSACTION_INACTIVE_ERROR"

    .line 488
    .line 489
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    if-eqz v1, :cond_19

    .line 494
    .line 495
    new-instance v1, Ldb4;

    .line 496
    .line 497
    invoke-direct {v1, v2}, Ldb4;-><init>(I)V

    .line 498
    .line 499
    .line 500
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    goto :goto_0

    .line 505
    :cond_19
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_UNKNOWN_ERROR"

    .line 506
    .line 507
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_1a

    .line 512
    .line 513
    new-instance v1, Lcg4;

    .line 514
    .line 515
    invoke-direct {v1, v2}, Lcg4;-><init>(I)V

    .line 516
    .line 517
    .line 518
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    goto :goto_0

    .line 523
    :cond_1a
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_VERSION_ERROR"

    .line 524
    .line 525
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_1b

    .line 530
    .line 531
    new-instance v1, Ldb4;

    .line 532
    .line 533
    const/4 v2, 0x3

    .line 534
    invoke-direct {v1, v2}, Ldb4;-><init>(I)V

    .line 535
    .line 536
    .line 537
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    goto :goto_0

    .line 542
    :cond_1b
    const-string v1, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR"

    .line 543
    .line 544
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    if-eqz v1, :cond_1c

    .line 549
    .line 550
    new-instance v1, Lhv7;

    .line 551
    .line 552
    invoke-direct {v1, v4}, Lhv7;-><init>(I)V

    .line 553
    .line 554
    .line 555
    invoke-static {v1, p1, v0}, Lod2;->a(Lzn2;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    :goto_0
    check-cast v0, Lwv3;

    .line 560
    .line 561
    return-object v0

    .line 562
    :cond_1c
    new-instance v0, Lfs3;

    .line 563
    .line 564
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 565
    .line 566
    .line 567
    throw v0
    :try_end_0
    .catch Lfs3; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :catch_0
    new-instance v0, Lvv3;

    .line 569
    .line 570
    invoke-direct {v0, p1, p0}, Lvv3;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    return-object v0
.end method

.method public static o0(Landroid/os/Parcel;II)V
    .locals 5

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lhp5;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    add-int/lit8 v2, v2, 0x13

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    add-int/2addr v2, v3

    .line 33
    add-int/lit8 v2, v2, 0x4

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .line 46
    .line 47
    const-string v3, "Expected size "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " got "

    .line 56
    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, " (0x"

    .line 64
    .line 65
    const-string p2, ")"

    .line 66
    .line 67
    invoke-static {v2, p1, v1, p2}, Leq3;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {v0, p1, p0}, Lhp5;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 72
    .line 73
    .line 74
    throw v0
.end method

.method public static p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/os/Parcelable;

    .line 18
    .line 19
    add-int/2addr v0, p1

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 21
    .line 22
    .line 23
    return-object p2
.end method

.method public static q(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static r(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public static s(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public static t(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljb9;->Z(Landroid/os/Parcel;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    return-object p2
.end method

.method public static v([BZLix0;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    aget-byte v2, v0, v2

    .line 8
    .line 9
    and-int/lit16 v2, v2, 0x80

    .line 10
    .line 11
    ushr-int/lit8 v2, v2, 0x7

    .line 12
    .line 13
    iget-object v3, v1, Lix0;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v4, v4, v0, v3}, Lnc8;->s(II[B[I)V

    .line 19
    .line 20
    .line 21
    const/16 v5, 0x10

    .line 22
    .line 23
    const/4 v6, 0x5

    .line 24
    invoke-static {v5, v6, v0, v3}, Lnc8;->s(II[B[I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x9

    .line 28
    .line 29
    aget v5, v3, v0

    .line 30
    .line 31
    const v7, 0xffffff

    .line 32
    .line 33
    .line 34
    and-int/2addr v5, v7

    .line 35
    aput v5, v3, v0

    .line 36
    .line 37
    const/16 v0, 0xa

    .line 38
    .line 39
    new-array v5, v0, [I

    .line 40
    .line 41
    new-array v7, v0, [I

    .line 42
    .line 43
    invoke-static {v3, v5}, Lnc8;->i0([I[I)V

    .line 44
    .line 45
    .line 46
    sget-object v3, Ljb9;->q:[I

    .line 47
    .line 48
    invoke-static {v3, v5, v7}, Lnc8;->K([I[I[I)V

    .line 49
    .line 50
    .line 51
    aget v3, v5, v4

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    sub-int/2addr v3, v8

    .line 55
    aput v3, v5, v4

    .line 56
    .line 57
    aget v3, v7, v4

    .line 58
    .line 59
    add-int/2addr v3, v8

    .line 60
    aput v3, v7, v4

    .line 61
    .line 62
    iget-object v1, v1, Lix0;->b:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, [I

    .line 65
    .line 66
    new-array v3, v0, [I

    .line 67
    .line 68
    new-array v9, v0, [I

    .line 69
    .line 70
    invoke-static {v5, v7, v3}, Lnc8;->K([I[I[I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v7, v9}, Lnc8;->i0([I[I)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v9, v3}, Lnc8;->K([I[I[I)V

    .line 77
    .line 78
    .line 79
    invoke-static {v9, v9}, Lnc8;->i0([I[I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v9, v3, v9}, Lnc8;->K([I[I[I)V

    .line 83
    .line 84
    .line 85
    new-array v10, v0, [I

    .line 86
    .line 87
    new-array v11, v0, [I

    .line 88
    .line 89
    invoke-static {v9, v10}, Lnc8;->i0([I[I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v9, v10, v10}, Lnc8;->K([I[I[I)V

    .line 93
    .line 94
    .line 95
    new-array v12, v0, [I

    .line 96
    .line 97
    invoke-static {v10, v12}, Lnc8;->i0([I[I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v9, v12, v12}, Lnc8;->K([I[I[I)V

    .line 101
    .line 102
    .line 103
    const/4 v13, 0x2

    .line 104
    invoke-static {v13, v12, v12}, Lnc8;->h0(I[I[I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v10, v12, v12}, Lnc8;->K([I[I[I)V

    .line 108
    .line 109
    .line 110
    new-array v14, v0, [I

    .line 111
    .line 112
    invoke-static {v6, v12, v14}, Lnc8;->h0(I[I[I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v12, v14, v14}, Lnc8;->K([I[I[I)V

    .line 116
    .line 117
    .line 118
    new-array v15, v0, [I

    .line 119
    .line 120
    invoke-static {v6, v14, v15}, Lnc8;->h0(I[I[I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v12, v15, v15}, Lnc8;->K([I[I[I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v15, v12}, Lnc8;->h0(I[I[I)V

    .line 127
    .line 128
    .line 129
    invoke-static {v14, v12, v12}, Lnc8;->K([I[I[I)V

    .line 130
    .line 131
    .line 132
    const/16 v6, 0x19

    .line 133
    .line 134
    invoke-static {v6, v12, v14}, Lnc8;->h0(I[I[I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v12, v14, v14}, Lnc8;->K([I[I[I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v14, v15}, Lnc8;->h0(I[I[I)V

    .line 141
    .line 142
    .line 143
    invoke-static {v12, v15, v15}, Lnc8;->K([I[I[I)V

    .line 144
    .line 145
    .line 146
    const/16 v6, 0x32

    .line 147
    .line 148
    invoke-static {v6, v15, v12}, Lnc8;->h0(I[I[I)V

    .line 149
    .line 150
    .line 151
    invoke-static {v14, v12, v12}, Lnc8;->K([I[I[I)V

    .line 152
    .line 153
    .line 154
    const/16 v6, 0x7d

    .line 155
    .line 156
    invoke-static {v6, v12, v14}, Lnc8;->h0(I[I[I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v12, v14, v14}, Lnc8;->K([I[I[I)V

    .line 160
    .line 161
    .line 162
    invoke-static {v13, v14, v12}, Lnc8;->h0(I[I[I)V

    .line 163
    .line 164
    .line 165
    invoke-static {v12, v9, v11}, Lnc8;->K([I[I[I)V

    .line 166
    .line 167
    .line 168
    invoke-static {v11, v3, v11}, Lnc8;->K([I[I[I)V

    .line 169
    .line 170
    .line 171
    new-array v0, v0, [I

    .line 172
    .line 173
    invoke-static {v11, v0}, Lnc8;->i0([I[I)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v7, v0}, Lnc8;->K([I[I[I)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v5, v10}, Lnc8;->l0([I[I[I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v10}, Lnc8;->M([I)V

    .line 183
    .line 184
    .line 185
    invoke-static {v10}, Lnc8;->H([I)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_0

    .line 190
    .line 191
    invoke-static {v4, v4, v11, v1}, Lnc8;->n(II[I[I)V

    .line 192
    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_0
    invoke-static {v0, v5, v10}, Lnc8;->b([I[I[I)V

    .line 196
    .line 197
    .line 198
    invoke-static {v10}, Lnc8;->M([I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v10}, Lnc8;->H([I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    .line 207
    sget-object v0, Lnc8;->d:[I

    .line 208
    .line 209
    invoke-static {v11, v0, v1}, Lnc8;->K([I[I[I)V

    .line 210
    .line 211
    .line 212
    :goto_0
    invoke-static {v1}, Lnc8;->M([I)V

    .line 213
    .line 214
    .line 215
    if-ne v2, v8, :cond_1

    .line 216
    .line 217
    invoke-static {v1}, Lnc8;->H([I)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_1

    .line 222
    .line 223
    return v4

    .line 224
    :cond_1
    aget v0, v1, v4

    .line 225
    .line 226
    and-int/2addr v0, v8

    .line 227
    if-eq v2, v0, :cond_2

    .line 228
    .line 229
    move v4, v8

    .line 230
    :cond_2
    xor-int v0, p1, v4

    .line 231
    .line 232
    if-eqz v0, :cond_3

    .line 233
    .line 234
    invoke-static {v1, v1}, Lnc8;->L([I[I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1}, Lnc8;->M([I)V

    .line 238
    .line 239
    .line 240
    :cond_3
    return v8

    .line 241
    :cond_4
    return v4
.end method

.method public static w(Lke;[B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lke;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v1, v2, p1, v0}, Lnc8;->x(II[B[I)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xf

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    invoke-static {v1, v3, p1, v0}, Lnc8;->x(II[B[I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x1f

    .line 19
    .line 20
    aget-byte v1, p1, v0

    .line 21
    .line 22
    iget-object p0, p0, Lke;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, [I

    .line 25
    .line 26
    aget p0, p0, v2

    .line 27
    .line 28
    and-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    shl-int/lit8 p0, p0, 0x7

    .line 31
    .line 32
    or-int/2addr p0, v1

    .line 33
    int-to-byte p0, p0

    .line 34
    aput-byte p0, p1, v0

    .line 35
    .line 36
    return-void
.end method

.method public static x(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lhp5;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, 0x1a

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const-string v1, "Overread allowed size end="

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1, p0}, Lhp5;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public static y([B)Lke;
    .locals 7

    .line 1
    new-instance v0, Lkr6;

    .line 2
    .line 3
    invoke-direct {v0}, Lkr6;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x40

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/16 v3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, p0, v2, v3}, Lq15;->update([BII)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lkr6;->doFinal([BI)I

    .line 17
    .line 18
    .line 19
    new-array p0, v3, [B

    .line 20
    .line 21
    invoke-static {v1, p0}, Ljb9;->T([B[B)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Las2;

    .line 25
    .line 26
    invoke-direct {v0}, Las2;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v0}, Ljb9;->b0([BLas2;)V

    .line 30
    .line 31
    .line 32
    const/16 p0, 0xa

    .line 33
    .line 34
    new-array v1, p0, [I

    .line 35
    .line 36
    new-array v3, p0, [I

    .line 37
    .line 38
    iget-object v4, v0, Las2;->c:Ljava/io/Serializable;

    .line 39
    .line 40
    check-cast v4, [I

    .line 41
    .line 42
    invoke-static {v4, v3}, Lnc8;->E([I[I)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v0, Las2;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, [I

    .line 48
    .line 49
    invoke-static {v3, v4, v1}, Lnc8;->K([I[I[I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Las2;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, [I

    .line 55
    .line 56
    invoke-static {v3, v0, v3}, Lnc8;->K([I[I[I)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lnc8;->M([I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Lnc8;->M([I)V

    .line 63
    .line 64
    .line 65
    new-array v0, p0, [I

    .line 66
    .line 67
    new-array v4, p0, [I

    .line 68
    .line 69
    new-array v5, p0, [I

    .line 70
    .line 71
    invoke-static {v1, v4}, Lnc8;->i0([I[I)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v5}, Lnc8;->i0([I[I)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v5, v0}, Lnc8;->K([I[I[I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v5, v4}, Lnc8;->l0([I[I[I)V

    .line 81
    .line 82
    .line 83
    sget-object v6, Ljb9;->q:[I

    .line 84
    .line 85
    invoke-static {v0, v6, v0}, Lnc8;->K([I[I[I)V

    .line 86
    .line 87
    .line 88
    aget v6, v0, v2

    .line 89
    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    aput v6, v0, v2

    .line 93
    .line 94
    invoke-static {v0, v4, v0}, Lnc8;->b([I[I[I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lnc8;->M([I)V

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lnc8;->M([I)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lnc8;->H([I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v5}, Lnc8;->H([I)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    not-int v4, v4

    .line 112
    and-int/2addr v0, v4

    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    const/16 v0, 0x14

    .line 116
    .line 117
    new-array v0, v0, [I

    .line 118
    .line 119
    invoke-static {v2, v2, v1, v0}, Lnc8;->n(II[I[I)V

    .line 120
    .line 121
    .line 122
    invoke-static {v2, p0, v3, v0}, Lnc8;->n(II[I[I)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Lke;

    .line 126
    .line 127
    const/4 v1, 0x6

    .line 128
    invoke-direct {p0, v0, v1}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_0
    invoke-static {}, Lg84;->c()V

    .line 133
    .line 134
    .line 135
    const/4 p0, 0x0

    .line 136
    return-object p0
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B()Ljava/lang/String;
.end method

.method public abstract C()Ljava/lang/Class;
.end method

.method public abstract D()Lgc8;
.end method

.method public abstract G(Lp60;)V
.end method

.method public abstract J(I)V
.end method

.method public abstract K(Landroid/graphics/Typeface;Z)V
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract g(Lp60;)V
.end method

.method public abstract z(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
.end method
