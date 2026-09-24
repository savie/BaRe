.class public final synthetic Lqf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lqf;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lqf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lqf;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lqf;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v5, p0, Lqf;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lqf;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcs8;

    .line 16
    .line 17
    check-cast v5, Lbz7;

    .line 18
    .line 19
    iget-object p0, p0, Lcs8;->b:Liu8;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lut8;

    .line 25
    .line 26
    const v1, 0x7f130087

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v5, v1, p0, v2}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 33
    .line 34
    .line 35
    return-object v4

    .line 36
    :pswitch_0
    check-cast p0, Loo8;

    .line 37
    .line 38
    check-cast v5, Lao8;

    .line 39
    .line 40
    invoke-virtual {p0}, Loo8;->V()Lpo8;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p0, p0, Lpo8;->f:Lix6;

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Lix6;->k(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :pswitch_1
    check-cast p0, Lah8;

    .line 51
    .line 52
    check-cast v5, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 53
    .line 54
    invoke-static {p0, v5}, Lah8;->c(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_2
    check-cast p0, Lp77;

    .line 60
    .line 61
    check-cast v5, Lni4;

    .line 62
    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v1, v5, Lni4;->a:Ldj4;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v5, p0}, Lvm4;->y(Lni4;Lp77;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Lp77;->f()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move v2, v3

    .line 81
    :goto_0
    if-ge v2, v1, :cond_5

    .line 82
    .line 83
    invoke-interface {p0, v2}, Lp77;->h(I)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_1

    .line 101
    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    instance-of v7, v6, Lal4;

    .line 107
    .line 108
    if-eqz v7, :cond_0

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {v5}, Lel1;->l1(Ljava/util/List;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lal4;

    .line 119
    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    invoke-interface {v4}, Lal4;->names()[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    array-length v5, v4

    .line 129
    move v6, v3

    .line 130
    :goto_2
    if-ge v6, v5, :cond_4

    .line 131
    .line 132
    aget-object v7, v4, v6

    .line 133
    .line 134
    invoke-interface {p0}, Lp77;->e()Lzh8;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    sget-object v9, Lt77;->g:Lt77;

    .line 139
    .line 140
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_2

    .line 145
    .line 146
    const-string v8, "enum value"

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_2
    const-string v8, "property"

    .line 150
    .line 151
    :goto_3
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_3

    .line 156
    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    new-instance v1, Lvj4;

    .line 168
    .line 169
    invoke-interface {p0, v2}, Lp77;->g(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v0, v7}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-interface {p0, v0}, Lp77;->g(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v4, "The suggested name \'"

    .line 190
    .line 191
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v4, "\' for "

    .line 198
    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const/16 v4, 0x20

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, " is already one of the names for "

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, " in "

    .line 228
    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-eqz p0, :cond_6

    .line 252
    .line 253
    sget-object v0, Lpv2;->a:Lpv2;

    .line 254
    .line 255
    :cond_6
    return-object v0

    .line 256
    :pswitch_3
    check-cast p0, Lnp3;

    .line 257
    .line 258
    check-cast v5, Lto3;

    .line 259
    .line 260
    iget-boolean v0, p0, Lnp3;->e:Z

    .line 261
    .line 262
    if-eqz v0, :cond_7

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_7
    iput-boolean v2, p0, Lnp3;->e:Z

    .line 266
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v1, "FoldersDashFragmentVM."

    .line 270
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-object v0, p0, La55;->b:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v5}, Lto3;->isLocalSection()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    sget-object v0, Lpz4;->g:Lpz4;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_8
    sget-object v0, Lsf1;->g:Lsf1;

    .line 293
    .line 294
    :goto_4
    iput-object v0, p0, Lnp3;->i:Ldv;

    .line 295
    .line 296
    invoke-virtual {p0, v3, v3}, Lnp3;->j(ZZ)V

    .line 297
    .line 298
    .line 299
    :goto_5
    return-object v4

    .line 300
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 301
    .line 302
    check-cast v5, Lkj3;

    .line 303
    .line 304
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 305
    .line 306
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    if-eqz v5, :cond_9

    .line 311
    .line 312
    sget-object v0, Lzn4;->a:Lzn4;

    .line 313
    .line 314
    new-instance v0, Lw01;

    .line 315
    .line 316
    const/16 v1, 0xa

    .line 317
    .line 318
    invoke-direct {v0, v1, p0, v5}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 322
    .line 323
    .line 324
    move-object v1, v4

    .line 325
    goto :goto_6

    .line 326
    :cond_9
    const-string p0, "Required value was null."

    .line 327
    .line 328
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    :goto_6
    return-object v1

    .line 332
    :pswitch_5
    check-cast p0, Lo23;

    .line 333
    .line 334
    check-cast v5, Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {p0, v3}, Lo23;->z(Z)Ld23;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p0, v5}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    invoke-virtual {p0, v0, v2}, Lo23;->B(Ld23;Ljava/lang/String;)[Lg23;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    iget v3, v0, Lz13;->k:I

    .line 349
    .line 350
    invoke-static {v3}, Lk55;->x(I)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_b

    .line 355
    .line 356
    invoke-static {p0}, Lxh8;->G([Lg23;)Ljava/util/ArrayList;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_a

    .line 374
    .line 375
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    check-cast v1, Lg23;

    .line 380
    .line 381
    invoke-static {v1, v2}, Log1;->a(Lg23;Ljava/lang/String;)Lpg1;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_a
    new-instance v1, Lgh1;

    .line 390
    .line 391
    invoke-direct {v1, v0}, Lgh1;-><init>(Ljava/util/List;)V

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :cond_b
    invoke-virtual {v0}, Lz13;->i()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    const-string v0, "LIST failed for metadata path="

    .line 400
    .line 401
    const-string v3, ". Reply="

    .line 402
    .line 403
    invoke-static {v0, v2, v3, p0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :goto_8
    return-object v1

    .line 411
    :pswitch_6
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 412
    .line 413
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->L:Lgv7;

    .line 414
    .line 415
    check-cast v5, Lnq2;

    .line 416
    .line 417
    invoke-virtual {p0}, Lil0;->H()V

    .line 418
    .line 419
    .line 420
    sget-object v2, Lb82;->i:Ljava/lang/Object;

    .line 421
    .line 422
    const-string v2, "dropbox_user_id"

    .line 423
    .line 424
    :try_start_0
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 425
    .line 426
    if-eqz v6, :cond_c

    .line 427
    .line 428
    invoke-interface {v6, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    goto :goto_9

    .line 433
    :cond_c
    const-string v2, "prefs"

    .line 434
    .line 435
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :catch_0
    :goto_9
    iget-object v2, v5, Lnq2;->a:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 442
    .line 443
    .line 444
    move-result v2

    .line 445
    if-nez v2, :cond_d

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_d
    if-eqz v1, :cond_f

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-nez v1, :cond_e

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_e
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    check-cast v0, Landroid/widget/TextView;

    .line 462
    .line 463
    const v1, 0x7f1301b4

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 467
    .line 468
    .line 469
    const/4 v0, -0x1

    .line 470
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 474
    .line 475
    .line 476
    goto :goto_b

    .line 477
    :cond_f
    :goto_a
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    check-cast v0, Landroid/widget/TextView;

    .line 482
    .line 483
    const v1, 0x7f1303d8

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 493
    .line 494
    .line 495
    :goto_b
    return-object v4

    .line 496
    :pswitch_7
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 497
    .line 498
    check-cast v5, Lt22;

    .line 499
    .line 500
    invoke-static {p0, v5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$NFvwqGaQl8vK3ul8X_0RI454oIM(Ljava/util/concurrent/Executor;Lt22;)Lbe8;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    return-object p0

    .line 505
    :pswitch_8
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;

    .line 506
    .line 507
    check-cast v5, Lc12;

    .line 508
    .line 509
    invoke-static {p0, v5}, Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;->$r8$lambda$yMEaevrdl94wqkNKbqT2jBvE_nI(Landroidx/credentials/playservices/controllers/identityauth/createpassword/CredentialProviderCreatePasswordController;Lc12;)Lbe8;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    return-object p0

    .line 514
    :pswitch_9
    check-cast p0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 515
    .line 516
    check-cast v5, Lbw3;

    .line 517
    .line 518
    invoke-static {p0, v5}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$g3Vvfv8fz2sC8IKs6dAYFNxPM9c(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Lbw3;)Lbe8;

    .line 519
    .line 520
    .line 521
    move-result-object p0

    .line 522
    return-object p0

    .line 523
    :pswitch_a
    check-cast p0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 524
    .line 525
    check-cast v5, Lk12;

    .line 526
    .line 527
    invoke-static {p0, v5}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$RqyeA5QrqFE0W_Iky6IRdlNzPqk(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lk12;)Lbe8;

    .line 528
    .line 529
    .line 530
    move-result-object p0

    .line 531
    return-object p0

    .line 532
    :pswitch_b
    check-cast p0, Lcd;

    .line 533
    .line 534
    check-cast v5, Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {p0, v5}, Lcd;->open(Ljava/lang/String;)Lfw6;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    return-object p0

    .line 541
    :pswitch_c
    check-cast p0, Luj1;

    .line 542
    .line 543
    check-cast v5, Ljava/util/List;

    .line 544
    .line 545
    iget-object v0, p0, Luj1;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 546
    .line 547
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-eqz v1, :cond_10

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_10
    invoke-virtual {v0}, Lil0;->H()V

    .line 555
    .line 556
    .line 557
    sget-object v1, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;->Companion:Lob1;

    .line 558
    .line 559
    new-instance v2, Lai;

    .line 560
    .line 561
    const/4 v3, 0x2

    .line 562
    invoke-direct {v2, v3}, Lai;-><init>(I)V

    .line 563
    .line 564
    .line 565
    new-instance v6, Lae1;

    .line 566
    .line 567
    iget-object v8, p0, Luj1;->c:Lng1;

    .line 568
    .line 569
    const/4 v12, 0x0

    .line 570
    const/4 v13, 0x1

    .line 571
    const/4 v7, 0x1

    .line 572
    const-class v9, Lng1;

    .line 573
    .line 574
    const-string v10, "createCloudBackupTag"

    .line 575
    .line 576
    const-string v11, "createCloudBackupTag(Ljava/lang/String;)V"

    .line 577
    .line 578
    invoke-direct/range {v6 .. v13}, Lae1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-static {v0, v5, v2, v6}, Lob1;->b(Lil0;Ljava/util/List;Lmt3;Lae1;)V

    .line 585
    .line 586
    .line 587
    :goto_c
    return-object v4

    .line 588
    :pswitch_d
    check-cast p0, Ljy8;

    .line 589
    .line 590
    check-cast v5, Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {p0, v5}, Ljy8;->w(Ljava/lang/String;)Lqk1;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    return-object p0

    .line 597
    :pswitch_e
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 598
    .line 599
    check-cast v5, Ljava/util/ArrayList;

    .line 600
    .line 601
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 602
    .line 603
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    invoke-virtual {p0, v5, v3}, Lb11;->j(Ljava/util/List;Z)V

    .line 608
    .line 609
    .line 610
    return-object v4

    .line 611
    :pswitch_f
    check-cast p0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 612
    .line 613
    check-cast v5, Lz11;

    .line 614
    .line 615
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->a0()Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    const-class v0, Lz11;

    .line 620
    .line 621
    invoke-virtual {p0, v0, v5}, Lqo0;->c(Ljava/lang/Class;Lpw6;)V

    .line 622
    .line 623
    .line 624
    return-object v4

    .line 625
    :pswitch_10
    check-cast p0, Lc40;

    .line 626
    .line 627
    check-cast v5, Lji;

    .line 628
    .line 629
    iget-object v0, p0, Lc40;->o:Lex6;

    .line 630
    .line 631
    invoke-virtual {v0, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {p0}, Lc40;->l()V

    .line 635
    .line 636
    .line 637
    return-object v4

    .line 638
    :pswitch_11
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 639
    .line 640
    check-cast v5, Lzf;

    .line 641
    .line 642
    sget-object v0, Lmp6;->a:Lmp6;

    .line 643
    .line 644
    invoke-static {}, Lmp6;->f()Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-eqz v0, :cond_11

    .line 649
    .line 650
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->O()Lmg;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {p0, v5}, Lmg;->m(Lzf;)V

    .line 655
    .line 656
    .line 657
    goto :goto_d

    .line 658
    :cond_11
    sget-object v0, Lqe7;->a:Lgv7;

    .line 659
    .line 660
    invoke-static {}, Lle7;->f()Z

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    if-eqz v0, :cond_12

    .line 665
    .line 666
    new-instance v0, Lrf;

    .line 667
    .line 668
    invoke-direct {v0, v3, p0, v5}, Lrf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0, v0}, Lil0;->J(Lmt3;)V

    .line 672
    .line 673
    .line 674
    goto :goto_d

    .line 675
    :cond_12
    sget v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 676
    .line 677
    invoke-virtual {p0, v5}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->R(Lzf;)V

    .line 678
    .line 679
    .line 680
    :goto_d
    return-object v4

    .line 681
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
