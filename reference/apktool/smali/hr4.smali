.class public final Lhr4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a()Ljava/util/List;
    .locals 22

    .line 1
    const-string v0, "show_system_apps"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "prefs"

    .line 15
    .line 16
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :goto_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v3, 0x7f130592

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const v5, 0x7f0600da

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const v6, 0xffffff

    .line 45
    .line 46
    .line 47
    and-int/2addr v4, v6

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v7, 0x1

    .line 57
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v8, "#%06X"

    .line 62
    .line 63
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    new-instance v9, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 68
    .line 69
    const-string v10, "__user_apps"

    .line 70
    .line 71
    invoke-direct {v9, v10, v0, v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v10, 0x7f1302e1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v10, " ("

    .line 94
    .line 95
    const-string v11, ")"

    .line 96
    .line 97
    invoke-static {v0, v10, v4, v11}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    and-int/2addr v4, v6

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v12, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 127
    .line 128
    const-string v13, "__user_apps_labelled"

    .line 129
    .line 130
    invoke-direct {v12, v13, v0, v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const v4, 0x7f1303dd

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v0, v10, v3, v11}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    and-int/2addr v3, v6

    .line 165
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    new-instance v13, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 182
    .line 183
    const-string v14, "__user_apps_not_labelled"

    .line 184
    .line 185
    invoke-direct {v13, v14, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const v3, 0x7f130236

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const v14, 0x7f0600d0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v14}, Landroid/content/Context;->getColor(I)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    and-int/2addr v3, v6

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    move-object v14, v12

    .line 228
    new-instance v12, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 229
    .line 230
    const-string v15, "__favorite_apps"

    .line 231
    .line 232
    invoke-direct {v12, v15, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const v3, 0x7f130564

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    const v15, 0x7f0604cb

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v15}, Landroid/content/Context;->getColor(I)I

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    and-int/2addr v3, v6

    .line 258
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    new-instance v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 275
    .line 276
    move/from16 v17, v6

    .line 277
    .line 278
    const-string v6, "__system_apps_launchable"

    .line 279
    .line 280
    invoke-direct {v1, v6, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    if-eqz v2, :cond_1

    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_1
    const/4 v1, 0x0

    .line 287
    :goto_1
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const v3, 0x7f130565

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v3, v15}, Landroid/content/Context;->getColor(I)I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    and-int v3, v3, v17

    .line 307
    .line 308
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    new-instance v6, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 325
    .line 326
    const-string v5, "__system_apps_updated"

    .line 327
    .line 328
    invoke-direct {v6, v5, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    if-eqz v2, :cond_2

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_2
    const/4 v6, 0x0

    .line 335
    :goto_2
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const v3, 0x7f130563

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3, v15}, Landroid/content/Context;->getColor(I)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    and-int v3, v3, v17

    .line 355
    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    new-instance v5, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 373
    .line 374
    const-string v7, "__system_apps_labelled_favorites"

    .line 375
    .line 376
    invoke-direct {v5, v7, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    if-eqz v2, :cond_3

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_3
    const/4 v5, 0x0

    .line 383
    :goto_3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const v3, 0x7f130562

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    invoke-static {v0, v10, v3, v11}, Lu48;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v3, v15}, Landroid/content/Context;->getColor(I)I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    and-int v3, v3, v17

    .line 415
    .line 416
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    const/4 v4, 0x1

    .line 425
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    new-instance v4, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 434
    .line 435
    const-string v7, "__system_apps_not_labelled"

    .line 436
    .line 437
    invoke-direct {v4, v7, v0, v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    if-eqz v2, :cond_4

    .line 441
    .line 442
    move-object/from16 v16, v4

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :cond_4
    const/16 v16, 0x0

    .line 446
    .line 447
    :goto_4
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    const v2, 0x7f1302c3

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    const v3, 0x7f0600da

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    and-int v2, v2, v17

    .line 470
    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    const/4 v4, 0x1

    .line 480
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    new-instance v3, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 489
    .line 490
    const-string v4, "__installed_from_google_play"

    .line 491
    .line 492
    invoke-direct {v3, v4, v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    const v2, 0x7f1303dc

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    const v4, 0x7f0600da

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    and-int v2, v2, v17

    .line 518
    .line 519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    const/4 v4, 0x1

    .line 528
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    new-instance v4, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 537
    .line 538
    const-string v7, "__not_installed_from_google_play"

    .line 539
    .line 540
    invoke-direct {v4, v7, v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    const v2, 0x7f13007b

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    const v7, 0x7f0600da

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    and-int v2, v2, v17

    .line 566
    .line 567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    const/4 v7, 0x1

    .line 576
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    new-instance v7, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 585
    .line 586
    const-string v10, "__apps_with_multiple_backups"

    .line 587
    .line 588
    invoke-direct {v7, v10, v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    const v2, 0x7f13007c

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    const v10, 0x7f0600da

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v10}, Landroid/content/Context;->getColor(I)I

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    and-int v2, v2, v17

    .line 614
    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    const/4 v10, 0x1

    .line 624
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    new-instance v10, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 633
    .line 634
    const-string v11, "__apps_with_protected_backups"

    .line 635
    .line 636
    invoke-direct {v10, v11, v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    const v2, 0x7f1300bf

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    const v11, 0x7f0600da

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2, v11}, Landroid/content/Context;->getColor(I)I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    and-int v2, v2, v17

    .line 662
    .line 663
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    const/4 v11, 0x1

    .line 672
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    new-instance v8, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 681
    .line 682
    const-string v11, "__backups_with_notes"

    .line 683
    .line 684
    invoke-direct {v8, v11, v0, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    move-object/from16 v17, v3

    .line 688
    .line 689
    move-object/from16 v18, v4

    .line 690
    .line 691
    move-object v15, v5

    .line 692
    move-object/from16 v19, v7

    .line 693
    .line 694
    move-object/from16 v21, v8

    .line 695
    .line 696
    move-object/from16 v20, v10

    .line 697
    .line 698
    move-object v11, v13

    .line 699
    move-object v10, v14

    .line 700
    move-object v13, v1

    .line 701
    move-object v14, v6

    .line 702
    filled-new-array/range {v9 .. v21}, [Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    return-object v0
.end method

.method public static b(Lji;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :sswitch_0
    const-string v0, "__user_apps_labelled"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lji;->hasLabels()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_1
    const-string v0, "__system_apps_launchable"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Lji;->isLaunchable()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_2
    const-string v0, "__apps_with_multiple_backups"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lji;->isCloudApp()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lji;->hasMultipleBackups(Z)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0

    .line 77
    :sswitch_3
    const-string v0, "__apps_with_protected_backups"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0}, Lji;->isCloudApp()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lji;->hasProtectedBackups(Z)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :sswitch_4
    const-string v0, "__system_apps_labelled_favorites"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    invoke-virtual {p0}, Lji;->isLabelledOrFavorites()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_0

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :sswitch_5
    const-string v0, "__not_installed_from_google_play"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_0

    .line 129
    .line 130
    invoke-virtual {p0}, Lji;->isCloudApp()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lji;->isInstalledFromGooglePlay(Z)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_0

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :sswitch_6
    const-string v0, "__installed_from_google_play"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    .line 150
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_0

    .line 155
    .line 156
    invoke-virtual {p0}, Lji;->isCloudApp()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Lji;->isInstalledFromGooglePlay(Z)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_0

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :sswitch_7
    const-string v0, "__user_apps"

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    .line 176
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    if-nez p0, :cond_0

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :sswitch_8
    const-string v0, "__favorite_apps"

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-eqz v0, :cond_1

    .line 190
    .line 191
    sget-object p1, Lv53;->a:Lv53;

    .line 192
    .line 193
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    sget-object p1, Lv53;->c:Ljava/util/LinkedHashMap;

    .line 201
    .line 202
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    return p0

    .line 207
    :sswitch_9
    const-string v0, "__user_apps_not_labelled"

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_1

    .line 214
    .line 215
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_0

    .line 220
    .line 221
    invoke-virtual {p0}, Lji;->hasLabels()Z

    .line 222
    .line 223
    .line 224
    move-result p0

    .line 225
    if-nez p0, :cond_0

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :sswitch_a
    const-string v0, "__backups_with_notes"

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_1

    .line 235
    .line 236
    invoke-virtual {p0}, Lji;->isCloudApp()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    invoke-virtual {p0, p1}, Lji;->hasBackupsWithNotes(Z)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    return p0

    .line 245
    :sswitch_b
    const-string v0, "__system_apps_not_labelled"

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    .line 253
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_0

    .line 258
    .line 259
    invoke-virtual {p0}, Lji;->hasLabels()Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    if-nez p0, :cond_0

    .line 264
    .line 265
    goto :goto_0

    .line 266
    :sswitch_c
    const-string v0, "__system_apps_updated"

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_1

    .line 273
    .line 274
    invoke-virtual {p0}, Lji;->isBundled()Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_0

    .line 279
    .line 280
    invoke-virtual {p0}, Lji;->isUpdatedSystemApp()Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-eqz p0, :cond_0

    .line 285
    .line 286
    :goto_0
    const/4 p0, 0x1

    .line 287
    return p0

    .line 288
    :cond_0
    const/4 p0, 0x0

    .line 289
    return p0

    .line 290
    :cond_1
    :goto_1
    new-instance p0, Lio5;

    .line 291
    .line 292
    const-string v0, "Unhandled built-in label id \'"

    .line 293
    .line 294
    const-string v1, "\'"

    .line 295
    .line 296
    invoke-static {v0, p1, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw p0

    .line 304
    nop

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x75d65be2 -> :sswitch_c
        -0x498dcb00 -> :sswitch_b
        -0x3ee3740a -> :sswitch_a
        -0x3b828864 -> :sswitch_9
        -0xa9564ab -> :sswitch_8
        -0x3ac717a -> :sswitch_7
        0xa2eea6a -> :sswitch_6
        0x4b745b56 -> :sswitch_5
        0x4cb4f36c -> :sswitch_4
        0x4d56f8b4 -> :sswitch_3
        0x4ecbd3ee -> :sswitch_2
        0x5607054a -> :sswitch_1
        0x5cdae830 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "__"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-static {}, Lhr4;->a()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    check-cast v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_3
    :goto_1
    return v0
.end method
