.class public final Lw8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw8;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw8;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v0, v0, Lw8;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v0, Lwj6;

    .line 22
    .line 23
    new-instance v1, Lf64;

    .line 24
    .line 25
    iget-object v4, v0, Lwj6;->a:Lxj6;

    .line 26
    .line 27
    iget-object v5, v4, Lxj6;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, v4, Lxj6;->c:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v4, v4, Lxj6;->b:Z

    .line 32
    .line 33
    invoke-direct {v1, v5, v6, v4}, Lf64;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Lwj6;->h:Luc2;

    .line 37
    .line 38
    invoke-virtual {v4}, Luc2;->b()Lro;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-instance v6, Lyr1;

    .line 43
    .line 44
    iget-object v7, v4, Luc2;->a:Lub;

    .line 45
    .line 46
    iget-object v8, v4, Luc2;->c:Lwc9;

    .line 47
    .line 48
    iget-object v9, v4, Luc2;->e:Lny1;

    .line 49
    .line 50
    const-string v10, "Custom run loops are not supported!"

    .line 51
    .line 52
    if-eqz v9, :cond_7

    .line 53
    .line 54
    iget-object v11, v9, Lny1;->b:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v11, Llf2;

    .line 57
    .line 58
    new-instance v12, Lyu1;

    .line 59
    .line 60
    invoke-direct {v12, v8, v11}, Lyu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v8, v4, Luc2;->d:Lib;

    .line 64
    .line 65
    if-eqz v9, :cond_6

    .line 66
    .line 67
    move-object v13, v9

    .line 68
    new-instance v9, Lyu1;

    .line 69
    .line 70
    invoke-direct {v9, v8, v11}, Lyu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    if-eqz v13, :cond_5

    .line 74
    .line 75
    move-object v10, v11

    .line 76
    iget-object v11, v4, Luc2;->g:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v8, v4, Luc2;->i:Lcom/google/firebase/FirebaseApp;

    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v4}, Luc2;->b()Lro;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    iget-object v13, v13, Lro;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v13, Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    const-string v14, "sslcache"

    .line 101
    .line 102
    invoke-virtual {v13, v14, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    move-object/from16 v25, v12

    .line 111
    .line 112
    move-object v12, v8

    .line 113
    move-object/from16 v8, v25

    .line 114
    .line 115
    invoke-direct/range {v6 .. v13}, Lyr1;-><init>(Lub;Lyu1;Lyu1;Llf2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance v7, Lwz5;

    .line 122
    .line 123
    invoke-direct {v7, v6, v1, v0}, Lwz5;-><init>(Lyr1;Lf64;Lwj6;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v5, Lro;->c:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Lcom/google/firebase/FirebaseApp;

    .line 129
    .line 130
    new-instance v5, Lwb;

    .line 131
    .line 132
    invoke-direct {v5, v7}, Lwb;-><init>(Lwz5;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v5}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lgf3;)V

    .line 136
    .line 137
    .line 138
    iput-object v7, v0, Lwj6;->c:Lwz5;

    .line 139
    .line 140
    iget-object v1, v4, Luc2;->c:Lwc9;

    .line 141
    .line 142
    iget-object v5, v4, Luc2;->e:Lny1;

    .line 143
    .line 144
    iget-object v5, v5, Lny1;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v5, Llf2;

    .line 147
    .line 148
    new-instance v6, Ljq6;

    .line 149
    .line 150
    const/16 v7, 0x11

    .line 151
    .line 152
    invoke-direct {v6, v0, v7}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v1, Lwc9;->b:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Llu5;

    .line 158
    .line 159
    new-instance v8, Lkb;

    .line 160
    .line 161
    invoke-direct {v8, v5, v6}, Lkb;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v8}, Llu5;->a(Lig2;)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v4, Luc2;->d:Lib;

    .line 168
    .line 169
    iget-object v5, v4, Luc2;->e:Lny1;

    .line 170
    .line 171
    iget-object v5, v5, Lny1;->b:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v5, Llf2;

    .line 174
    .line 175
    new-instance v6, Lvk9;

    .line 176
    .line 177
    const/16 v8, 0xf

    .line 178
    .line 179
    invoke-direct {v6, v0, v8}, Lvk9;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v1, Lib;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Llu5;

    .line 185
    .line 186
    new-instance v9, Lhb;

    .line 187
    .line 188
    invoke-direct {v9, v5, v6}, Lhb;-><init>(Ljava/util/concurrent/ExecutorService;Lj58;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v9}, Llu5;->a(Lig2;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lwj6;->c:Lwz5;

    .line 195
    .line 196
    invoke-virtual {v1}, Lwz5;->o()V

    .line 197
    .line 198
    .line 199
    new-instance v1, Leo5;

    .line 200
    .line 201
    invoke-direct {v1}, Leo5;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v5, Lnh;

    .line 205
    .line 206
    const/16 v6, 0x10

    .line 207
    .line 208
    invoke-direct {v5, v6}, Lnh;-><init>(I)V

    .line 209
    .line 210
    .line 211
    sget-object v6, Lqv2;->e:Lqv2;

    .line 212
    .line 213
    iput-object v6, v5, Lnh;->b:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v5, v0, Lwj6;->d:Lnh;

    .line 216
    .line 217
    new-instance v5, Lns0;

    .line 218
    .line 219
    invoke-direct {v5, v7}, Lns0;-><init>(I)V

    .line 220
    .line 221
    .line 222
    iput-object v5, v0, Lwj6;->e:Lns0;

    .line 223
    .line 224
    new-instance v5, Lgd;

    .line 225
    .line 226
    new-instance v6, Leb8;

    .line 227
    .line 228
    invoke-direct {v6}, Leb8;-><init>()V

    .line 229
    .line 230
    .line 231
    const/4 v7, 0x7

    .line 232
    const/4 v9, 0x0

    .line 233
    invoke-direct {v5, v7, v9, v9, v6}, Lgd;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iput-object v5, v0, Lwj6;->f:Lgd;

    .line 237
    .line 238
    new-instance v5, Lbv7;

    .line 239
    .line 240
    new-instance v6, Leo5;

    .line 241
    .line 242
    invoke-direct {v6}, Leo5;-><init>()V

    .line 243
    .line 244
    .line 245
    new-instance v7, Lnh;

    .line 246
    .line 247
    const/16 v10, 0xe

    .line 248
    .line 249
    invoke-direct {v7, v0, v10}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 250
    .line 251
    .line 252
    invoke-direct {v5, v4, v6, v7}, Lbv7;-><init>(Luc2;Leo5;Lav7;)V

    .line 253
    .line 254
    .line 255
    iput-object v5, v0, Lwj6;->m:Lbv7;

    .line 256
    .line 257
    new-instance v5, Lbv7;

    .line 258
    .line 259
    new-instance v6, Lkm5;

    .line 260
    .line 261
    invoke-direct {v6, v0, v8}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 262
    .line 263
    .line 264
    invoke-direct {v5, v4, v1, v6}, Lbv7;-><init>(Luc2;Leo5;Lav7;)V

    .line 265
    .line 266
    .line 267
    iput-object v5, v0, Lwj6;->n:Lbv7;

    .line 268
    .line 269
    iget-object v1, v0, Lwj6;->i:Lu00;

    .line 270
    .line 271
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 272
    .line 273
    iget-object v5, v0, Lwj6;->b:Lis5;

    .line 274
    .line 275
    invoke-static {v5}, Lms8;->v(Laa1;)Ljava/util/HashMap;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    const-wide/high16 v6, -0x8000000000000000L

    .line 284
    .line 285
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-eqz v8, :cond_4

    .line 290
    .line 291
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    check-cast v8, Lkh8;

    .line 296
    .line 297
    new-instance v15, Lc00;

    .line 298
    .line 299
    const/16 v10, 0xc

    .line 300
    .line 301
    invoke-direct {v15, v0, v8, v10, v3}, Lc00;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 302
    .line 303
    .line 304
    iget-wide v10, v8, Lkh8;->a:J

    .line 305
    .line 306
    iget-object v12, v8, Lkh8;->b:Lgy5;

    .line 307
    .line 308
    cmp-long v6, v6, v10

    .line 309
    .line 310
    if-gez v6, :cond_3

    .line 311
    .line 312
    const-wide/16 v6, 0x1

    .line 313
    .line 314
    add-long/2addr v6, v10

    .line 315
    iput-wide v6, v0, Lwj6;->l:J

    .line 316
    .line 317
    invoke-virtual {v8}, Lkh8;->c()Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_1

    .line 322
    .line 323
    invoke-virtual {v1}, Lu00;->e()Z

    .line 324
    .line 325
    .line 326
    move-result v6

    .line 327
    if-eqz v6, :cond_0

    .line 328
    .line 329
    const-string v6, "Restoring overwrite with id "

    .line 330
    .line 331
    invoke-static {v10, v11, v6}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    new-array v7, v3, [Ljava/lang/Object;

    .line 336
    .line 337
    invoke-virtual {v1, v6, v9, v7}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_0
    move-wide v6, v10

    .line 341
    iget-object v10, v0, Lwj6;->c:Lwz5;

    .line 342
    .line 343
    move-object v11, v12

    .line 344
    invoke-virtual {v11}, Lgy5;->c()Ljava/util/ArrayList;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-virtual {v8}, Lkh8;->b()Lqn5;

    .line 349
    .line 350
    .line 351
    move-result-object v13

    .line 352
    invoke-interface {v13, v2}, Lqn5;->g0(Z)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v13

    .line 356
    move-object v14, v11

    .line 357
    const-string v11, "p"

    .line 358
    .line 359
    move-object/from16 v16, v14

    .line 360
    .line 361
    const/4 v14, 0x0

    .line 362
    move-object/from16 v2, v16

    .line 363
    .line 364
    invoke-virtual/range {v10 .. v15}, Lwz5;->e(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Lcl6;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v8}, Lkh8;->b()Lqn5;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    iget-object v11, v0, Lwj6;->n:Lbv7;

    .line 372
    .line 373
    new-instance v12, Ldj8;

    .line 374
    .line 375
    invoke-direct {v12, v11, v2}, Ldj8;-><init>(Lbv7;Lgy5;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v10, v12, v5}, Lms8;->L(Lqn5;Lji8;Ljava/util/HashMap;)Lqn5;

    .line 379
    .line 380
    .line 381
    move-result-object v20

    .line 382
    iget-object v2, v0, Lwj6;->n:Lbv7;

    .line 383
    .line 384
    iget-object v10, v8, Lkh8;->b:Lgy5;

    .line 385
    .line 386
    invoke-virtual {v8}, Lkh8;->b()Lqn5;

    .line 387
    .line 388
    .line 389
    move-result-object v19

    .line 390
    iget-wide v11, v8, Lkh8;->a:J

    .line 391
    .line 392
    const/16 v23, 0x1

    .line 393
    .line 394
    const/16 v24, 0x0

    .line 395
    .line 396
    move-object/from16 v17, v2

    .line 397
    .line 398
    move-object/from16 v18, v10

    .line 399
    .line 400
    move-wide/from16 v21, v11

    .line 401
    .line 402
    invoke-virtual/range {v17 .. v24}, Lbv7;->h(Lgy5;Lqn5;Lqn5;JZZ)Ljava/util/List;

    .line 403
    .line 404
    .line 405
    goto :goto_1

    .line 406
    :cond_1
    move-wide v6, v10

    .line 407
    move-object v2, v12

    .line 408
    invoke-virtual {v1}, Lu00;->e()Z

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    if-eqz v10, :cond_2

    .line 413
    .line 414
    const-string v10, "Restoring merge with id "

    .line 415
    .line 416
    invoke-static {v6, v7, v10}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    new-array v11, v3, [Ljava/lang/Object;

    .line 421
    .line 422
    invoke-virtual {v1, v10, v9, v11}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    :cond_2
    iget-object v10, v0, Lwj6;->c:Lwz5;

    .line 426
    .line 427
    invoke-virtual {v2}, Lgy5;->c()Ljava/util/ArrayList;

    .line 428
    .line 429
    .line 430
    move-result-object v12

    .line 431
    invoke-virtual {v8}, Lkh8;->a()Lnp1;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    invoke-virtual {v11}, Lnp1;->l()Ljava/util/HashMap;

    .line 436
    .line 437
    .line 438
    move-result-object v13

    .line 439
    const-string v11, "m"

    .line 440
    .line 441
    const/4 v14, 0x0

    .line 442
    invoke-virtual/range {v10 .. v15}, Lwz5;->e(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/String;Lcl6;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v8}, Lkh8;->a()Lnp1;

    .line 446
    .line 447
    .line 448
    move-result-object v10

    .line 449
    iget-object v11, v0, Lwj6;->n:Lbv7;

    .line 450
    .line 451
    invoke-static {v10, v11, v2, v5}, Lms8;->K(Lnp1;Lbv7;Lgy5;Ljava/util/HashMap;)Lnp1;

    .line 452
    .line 453
    .line 454
    move-result-object v23

    .line 455
    iget-object v2, v0, Lwj6;->n:Lbv7;

    .line 456
    .line 457
    iget-object v10, v8, Lkh8;->b:Lgy5;

    .line 458
    .line 459
    invoke-virtual {v8}, Lkh8;->a()Lnp1;

    .line 460
    .line 461
    .line 462
    move-result-object v20

    .line 463
    iget-wide v11, v8, Lkh8;->a:J

    .line 464
    .line 465
    iget-object v8, v2, Lbv7;->g:Leo5;

    .line 466
    .line 467
    new-instance v17, Ltu7;

    .line 468
    .line 469
    move-object/from16 v18, v2

    .line 470
    .line 471
    move-object/from16 v19, v10

    .line 472
    .line 473
    move-wide/from16 v21, v11

    .line 474
    .line 475
    invoke-direct/range {v17 .. v23}, Ltu7;-><init>(Lbv7;Lgy5;Lnp1;JLnp1;)V

    .line 476
    .line 477
    .line 478
    move-object/from16 v2, v17

    .line 479
    .line 480
    invoke-virtual {v8, v2}, Leo5;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    check-cast v2, Ljava/util/List;

    .line 485
    .line 486
    :goto_1
    const/4 v2, 0x1

    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_3
    const-string v0, "Write ids were not in order."

    .line 490
    .line 491
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_2

    .line 495
    :cond_4
    sget-object v1, Lvs1;->c:Lm61;

    .line 496
    .line 497
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 498
    .line 499
    invoke-virtual {v0, v1, v2}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    sget-object v1, Lvs1;->d:Lm61;

    .line 503
    .line 504
    invoke-virtual {v0, v1, v2}, Lwj6;->p(Lm61;Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    goto :goto_2

    .line 508
    :cond_5
    move-object v8, v10

    .line 509
    invoke-static {v8}, Lg84;->h(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    goto :goto_2

    .line 513
    :cond_6
    move-object v8, v10

    .line 514
    invoke-static {v8}, Lg84;->h(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    goto :goto_2

    .line 518
    :cond_7
    move-object v8, v10

    .line 519
    invoke-static {v8}, Lg84;->h(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    :goto_2
    return-void

    .line 523
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 524
    .line 525
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 526
    .line 527
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    iget-object v1, v1, Lz44;->f:Landroid/widget/EditText;

    .line 532
    .line 533
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X()Lz44;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    iget-object v1, v1, Lz44;->f:Landroid/widget/EditText;

    .line 541
    .line 542
    new-instance v2, Lis;

    .line 543
    .line 544
    const/4 v3, 0x5

    .line 545
    invoke-direct {v2, v0, v3}, Lis;-><init>(Ljava/lang/Object;I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :pswitch_2
    check-cast v0, Landroidx/fragment/app/z;

    .line 553
    .line 554
    const/4 v1, 0x1

    .line 555
    invoke-virtual {v0, v1}, Landroidx/fragment/app/z;->z(Z)Z

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :pswitch_3
    check-cast v0, Ly8;

    .line 560
    .line 561
    :goto_3
    :try_start_0
    iget-object v1, v0, Ly8;->c:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    check-cast v1, Lx8;

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Ly8;->d(Lx8;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .line 573
    .line 574
    goto :goto_3

    .line 575
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 580
    .line 581
    .line 582
    goto :goto_3

    .line 583
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
