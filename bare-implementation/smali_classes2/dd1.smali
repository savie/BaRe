.class public final enum Ldd1;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Ldd1;

.field public static final enum Box:Ldd1;

.field public static final enum CloudMailRu2:Ldd1;

.field public static final enum Dropbox:Ldd1;

.field public static final enum FTP:Ldd1;

.field public static final enum Filen:Ldd1;

.field public static final enum GoogleDrive:Ldd1;

.field public static final enum MegaNz:Ldd1;

.field public static final enum OneDrive:Ldd1;

.field public static final enum PCloud:Ldd1;

.field public static final enum S3:Ldd1;

.field public static final enum SFTP:Ldd1;

.field public static final enum SMB:Ldd1;

.field public static final enum TeraBox:Ldd1;

.field public static final enum WebDav:Ldd1;

.field public static final enum YandexDisk:Ldd1;


# instance fields
.field private final allowSavingSetupDetails:Z

.field private final authTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnc1;",
            ">;"
        }
    .end annotation
.end field

.field private final brandingIconRes:I

.field private final clientProvider:Lbt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbt3;"
        }
    .end annotation
.end field

.field private final constant:Ljava/lang/String;

.field private final displayNameEn:Ljava/lang/String;

.field private final displayNameRes:I

.field private final firebaseNodePrefix:Ljava/lang/String;

.field private final isAppFolderBased:Z

.field private final isEmailPasswordBasedWebDav:Z

.field private final isHttpsOptional:Z

.field private final isWebDav:Z

.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfd1;",
            ">;"
        }
    .end annotation
.end field

.field private final releaseState:Lxi6;

.field private final showUrlInSetup:Z

.field private final startConnectActivity:Lqt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqt3;"
        }
    .end annotation
.end field

.field private final subtitle:Lbt3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbt3;"
        }
    .end annotation
.end field

.field private final supportsCurrentAndroidSdk:Z


# direct methods
.method private static final synthetic $values()[Ldd1;
    .locals 15

    .line 1
    sget-object v0, Ldd1;->GoogleDrive:Ldd1;

    .line 2
    .line 3
    sget-object v1, Ldd1;->OneDrive:Ldd1;

    .line 4
    .line 5
    sget-object v2, Ldd1;->Dropbox:Ldd1;

    .line 6
    .line 7
    sget-object v3, Ldd1;->MegaNz:Ldd1;

    .line 8
    .line 9
    sget-object v4, Ldd1;->Filen:Ldd1;

    .line 10
    .line 11
    sget-object v5, Ldd1;->Box:Ldd1;

    .line 12
    .line 13
    sget-object v6, Ldd1;->TeraBox:Ldd1;

    .line 14
    .line 15
    sget-object v7, Ldd1;->PCloud:Ldd1;

    .line 16
    .line 17
    sget-object v8, Ldd1;->YandexDisk:Ldd1;

    .line 18
    .line 19
    sget-object v9, Ldd1;->CloudMailRu2:Ldd1;

    .line 20
    .line 21
    sget-object v10, Ldd1;->S3:Ldd1;

    .line 22
    .line 23
    sget-object v11, Ldd1;->WebDav:Ldd1;

    .line 24
    .line 25
    sget-object v12, Ldd1;->SMB:Ldd1;

    .line 26
    .line 27
    sget-object v13, Ldd1;->SFTP:Ldd1;

    .line 28
    .line 29
    sget-object v14, Ldd1;->FTP:Ldd1;

    .line 30
    .line 31
    filled-new-array/range {v0 .. v14}, [Ldd1;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 58

    .line 1
    new-instance v0, Ldd1;

    .line 2
    .line 3
    new-instance v6, Lpu;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v6, v1}, Lpu;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sget-object v13, Lzc1;->a:Lzc1;

    .line 10
    .line 11
    new-instance v14, Lpc1;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v14, v2}, Lpc1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v34, Lxi6;->Production:Lxi6;

    .line 18
    .line 19
    const v21, 0x2f3b0

    .line 20
    .line 21
    .line 22
    const/16 v22, 0x0

    .line 23
    .line 24
    move v3, v1

    .line 25
    const-string v1, "GoogleDrive"

    .line 26
    .line 27
    move v4, v2

    .line 28
    move v5, v3

    .line 29
    const-string v3, "google_drive"

    .line 30
    .line 31
    move v7, v4

    .line 32
    const v4, 0x7f130297

    .line 33
    .line 34
    .line 35
    move v8, v5

    .line 36
    const-string v5, "Google Drive"

    .line 37
    .line 38
    move v9, v7

    .line 39
    const/4 v7, 0x0

    .line 40
    move v10, v8

    .line 41
    const/4 v8, 0x0

    .line 42
    move v11, v9

    .line 43
    const v9, 0x7f0800d7

    .line 44
    .line 45
    .line 46
    move v12, v10

    .line 47
    const/4 v10, 0x0

    .line 48
    move v15, v11

    .line 49
    const/4 v11, 0x0

    .line 50
    move/from16 v16, v12

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    move/from16 v17, v15

    .line 54
    .line 55
    const/4 v15, 0x0

    .line 56
    move/from16 v18, v16

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    move/from16 v19, v17

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    move/from16 v20, v18

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    move/from16 v23, v20

    .line 69
    .line 70
    const/16 v20, 0x0

    .line 71
    .line 72
    move-object/from16 v19, v34

    .line 73
    .line 74
    invoke-direct/range {v0 .. v22}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Ldd1;->GoogleDrive:Ldd1;

    .line 78
    .line 79
    new-instance v15, Ldd1;

    .line 80
    .line 81
    sget-object v28, Lad1;->a:Lad1;

    .line 82
    .line 83
    new-instance v0, Lvc1;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v0, v4}, Lvc1;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const v36, 0x2f3b8

    .line 90
    .line 91
    .line 92
    const/16 v37, 0x0

    .line 93
    .line 94
    const-string v16, "OneDrive"

    .line 95
    .line 96
    const/16 v17, 0x1

    .line 97
    .line 98
    const-string v18, "one_drive"

    .line 99
    .line 100
    const v19, 0x7f1303ea

    .line 101
    .line 102
    .line 103
    const-string v20, "OneDrive"

    .line 104
    .line 105
    const/16 v21, 0x0

    .line 106
    .line 107
    const/16 v23, 0x0

    .line 108
    .line 109
    const v24, 0x7f0800df

    .line 110
    .line 111
    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    const/16 v27, 0x0

    .line 117
    .line 118
    const/16 v30, 0x0

    .line 119
    .line 120
    const/16 v31, 0x0

    .line 121
    .line 122
    const/16 v32, 0x0

    .line 123
    .line 124
    const/16 v33, 0x0

    .line 125
    .line 126
    const/16 v35, 0x0

    .line 127
    .line 128
    move-object/from16 v29, v0

    .line 129
    .line 130
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    .line 132
    .line 133
    sput-object v15, Ldd1;->OneDrive:Ldd1;

    .line 134
    .line 135
    new-instance v15, Ldd1;

    .line 136
    .line 137
    sget-object v28, Lbd1;->a:Lbd1;

    .line 138
    .line 139
    new-instance v0, Loc1;

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    invoke-direct {v0, v3}, Loc1;-><init>(I)V

    .line 143
    .line 144
    .line 145
    const v36, 0x2f398

    .line 146
    .line 147
    .line 148
    const-string v16, "Dropbox"

    .line 149
    .line 150
    const/16 v17, 0x2

    .line 151
    .line 152
    const-string v18, "dropbox"

    .line 153
    .line 154
    const v19, 0x7f13020c

    .line 155
    .line 156
    .line 157
    const-string v20, "Dropbox"

    .line 158
    .line 159
    const/16 v23, 0x1

    .line 160
    .line 161
    const v24, 0x7f0800d4

    .line 162
    .line 163
    .line 164
    move-object/from16 v29, v0

    .line 165
    .line 166
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    .line 168
    .line 169
    sput-object v15, Ldd1;->Dropbox:Ldd1;

    .line 170
    .line 171
    new-instance v15, Ldd1;

    .line 172
    .line 173
    new-instance v0, Lcl;

    .line 174
    .line 175
    const/4 v1, 0x3

    .line 176
    invoke-direct {v0, v1}, Lcl;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v2, Lwc1;

    .line 180
    .line 181
    invoke-direct {v2, v4}, Lwc1;-><init>(I)V

    .line 182
    .line 183
    .line 184
    const v36, 0x2f3b8

    .line 185
    .line 186
    .line 187
    const-string v16, "MegaNz"

    .line 188
    .line 189
    const/16 v17, 0x3

    .line 190
    .line 191
    const-string v18, "mega_nz"

    .line 192
    .line 193
    const v19, 0x7f130347

    .line 194
    .line 195
    .line 196
    const-string v20, "Mega.nz"

    .line 197
    .line 198
    const/16 v23, 0x0

    .line 199
    .line 200
    const v24, 0x7f0800dc

    .line 201
    .line 202
    .line 203
    move-object/from16 v28, v0

    .line 204
    .line 205
    move-object/from16 v29, v2

    .line 206
    .line 207
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    .line 209
    .line 210
    sput-object v15, Ldd1;->MegaNz:Ldd1;

    .line 211
    .line 212
    new-instance v15, Ldd1;

    .line 213
    .line 214
    new-instance v0, Lel;

    .line 215
    .line 216
    const/4 v2, 0x4

    .line 217
    invoke-direct {v0, v2}, Lel;-><init>(I)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Lqc1;

    .line 221
    .line 222
    invoke-direct {v5, v3}, Lqc1;-><init>(I)V

    .line 223
    .line 224
    .line 225
    const-string v16, "Filen"

    .line 226
    .line 227
    const/16 v17, 0x4

    .line 228
    .line 229
    const-string v18, "filen"

    .line 230
    .line 231
    const v19, 0x7f13023a

    .line 232
    .line 233
    .line 234
    const-string v20, "Filen"

    .line 235
    .line 236
    const v24, 0x7f0800d5

    .line 237
    .line 238
    .line 239
    move-object/from16 v28, v0

    .line 240
    .line 241
    move-object/from16 v29, v5

    .line 242
    .line 243
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    .line 245
    .line 246
    sput-object v15, Ldd1;->Filen:Ldd1;

    .line 247
    .line 248
    new-instance v15, Ldd1;

    .line 249
    .line 250
    sget-object v28, Lyc1;->n:Lyc1;

    .line 251
    .line 252
    new-instance v0, Lxc1;

    .line 253
    .line 254
    invoke-direct {v0, v4}, Lxc1;-><init>(I)V

    .line 255
    .line 256
    .line 257
    const-string v16, "Box"

    .line 258
    .line 259
    const/16 v17, 0x5

    .line 260
    .line 261
    const-string v18, "box"

    .line 262
    .line 263
    const v19, 0x7f1300d8

    .line 264
    .line 265
    .line 266
    const-string v20, "Box"

    .line 267
    .line 268
    const v24, 0x7f0800d0

    .line 269
    .line 270
    .line 271
    move-object/from16 v29, v0

    .line 272
    .line 273
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 274
    .line 275
    .line 276
    sput-object v15, Ldd1;->Box:Ldd1;

    .line 277
    .line 278
    new-instance v35, Ldd1;

    .line 279
    .line 280
    new-instance v0, Lq9;

    .line 281
    .line 282
    invoke-direct {v0, v1}, Lq9;-><init>(I)V

    .line 283
    .line 284
    .line 285
    new-instance v5, Ltc1;

    .line 286
    .line 287
    invoke-direct {v5, v4}, Ltc1;-><init>(I)V

    .line 288
    .line 289
    .line 290
    sget-object v54, Lxi6;->Dev:Lxi6;

    .line 291
    .line 292
    const v56, 0x2f3b8

    .line 293
    .line 294
    .line 295
    const/16 v57, 0x0

    .line 296
    .line 297
    const-string v36, "TeraBox"

    .line 298
    .line 299
    const/16 v37, 0x6

    .line 300
    .line 301
    const-string v38, "terabox"

    .line 302
    .line 303
    const v39, 0x7f13056f

    .line 304
    .line 305
    .line 306
    const-string v40, "TeraBox"

    .line 307
    .line 308
    const/16 v41, 0x0

    .line 309
    .line 310
    const/16 v42, 0x0

    .line 311
    .line 312
    const/16 v43, 0x0

    .line 313
    .line 314
    const v44, 0x7f0800ea

    .line 315
    .line 316
    .line 317
    const/16 v45, 0x0

    .line 318
    .line 319
    const/16 v46, 0x0

    .line 320
    .line 321
    const/16 v47, 0x0

    .line 322
    .line 323
    const/16 v50, 0x0

    .line 324
    .line 325
    const/16 v51, 0x0

    .line 326
    .line 327
    const/16 v52, 0x0

    .line 328
    .line 329
    const/16 v53, 0x0

    .line 330
    .line 331
    const/16 v55, 0x0

    .line 332
    .line 333
    move-object/from16 v48, v0

    .line 334
    .line 335
    move-object/from16 v49, v5

    .line 336
    .line 337
    invoke-direct/range {v35 .. v57}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 338
    .line 339
    .line 340
    sput-object v35, Ldd1;->TeraBox:Ldd1;

    .line 341
    .line 342
    new-instance v15, Ldd1;

    .line 343
    .line 344
    new-instance v0, Ljx;

    .line 345
    .line 346
    const/4 v5, 0x6

    .line 347
    invoke-direct {v0, v5}, Ljx;-><init>(I)V

    .line 348
    .line 349
    .line 350
    new-instance v5, Lsc1;

    .line 351
    .line 352
    invoke-direct {v5, v3}, Lsc1;-><init>(I)V

    .line 353
    .line 354
    .line 355
    const v36, 0x2f3b8

    .line 356
    .line 357
    .line 358
    const/16 v37, 0x0

    .line 359
    .line 360
    const-string v16, "PCloud"

    .line 361
    .line 362
    const/16 v17, 0x7

    .line 363
    .line 364
    const-string v18, "pcloud"

    .line 365
    .line 366
    const v19, 0x7f130406

    .line 367
    .line 368
    .line 369
    const-string v20, "pCloud"

    .line 370
    .line 371
    const v24, 0x7f0800e2

    .line 372
    .line 373
    .line 374
    const/16 v35, 0x0

    .line 375
    .line 376
    move-object/from16 v28, v0

    .line 377
    .line 378
    move-object/from16 v29, v5

    .line 379
    .line 380
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 381
    .line 382
    .line 383
    sput-object v15, Ldd1;->PCloud:Ldd1;

    .line 384
    .line 385
    new-instance v15, Ldd1;

    .line 386
    .line 387
    new-instance v0, Lb7;

    .line 388
    .line 389
    const/16 v5, 0xa

    .line 390
    .line 391
    invoke-direct {v0, v5}, Lb7;-><init>(I)V

    .line 392
    .line 393
    .line 394
    new-instance v5, Ltc1;

    .line 395
    .line 396
    invoke-direct {v5, v3}, Ltc1;-><init>(I)V

    .line 397
    .line 398
    .line 399
    const v36, 0x2f3a8

    .line 400
    .line 401
    .line 402
    const-string v16, "YandexDisk"

    .line 403
    .line 404
    const/16 v17, 0x8

    .line 405
    .line 406
    const-string v18, "yandex_disk"

    .line 407
    .line 408
    const v19, 0x7f1305cd

    .line 409
    .line 410
    .line 411
    const-string v20, "Yandex.Disk"

    .line 412
    .line 413
    const-string v22, "yandex-remote"

    .line 414
    .line 415
    const v24, 0x7f0800ed

    .line 416
    .line 417
    .line 418
    move-object/from16 v28, v0

    .line 419
    .line 420
    move-object/from16 v29, v5

    .line 421
    .line 422
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 423
    .line 424
    .line 425
    sput-object v15, Ldd1;->YandexDisk:Ldd1;

    .line 426
    .line 427
    new-instance v15, Ldd1;

    .line 428
    .line 429
    new-instance v0, Lqm;

    .line 430
    .line 431
    invoke-direct {v0, v2}, Lqm;-><init>(I)V

    .line 432
    .line 433
    .line 434
    new-instance v5, Lvc1;

    .line 435
    .line 436
    invoke-direct {v5, v3}, Lvc1;-><init>(I)V

    .line 437
    .line 438
    .line 439
    sget-object v3, Lfd1;->HTTPS:Lfd1;

    .line 440
    .line 441
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 442
    .line 443
    .line 444
    move-result-object v30

    .line 445
    const v36, 0x2e038

    .line 446
    .line 447
    .line 448
    const-string v16, "CloudMailRu2"

    .line 449
    .line 450
    const/16 v17, 0x9

    .line 451
    .line 452
    const-string v18, "cloud_mail_ru2"

    .line 453
    .line 454
    const v19, 0x7f130169

    .line 455
    .line 456
    .line 457
    const-string v20, "Cloud Mail.Ru"

    .line 458
    .line 459
    const/16 v22, 0x0

    .line 460
    .line 461
    const v24, 0x7f0800d1

    .line 462
    .line 463
    .line 464
    const/16 v25, 0x1

    .line 465
    .line 466
    const/16 v26, 0x1

    .line 467
    .line 468
    move-object/from16 v28, v0

    .line 469
    .line 470
    move-object/from16 v29, v5

    .line 471
    .line 472
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 473
    .line 474
    .line 475
    sput-object v15, Ldd1;->CloudMailRu2:Ldd1;

    .line 476
    .line 477
    new-instance v15, Ldd1;

    .line 478
    .line 479
    new-instance v0, Lsm;

    .line 480
    .line 481
    const/4 v5, 0x5

    .line 482
    invoke-direct {v0, v5}, Lsm;-><init>(I)V

    .line 483
    .line 484
    .line 485
    new-instance v6, Lcl;

    .line 486
    .line 487
    invoke-direct {v6, v2}, Lcl;-><init>(I)V

    .line 488
    .line 489
    .line 490
    new-instance v7, Loc1;

    .line 491
    .line 492
    invoke-direct {v7, v4}, Loc1;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 496
    .line 497
    .line 498
    move-result-object v30

    .line 499
    const v36, 0x221a0

    .line 500
    .line 501
    .line 502
    const-string v16, "S3"

    .line 503
    .line 504
    const/16 v17, 0xa

    .line 505
    .line 506
    const-string v18, "s3"

    .line 507
    .line 508
    const v19, 0x7f1304a9

    .line 509
    .line 510
    .line 511
    const-string v20, "S3 Storage"

    .line 512
    .line 513
    const-string v22, "remote"

    .line 514
    .line 515
    const v24, 0x7f0800e3

    .line 516
    .line 517
    .line 518
    const/16 v25, 0x0

    .line 519
    .line 520
    const/16 v26, 0x0

    .line 521
    .line 522
    const/16 v27, 0x1

    .line 523
    .line 524
    const/16 v33, 0x1

    .line 525
    .line 526
    move-object/from16 v21, v0

    .line 527
    .line 528
    move-object/from16 v28, v6

    .line 529
    .line 530
    move-object/from16 v29, v7

    .line 531
    .line 532
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 533
    .line 534
    .line 535
    sput-object v15, Ldd1;->S3:Ldd1;

    .line 536
    .line 537
    new-instance v15, Ldd1;

    .line 538
    .line 539
    new-instance v0, Ldl;

    .line 540
    .line 541
    invoke-direct {v0, v2}, Ldl;-><init>(I)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Lel;

    .line 545
    .line 546
    invoke-direct {v2, v1}, Lel;-><init>(I)V

    .line 547
    .line 548
    .line 549
    new-instance v6, Lqc1;

    .line 550
    .line 551
    invoke-direct {v6, v4}, Lqc1;-><init>(I)V

    .line 552
    .line 553
    .line 554
    sget-object v7, Lfd1;->HTTP:Lfd1;

    .line 555
    .line 556
    filled-new-array {v3, v7}, [Lfd1;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 561
    .line 562
    .line 563
    move-result-object v30

    .line 564
    const v36, 0x26120

    .line 565
    .line 566
    .line 567
    const-string v16, "WebDav"

    .line 568
    .line 569
    const/16 v17, 0xb

    .line 570
    .line 571
    const-string v18, "webdav"

    .line 572
    .line 573
    const v19, 0x7f1305a9

    .line 574
    .line 575
    .line 576
    const-string v20, "WebDAV"

    .line 577
    .line 578
    const-string v22, "remote"

    .line 579
    .line 580
    const v24, 0x7f08020e

    .line 581
    .line 582
    .line 583
    const/16 v25, 0x1

    .line 584
    .line 585
    move-object/from16 v21, v0

    .line 586
    .line 587
    move-object/from16 v28, v2

    .line 588
    .line 589
    move-object/from16 v29, v6

    .line 590
    .line 591
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 592
    .line 593
    .line 594
    sput-object v15, Ldd1;->WebDav:Ldd1;

    .line 595
    .line 596
    new-instance v15, Ldd1;

    .line 597
    .line 598
    new-instance v0, Lfl;

    .line 599
    .line 600
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 601
    .line 602
    .line 603
    new-instance v1, Lrc1;

    .line 604
    .line 605
    invoke-direct {v1, v4}, Lrc1;-><init>(I)V

    .line 606
    .line 607
    .line 608
    sget-object v2, Lfd1;->SMB:Lfd1;

    .line 609
    .line 610
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 611
    .line 612
    .line 613
    move-result-object v30

    .line 614
    const v36, 0x221a8

    .line 615
    .line 616
    .line 617
    const-string v16, "SMB"

    .line 618
    .line 619
    const/16 v17, 0xc

    .line 620
    .line 621
    const-string v18, "smb"

    .line 622
    .line 623
    const v19, 0x7f130534

    .line 624
    .line 625
    .line 626
    const-string v20, "SMB"

    .line 627
    .line 628
    const/16 v21, 0x0

    .line 629
    .line 630
    const-string v22, "remote"

    .line 631
    .line 632
    const v24, 0x7f0800e7

    .line 633
    .line 634
    .line 635
    const/16 v25, 0x0

    .line 636
    .line 637
    move-object/from16 v28, v0

    .line 638
    .line 639
    move-object/from16 v29, v1

    .line 640
    .line 641
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 642
    .line 643
    .line 644
    sput-object v15, Ldd1;->SMB:Ldd1;

    .line 645
    .line 646
    new-instance v15, Ldd1;

    .line 647
    .line 648
    new-instance v0, Ljx;

    .line 649
    .line 650
    invoke-direct {v0, v5}, Ljx;-><init>(I)V

    .line 651
    .line 652
    .line 653
    new-instance v1, Lsc1;

    .line 654
    .line 655
    invoke-direct {v1, v4}, Lsc1;-><init>(I)V

    .line 656
    .line 657
    .line 658
    sget-object v2, Lfd1;->SFTP:Lfd1;

    .line 659
    .line 660
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 661
    .line 662
    .line 663
    move-result-object v30

    .line 664
    sget-object v2, Lnc1;->USERNAME_PASSWORD:Lnc1;

    .line 665
    .line 666
    sget-object v3, Lnc1;->KEY_BASED:Lnc1;

    .line 667
    .line 668
    filled-new-array {v2, v3}, [Lnc1;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 673
    .line 674
    .line 675
    move-result-object v31

    .line 676
    const v36, 0x201a8

    .line 677
    .line 678
    .line 679
    const-string v16, "SFTP"

    .line 680
    .line 681
    const/16 v17, 0xd

    .line 682
    .line 683
    const-string v18, "sftp"

    .line 684
    .line 685
    const v19, 0x7f1304f3

    .line 686
    .line 687
    .line 688
    const-string v20, "SFTP"

    .line 689
    .line 690
    const-string v22, "remote"

    .line 691
    .line 692
    const v24, 0x7f0800e6

    .line 693
    .line 694
    .line 695
    move-object/from16 v28, v0

    .line 696
    .line 697
    move-object/from16 v29, v1

    .line 698
    .line 699
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 700
    .line 701
    .line 702
    sput-object v15, Ldd1;->SFTP:Ldd1;

    .line 703
    .line 704
    new-instance v15, Ldd1;

    .line 705
    .line 706
    new-instance v0, Lb7;

    .line 707
    .line 708
    const/16 v1, 0x9

    .line 709
    .line 710
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 711
    .line 712
    .line 713
    new-instance v1, Luc1;

    .line 714
    .line 715
    invoke-direct {v1, v4}, Luc1;-><init>(I)V

    .line 716
    .line 717
    .line 718
    sget-object v2, Lfd1;->FTP:Lfd1;

    .line 719
    .line 720
    sget-object v3, Lfd1;->FTPS_IMPLICIT:Lfd1;

    .line 721
    .line 722
    sget-object v4, Lfd1;->FTPS_EXPLICIT:Lfd1;

    .line 723
    .line 724
    filled-new-array {v2, v3, v4}, [Lfd1;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v30

    .line 732
    const v36, 0x22128

    .line 733
    .line 734
    .line 735
    const-string v16, "FTP"

    .line 736
    .line 737
    const/16 v17, 0xe

    .line 738
    .line 739
    const-string v18, "ftp"

    .line 740
    .line 741
    const v19, 0x7f13028b

    .line 742
    .line 743
    .line 744
    const-string v20, "FTP"

    .line 745
    .line 746
    const-string v22, "remote"

    .line 747
    .line 748
    const v24, 0x7f0800d6

    .line 749
    .line 750
    .line 751
    const/16 v31, 0x0

    .line 752
    .line 753
    move-object/from16 v28, v0

    .line 754
    .line 755
    move-object/from16 v29, v1

    .line 756
    .line 757
    invoke-direct/range {v15 .. v37}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 758
    .line 759
    .line 760
    sput-object v15, Ldd1;->FTP:Ldd1;

    .line 761
    .line 762
    invoke-static {}, Ldd1;->$values()[Ldd1;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    sput-object v0, Ldd1;->$VALUES:[Ldd1;

    .line 767
    .line 768
    invoke-static {v0}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    sput-object v0, Ldd1;->$ENTRIES:Ljx2;

    .line 773
    .line 774
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lbt3;",
            "Ljava/lang/String;",
            "ZIZZZ",
            "Lbt3;",
            "Lqt3;",
            "Ljava/util/List<",
            "+",
            "Lfd1;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnc1;",
            ">;ZZ",
            "Lxi6;",
            "Z)V"
        }
    .end annotation

    .line 4
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Ldd1;->constant:Ljava/lang/String;

    .line 6
    iput p4, p0, Ldd1;->displayNameRes:I

    .line 7
    iput-object p5, p0, Ldd1;->displayNameEn:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Ldd1;->subtitle:Lbt3;

    .line 9
    iput-object p7, p0, Ldd1;->firebaseNodePrefix:Ljava/lang/String;

    .line 10
    iput-boolean p8, p0, Ldd1;->isAppFolderBased:Z

    .line 11
    iput p9, p0, Ldd1;->brandingIconRes:I

    .line 12
    iput-boolean p10, p0, Ldd1;->isWebDav:Z

    .line 13
    iput-boolean p11, p0, Ldd1;->isEmailPasswordBasedWebDav:Z

    .line 14
    iput-boolean p12, p0, Ldd1;->isHttpsOptional:Z

    .line 15
    iput-object p13, p0, Ldd1;->clientProvider:Lbt3;

    .line 16
    iput-object p14, p0, Ldd1;->startConnectActivity:Lqt3;

    .line 17
    iput-object p15, p0, Ldd1;->protocols:Ljava/util/List;

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Ldd1;->authTypes:Ljava/util/List;

    move/from16 p1, p17

    .line 19
    iput-boolean p1, p0, Ldd1;->showUrlInSetup:Z

    move/from16 p1, p18

    .line 20
    iput-boolean p1, p0, Ldd1;->allowSavingSetupDetails:Z

    move-object/from16 p1, p19

    .line 21
    iput-object p1, p0, Ldd1;->releaseState:Lxi6;

    move/from16 p1, p20

    .line 22
    iput-boolean p1, p0, Ldd1;->supportsCurrentAndroidSdk:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move v13, v2

    goto :goto_3

    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v14, v2

    goto :goto_4

    :cond_4
    move/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v15, v2

    goto :goto_5

    :cond_5
    move/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    .line 1
    sget-object v1, Lov2;->a:Lov2;

    move-object/from16 v18, v1

    goto :goto_6

    :cond_6
    move-object/from16 v18, p15

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    .line 2
    sget-object v1, Lnc1;->USERNAME_PASSWORD:Lnc1;

    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_7

    :cond_7
    move-object/from16 v19, p16

    :goto_7
    and-int/lit16 v1, v0, 0x4000

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    move/from16 v20, v3

    goto :goto_8

    :cond_8
    move/from16 v20, p17

    :goto_8
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move/from16 v21, v2

    goto :goto_9

    :cond_9
    move/from16 v21, p18

    :goto_9
    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    move/from16 v23, v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v12, p9

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v22, p19

    move-object/from16 v3, p0

    goto :goto_a

    :cond_a
    move/from16 v23, p20

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v12, p9

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v22, p19

    .line 3
    :goto_a
    invoke-direct/range {v3 .. v23}, Ldd1;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lbt3;Ljava/lang/String;ZIZZZLbt3;Lqt3;Ljava/util/List;Ljava/util/List;ZZLxi6;Z)V

    return-void
.end method

.method public static synthetic A()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$6()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$7(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$24()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic E()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$26()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic F(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$17(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$2(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$23(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$5(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$18()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final _init_$lambda$0()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ld45;->b:Ld45;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    sget-object v2, Ld45;->b:Ld45;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    :cond_0
    move-object v2, v1

    .line 38
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    return-object v1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    .line 50
    .line 51
    invoke-static {v0, v1}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    throw v0
.end method

.method private static final _init_$lambda$1(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lhz3;->c(Landroid/app/Activity;I)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final _init_$lambda$10()Ltb1;
    .locals 3

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Li08;

    .line 4
    .line 5
    new-instance v2, Lzz7;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Li08;-><init>(Lzz7;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method private static final _init_$lambda$11(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$12()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lov5;

    .line 4
    .line 5
    invoke-direct {v1}, Lov5;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$13(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$14()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Ljy8;

    .line 4
    .line 5
    invoke-direct {v1}, Ljy8;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$15(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/YandexSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$16()Ltb1;
    .locals 3

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lvq8;

    .line 4
    .line 5
    sget-object v2, Ldd1;->CloudMailRu2:Ldd1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lvq8;-><init>(Ldd1;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static final _init_$lambda$17(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->CloudMailRu2:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$18()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f1304aa

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private static final _init_$lambda$19()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lar6;

    .line 4
    .line 5
    invoke-direct {v1}, Lar6;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$2(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$20(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->S3:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$21()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f1305aa

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private static final _init_$lambda$22()Ltb1;
    .locals 3

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lvq8;

    .line 4
    .line 5
    sget-object v2, Ldd1;->WebDav:Ldd1;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lvq8;-><init>(Ldd1;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private static final _init_$lambda$23(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->WebDav:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$24()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lji7;

    .line 4
    .line 5
    invoke-direct {v1}, Lji7;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$25(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->SMB:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$26()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lli4;

    .line 4
    .line 5
    invoke-direct {v1}, Lli4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$27(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->SFTP:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$28()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lo23;

    .line 4
    .line 5
    invoke-direct {v1}, Lo23;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$29(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 5
    .line 6
    sget-object v0, Ldd1;->FTP:Ldd1;

    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lvm4;->B(Lil0;Ldd1;I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final _init_$lambda$3(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$4()Ltb1;
    .locals 1

    .line 1
    sget-object v0, Lx95;->g:Lx95;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final _init_$lambda$5(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$6()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lv52;

    .line 2
    .line 3
    new-instance v1, Lsb3;

    .line 4
    .line 5
    invoke-direct {v1}, Lsb3;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lv52;-><init>(Ljh1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static final _init_$lambda$7(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final _init_$lambda$9(Lil0;I)Lbe8;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0, v0, p1}, Lio4;->i(Lil0;Ln81;I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic a(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$13(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$20(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$14()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$4()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$12()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$19()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$29(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Ldd1;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic h()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$10()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$11(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$1(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$21()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic l(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$9(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$16()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$22()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic r()Ltb1;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$28()Ltb1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic s(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$27(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$25(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ldd1;
    .locals 1

    .line 1
    const-class v0, Ldd1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ldd1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ldd1;
    .locals 1

    .line 1
    sget-object v0, Ldd1;->$VALUES:[Ldd1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ldd1;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic w(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$15(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ldd1;->_init_$lambda$0()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic y(Lil0;I)Lbe8;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldd1;->_init_$lambda$3(Lil0;I)Lbe8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final getAllowSavingSetupDetails()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->allowSavingSetupDetails:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getAuthTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnc1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldd1;->authTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBrandingIconRes()I
    .locals 0

    .line 1
    iget p0, p0, Ldd1;->brandingIconRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getClient()Ltb1;
    .locals 2

    .line 1
    new-instance v0, Lzk;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Lzk;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Ldd1;->clientProvider:Lbt3;

    .line 23
    .line 24
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ltb1;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    sget-object p0, Lkv2;->i:Lkv2;

    .line 32
    .line 33
    sget-object p0, Lkv2;->i:Lkv2;

    .line 34
    .line 35
    return-object p0
.end method

.method public final getCloudFolderAddress()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldd1;->getMainCloudFolderName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean p0, p0, Ldd1;->isAppFolderBased:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "Apps > SwiftBackup > "

    .line 10
    .line 11
    invoke-static {p0, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    return-object v0
.end method

.method public final getConstant()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->constant:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Ldd1;->displayNameRes:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final getDisplayNameEn()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->displayNameEn:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDisplayNameRes()I
    .locals 0

    .line 1
    iget p0, p0, Ldd1;->displayNameRes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFirebaseNodePrefix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->firebaseNodePrefix:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMainCloudFolderName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Ld45;->b:Ld45;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lqy5;->e(Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Ldd1;->clientProvider:Lbt3;

    .line 19
    .line 20
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of p0, p0, Lv52;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const-string p0, "SwiftBackup_"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    const-string p0, "Swift Backup ("

    .line 36
    .line 37
    const-string v1, ")"

    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    .line 46
    .line 47
    invoke-static {p0, v0}, Ldj7;->f(ILjava/lang/String;)Ljava/lang/RuntimeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0
.end method

.method public final getPasswordFieldHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcd1;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Secret access key"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const p0, 0x7f1303f7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final getPathFieldHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcd1;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const p0, 0x7f130401

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "Path: Eg. [share_name]/mybackups"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string p0, "Path: Eg. [bucket_name]/mybackups"

    .line 33
    .line 34
    return-object p0
.end method

.method public final getProtocols()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfd1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldd1;->protocols:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReleaseState()Lxi6;
    .locals 0

    .line 1
    iget-object p0, p0, Ldd1;->releaseState:Lxi6;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getServerFieldHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcd1;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const p0, 0x7f1304ec

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const-string p0, "IP address"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    const-string p0, "Server Endpoint"

    .line 33
    .line 34
    return-object p0
.end method

.method public final getShowUrlInSetup()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->showUrlInSetup:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getStartConnectActivity()Lqt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldd1;->startConnectActivity:Lqt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubtitle()Lbt3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbt3;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Ldd1;->subtitle:Lbt3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSupportsCurrentAndroidSdk()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->supportsCurrentAndroidSdk:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getUsernameFieldHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcd1;->a:[I

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "Access key ID"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const p0, 0x7f130599

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final isEmailPasswordBasedWebDav()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->isEmailPasswordBasedWebDav:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isHttpsOptional()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->isHttpsOptional:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isWebDav()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldd1;->isWebDav:Z

    .line 2
    .line 3
    return p0
.end method
