.class public final Llt7;
.super Lf46;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final j:Z

.field public final k:F

.field public final l:F

.field public final m:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceScreen;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lf46;-><init>(Landroidx/preference/PreferenceScreen;)V

    .line 5
    .line 6
    .line 7
    iput-boolean p2, p0, Llt7;->j:Z

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const p2, 0x7f07005b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput p2, p0, Llt7;->k:F

    .line 23
    .line 24
    const p2, 0x7f07006e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iput p2, p0, Llt7;->l:F

    .line 32
    .line 33
    const p2, 0x7f07049c

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Llt7;->m:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final bridge synthetic h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lk46;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Llt7;->n(Lk46;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n(Lk46;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-super/range {p0 .. p2}, Lf46;->n(Lk46;I)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 11
    .line 12
    const v3, 0x1020016

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/widget/TextView;

    .line 20
    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const v3, 0x1020010

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 v6, 0x6

    .line 43
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto/16 :goto_15

    .line 53
    .line 54
    :cond_2
    const v6, 0x7f0a0268

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v8, 0x1

    .line 62
    if-eqz v6, :cond_20

    .line 63
    .line 64
    iget-boolean v9, v0, Llt7;->j:Z

    .line 65
    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    iget-object v9, v3, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-nez v9, :cond_3

    .line 71
    .line 72
    iget v9, v3, Landroidx/preference/Preference;->q:I

    .line 73
    .line 74
    if-eqz v9, :cond_3

    .line 75
    .line 76
    iget-object v10, v3, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v10, v9}, Liz1;->m(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    iput-object v9, v3, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    :cond_3
    iget-object v9, v3, Landroidx/preference/Preference;->r:Landroid/graphics/drawable/Drawable;

    .line 85
    .line 86
    if-eqz v9, :cond_4

    .line 87
    .line 88
    move v9, v5

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/16 v9, 0x8

    .line 91
    .line 92
    :goto_0
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_20

    .line 100
    .line 101
    iget-object v9, v3, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 102
    .line 103
    if-nez v9, :cond_5

    .line 104
    .line 105
    const-string v9, ""

    .line 106
    .line 107
    :cond_5
    const-string v10, "blacklist"

    .line 108
    .line 109
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    const v11, 0x7f0604b1

    .line 114
    .line 115
    .line 116
    const v12, 0x7f0604ae

    .line 117
    .line 118
    .line 119
    if-eqz v10, :cond_6

    .line 120
    .line 121
    new-instance v9, Lit7;

    .line 122
    .line 123
    invoke-direct {v9, v12, v11}, Lit7;-><init>(II)V

    .line 124
    .line 125
    .line 126
    :goto_1
    move/from16 p1, v5

    .line 127
    .line 128
    goto/16 :goto_c

    .line 129
    .line 130
    :cond_6
    const-string v10, "config"

    .line 131
    .line 132
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    const v13, 0x7f0604a3

    .line 137
    .line 138
    .line 139
    const v14, 0x7f0604a2

    .line 140
    .line 141
    .line 142
    if-eqz v10, :cond_7

    .line 143
    .line 144
    new-instance v9, Lit7;

    .line 145
    .line 146
    invoke-direct {v9, v14, v13}, Lit7;-><init>(II)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    const-string v10, "label"

    .line 151
    .line 152
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    const v15, 0x7f060021

    .line 157
    .line 158
    .line 159
    move/from16 p1, v5

    .line 160
    .line 161
    const v5, 0x7f06001e

    .line 162
    .line 163
    .line 164
    if-eqz v10, :cond_8

    .line 165
    .line 166
    new-instance v9, Lit7;

    .line 167
    .line 168
    invoke-direct {v9, v5, v15}, Lit7;-><init>(II)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_c

    .line 172
    .line 173
    :cond_8
    const-string v10, "app"

    .line 174
    .line 175
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    if-eqz v10, :cond_9

    .line 180
    .line 181
    new-instance v9, Lit7;

    .line 182
    .line 183
    const v5, 0x7f06002a

    .line 184
    .line 185
    .line 186
    const v10, 0x7f06002b

    .line 187
    .line 188
    .line 189
    invoke-direct {v9, v5, v10}, Lit7;-><init>(II)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_c

    .line 193
    .line 194
    :cond_9
    const-string v10, "sms"

    .line 195
    .line 196
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-nez v10, :cond_1f

    .line 201
    .line 202
    const-string v10, "message"

    .line 203
    .line 204
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-eqz v10, :cond_a

    .line 209
    .line 210
    goto/16 :goto_b

    .line 211
    .line 212
    :cond_a
    const-string v10, "call"

    .line 213
    .line 214
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_b

    .line 219
    .line 220
    new-instance v9, Lit7;

    .line 221
    .line 222
    const v5, 0x7f06006c

    .line 223
    .line 224
    .line 225
    const v10, 0x7f06006d

    .line 226
    .line 227
    .line 228
    invoke-direct {v9, v5, v10}, Lit7;-><init>(II)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_c

    .line 232
    .line 233
    :cond_b
    const-string v10, "folder"

    .line 234
    .line 235
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-eqz v10, :cond_c

    .line 240
    .line 241
    new-instance v9, Lit7;

    .line 242
    .line 243
    const v5, 0x7f0600d1

    .line 244
    .line 245
    .line 246
    const v10, 0x7f0600d2

    .line 247
    .line 248
    .line 249
    invoke-direct {v9, v5, v10}, Lit7;-><init>(II)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_c

    .line 253
    .line 254
    :cond_c
    const-string v10, "cloud"

    .line 255
    .line 256
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    const v7, 0x7f06004a

    .line 261
    .line 262
    .line 263
    const v4, 0x7f060047

    .line 264
    .line 265
    .line 266
    if-nez v10, :cond_1e

    .line 267
    .line 268
    const-string v10, "download"

    .line 269
    .line 270
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    if-nez v10, :cond_1e

    .line 275
    .line 276
    const-string v10, "onedrive"

    .line 277
    .line 278
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_1e

    .line 283
    .line 284
    const-string v10, "dropbox"

    .line 285
    .line 286
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_1e

    .line 291
    .line 292
    const-string v10, "nextcloud"

    .line 293
    .line 294
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    if-nez v10, :cond_1e

    .line 299
    .line 300
    const-string v10, "s3"

    .line 301
    .line 302
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    if-eqz v10, :cond_d

    .line 307
    .line 308
    goto/16 :goto_a

    .line 309
    .line 310
    :cond_d
    const-string v10, "email"

    .line 311
    .line 312
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-nez v10, :cond_1d

    .line 317
    .line 318
    const-string v10, "telegram"

    .line 319
    .line 320
    invoke-static {v9, v10, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-eqz v10, :cond_e

    .line 325
    .line 326
    goto/16 :goto_9

    .line 327
    .line 328
    :cond_e
    const-string v4, "notification"

    .line 329
    .line 330
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_1c

    .line 335
    .line 336
    const-string v4, "sound"

    .line 337
    .line 338
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_f

    .line 343
    .line 344
    goto/16 :goto_8

    .line 345
    .line 346
    :cond_f
    const-string v4, "theme"

    .line 347
    .line 348
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-nez v4, :cond_1b

    .line 353
    .line 354
    const-string v4, "dynamic"

    .line 355
    .line 356
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-nez v4, :cond_1b

    .line 361
    .line 362
    const-string v4, "amoled"

    .line 363
    .line 364
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_10

    .line 369
    .line 370
    goto/16 :goto_7

    .line 371
    .line 372
    :cond_10
    const-string v4, "labs"

    .line 373
    .line 374
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-nez v4, :cond_1a

    .line 379
    .line 380
    const-string v4, "logger"

    .line 381
    .line 382
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-nez v4, :cond_1a

    .line 387
    .line 388
    const-string v4, "bug"

    .line 389
    .line 390
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    if-nez v4, :cond_1a

    .line 395
    .line 396
    const-string v4, "restart"

    .line 397
    .line 398
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-eqz v4, :cond_11

    .line 403
    .line 404
    goto/16 :goto_6

    .line 405
    .line 406
    :cond_11
    const-string v4, "language"

    .line 407
    .line 408
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-nez v4, :cond_19

    .line 413
    .line 414
    const-string v4, "translation"

    .line 415
    .line 416
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-eqz v4, :cond_12

    .line 421
    .line 422
    goto/16 :goto_5

    .line 423
    .line 424
    :cond_12
    const-string v4, "storage"

    .line 425
    .line 426
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    const v7, 0x7f0600de

    .line 431
    .line 432
    .line 433
    if-nez v4, :cond_18

    .line 434
    .line 435
    const-string v4, "space"

    .line 436
    .line 437
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    if-nez v4, :cond_18

    .line 442
    .line 443
    const-string v4, "backup"

    .line 444
    .line 445
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-nez v4, :cond_18

    .line 450
    .line 451
    const-string v4, "compression"

    .line 452
    .line 453
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-eqz v4, :cond_13

    .line 458
    .line 459
    goto :goto_4

    .line 460
    :cond_13
    const-string v4, "password"

    .line 461
    .line 462
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-nez v4, :cond_17

    .line 467
    .line 468
    const-string v4, "encrypt"

    .line 469
    .line 470
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eqz v4, :cond_14

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_14
    const-string v4, "contact"

    .line 478
    .line 479
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-nez v4, :cond_16

    .line 484
    .line 485
    const-string v4, "help"

    .line 486
    .line 487
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    if-nez v4, :cond_16

    .line 492
    .line 493
    const-string v4, "about"

    .line 494
    .line 495
    invoke-static {v9, v4, v8}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_15

    .line 500
    .line 501
    goto :goto_2

    .line 502
    :cond_15
    new-instance v9, Lit7;

    .line 503
    .line 504
    const v4, 0x7f06001b

    .line 505
    .line 506
    .line 507
    invoke-direct {v9, v4, v7}, Lit7;-><init>(II)V

    .line 508
    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_16
    :goto_2
    new-instance v9, Lit7;

    .line 512
    .line 513
    const v4, 0x7f06049b

    .line 514
    .line 515
    .line 516
    const v5, 0x7f06049c

    .line 517
    .line 518
    .line 519
    invoke-direct {v9, v4, v5}, Lit7;-><init>(II)V

    .line 520
    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_17
    :goto_3
    new-instance v9, Lit7;

    .line 524
    .line 525
    invoke-direct {v9, v5, v15}, Lit7;-><init>(II)V

    .line 526
    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_18
    :goto_4
    new-instance v9, Lit7;

    .line 530
    .line 531
    const v4, 0x7f0600da

    .line 532
    .line 533
    .line 534
    invoke-direct {v9, v4, v7}, Lit7;-><init>(II)V

    .line 535
    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_19
    :goto_5
    new-instance v9, Lit7;

    .line 539
    .line 540
    const v4, 0x7f06008a

    .line 541
    .line 542
    .line 543
    const v5, 0x7f06008b

    .line 544
    .line 545
    .line 546
    invoke-direct {v9, v4, v5}, Lit7;-><init>(II)V

    .line 547
    .line 548
    .line 549
    goto :goto_c

    .line 550
    :cond_1a
    :goto_6
    new-instance v9, Lit7;

    .line 551
    .line 552
    invoke-direct {v9, v12, v11}, Lit7;-><init>(II)V

    .line 553
    .line 554
    .line 555
    goto :goto_c

    .line 556
    :cond_1b
    :goto_7
    new-instance v9, Lit7;

    .line 557
    .line 558
    invoke-direct {v9, v14, v13}, Lit7;-><init>(II)V

    .line 559
    .line 560
    .line 561
    goto :goto_c

    .line 562
    :cond_1c
    :goto_8
    new-instance v9, Lit7;

    .line 563
    .line 564
    invoke-direct {v9, v5, v15}, Lit7;-><init>(II)V

    .line 565
    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_1d
    :goto_9
    new-instance v9, Lit7;

    .line 569
    .line 570
    invoke-direct {v9, v4, v7}, Lit7;-><init>(II)V

    .line 571
    .line 572
    .line 573
    goto :goto_c

    .line 574
    :cond_1e
    :goto_a
    new-instance v9, Lit7;

    .line 575
    .line 576
    invoke-direct {v9, v4, v7}, Lit7;-><init>(II)V

    .line 577
    .line 578
    .line 579
    goto :goto_c

    .line 580
    :cond_1f
    :goto_b
    new-instance v9, Lit7;

    .line 581
    .line 582
    const v4, 0x7f06045b

    .line 583
    .line 584
    .line 585
    const v5, 0x7f06045d

    .line 586
    .line 587
    .line 588
    invoke-direct {v9, v4, v5}, Lit7;-><init>(II)V

    .line 589
    .line 590
    .line 591
    :goto_c
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 592
    .line 593
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 600
    .line 601
    .line 602
    move-result-object v5

    .line 603
    iget v7, v9, Lit7;->b:I

    .line 604
    .line 605
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    const/16 v7, 0x14

    .line 610
    .line 611
    invoke-static {v5, v7}, Lsz8;->U(II)I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    .line 620
    .line 621
    const v4, 0x1020006

    .line 622
    .line 623
    .line 624
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    check-cast v4, Landroid/widget/ImageView;

    .line 629
    .line 630
    if-eqz v4, :cond_21

    .line 631
    .line 632
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    iget v6, v9, Lit7;->a:I

    .line 637
    .line 638
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 647
    .line 648
    .line 649
    goto :goto_d

    .line 650
    :cond_20
    move/from16 p1, v5

    .line 651
    .line 652
    :cond_21
    :goto_d
    instance-of v4, v2, Lcom/google/android/material/card/MaterialCardView;

    .line 653
    .line 654
    const/4 v5, 0x0

    .line 655
    if-eqz v4, :cond_22

    .line 656
    .line 657
    move-object v4, v2

    .line 658
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 659
    .line 660
    goto :goto_e

    .line 661
    :cond_22
    move-object v4, v5

    .line 662
    :goto_e
    if-nez v4, :cond_23

    .line 663
    .line 664
    const v4, 0x7f0a0395

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 672
    .line 673
    if-nez v4, :cond_23

    .line 674
    .line 675
    goto/16 :goto_15

    .line 676
    .line 677
    :cond_23
    const/4 v6, -0x1

    .line 678
    invoke-virtual {v0, v1, v3, v6}, Llt7;->p(ILandroidx/preference/Preference;I)Z

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    invoke-virtual {v0, v1, v3, v8}, Llt7;->p(ILandroidx/preference/Preference;I)Z

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    if-nez v6, :cond_24

    .line 687
    .line 688
    if-nez v1, :cond_24

    .line 689
    .line 690
    sget-object v1, Ljt7;->Single:Ljt7;

    .line 691
    .line 692
    goto :goto_f

    .line 693
    :cond_24
    if-nez v6, :cond_25

    .line 694
    .line 695
    sget-object v1, Ljt7;->Top:Ljt7;

    .line 696
    .line 697
    goto :goto_f

    .line 698
    :cond_25
    if-nez v1, :cond_26

    .line 699
    .line 700
    sget-object v1, Ljt7;->Bottom:Ljt7;

    .line 701
    .line 702
    goto :goto_f

    .line 703
    :cond_26
    sget-object v1, Ljt7;->Middle:Ljt7;

    .line 704
    .line 705
    :goto_f
    sget-object v3, Lkt7;->a:[I

    .line 706
    .line 707
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 708
    .line 709
    .line 710
    move-result v6

    .line 711
    aget v3, v3, v6

    .line 712
    .line 713
    iget v6, v0, Llt7;->k:F

    .line 714
    .line 715
    if-eq v3, v8, :cond_2a

    .line 716
    .line 717
    const/4 v7, 0x2

    .line 718
    iget v8, v0, Llt7;->l:F

    .line 719
    .line 720
    if-eq v3, v7, :cond_29

    .line 721
    .line 722
    const/4 v7, 0x3

    .line 723
    if-eq v3, v7, :cond_28

    .line 724
    .line 725
    const/4 v7, 0x4

    .line 726
    if-ne v3, v7, :cond_27

    .line 727
    .line 728
    new-instance v3, Lht7;

    .line 729
    .line 730
    invoke-direct {v3, v8, v8, v6, v6}, Lht7;-><init>(FFFF)V

    .line 731
    .line 732
    .line 733
    goto :goto_10

    .line 734
    :cond_27
    invoke-static {}, Lq;->j()V

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    :cond_28
    new-instance v3, Lht7;

    .line 739
    .line 740
    invoke-direct {v3, v8, v8, v8, v8}, Lht7;-><init>(FFFF)V

    .line 741
    .line 742
    .line 743
    goto :goto_10

    .line 744
    :cond_29
    new-instance v3, Lht7;

    .line 745
    .line 746
    invoke-direct {v3, v6, v6, v8, v8}, Lht7;-><init>(FFFF)V

    .line 747
    .line 748
    .line 749
    goto :goto_10

    .line 750
    :cond_2a
    new-instance v3, Lht7;

    .line 751
    .line 752
    invoke-direct {v3, v6, v6, v6, v6}, Lht7;-><init>(FFFF)V

    .line 753
    .line 754
    .line 755
    :goto_10
    invoke-virtual {v4}, Lcom/google/android/material/card/MaterialCardView;->getShapeAppearanceModel()Ltb7;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    invoke-virtual {v6}, Ltb7;->m()Lsb7;

    .line 760
    .line 761
    .line 762
    move-result-object v6

    .line 763
    invoke-static/range {p1 .. p1}, Lxh8;->e(I)Lzv1;

    .line 764
    .line 765
    .line 766
    move-result-object v7

    .line 767
    iput-object v7, v6, Lsb7;->a:Lzv1;

    .line 768
    .line 769
    new-instance v7, Lf3;

    .line 770
    .line 771
    iget v8, v3, Lht7;->a:F

    .line 772
    .line 773
    invoke-direct {v7, v8}, Lf3;-><init>(F)V

    .line 774
    .line 775
    .line 776
    iput-object v7, v6, Lsb7;->e:Llx1;

    .line 777
    .line 778
    invoke-static/range {p1 .. p1}, Lxh8;->e(I)Lzv1;

    .line 779
    .line 780
    .line 781
    move-result-object v7

    .line 782
    iput-object v7, v6, Lsb7;->b:Lzv1;

    .line 783
    .line 784
    new-instance v7, Lf3;

    .line 785
    .line 786
    iget v8, v3, Lht7;->b:F

    .line 787
    .line 788
    invoke-direct {v7, v8}, Lf3;-><init>(F)V

    .line 789
    .line 790
    .line 791
    iput-object v7, v6, Lsb7;->f:Llx1;

    .line 792
    .line 793
    invoke-static/range {p1 .. p1}, Lxh8;->e(I)Lzv1;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    iput-object v7, v6, Lsb7;->c:Lzv1;

    .line 798
    .line 799
    new-instance v7, Lf3;

    .line 800
    .line 801
    iget v8, v3, Lht7;->c:F

    .line 802
    .line 803
    invoke-direct {v7, v8}, Lf3;-><init>(F)V

    .line 804
    .line 805
    .line 806
    iput-object v7, v6, Lsb7;->g:Llx1;

    .line 807
    .line 808
    invoke-static/range {p1 .. p1}, Lxh8;->e(I)Lzv1;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    iput-object v7, v6, Lsb7;->d:Lzv1;

    .line 813
    .line 814
    new-instance v7, Lf3;

    .line 815
    .line 816
    iget v3, v3, Lht7;->d:F

    .line 817
    .line 818
    invoke-direct {v7, v3}, Lf3;-><init>(F)V

    .line 819
    .line 820
    .line 821
    iput-object v7, v6, Lsb7;->h:Llx1;

    .line 822
    .line 823
    invoke-virtual {v6}, Lsb7;->a()Ltb7;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    invoke-virtual {v4, v3}, Lcom/google/android/material/card/MaterialCardView;->setShapeAppearanceModel(Ltb7;)V

    .line 828
    .line 829
    .line 830
    sget-object v3, Ljt7;->Bottom:Ljt7;

    .line 831
    .line 832
    if-eq v1, v3, :cond_2c

    .line 833
    .line 834
    sget-object v3, Ljt7;->Single:Ljt7;

    .line 835
    .line 836
    if-ne v1, v3, :cond_2b

    .line 837
    .line 838
    goto :goto_11

    .line 839
    :cond_2b
    iget v0, v0, Llt7;->m:I

    .line 840
    .line 841
    goto :goto_12

    .line 842
    :cond_2c
    :goto_11
    move/from16 v0, p1

    .line 843
    .line 844
    :goto_12
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 849
    .line 850
    if-eqz v3, :cond_2d

    .line 851
    .line 852
    move-object v5, v1

    .line 853
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 854
    .line 855
    :cond_2d
    if-nez v5, :cond_2e

    .line 856
    .line 857
    goto :goto_13

    .line 858
    :cond_2e
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 859
    .line 860
    if-ne v1, v0, :cond_2f

    .line 861
    .line 862
    goto :goto_13

    .line 863
    :cond_2f
    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 864
    .line 865
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    .line 867
    .line 868
    :goto_13
    const v0, 0x1020018

    .line 869
    .line 870
    .line 871
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    check-cast v0, Landroid/view/ViewGroup;

    .line 876
    .line 877
    const v1, 0x7f0a0397

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 881
    .line 882
    .line 883
    move-result-object v1

    .line 884
    if-eqz v1, :cond_31

    .line 885
    .line 886
    if-eqz v0, :cond_30

    .line 887
    .line 888
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-nez v2, :cond_30

    .line 893
    .line 894
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 895
    .line 896
    .line 897
    move-result v0

    .line 898
    if-lez v0, :cond_30

    .line 899
    .line 900
    move/from16 v5, p1

    .line 901
    .line 902
    goto :goto_14

    .line 903
    :cond_30
    const/16 v5, 0x8

    .line 904
    .line 905
    :goto_14
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 906
    .line 907
    .line 908
    :cond_31
    :goto_15
    return-void
.end method

.method public final p(ILandroidx/preference/Preference;I)Z
    .locals 0

    .line 1
    add-int/2addr p1, p3

    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    iget-object p3, p0, Lf46;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-ge p1, p3, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of p1, p0, Landroidx/preference/PreferenceCategory;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p0, p0, Landroidx/preference/Preference;->a0:Landroidx/preference/PreferenceGroup;

    .line 25
    .line 26
    iget-object p1, p2, Landroidx/preference/Preference;->a0:Landroidx/preference/PreferenceGroup;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method
