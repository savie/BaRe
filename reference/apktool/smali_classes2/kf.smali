.class public final synthetic Lkf;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkf;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkf;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkf;->a:I

    .line 4
    .line 5
    const v2, 0x7f0a03bf

    .line 6
    .line 7
    .line 8
    const v3, 0x7f0a00a9

    .line 9
    .line 10
    .line 11
    const-string v4, "Missing required view with ID: "

    .line 12
    .line 13
    sget-object v5, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v0, v0, Lkf;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 24
    .line 25
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lyq4;->p:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_0
    check-cast v0, Ldm3;

    .line 35
    .line 36
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Ld11;

    .line 41
    .line 42
    const/16 v3, 0xa

    .line 43
    .line 44
    invoke-direct {v2, v3, v0, v1}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lqo0;->d()V

    .line 51
    .line 52
    .line 53
    return-object v5

    .line 54
    :pswitch_1
    check-cast v0, Lgv7;

    .line 55
    .line 56
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    move v6, v7

    .line 65
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0

    .line 70
    :pswitch_2
    check-cast v0, Lkj3;

    .line 71
    .line 72
    iget-object v0, v0, Lkj3;->h:Lgv7;

    .line 73
    .line 74
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, [C

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    array-length v1, v0

    .line 83
    if-nez v1, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {v1}, Lsz8;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    :cond_4
    :goto_0
    return-object v8

    .line 110
    :pswitch_3
    check-cast v0, Lkq2;

    .line 111
    .line 112
    :try_start_0
    iget-object v0, v0, Lkq2;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lqj4;->i()Lfl4;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    new-instance v1, Lbn6;

    .line 125
    .line 126
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    move-object v0, v1

    .line 130
    :goto_1
    nop

    .line 131
    instance-of v1, v0, Lbn6;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    move-object v8, v0

    .line 137
    :goto_2
    check-cast v8, Lfl4;

    .line 138
    .line 139
    return-object v8

    .line 140
    :pswitch_4
    check-cast v0, Lmk2;

    .line 141
    .line 142
    iget-object v1, v0, Lmk2;->e:Lji;

    .line 143
    .line 144
    if-eqz v1, :cond_6

    .line 145
    .line 146
    invoke-virtual {v0}, Lmk2;->k()Lji;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    :cond_6
    return-object v8

    .line 151
    :pswitch_5
    check-cast v0, Lgj2;

    .line 152
    .line 153
    iget-object v0, v0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 154
    .line 155
    sget-object v1, Lzn4;->a:Lzn4;

    .line 156
    .line 157
    new-instance v1, Laj2;

    .line 158
    .line 159
    invoke-direct {v1, v0, v8}, Laj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Ljv1;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v8, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 163
    .line 164
    .line 165
    return-object v5

    .line 166
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 167
    .line 168
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 169
    .line 170
    new-instance v1, Lrj2;

    .line 171
    .line 172
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget-object v2, v2, Ldj2;->e:Lhj2;

    .line 177
    .line 178
    iget-object v2, v2, Lhj2;->f:Lij2;

    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-direct {v1, v0, v2, v3}, Lrj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lij2;Lmk2;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 189
    .line 190
    sget v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 191
    .line 192
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v0, v0, Lov1;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 197
    .line 198
    return-object v0

    .line 199
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 200
    .line 201
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 202
    .line 203
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->O()Lnr1;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v0, v0, Lnr1;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_9
    check-cast v0, Lko1;

    .line 211
    .line 212
    new-instance v1, Ltl2;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lko1;->b()Lzs5;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lzs5;->b()Lws5;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iget-object v0, v0, Lws5;->c:Lf41;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lf41;->b(Lrl5;)V

    .line 228
    .line 229
    .line 230
    return-object v1

    .line 231
    :pswitch_a
    check-cast v0, Lio1;

    .line 232
    .line 233
    new-instance v1, Ltl2;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lio1;->getOnBackPressedDispatcher()Lzs5;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lzs5;->b()Lws5;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v0, v0, Lws5;->c:Lf41;

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Lf41;->b(Lrl5;)V

    .line 249
    .line 250
    .line 251
    return-object v1

    .line 252
    :pswitch_b
    check-cast v0, Lsj1;

    .line 253
    .line 254
    const-string v1, "multithreaded_downloads"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 264
    .line 265
    return-object v0

    .line 266
    :pswitch_c
    check-cast v0, Lzc2;

    .line 267
    .line 268
    sget-object v1, Lhb1;->a:Ljava/util/LinkedHashMap;

    .line 269
    .line 270
    invoke-static {v0, v7}, Lcf3;->a(Lzc2;Z)Ll73;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    instance-of v1, v0, Lwe3;

    .line 275
    .line 276
    if-eqz v1, :cond_7

    .line 277
    .line 278
    new-instance v8, Lfb1;

    .line 279
    .line 280
    check-cast v0, Lwe3;

    .line 281
    .line 282
    iget-object v0, v0, Lwe3;->n:Lwc2;

    .line 283
    .line 284
    invoke-virtual {v0}, Lwc2;->c()Lxc2;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v8, v0}, Lfb1;-><init>(Ljava/lang/RuntimeException;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_6

    .line 292
    .line 293
    :cond_7
    instance-of v1, v0, Lxe3;

    .line 294
    .line 295
    if-eqz v1, :cond_14

    .line 296
    .line 297
    check-cast v0, Lxe3;

    .line 298
    .line 299
    iget-object v0, v0, Lxe3;->n:Leb2;

    .line 300
    .line 301
    iget-object v0, v0, Leb2;->a:Lsb4;

    .line 302
    .line 303
    iget-object v0, v0, Lsb4;->a:Lqn5;

    .line 304
    .line 305
    invoke-interface {v0}, Lqn5;->getValue()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    if-nez v0, :cond_8

    .line 310
    .line 311
    new-instance v0, Leb1;

    .line 312
    .line 313
    sget-object v1, Lsv2;->a:Lsv2;

    .line 314
    .line 315
    invoke-direct {v0, v1}, Leb1;-><init>(Ljava/util/Set;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_5

    .line 319
    .line 320
    :cond_8
    instance-of v1, v0, Ljava/util/Map;

    .line 321
    .line 322
    if-eqz v1, :cond_9

    .line 323
    .line 324
    check-cast v0, Ljava/util/Map;

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_9
    move-object v0, v8

    .line 328
    :goto_3
    if-nez v0, :cond_a

    .line 329
    .line 330
    new-instance v0, Ldb1;

    .line 331
    .line 332
    const-string v1, "Cloud tags value is not a map"

    .line 333
    .line 334
    invoke-direct {v0, v1}, Ldb1;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :cond_a
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 340
    .line 341
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_11

    .line 357
    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    check-cast v2, Ljava/util/Map$Entry;

    .line 363
    .line 364
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    instance-of v4, v3, Ljava/lang/String;

    .line 373
    .line 374
    if-nez v4, :cond_c

    .line 375
    .line 376
    new-instance v0, Ldb1;

    .line 377
    .line 378
    const-string v1, "Cloud tag key is not a string"

    .line 379
    .line 380
    invoke-direct {v0, v1}, Ldb1;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_5

    .line 384
    .line 385
    :cond_c
    instance-of v4, v2, Ljava/util/Map;

    .line 386
    .line 387
    if-eqz v4, :cond_d

    .line 388
    .line 389
    check-cast v2, Ljava/util/Map;

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_d
    move-object v2, v8

    .line 393
    :goto_4
    const-string v4, "Cloud tag \'"

    .line 394
    .line 395
    if-nez v2, :cond_e

    .line 396
    .line 397
    new-instance v0, Ldb1;

    .line 398
    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v2, "\' is not a map"

    .line 408
    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-direct {v0, v1}, Ldb1;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_5

    .line 420
    .line 421
    :cond_e
    sget-object v5, Lhb1;->a:Ljava/util/LinkedHashMap;

    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v6

    .line 435
    if-eqz v6, :cond_b

    .line 436
    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    check-cast v6, Ljava/util/Map$Entry;

    .line 442
    .line 443
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v7

    .line 447
    check-cast v7, Ljava/lang/String;

    .line 448
    .line 449
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    check-cast v6, Ljava/util/Set;

    .line 454
    .line 455
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v9

    .line 459
    if-eqz v9, :cond_f

    .line 460
    .line 461
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v9

    .line 465
    if-eqz v9, :cond_f

    .line 466
    .line 467
    instance-of v10, v9, Ljava/util/Map;

    .line 468
    .line 469
    if-nez v10, :cond_10

    .line 470
    .line 471
    instance-of v10, v9, Ljava/lang/Iterable;

    .line 472
    .line 473
    if-nez v10, :cond_10

    .line 474
    .line 475
    new-instance v0, Ldb1;

    .line 476
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v2, "\' has an invalid \'"

    .line 486
    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v2, "\' container"

    .line 494
    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    invoke-direct {v0, v1}, Ldb1;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    goto :goto_5

    .line 506
    :cond_10
    sget-object v10, Lhb1;->a:Ljava/util/LinkedHashMap;

    .line 507
    .line 508
    new-instance v10, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v11, "/"

    .line 517
    .line 518
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-static {v9, v6, v1, v7}, Lhb1;->a(Ljava/lang/Object;Ljava/util/Set;Ljava/util/LinkedHashSet;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    if-eqz v6, :cond_f

    .line 533
    .line 534
    new-instance v0, Ldb1;

    .line 535
    .line 536
    invoke-direct {v0, v6}, Ldb1;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    goto :goto_5

    .line 540
    :cond_11
    new-instance v0, Leb1;

    .line 541
    .line 542
    invoke-direct {v0, v1}, Leb1;-><init>(Ljava/util/Set;)V

    .line 543
    .line 544
    .line 545
    :goto_5
    instance-of v1, v0, Ldb1;

    .line 546
    .line 547
    if-eqz v1, :cond_12

    .line 548
    .line 549
    new-instance v8, Lfb1;

    .line 550
    .line 551
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 552
    .line 553
    check-cast v0, Ldb1;

    .line 554
    .line 555
    iget-object v0, v0, Ldb1;->q:Ljava/lang/String;

    .line 556
    .line 557
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-direct {v8, v1}, Lfb1;-><init>(Ljava/lang/RuntimeException;)V

    .line 561
    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_12
    instance-of v1, v0, Leb1;

    .line 565
    .line 566
    if-eqz v1, :cond_13

    .line 567
    .line 568
    new-instance v8, Lgb1;

    .line 569
    .line 570
    check-cast v0, Leb1;

    .line 571
    .line 572
    iget-object v0, v0, Leb1;->q:Ljava/util/Set;

    .line 573
    .line 574
    invoke-direct {v8, v0}, Lgb1;-><init>(Ljava/util/Set;)V

    .line 575
    .line 576
    .line 577
    goto :goto_6

    .line 578
    :cond_13
    invoke-static {}, Lq;->j()V

    .line 579
    .line 580
    .line 581
    goto :goto_6

    .line 582
    :cond_14
    invoke-static {}, Lq;->j()V

    .line 583
    .line 584
    .line 585
    :goto_6
    return-object v8

    .line 586
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 587
    .line 588
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 589
    .line 590
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    const-string v1, "org.swiftapps.swiftbackup.cloud.diagnostics.extra.AUTO_RUN"

    .line 595
    .line 596
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    return-object v0

    .line 605
    :pswitch_e
    check-cast v0, Llc1;

    .line 606
    .line 607
    const v1, 0x7f13042e

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v1}, Lqo0;->h(I)V

    .line 611
    .line 612
    .line 613
    sget-object v1, Ltb1;->a:Ltb1;

    .line 614
    .line 615
    invoke-static {v7}, Lqb1;->o(Z)V

    .line 616
    .line 617
    .line 618
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 619
    .line 620
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 621
    .line 622
    const/4 v12, 0x4

    .line 623
    const/4 v13, 0x0

    .line 624
    const-string v10, "postConnectActions:  Checking for proper access"

    .line 625
    .line 626
    const/4 v11, 0x0

    .line 627
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    invoke-virtual {v1, v7}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    instance-of v2, v1, Lsi1;

    .line 639
    .line 640
    if-nez v2, :cond_16

    .line 641
    .line 642
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 643
    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    const-string v3, "postConnectActions:  "

    .line 647
    .line 648
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v10

    .line 658
    const/4 v12, 0x4

    .line 659
    const/4 v13, 0x0

    .line 660
    const/4 v11, 0x0

    .line 661
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    iget-boolean v2, v0, Llc1;->k:Z

    .line 665
    .line 666
    if-eqz v2, :cond_15

    .line 667
    .line 668
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-virtual {v2}, Ldd1;->getConstant()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    const-string v4, "CONNECT_RESULT status=FAIL cloud="

    .line 687
    .line 688
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v2, " result="

    .line 695
    .line 696
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    const-string v2, "CloudRuntimeSmoke"

    .line 707
    .line 708
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    :cond_15
    invoke-static {}, Lqb1;->a()V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v0}, Lqo0;->d()V

    .line 715
    .line 716
    .line 717
    goto :goto_7

    .line 718
    :cond_16
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    invoke-virtual {v1}, Ltb1;->g()Ldd1;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {v1}, Ldd1;->getFirebaseNodePrefix()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    const-string v2, "remote"

    .line 731
    .line 732
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_17

    .line 737
    .line 738
    :try_start_1
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 739
    .line 740
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-virtual {v2}, Ltb1;->g()Ldd1;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 749
    .line 750
    .line 751
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    if-eqz v1, :cond_17

    .line 756
    .line 757
    invoke-static {}, Lre3;->g()Lzc2;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    const-string v3, "metadata"

    .line 762
    .line 763
    invoke-virtual {v2, v3}, Lzc2;->d(Ljava/lang/String;)Lzc2;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    new-instance v3, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudServiceMetadata;

    .line 768
    .line 769
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getServer()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPath()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v6

    .line 777
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getUsername()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-direct {v3, v4, v6, v1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials$CloudServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v2, v3}, Lzc2;->i(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 785
    .line 786
    .line 787
    :catch_0
    :cond_17
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 788
    .line 789
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 790
    .line 791
    const/4 v12, 0x4

    .line 792
    const/4 v13, 0x0

    .line 793
    const-string v10, "postConnectActions:  Checking for backup tags"

    .line 794
    .line 795
    const/4 v11, 0x0

    .line 796
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    sget-object v1, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;->Companion:Lob1;

    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-static {}, Lob1;->a()Ljava/util/List;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    iget-object v9, v0, La55;->b:Ljava/lang/String;

    .line 809
    .line 810
    const-string v2, "postConnectActions:  Tags="

    .line 811
    .line 812
    invoke-static {v2, v1}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v10

    .line 816
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    if-le v2, v7, :cond_18

    .line 824
    .line 825
    invoke-virtual {v0}, Lqo0;->f()V

    .line 826
    .line 827
    .line 828
    iget-object v0, v0, Llc1;->h:Lix6;

    .line 829
    .line 830
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    goto :goto_7

    .line 834
    :cond_18
    invoke-virtual {v0}, Llc1;->j()V

    .line 835
    .line 836
    .line 837
    :goto_7
    return-object v5

    .line 838
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;

    .line 839
    .line 840
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->O:I

    .line 841
    .line 842
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ChatActivity;->L:Lgv7;

    .line 843
    .line 844
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    check-cast v0, Lk51;

    .line 849
    .line 850
    iget-object v0, v0, Lk51;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 851
    .line 852
    return-object v0

    .line 853
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 854
    .line 855
    sget v1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 856
    .line 857
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    const v1, 0x7f0d003b

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 869
    .line 870
    .line 871
    move-result-object v1

    .line 872
    if-eqz v1, :cond_1a

    .line 873
    .line 874
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 875
    .line 876
    .line 877
    move-result-object v11

    .line 878
    move-object v10, v0

    .line 879
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 880
    .line 881
    const v1, 0x7f0a0209

    .line 882
    .line 883
    .line 884
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 885
    .line 886
    .line 887
    move-result-object v3

    .line 888
    if-eqz v3, :cond_19

    .line 889
    .line 890
    invoke-static {v3}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 891
    .line 892
    .line 893
    move-result-object v12

    .line 894
    const v1, 0x7f0a021e

    .line 895
    .line 896
    .line 897
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    move-object v13, v3

    .line 902
    check-cast v13, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 903
    .line 904
    if-eqz v13, :cond_19

    .line 905
    .line 906
    const v1, 0x7f0a03a8

    .line 907
    .line 908
    .line 909
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    move-object v14, v3

    .line 914
    check-cast v14, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 915
    .line 916
    if-eqz v14, :cond_19

    .line 917
    .line 918
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    move-object v15, v1

    .line 923
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    .line 924
    .line 925
    if-eqz v15, :cond_1b

    .line 926
    .line 927
    new-instance v9, Lqr0;

    .line 928
    .line 929
    invoke-direct/range {v9 .. v15}, Lqr0;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lzx2;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 930
    .line 931
    .line 932
    move-object v8, v9

    .line 933
    goto :goto_9

    .line 934
    :cond_19
    move v2, v1

    .line 935
    goto :goto_8

    .line 936
    :cond_1a
    move v2, v3

    .line 937
    :cond_1b
    :goto_8
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    :goto_9
    return-object v8

    .line 953
    :pswitch_11
    check-cast v0, Lil0;

    .line 954
    .line 955
    invoke-virtual {v0}, Lk28;->p()I

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    invoke-static {}, Lb67;->f()Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-eqz v2, :cond_1c

    .line 964
    .line 965
    goto :goto_a

    .line 966
    :cond_1c
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 971
    .line 972
    .line 973
    :goto_a
    return-object v5

    .line 974
    :pswitch_12
    check-cast v0, Lqk0;

    .line 975
    .line 976
    iget-object v0, v0, Lqk0;->h:Lji;

    .line 977
    .line 978
    invoke-virtual {v0}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    if-eqz v1, :cond_1d

    .line 983
    .line 984
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->hasBackups()Z

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    if-ne v1, v7, :cond_1d

    .line 989
    .line 990
    goto :goto_d

    .line 991
    :cond_1d
    sget-object v1, Lua1;->g:Lua1;

    .line 992
    .line 993
    invoke-virtual {v1}, Ldv;->e()Ljava/util/List;

    .line 994
    .line 995
    .line 996
    move-result-object v1

    .line 997
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v2

    .line 1005
    if-eqz v2, :cond_1f

    .line 1006
    .line 1007
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v2

    .line 1011
    move-object v3, v2

    .line 1012
    check-cast v3, Lji;

    .line 1013
    .line 1014
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v4

    .line 1022
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v3

    .line 1026
    if-eqz v3, :cond_1e

    .line 1027
    .line 1028
    goto :goto_b

    .line 1029
    :cond_1f
    move-object v2, v8

    .line 1030
    :goto_b
    check-cast v2, Lji;

    .line 1031
    .line 1032
    if-eqz v2, :cond_20

    .line 1033
    .line 1034
    invoke-virtual {v2}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    goto :goto_c

    .line 1039
    :cond_20
    move-object v1, v8

    .line 1040
    :goto_c
    invoke-virtual {v0, v1}, Lji;->setCloudBackups(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;)V

    .line 1041
    .line 1042
    .line 1043
    :goto_d
    invoke-virtual {v0}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    if-eqz v0, :cond_21

    .line 1048
    .line 1049
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v8

    .line 1053
    :cond_21
    return-object v8

    .line 1054
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1055
    .line 1056
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1057
    .line 1058
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->k0()Lg20;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v0

    .line 1062
    iget-object v0, v0, Lg20;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1063
    .line 1064
    return-object v0

    .line 1065
    :pswitch_14
    check-cast v0, Lt10;

    .line 1066
    .line 1067
    new-instance v1, Lr10;

    .line 1068
    .line 1069
    invoke-direct {v1, v0}, Lr10;-><init>(Lt10;)V

    .line 1070
    .line 1071
    .line 1072
    return-object v1

    .line 1073
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 1074
    .line 1075
    sget v1, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 1076
    .line 1077
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    const v1, 0x7f0d0030

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    if-eqz v1, :cond_23

    .line 1093
    .line 1094
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v11

    .line 1098
    const v1, 0x7f0a00f4

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    move-object v12, v3

    .line 1106
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 1107
    .line 1108
    if-eqz v12, :cond_22

    .line 1109
    .line 1110
    const v1, 0x7f0a0116

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    move-object v13, v3

    .line 1118
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 1119
    .line 1120
    if-eqz v13, :cond_22

    .line 1121
    .line 1122
    const v1, 0x7f0a0128

    .line 1123
    .line 1124
    .line 1125
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v3

    .line 1129
    move-object v14, v3

    .line 1130
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 1131
    .line 1132
    if-eqz v14, :cond_22

    .line 1133
    .line 1134
    const v1, 0x7f0a0216

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    move-object v15, v3

    .line 1142
    check-cast v15, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1143
    .line 1144
    if-eqz v15, :cond_22

    .line 1145
    .line 1146
    const v1, 0x7f0a03a4

    .line 1147
    .line 1148
    .line 1149
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    move-object/from16 v16, v3

    .line 1154
    .line 1155
    check-cast v16, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1156
    .line 1157
    if-eqz v16, :cond_22

    .line 1158
    .line 1159
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    move-object/from16 v17, v1

    .line 1164
    .line 1165
    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    .line 1166
    .line 1167
    if-eqz v17, :cond_24

    .line 1168
    .line 1169
    const v2, 0x7f0a042d

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    move-object/from16 v18, v1

    .line 1177
    .line 1178
    check-cast v18, Landroidx/core/widget/NestedScrollView;

    .line 1179
    .line 1180
    if-eqz v18, :cond_24

    .line 1181
    .line 1182
    const v2, 0x7f0a0491

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    move-object/from16 v19, v1

    .line 1190
    .line 1191
    check-cast v19, Lcom/google/android/material/card/MaterialCardView;

    .line 1192
    .line 1193
    if-eqz v19, :cond_24

    .line 1194
    .line 1195
    const v2, 0x7f0a0539

    .line 1196
    .line 1197
    .line 1198
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    move-object/from16 v20, v1

    .line 1203
    .line 1204
    check-cast v20, Landroid/widget/TextView;

    .line 1205
    .line 1206
    if-eqz v20, :cond_24

    .line 1207
    .line 1208
    const v2, 0x7f0a055e

    .line 1209
    .line 1210
    .line 1211
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    move-object/from16 v21, v1

    .line 1216
    .line 1217
    check-cast v21, Landroid/widget/TextView;

    .line 1218
    .line 1219
    if-eqz v21, :cond_24

    .line 1220
    .line 1221
    const v2, 0x7f0a057e

    .line 1222
    .line 1223
    .line 1224
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v1

    .line 1228
    move-object/from16 v22, v1

    .line 1229
    .line 1230
    check-cast v22, Landroid/widget/TextView;

    .line 1231
    .line 1232
    if-eqz v22, :cond_24

    .line 1233
    .line 1234
    new-instance v9, Lm00;

    .line 1235
    .line 1236
    move-object v10, v0

    .line 1237
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1238
    .line 1239
    invoke-direct/range {v9 .. v22}, Lm00;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1240
    .line 1241
    .line 1242
    move-object v8, v9

    .line 1243
    goto :goto_f

    .line 1244
    :cond_22
    move v2, v1

    .line 1245
    goto :goto_e

    .line 1246
    :cond_23
    move v2, v3

    .line 1247
    :cond_24
    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    :goto_f
    return-object v8

    .line 1263
    :pswitch_16
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1264
    .line 1265
    const-string v1, "swipe_actions"

    .line 1266
    .line 1267
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1272
    .line 1273
    .line 1274
    return-object v0

    .line 1275
    :pswitch_17
    check-cast v0, Lxw;

    .line 1276
    .line 1277
    invoke-virtual {v0}, Lxw;->w()Z

    .line 1278
    .line 1279
    .line 1280
    move-result v0

    .line 1281
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    return-object v0

    .line 1286
    :pswitch_18
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 1287
    .line 1288
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 1289
    .line 1290
    new-instance v1, Lt10;

    .line 1291
    .line 1292
    invoke-direct {v1, v0}, Lt10;-><init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;)V

    .line 1293
    .line 1294
    .line 1295
    return-object v1

    .line 1296
    :pswitch_19
    check-cast v0, Lbm;

    .line 1297
    .line 1298
    iget-object v0, v0, Lbm;->b:Lji;

    .line 1299
    .line 1300
    invoke-virtual {v0}, Lji;->getSizeInfo()Lqx;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    if-eqz v0, :cond_25

    .line 1305
    .line 1306
    invoke-virtual {v0}, Lqx;->getMediaSize()J

    .line 1307
    .line 1308
    .line 1309
    move-result-wide v0

    .line 1310
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v8

    .line 1314
    :cond_25
    invoke-static {v8}, Lio4;->h(Ljava/lang/Long;)J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v0

    .line 1318
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v0

    .line 1322
    return-object v0

    .line 1323
    :pswitch_1a
    check-cast v0, Lvl;

    .line 1324
    .line 1325
    invoke-static {}, Lyx5;->j()Lux5;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    iget-object v0, v0, Lvl;->m:Lji;

    .line 1330
    .line 1331
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v0

    .line 1335
    invoke-static {v1, v0, v7}, Lyx5;->f(Lux5;Ljava/lang/String;I)[C

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    return-object v0

    .line 1340
    :pswitch_1b
    check-cast v0, Lhk;

    .line 1341
    .line 1342
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1347
    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    const-string v0, ".exp"

    .line 1357
    .line 1358
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v0

    .line 1365
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    return-object v0

    .line 1370
    :pswitch_1c
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 1371
    .line 1372
    sget v1, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 1373
    .line 1374
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    const v1, 0x7f0d0020

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual {v0, v1, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v0

    .line 1385
    const v1, 0x7f0a00a5

    .line 1386
    .line 1387
    .line 1388
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v2

    .line 1392
    move-object v11, v2

    .line 1393
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1394
    .line 1395
    if-eqz v11, :cond_26

    .line 1396
    .line 1397
    const v1, 0x7f0a00a6

    .line 1398
    .line 1399
    .line 1400
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v2

    .line 1404
    move-object v12, v2

    .line 1405
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1406
    .line 1407
    if-eqz v12, :cond_26

    .line 1408
    .line 1409
    const v1, 0x7f0a00de

    .line 1410
    .line 1411
    .line 1412
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v2

    .line 1416
    move-object v13, v2

    .line 1417
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 1418
    .line 1419
    if-eqz v13, :cond_26

    .line 1420
    .line 1421
    const v1, 0x7f0a00df

    .line 1422
    .line 1423
    .line 1424
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v2

    .line 1428
    move-object v14, v2

    .line 1429
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 1430
    .line 1431
    if-eqz v14, :cond_26

    .line 1432
    .line 1433
    const v1, 0x7f0a00e0

    .line 1434
    .line 1435
    .line 1436
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v2

    .line 1440
    move-object v15, v2

    .line 1441
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 1442
    .line 1443
    if-eqz v15, :cond_26

    .line 1444
    .line 1445
    const v1, 0x7f0a00e1

    .line 1446
    .line 1447
    .line 1448
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v2

    .line 1452
    move-object/from16 v16, v2

    .line 1453
    .line 1454
    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 1455
    .line 1456
    if-eqz v16, :cond_26

    .line 1457
    .line 1458
    const v1, 0x7f0a0144

    .line 1459
    .line 1460
    .line 1461
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    move-object/from16 v17, v2

    .line 1466
    .line 1467
    check-cast v17, Lcom/google/android/material/card/MaterialCardView;

    .line 1468
    .line 1469
    if-eqz v17, :cond_26

    .line 1470
    .line 1471
    const v1, 0x7f0a0145

    .line 1472
    .line 1473
    .line 1474
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v2

    .line 1478
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 1479
    .line 1480
    if-eqz v2, :cond_26

    .line 1481
    .line 1482
    const v1, 0x7f0a0273

    .line 1483
    .line 1484
    .line 1485
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v2

    .line 1489
    move-object/from16 v18, v2

    .line 1490
    .line 1491
    check-cast v18, Landroid/widget/LinearLayout;

    .line 1492
    .line 1493
    if-eqz v18, :cond_26

    .line 1494
    .line 1495
    const v1, 0x7f0a0274

    .line 1496
    .line 1497
    .line 1498
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1503
    .line 1504
    if-eqz v2, :cond_26

    .line 1505
    .line 1506
    move-object v10, v0

    .line 1507
    check-cast v10, Landroid/widget/LinearLayout;

    .line 1508
    .line 1509
    const v1, 0x7f0a0276

    .line 1510
    .line 1511
    .line 1512
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v2

    .line 1516
    check-cast v2, Landroid/widget/LinearLayout;

    .line 1517
    .line 1518
    if-eqz v2, :cond_26

    .line 1519
    .line 1520
    const v1, 0x7f0a0277

    .line 1521
    .line 1522
    .line 1523
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v2

    .line 1527
    move-object/from16 v20, v2

    .line 1528
    .line 1529
    check-cast v20, Landroid/widget/LinearLayout;

    .line 1530
    .line 1531
    if-eqz v20, :cond_26

    .line 1532
    .line 1533
    const v1, 0x7f0a0291

    .line 1534
    .line 1535
    .line 1536
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v2

    .line 1540
    move-object/from16 v21, v2

    .line 1541
    .line 1542
    check-cast v21, Landroid/widget/ImageView;

    .line 1543
    .line 1544
    if-eqz v21, :cond_26

    .line 1545
    .line 1546
    const v1, 0x7f0a0293

    .line 1547
    .line 1548
    .line 1549
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v2

    .line 1553
    move-object/from16 v22, v2

    .line 1554
    .line 1555
    check-cast v22, Landroid/widget/ImageView;

    .line 1556
    .line 1557
    if-eqz v22, :cond_26

    .line 1558
    .line 1559
    const v1, 0x7f0a0294

    .line 1560
    .line 1561
    .line 1562
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v2

    .line 1566
    if-eqz v2, :cond_26

    .line 1567
    .line 1568
    const v1, 0x7f0a0295

    .line 1569
    .line 1570
    .line 1571
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v2

    .line 1575
    move-object/from16 v23, v2

    .line 1576
    .line 1577
    check-cast v23, Landroid/widget/ImageView;

    .line 1578
    .line 1579
    if-eqz v23, :cond_26

    .line 1580
    .line 1581
    const v1, 0x7f0a0296

    .line 1582
    .line 1583
    .line 1584
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v2

    .line 1588
    move-object/from16 v24, v2

    .line 1589
    .line 1590
    check-cast v24, Landroid/widget/ImageView;

    .line 1591
    .line 1592
    if-eqz v24, :cond_26

    .line 1593
    .line 1594
    const v1, 0x7f0a0297

    .line 1595
    .line 1596
    .line 1597
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v2

    .line 1601
    check-cast v2, Landroid/widget/ImageView;

    .line 1602
    .line 1603
    if-eqz v2, :cond_26

    .line 1604
    .line 1605
    const v1, 0x7f0a03a7

    .line 1606
    .line 1607
    .line 1608
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v2

    .line 1612
    move-object/from16 v25, v2

    .line 1613
    .line 1614
    check-cast v25, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1615
    .line 1616
    if-eqz v25, :cond_26

    .line 1617
    .line 1618
    const v1, 0x7f0a04f9

    .line 1619
    .line 1620
    .line 1621
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v2

    .line 1625
    move-object/from16 v26, v2

    .line 1626
    .line 1627
    check-cast v26, Landroid/widget/TextView;

    .line 1628
    .line 1629
    if-eqz v26, :cond_26

    .line 1630
    .line 1631
    const v1, 0x7f0a04fa

    .line 1632
    .line 1633
    .line 1634
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v2

    .line 1638
    if-eqz v2, :cond_26

    .line 1639
    .line 1640
    const v1, 0x7f0a04fb

    .line 1641
    .line 1642
    .line 1643
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v2

    .line 1647
    move-object/from16 v27, v2

    .line 1648
    .line 1649
    check-cast v27, Landroid/widget/TextView;

    .line 1650
    .line 1651
    if-eqz v27, :cond_26

    .line 1652
    .line 1653
    const v1, 0x7f0a04fc

    .line 1654
    .line 1655
    .line 1656
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v2

    .line 1660
    if-eqz v2, :cond_26

    .line 1661
    .line 1662
    const v1, 0x7f0a04fd

    .line 1663
    .line 1664
    .line 1665
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v2

    .line 1669
    move-object/from16 v28, v2

    .line 1670
    .line 1671
    check-cast v28, Landroid/widget/TextView;

    .line 1672
    .line 1673
    if-eqz v28, :cond_26

    .line 1674
    .line 1675
    const v1, 0x7f0a04fe

    .line 1676
    .line 1677
    .line 1678
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    move-object/from16 v29, v2

    .line 1683
    .line 1684
    check-cast v29, Landroid/widget/TextView;

    .line 1685
    .line 1686
    if-eqz v29, :cond_26

    .line 1687
    .line 1688
    const v1, 0x7f0a04ff

    .line 1689
    .line 1690
    .line 1691
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v2

    .line 1695
    if-eqz v2, :cond_26

    .line 1696
    .line 1697
    const v1, 0x7f0a0502

    .line 1698
    .line 1699
    .line 1700
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v2

    .line 1704
    move-object/from16 v30, v2

    .line 1705
    .line 1706
    check-cast v30, Landroid/widget/TextView;

    .line 1707
    .line 1708
    if-eqz v30, :cond_26

    .line 1709
    .line 1710
    const v1, 0x7f0a0506

    .line 1711
    .line 1712
    .line 1713
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v2

    .line 1717
    move-object/from16 v31, v2

    .line 1718
    .line 1719
    check-cast v31, Landroid/widget/TextView;

    .line 1720
    .line 1721
    if-eqz v31, :cond_26

    .line 1722
    .line 1723
    const v1, 0x7f0a0509

    .line 1724
    .line 1725
    .line 1726
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1727
    .line 1728
    .line 1729
    move-result-object v2

    .line 1730
    move-object/from16 v32, v2

    .line 1731
    .line 1732
    check-cast v32, Landroid/widget/TextView;

    .line 1733
    .line 1734
    if-eqz v32, :cond_26

    .line 1735
    .line 1736
    const v1, 0x7f0a050a

    .line 1737
    .line 1738
    .line 1739
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v2

    .line 1743
    if-eqz v2, :cond_26

    .line 1744
    .line 1745
    new-instance v9, Lyf;

    .line 1746
    .line 1747
    move-object/from16 v19, v10

    .line 1748
    .line 1749
    invoke-direct/range {v9 .. v32}, Lyf;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1750
    .line 1751
    .line 1752
    move-object v8, v9

    .line 1753
    goto :goto_10

    .line 1754
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v0

    .line 1758
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    :goto_10
    return-object v8

    .line 1770
    nop

    .line 1771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
