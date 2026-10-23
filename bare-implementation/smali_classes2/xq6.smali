.class public final Lxq6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final j:Lxq6;

.field public static final k:Ljava/util/List;

.field public static final l:Ljava/util/List;

.field public static final m:Ljava/util/ArrayList;

.field public static final n:Ljava/util/ArrayList;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    new-instance v0, Lxq6;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/16 v10, 0x1e0

    .line 5
    .line 6
    const-string v1, "custom"

    .line 7
    .line 8
    const-string v2, "Custom S3-compatible storage"

    .line 9
    .line 10
    const v3, 0x7f0800e3

    .line 11
    .line 12
    .line 13
    const-string v4, "s3.example.com"

    .line 14
    .line 15
    const-string v16, "https://rclone.org/s3/"

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    move-object/from16 v6, v16

    .line 21
    .line 22
    invoke-direct/range {v0 .. v10}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lxq6;->j:Lxq6;

    .line 26
    .line 27
    new-instance v2, Lai6;

    .line 28
    .line 29
    const-string v5, "s3\\.amazonaws\\.com"

    .line 30
    .line 31
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v5, Lai6;

    .line 35
    .line 36
    const-string v6, "s3\\.[^.]+\\.amazonaws\\.com"

    .line 37
    .line 38
    invoke-direct {v5, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lai6;

    .line 42
    .line 43
    const-string v7, "s3\\.dualstack\\.[^.]+\\.amazonaws\\.com"

    .line 44
    .line 45
    invoke-direct {v6, v7}, Lai6;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    filled-new-array {v2, v5, v6}, [Lai6;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    new-instance v17, Lxq6;

    .line 57
    .line 58
    const-string v14, "us-east-1"

    .line 59
    .line 60
    const/16 v15, 0x60

    .line 61
    .line 62
    const-string v6, "amazon_s3"

    .line 63
    .line 64
    const-string v7, "Amazon S3"

    .line 65
    .line 66
    const v8, 0x7f0800ce

    .line 67
    .line 68
    .line 69
    const-string v9, "s3.<region>.amazonaws.com"

    .line 70
    .line 71
    const-string v11, "https://docs.aws.amazon.com/general/latest/gr/s3.html"

    .line 72
    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    move-object/from16 v5, v17

    .line 76
    .line 77
    invoke-direct/range {v5 .. v15}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lai6;

    .line 81
    .line 82
    const-string v5, "[^.]+\\.r2\\.cloudflarestorage\\.com"

    .line 83
    .line 84
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v23

    .line 91
    new-instance v18, Lxq6;

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    const/16 v28, 0xa0

    .line 96
    .line 97
    const-string v19, "cloudflare_r2"

    .line 98
    .line 99
    const-string v20, "Cloudflare R2"

    .line 100
    .line 101
    const v21, 0x7f0800d2

    .line 102
    .line 103
    .line 104
    const-string v22, "<account_id>.r2.cloudflarestorage.com"

    .line 105
    .line 106
    const-string v24, "https://developers.cloudflare.com/r2/api/s3/api/"

    .line 107
    .line 108
    const/16 v25, 0x0

    .line 109
    .line 110
    const-string v26, "auto"

    .line 111
    .line 112
    invoke-direct/range {v18 .. v28}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lai6;

    .line 116
    .line 117
    const-string v5, "s3\\.[^.]+\\.megas4\\.com"

    .line 118
    .line 119
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Lai6;

    .line 123
    .line 124
    const-string v6, "s3\\.[^.]+\\.s4\\.mega\\.io"

    .line 125
    .line 126
    invoke-direct {v5, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    filled-new-array {v2, v5}, [Lai6;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    new-instance v19, Lxq6;

    .line 138
    .line 139
    const-string v14, "eu-amsterdam"

    .line 140
    .line 141
    const-string v6, "mega_s4"

    .line 142
    .line 143
    const-string v7, "MEGA S4"

    .line 144
    .line 145
    const v8, 0x7f0800dd

    .line 146
    .line 147
    .line 148
    const-string v9, "s3.<region>.megas4.com"

    .line 149
    .line 150
    const-string v11, "https://help.mega.io/megas4/setup-guides/mega-s4-endpoint-urls"

    .line 151
    .line 152
    move-object/from16 v5, v19

    .line 153
    .line 154
    invoke-direct/range {v5 .. v15}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    new-instance v2, Lai6;

    .line 158
    .line 159
    const-string v5, "s3\\.[^.]+\\.backblazeb2\\.com"

    .line 160
    .line 161
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v25

    .line 168
    new-instance v20, Lxq6;

    .line 169
    .line 170
    const-string v29, "us-west-004"

    .line 171
    .line 172
    const/16 v30, 0x60

    .line 173
    .line 174
    const-string v21, "backblaze_b2"

    .line 175
    .line 176
    const-string v22, "Backblaze B2"

    .line 177
    .line 178
    const v23, 0x7f0800cf

    .line 179
    .line 180
    .line 181
    const-string v24, "s3.<region>.backblazeb2.com"

    .line 182
    .line 183
    const-string v26, "https://www.backblaze.com/docs/cloud-storage-s3-compatible-api"

    .line 184
    .line 185
    const/16 v28, 0x0

    .line 186
    .line 187
    invoke-direct/range {v20 .. v30}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    new-instance v2, Lai6;

    .line 191
    .line 192
    const-string v5, "[^.]+\\.digitaloceanspaces\\.com"

    .line 193
    .line 194
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v26

    .line 201
    new-instance v21, Lxq6;

    .line 202
    .line 203
    const-string v30, "nyc3"

    .line 204
    .line 205
    const/16 v31, 0x60

    .line 206
    .line 207
    const-string v22, "digitalocean_spaces"

    .line 208
    .line 209
    const-string v23, "DigitalOcean Spaces"

    .line 210
    .line 211
    const v24, 0x7f0800d3

    .line 212
    .line 213
    .line 214
    const-string v25, "<region>.digitaloceanspaces.com"

    .line 215
    .line 216
    const-string v27, "https://docs.digitalocean.com/products/spaces/reference/s3-sdk-examples/"

    .line 217
    .line 218
    const/16 v29, 0x0

    .line 219
    .line 220
    invoke-direct/range {v21 .. v31}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    .line 222
    .line 223
    new-instance v2, Lai6;

    .line 224
    .line 225
    const-string v5, "s3(\\.[^.]+)?\\.wasabisys\\.com"

    .line 226
    .line 227
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v27

    .line 234
    new-instance v22, Lxq6;

    .line 235
    .line 236
    const/16 v31, 0x0

    .line 237
    .line 238
    const/16 v32, 0x80

    .line 239
    .line 240
    const-string v23, "wasabi"

    .line 241
    .line 242
    const-string v24, "Wasabi"

    .line 243
    .line 244
    const v25, 0x7f0800eb

    .line 245
    .line 246
    .line 247
    const-string v26, "s3.wasabisys.com"

    .line 248
    .line 249
    const-string v28, "https://docs.wasabi.com/docs/what-are-the-service-urls-for-wasabis-different-regions"

    .line 250
    .line 251
    const-string v29, "s3.wasabisys.com"

    .line 252
    .line 253
    const-string v30, "us-east-1"

    .line 254
    .line 255
    invoke-direct/range {v22 .. v32}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Lai6;

    .line 259
    .line 260
    const-string v5, "[^.]+\\.your-objectstorage\\.com"

    .line 261
    .line 262
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v28

    .line 269
    new-instance v23, Lxq6;

    .line 270
    .line 271
    const-string v32, "fsn1"

    .line 272
    .line 273
    const/16 v33, 0x60

    .line 274
    .line 275
    const-string v24, "hetzner_object_storage"

    .line 276
    .line 277
    const-string v25, "Hetzner"

    .line 278
    .line 279
    const v26, 0x7f0800d8

    .line 280
    .line 281
    .line 282
    const-string v27, "<location>.your-objectstorage.com"

    .line 283
    .line 284
    const-string v29, "https://docs.hetzner.com/storage/object-storage/"

    .line 285
    .line 286
    const/16 v30, 0x0

    .line 287
    .line 288
    invoke-direct/range {v23 .. v33}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    new-instance v2, Lai6;

    .line 292
    .line 293
    const-string v5, "s3\\.[^.]+\\.io\\.cloud\\.ovh\\.net"

    .line 294
    .line 295
    invoke-direct {v2, v5}, Lai6;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v5, Lai6;

    .line 299
    .line 300
    const-string v6, "s3\\.[^.]+\\.perf\\.cloud\\.ovh\\.net"

    .line 301
    .line 302
    invoke-direct {v5, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v6, Lai6;

    .line 306
    .line 307
    const-string v7, "s3\\.[^.]+\\.cloud\\.ovh\\.net"

    .line 308
    .line 309
    invoke-direct {v6, v7}, Lai6;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    filled-new-array {v2, v5, v6}, [Lai6;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    new-instance v5, Lxq6;

    .line 321
    .line 322
    const-string v14, "gra"

    .line 323
    .line 324
    const-string v6, "ovhcloud_object_storage"

    .line 325
    .line 326
    const-string v7, "OVHcloud"

    .line 327
    .line 328
    const v8, 0x7f0800e0

    .line 329
    .line 330
    .line 331
    const-string v9, "s3.<region>.io.cloud.ovh.net"

    .line 332
    .line 333
    const-string v11, "https://docs.ovhcloud.com/en/guides/storage-and-backup/object-storage/s3-location/"

    .line 334
    .line 335
    invoke-direct/range {v5 .. v15}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    new-instance v2, Lai6;

    .line 339
    .line 340
    const-string v6, "s3\\.[^.]+\\.scw\\.cloud"

    .line 341
    .line 342
    invoke-direct {v2, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v29

    .line 349
    new-instance v24, Lxq6;

    .line 350
    .line 351
    const-string v33, "fr-par"

    .line 352
    .line 353
    const/16 v34, 0x60

    .line 354
    .line 355
    const-string v25, "scaleway_object_storage"

    .line 356
    .line 357
    const-string v26, "Scaleway"

    .line 358
    .line 359
    const v27, 0x7f0800e4

    .line 360
    .line 361
    .line 362
    const-string v28, "s3.<region>.scw.cloud"

    .line 363
    .line 364
    const-string v30, "https://www.scaleway.com/en/docs/object-storage/concepts/"

    .line 365
    .line 366
    const/16 v32, 0x0

    .line 367
    .line 368
    invoke-direct/range {v24 .. v34}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    .line 370
    .line 371
    new-instance v2, Lai6;

    .line 372
    .line 373
    const-string v6, "^s3\\.[a-z0-9-]+\\.idrivee2\\.com$"

    .line 374
    .line 375
    invoke-direct {v2, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object v30

    .line 382
    new-instance v25, Lxq6;

    .line 383
    .line 384
    const-string v34, "us-west-1"

    .line 385
    .line 386
    const/16 v35, 0x60

    .line 387
    .line 388
    const-string v26, "idrive_e2"

    .line 389
    .line 390
    const-string v27, "IDrive e2"

    .line 391
    .line 392
    const v28, 0x7f0800da

    .line 393
    .line 394
    .line 395
    const-string v29, "s3.<region>.idrivee2.com"

    .line 396
    .line 397
    const-string v31, "https://www.idrive.com/s3-storage-e2/e2-endpoint-urls"

    .line 398
    .line 399
    const/16 v33, 0x0

    .line 400
    .line 401
    invoke-direct/range {v25 .. v35}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    new-instance v2, Lai6;

    .line 405
    .line 406
    const-string v6, "gateway\\.storjshare\\.io"

    .line 407
    .line 408
    invoke-direct {v2, v6}, Lai6;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v31

    .line 415
    new-instance v26, Lxq6;

    .line 416
    .line 417
    const/16 v35, 0x0

    .line 418
    .line 419
    const/16 v36, 0x80

    .line 420
    .line 421
    const-string v27, "storj"

    .line 422
    .line 423
    const-string v28, "Storj"

    .line 424
    .line 425
    const v29, 0x7f0800e8

    .line 426
    .line 427
    .line 428
    const-string v30, "gateway.storjshare.io"

    .line 429
    .line 430
    const-string v32, "https://storj.dev/dcs/api/s3/s3-compatible-gateway"

    .line 431
    .line 432
    const-string v33, "gateway.storjshare.io"

    .line 433
    .line 434
    const-string v34, "us-east-1"

    .line 435
    .line 436
    invoke-direct/range {v26 .. v36}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    .line 438
    .line 439
    move-object/from16 v27, v22

    .line 440
    .line 441
    move-object/from16 v22, v21

    .line 442
    .line 443
    move-object/from16 v21, v27

    .line 444
    .line 445
    move-object/from16 v27, v26

    .line 446
    .line 447
    move-object/from16 v26, v25

    .line 448
    .line 449
    move-object/from16 v25, v24

    .line 450
    .line 451
    move-object/from16 v24, v5

    .line 452
    .line 453
    filled-new-array/range {v17 .. v27}, [Lxq6;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    sput-object v2, Lxq6;->k:Ljava/util/List;

    .line 462
    .line 463
    sput-object v2, Lxq6;->l:Ljava/util/List;

    .line 464
    .line 465
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    invoke-static {v5, v2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    sput-object v5, Lxq6;->m:Ljava/util/ArrayList;

    .line 474
    .line 475
    iget-object v5, v0, Lxq6;->i:Ljava/util/List;

    .line 476
    .line 477
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    new-instance v11, Lxq6;

    .line 481
    .line 482
    const-string v13, "Any S3-compatible server"

    .line 483
    .line 484
    iget-object v6, v0, Lxq6;->f:Ljava/lang/String;

    .line 485
    .line 486
    iget-object v7, v0, Lxq6;->g:Ljava/lang/String;

    .line 487
    .line 488
    iget-object v0, v0, Lxq6;->h:Ljava/lang/String;

    .line 489
    .line 490
    move-object/from16 v19, v0

    .line 491
    .line 492
    move-object v12, v1

    .line 493
    move v14, v3

    .line 494
    move-object v15, v4

    .line 495
    move-object/from16 v20, v5

    .line 496
    .line 497
    move-object/from16 v17, v6

    .line 498
    .line 499
    move-object/from16 v18, v7

    .line 500
    .line 501
    invoke-direct/range {v11 .. v20}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 502
    .line 503
    .line 504
    invoke-static {v11}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v0, v2}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    sput-object v0, Lxq6;->n:Ljava/util/ArrayList;

    .line 513
    .line 514
    new-instance v0, Ljava/util/ArrayList;

    .line 515
    .line 516
    const/16 v1, 0xa

    .line 517
    .line 518
    invoke-static {v2, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_0

    .line 534
    .line 535
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    check-cast v2, Lxq6;

    .line 540
    .line 541
    iget v2, v2, Lxq6;->c:I

    .line 542
    .line 543
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto :goto_0

    .line 551
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lxq6;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lxq6;->b:Ljava/lang/String;

    .line 36
    iput p3, p0, Lxq6;->c:I

    .line 37
    iput-object p4, p0, Lxq6;->d:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lxq6;->e:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lxq6;->f:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lxq6;->g:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lxq6;->h:Ljava/lang/String;

    .line 42
    iput-object p9, p0, Lxq6;->i:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p10, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p7, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p10, 0x40

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p8, v1

    .line 12
    :cond_1
    and-int/lit16 v0, p10, 0x80

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    move-object p9, v1

    .line 17
    :cond_2
    and-int/lit16 p10, p10, 0x100

    .line 18
    .line 19
    if-eqz p10, :cond_3

    .line 20
    .line 21
    sget-object p5, Lov2;->a:Lov2;

    .line 22
    .line 23
    :cond_3
    move-object v2, p9

    .line 24
    move-object p9, p5

    .line 25
    move-object p5, p6

    .line 26
    move-object p6, p7

    .line 27
    move-object p7, p8

    .line 28
    move-object p8, v2

    .line 29
    invoke-direct/range {p0 .. p9}, Lxq6;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lxq6;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lxq6;

    .line 12
    .line 13
    iget-object v1, p0, Lxq6;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lxq6;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lxq6;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lxq6;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lxq6;->c:I

    .line 36
    .line 37
    iget v3, p1, Lxq6;->c:I

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lxq6;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lxq6;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lxq6;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lxq6;->e:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lxq6;->f:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lxq6;->f:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lxq6;->g:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lxq6;->g:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lxq6;->h:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lxq6;->h:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object p0, p0, Lxq6;->i:Ljava/util/List;

    .line 98
    .line 99
    iget-object p1, p1, Lxq6;->i:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lxq6;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lxq6;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lxq6;->c:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Leq3;->d(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lxq6;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lxq6;->e:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lfz5;->g(IILjava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lxq6;->f:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    move v3, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_0
    add-int/2addr v0, v3

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget-object v3, p0, Lxq6;->g:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    move v3, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :goto_1
    add-int/2addr v0, v3

    .line 58
    mul-int/2addr v0, v1

    .line 59
    iget-object v3, p0, Lxq6;->h:Ljava/lang/String;

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :goto_2
    add-int/2addr v0, v2

    .line 69
    mul-int/2addr v0, v1

    .line 70
    iget-object p0, p0, Lxq6;->i:Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    add-int/2addr p0, v0

    .line 77
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lxq6;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
