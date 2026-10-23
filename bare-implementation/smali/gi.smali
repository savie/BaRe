.class public abstract Lgi;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Lbi;)Lfi;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lbi;->b:Ljava/util/List;

    .line 4
    .line 5
    sget-object v2, Lmp6;->a:Lmp6;

    .line 6
    .line 7
    invoke-static {}, Lmp6;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Ldi;->a:Ldi;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v2, v0, Lbi;->a:Ljava/util/List;

    .line 17
    .line 18
    new-instance v3, Lxg;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-direct {v3, v4}, Lxg;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lyg;

    .line 25
    .line 26
    invoke-direct {v5, v3, v4}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v5}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    new-instance v0, Lci;

    .line 40
    .line 41
    const-string v1, "No APK files provided"

    .line 42
    .line 43
    invoke-static {v1}, Lgi;->c(Ljava/lang/String;)Lcw5;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Lci;-><init>(Lcw5;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    invoke-static {v1}, Lxh8;->B(Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v1}, Lxh8;->A(Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v0, v0, Lbi;->c:Ljava/lang/String;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object v0, v3

    .line 72
    :goto_0
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const-string v5, "APK import request"

    .line 75
    .line 76
    invoke-static {v0, v5}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move-object v0, v3

    .line 82
    :goto_1
    if-nez v0, :cond_9

    .line 83
    .line 84
    invoke-static {v10}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lq63;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    sget-object v5, Lg00;->a:Lg00;

    .line 93
    .line 94
    invoke-static {v0, v4}, Lg00;->p(Lq63;I)Landroid/content/pm/PackageInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move-object v0, v3

    .line 104
    :goto_2
    if-eqz v0, :cond_5

    .line 105
    .line 106
    invoke-static {v0}, Ldg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    goto :goto_3

    .line 111
    :cond_5
    move-object v0, v3

    .line 112
    :goto_3
    invoke-static {v2, v1, v0}, Lgi;->e(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    const-string v5, "Swift Backup metadata"

    .line 126
    .line 127
    invoke-static {v0, v5}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    move-object v0, v3

    .line 133
    :goto_4
    if-nez v0, :cond_8

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->getPackageName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const-string v5, "SAI metadata"

    .line 144
    .line 145
    invoke-static {v0, v5}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    goto :goto_5

    .line 150
    :cond_7
    move-object v0, v3

    .line 151
    :cond_8
    :goto_5
    if-nez v0, :cond_9

    .line 152
    .line 153
    new-instance v0, Lci;

    .line 154
    .line 155
    const-string v1, "Unable to read package name from APK set"

    .line 156
    .line 157
    invoke-static {v1}, Lgi;->c(Ljava/lang/String;)Lcw5;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v0, v1}, Lci;-><init>(Lcw5;)V

    .line 162
    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_9
    move-object v7, v0

    .line 166
    invoke-static {v2, v1, v7}, Lgi;->e(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Ldg;->a:Lai6;

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move-object v0, v3

    .line 179
    :goto_6
    invoke-static {v0}, Ldg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    sget-object v0, Lg00;->a:Lg00;

    .line 184
    .line 185
    invoke-static {}, Lg00;->i()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    sget-boolean v0, Lmp6;->g:Z

    .line 194
    .line 195
    invoke-static {}, Lmp6;->f()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v15, :cond_b

    .line 200
    .line 201
    invoke-static {v15}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    goto :goto_7

    .line 210
    :cond_b
    move-object v2, v3

    .line 211
    :goto_7
    const-string v5, ""

    .line 212
    .line 213
    if-nez v2, :cond_c

    .line 214
    .line 215
    move-object v2, v5

    .line 216
    :cond_c
    const-string v6, "com.android.vending"

    .line 217
    .line 218
    if-eqz v0, :cond_d

    .line 219
    .line 220
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_d

    .line 225
    .line 226
    sget-object v0, Ltg;->SourcePreserving:Ltg;

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_d
    if-eqz v1, :cond_e

    .line 230
    .line 231
    sget-object v0, Ltg;->Shell:Ltg;

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_e
    sget-object v0, Ltg;->Interactive:Ltg;

    .line 235
    .line 236
    :goto_8
    sget-object v1, Ltg;->SourcePreserving:Ltg;

    .line 237
    .line 238
    if-ne v0, v1, :cond_12

    .line 239
    .line 240
    sget-boolean v0, Lmp6;->g:Z

    .line 241
    .line 242
    if-eqz v0, :cond_12

    .line 243
    .line 244
    invoke-static {v15, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-nez v0, :cond_f

    .line 249
    .line 250
    goto :goto_d

    .line 251
    :cond_f
    :try_start_0
    sget-object v0, Lnj7;->a:Lai6;

    .line 252
    .line 253
    new-instance v6, Llj7;

    .line 254
    .line 255
    invoke-static {v10}, Lgi;->d(Ljava/util/List;)Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    new-instance v14, Ldq;

    .line 260
    .line 261
    const/16 v0, 0xd

    .line 262
    .line 263
    invoke-direct {v14, v0}, Ldq;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .line 265
    .line 266
    const-wide/16 v12, 0x0

    .line 267
    .line 268
    move-object v8, v15

    .line 269
    :try_start_1
    invoke-direct/range {v6 .. v14}, Llj7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/ArrayList;JLmt3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    .line 271
    .line 272
    :try_start_2
    invoke-static {v6}, Lnj7;->a(Llj7;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    goto :goto_a

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    goto :goto_9

    .line 279
    :catchall_1
    move-exception v0

    .line 280
    move-object v15, v8

    .line 281
    :goto_9
    new-instance v1, Lbn6;

    .line 282
    .line 283
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 284
    .line 285
    .line 286
    move-object v0, v1

    .line 287
    :goto_a
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-nez v1, :cond_10

    .line 292
    .line 293
    goto :goto_c

    .line 294
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-nez v0, :cond_11

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_11
    move-object v5, v0

    .line 302
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v1, "Failure [Preferred install path unavailable: "

    .line 305
    .line 306
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, "]"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    :goto_c
    check-cast v0, Ljava/util/List;

    .line 326
    .line 327
    goto :goto_e

    .line 328
    :cond_12
    :goto_d
    move-object v0, v3

    .line 329
    :goto_e
    if-eqz v0, :cond_16

    .line 330
    .line 331
    invoke-static {v0}, Lsd7;->e(Ljava/util/List;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-nez v1, :cond_13

    .line 336
    .line 337
    new-instance v1, Lei;

    .line 338
    .line 339
    invoke-direct {v1, v7, v0}, Lei;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 340
    .line 341
    .line 342
    return-object v1

    .line 343
    :cond_13
    invoke-static {v0}, Lgi;->b(Ljava/util/List;)Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_16

    .line 348
    .line 349
    invoke-static {v0}, Lgi;->b(Ljava/util/List;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_14

    .line 354
    .line 355
    sget-object v1, Lg00;->a:Lg00;

    .line 356
    .line 357
    invoke-static {v4, v7}, Lg00;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-eqz v1, :cond_14

    .line 362
    .line 363
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 364
    .line 365
    const/16 v20, 0x0

    .line 366
    .line 367
    const/16 v21, 0x3f

    .line 368
    .line 369
    const/16 v17, 0x0

    .line 370
    .line 371
    const/16 v18, 0x0

    .line 372
    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    move-object/from16 v16, v0

    .line 376
    .line 377
    invoke-static/range {v16 .. v21}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v1, "Source-preserving install verification failed, but "

    .line 382
    .line 383
    const-string v2, " is installed; continuing APKS import. Output="

    .line 384
    .line 385
    invoke-static {v1, v7, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    const/4 v12, 0x4

    .line 390
    const/4 v13, 0x0

    .line 391
    const-string v9, "ApksRootInstaller"

    .line 392
    .line 393
    const/4 v11, 0x0

    .line 394
    invoke-static/range {v8 .. v13}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    const-string v0, "Warning [Source-preserving install verification failed after package install; continuing APKS import]"

    .line 398
    .line 399
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    goto :goto_f

    .line 404
    :cond_14
    move-object/from16 v16, v0

    .line 405
    .line 406
    :goto_f
    if-eqz v3, :cond_15

    .line 407
    .line 408
    new-instance v0, Lei;

    .line 409
    .line 410
    invoke-direct {v0, v7, v3}, Lei;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 411
    .line 412
    .line 413
    return-object v0

    .line 414
    :cond_15
    new-instance v0, Lci;

    .line 415
    .line 416
    const/16 v20, 0x0

    .line 417
    .line 418
    const/16 v21, 0x3e

    .line 419
    .line 420
    const-string v17, "\n"

    .line 421
    .line 422
    const/16 v18, 0x0

    .line 423
    .line 424
    const/16 v19, 0x0

    .line 425
    .line 426
    invoke-static/range {v16 .. v21}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-static {v1}, Lgi;->c(Ljava/lang/String;)Lcw5;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-direct {v0, v1}, Lci;-><init>(Lcw5;)V

    .line 435
    .line 436
    .line 437
    return-object v0

    .line 438
    :cond_16
    new-instance v11, Lqd7;

    .line 439
    .line 440
    invoke-static {v10}, Lgi;->d(Ljava/util/List;)Ljava/util/ArrayList;

    .line 441
    .line 442
    .line 443
    move-result-object v12

    .line 444
    const/16 v18, 0x0

    .line 445
    .line 446
    const/16 v19, 0x70

    .line 447
    .line 448
    const/4 v13, 0x0

    .line 449
    const-wide/16 v16, 0x0

    .line 450
    .line 451
    move-object v14, v9

    .line 452
    invoke-direct/range {v11 .. v19}, Lqd7;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;JLev;I)V

    .line 453
    .line 454
    .line 455
    invoke-static {v11}, Lsd7;->d(Lqd7;)Ljava/util/List;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0}, Lsd7;->e(Ljava/util/List;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-eqz v1, :cond_17

    .line 464
    .line 465
    new-instance v6, Lci;

    .line 466
    .line 467
    const/4 v4, 0x0

    .line 468
    const/16 v5, 0x3e

    .line 469
    .line 470
    const-string v1, "\n"

    .line 471
    .line 472
    const/4 v2, 0x0

    .line 473
    const/4 v3, 0x0

    .line 474
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-static {v0}, Lgi;->c(Ljava/lang/String;)Lcw5;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-direct {v6, v0}, Lci;-><init>(Lcw5;)V

    .line 483
    .line 484
    .line 485
    goto :goto_10

    .line 486
    :cond_17
    new-instance v6, Lei;

    .line 487
    .line 488
    invoke-direct {v6, v7, v0}, Lei;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 489
    .line 490
    .line 491
    :goto_10
    return-object v6
.end method

.method public static b(Ljava/util/List;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "Install verification failed"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static c(Ljava/lang/String;)Lcw5;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "INSUFFICIENT_STORAGE"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lar;->STATUS_FAILURE_STORAGE:Lar;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string v1, "UPDATE_INCOMPATIBLE"

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget-object v0, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-string v1, "CONFLICT"

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sget-object v0, Lar;->STATUS_FAILURE_CONFLICT:Lar;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const-string v1, "ABORT"

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_7

    .line 51
    .line 52
    const-string v1, "CANCEL"

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "INVALID"

    .line 62
    .line 63
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    sget-object v0, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string v1, "MISSING_SPLIT"

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    sget-object v0, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const-string v1, "NO_MATCHING_ABIS"

    .line 84
    .line 85
    invoke-static {v0, v1, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    sget-object v0, Lar;->STATUS_FAILURE_INVALID:Lar;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    sget-object v0, Lar;->STATUS_FAILURE:Lar;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    :goto_0
    sget-object v0, Lar;->STATUS_FAILURE_ABORTED:Lar;

    .line 98
    .line 99
    :goto_1
    invoke-static {v0, p0, v2}, Lpe4;->w(Lar;Ljava/lang/String;Z)Lcw5;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public static d(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Lxg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lxg;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lyg;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {p0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    add-int/lit8 v3, v1, 0x1

    .line 42
    .line 43
    if-ltz v1, :cond_1

    .line 44
    .line 45
    check-cast v2, Lq63;

    .line 46
    .line 47
    new-instance v4, Lsg;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const-string v1, "base"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v2}, Lq63;->p()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    invoke-virtual {v2}, Lq63;->A()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    invoke-direct {v4, v5, v6, v2, v1}, Lsg;-><init>(JLq63;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lfl1;->F0()V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0

    .line 75
    :cond_2
    return-object v0
.end method

.method public static e(Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string v0, "Swift Backup metadata"

    .line 10
    .line 11
    invoke-static {p0, v0}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0, p2, v0}, Ldg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const-string p1, "SAI metadata"

    .line 27
    .line 28
    invoke-static {p0, p1}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0, p2, p1}, Ldg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method
