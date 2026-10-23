.class public final Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic R:I


# instance fields
.field public final P:Lgv7;

.field public Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs4;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->P:Lgv7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final U()Lxm6;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->P:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxm6;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v2, v2, Lxm6;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lxm6;->b:Lw00;

    .line 22
    .line 23
    iget-object v2, v2, Lw00;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lix0;

    .line 26
    .line 27
    iget-object v2, v2, Lix0;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Lnc8;->Z(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lnc8;->a0()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lnc8;->b0(Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    const-string v5, "extra_config_settings"

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x0

    .line 75
    :goto_0
    check-cast v1, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 76
    .line 77
    :cond_3
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 78
    .line 79
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v1, v1, Lxm6;->e:Landroidx/core/widget/NestedScrollView;

    .line 84
    .line 85
    const/4 v5, 0x7

    .line 86
    invoke-static {v1, v5}, Lsz8;->b(Landroid/view/View;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v1, v1, Lxm6;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    new-instance v5, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 96
    .line 97
    invoke-direct {v5, v0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 101
    .line 102
    .line 103
    new-instance v5, Lwm6;

    .line 104
    .line 105
    new-instance v6, Lum6;

    .line 106
    .line 107
    const v7, 0x7f13048a

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const v8, 0x7f130489

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const v9, 0x7f0801d6

    .line 128
    .line 129
    .line 130
    invoke-direct {v6, v9, v7, v8}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v7, Lum6;

    .line 134
    .line 135
    const v8, 0x7f130488

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    const v9, 0x7f130487

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const v10, 0x7f0801dc

    .line 156
    .line 157
    .line 158
    invoke-direct {v7, v10, v8, v9}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v8, Lum6;

    .line 162
    .line 163
    const v9, 0x7f130475

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const v10, 0x7f130474

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const v11, 0x7f0801ba

    .line 184
    .line 185
    .line 186
    invoke-direct {v8, v11, v9, v10}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v9, Lum6;

    .line 190
    .line 191
    const v10, 0x7f13048f

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    const v11, 0x7f13048e

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    const v12, 0x7f0801cc

    .line 212
    .line 213
    .line 214
    invoke-direct {v9, v12, v10, v11}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    new-instance v10, Lum6;

    .line 218
    .line 219
    const v11, 0x7f130480

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    const v12, 0x7f13047f

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    const v13, 0x7f0801ce

    .line 240
    .line 241
    .line 242
    invoke-direct {v10, v13, v11, v12}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance v11, Lum6;

    .line 246
    .line 247
    const v12, 0x7f13047e

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const v13, 0x7f13047d

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v13

    .line 264
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    const v14, 0x7f0801d8

    .line 268
    .line 269
    .line 270
    invoke-direct {v11, v14, v12, v13}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v12, Lum6;

    .line 274
    .line 275
    const v13, 0x7f130484

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v13

    .line 282
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    const v14, 0x7f130483

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    const v15, 0x7f0801df

    .line 296
    .line 297
    .line 298
    invoke-direct {v12, v15, v13, v14}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v13, Lum6;

    .line 302
    .line 303
    const v14, 0x7f13047b

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    const v15, 0x7f13047a

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    const/16 v19, 0x0

    .line 324
    .line 325
    const v2, 0x7f0801bf

    .line 326
    .line 327
    .line 328
    invoke-direct {v13, v2, v14, v15}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v14, Lum6;

    .line 332
    .line 333
    const v2, 0x7f130486

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    const v15, 0x7f130485

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v15

    .line 350
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    const v3, 0x7f0800bd

    .line 354
    .line 355
    .line 356
    invoke-direct {v14, v3, v2, v15}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    new-instance v15, Lum6;

    .line 360
    .line 361
    const v2, 0x7f130479

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    const v3, 0x7f130478

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    const v4, 0x7f08014b

    .line 382
    .line 383
    .line 384
    invoke-direct {v15, v4, v2, v3}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    new-instance v2, Lum6;

    .line 388
    .line 389
    const v3, 0x7f130477

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    const v4, 0x7f130476

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    move-object/from16 p1, v6

    .line 410
    .line 411
    const v6, 0x7f0801bb

    .line 412
    .line 413
    .line 414
    invoke-direct {v2, v6, v3, v4}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v3, Lum6;

    .line 418
    .line 419
    const v4, 0x7f13048c

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    .line 428
    .line 429
    const v6, 0x7f13048b

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    move-object/from16 v16, v2

    .line 440
    .line 441
    const v2, 0x7f0801e0

    .line 442
    .line 443
    .line 444
    invoke-direct {v3, v2, v4, v6}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v2, Lum6;

    .line 448
    .line 449
    const v4, 0x7f130482

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    const v6, 0x7f130481

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    move-object/from16 v17, v3

    .line 470
    .line 471
    const v3, 0x7f0801c1

    .line 472
    .line 473
    .line 474
    invoke-direct {v2, v3, v4, v6}, Lum6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    move-object/from16 v6, p1

    .line 478
    .line 479
    move-object/from16 v18, v2

    .line 480
    .line 481
    filled-new-array/range {v6 .. v18}, [Lum6;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-direct {v5, v2}, Lwm6;-><init>(Ljava/util/List;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    iget-object v1, v1, Lxm6;->c:Lcom/google/android/material/card/MaterialCardView;

    .line 500
    .line 501
    new-instance v2, Ldj;

    .line 502
    .line 503
    const/16 v3, 0xb

    .line 504
    .line 505
    invoke-direct {v2, v0, v3}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    iget-object v1, v1, Lxm6;->f:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 516
    .line 517
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 518
    .line 519
    if-eqz v2, :cond_4

    .line 520
    .line 521
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSpecialPermissions()Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    goto :goto_2

    .line 526
    :cond_4
    const-string v2, "restore_special_permissions"

    .line 527
    .line 528
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .line 530
    const/4 v4, 0x1

    .line 531
    if-eqz v3, :cond_5

    .line 532
    .line 533
    :try_start_1
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    goto :goto_1

    .line 538
    :cond_5
    const-string v2, "prefs"

    .line 539
    .line 540
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v19
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    :catch_0
    const/4 v4, 0x1

    .line 545
    :catch_1
    :goto_1
    move v2, v4

    .line 546
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 547
    .line 548
    .line 549
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 550
    .line 551
    if-eqz v2, :cond_6

    .line 552
    .line 553
    goto :goto_3

    .line 554
    :cond_6
    sget-object v2, Lmp6;->a:Lmp6;

    .line 555
    .line 556
    invoke-static {}, Lmp6;->f()Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-nez v2, :cond_7

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->U()Lxm6;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    iget-object v2, v2, Lxm6;->k:Landroid/widget/TextView;

    .line 571
    .line 572
    const v3, 0x7f13049e

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 576
    .line 577
    .line 578
    :cond_7
    :goto_3
    new-instance v2, Lsm6;

    .line 579
    .line 580
    invoke-direct {v2, v0}, Lsm6;-><init>(Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 584
    .line 585
    .line 586
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lha7;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "extra_config_settings"

    .line 5
    .line 6
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->Q:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
