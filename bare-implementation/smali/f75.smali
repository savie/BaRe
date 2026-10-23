.class public final Lf75;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lk28;

.field public final b:I

.field public final c:I

.field public final d:Lgv7;

.field public final e:Lbp0;


# direct methods
.method public constructor <init>(Lk28;I)V
    .locals 11

    .line 1
    and-int/lit8 v0, p2, 0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const/4 v3, 0x4

    .line 11
    and-int/2addr p2, v3

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    const p2, 0x7f090001

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const p2, 0x7f090002

    .line 19
    .line 20
    .line 21
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    const/high16 v5, 0x43200000    # 160.0f

    .line 36
    .line 37
    div-float/2addr v4, v5

    .line 38
    const/high16 v6, 0x40800000    # 4.0f

    .line 39
    .line 40
    mul-float/2addr v4, v6

    .line 41
    invoke-static {v4}, Ltu0;->v(F)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {p1}, Lsz8;->z(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {p1}, Lsz8;->x(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lf75;->a:Lk28;

    .line 60
    .line 61
    iput v6, p0, Lf75;->b:I

    .line 62
    .line 63
    iput v7, p0, Lf75;->c:I

    .line 64
    .line 65
    new-instance v6, Lz65;

    .line 66
    .line 67
    invoke-direct {v6, p0, p2}, Lz65;-><init>(Lf75;I)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Lgv7;

    .line 71
    .line 72
    invoke-direct {p2, v6}, Lgv7;-><init>(Lbt3;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lf75;->d:Lgv7;

    .line 76
    .line 77
    new-instance p2, Le75;

    .line 78
    .line 79
    invoke-direct {p2, p0, v4, v0}, Le75;-><init>(Lf75;IZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .line 92
    new-instance v4, Ldx7;

    .line 93
    .line 94
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 v6, -0x1

    .line 98
    iput v6, v4, Ldx7;->c:I

    .line 99
    .line 100
    int-to-float v7, v3

    .line 101
    mul-float/2addr v7, v0

    .line 102
    const/high16 v8, 0x3f000000    # 0.5f

    .line 103
    .line 104
    add-float/2addr v7, v8

    .line 105
    float-to-int v7, v7

    .line 106
    iput v7, v4, Ldx7;->a:I

    .line 107
    .line 108
    int-to-float v7, v1

    .line 109
    mul-float/2addr v7, v0

    .line 110
    add-float/2addr v7, v8

    .line 111
    float-to-int v0, v7

    .line 112
    iput v0, v4, Ldx7;->c:I

    .line 113
    .line 114
    const v0, 0x7f04066a

    .line 115
    .line 116
    .line 117
    invoke-static {p1, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, v4, Ldx7;->d:I

    .line 126
    .line 127
    const v0, 0x7f040669

    .line 128
    .line 129
    .line 130
    invoke-static {p1, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, v4, Ldx7;->b:I

    .line 139
    .line 140
    invoke-virtual {p1}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 149
    .line 150
    int-to-float v0, v0

    .line 151
    div-float/2addr v0, v5

    .line 152
    const/high16 v5, 0x40c00000    # 6.0f

    .line 153
    .line 154
    mul-float/2addr v0, v5

    .line 155
    invoke-static {v0}, Ltu0;->v(F)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, v4, Ldx7;->a:I

    .line 160
    .line 161
    new-instance v0, Lex7;

    .line 162
    .line 163
    invoke-direct {v0, v4}, Lex7;-><init>(Ldx7;)V

    .line 164
    .line 165
    .line 166
    new-instance v4, Lvw7;

    .line 167
    .line 168
    invoke-direct {v4, v0}, Lvw7;-><init>(Lex7;)V

    .line 169
    .line 170
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    .line 172
    .line 173
    const/4 v5, 0x3

    .line 174
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .line 176
    .line 177
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 178
    .line 179
    new-instance v7, Ljx1;

    .line 180
    .line 181
    invoke-direct {v7}, Ljx1;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance p2, Lnh;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    iget-object v4, v4, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 200
    .line 201
    invoke-virtual {v4, p1}, Lzk6;->d(Landroidx/fragment/app/u;)Lyk6;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const/4 v7, 0x7

    .line 209
    invoke-direct {p2, v4, v7}, Lnh;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    new-instance v4, Lny3;

    .line 213
    .line 214
    invoke-direct {v4, p2}, Lny3;-><init>(Lnh;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    new-instance p2, Ln64;

    .line 221
    .line 222
    invoke-direct {p2}, Ln64;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    const/4 v4, 0x0

    .line 233
    if-nez p2, :cond_c

    .line 234
    .line 235
    new-instance p2, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    invoke-direct {p2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .line 243
    .line 244
    new-instance v7, Ljava/util/HashSet;

    .line 245
    .line 246
    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_5

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Lr4;

    .line 264
    .line 265
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-nez v9, :cond_2

    .line 270
    .line 271
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_4

    .line 276
    .line 277
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    if-nez v9, :cond_2

    .line 291
    .line 292
    const-class v9, Ljx1;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    if-eqz v9, :cond_3

    .line 303
    .line 304
    invoke-virtual {p2, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_3
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_4
    const-string p0, "Cyclic dependency chain found: "

    .line 313
    .line 314
    invoke-static {v7, p0}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v4

    .line 318
    :cond_5
    new-instance v0, Lbx5;

    .line 319
    .line 320
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 321
    .line 322
    .line 323
    new-instance v2, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-object v2, v0, Lbx5;->a:Ljava/lang/Object;

    .line 329
    .line 330
    new-instance v2, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    iput-object v2, v0, Lbx5;->b:Ljava/lang/Object;

    .line 336
    .line 337
    new-instance v2, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v2, v0, Lbx5;->c:Ljava/lang/Object;

    .line 343
    .line 344
    sget-object v2, Lun2;->p:Ljava/util/LinkedHashSet;

    .line 345
    .line 346
    iput-object v2, v0, Lbx5;->d:Ljava/lang/Object;

    .line 347
    .line 348
    invoke-virtual {p1}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 357
    .line 358
    new-instance v2, Ln75;

    .line 359
    .line 360
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 361
    .line 362
    .line 363
    iput v6, v2, Ln75;->g:I

    .line 364
    .line 365
    iput v6, v2, Ln75;->h:I

    .line 366
    .line 367
    const/16 v4, 0x8

    .line 368
    .line 369
    int-to-float v5, v4

    .line 370
    mul-float/2addr v5, p1

    .line 371
    add-float/2addr v5, v8

    .line 372
    float-to-int v5, v5

    .line 373
    iput v5, v2, Ln75;->f:I

    .line 374
    .line 375
    const/16 v5, 0x18

    .line 376
    .line 377
    int-to-float v5, v5

    .line 378
    mul-float/2addr v5, p1

    .line 379
    add-float/2addr v5, v8

    .line 380
    float-to-int v5, v5

    .line 381
    iput v5, v2, Ln75;->b:I

    .line 382
    .line 383
    int-to-float v5, v3

    .line 384
    mul-float/2addr v5, p1

    .line 385
    add-float/2addr v5, v8

    .line 386
    float-to-int v5, v5

    .line 387
    iput v5, v2, Ln75;->c:I

    .line 388
    .line 389
    int-to-float v5, v1

    .line 390
    mul-float/2addr v5, p1

    .line 391
    add-float/2addr v5, v8

    .line 392
    float-to-int v5, v5

    .line 393
    iput v5, v2, Ln75;->d:I

    .line 394
    .line 395
    int-to-float v1, v1

    .line 396
    mul-float/2addr v1, p1

    .line 397
    add-float/2addr v1, v8

    .line 398
    float-to-int v1, v1

    .line 399
    iput v1, v2, Ln75;->g:I

    .line 400
    .line 401
    int-to-float v1, v3

    .line 402
    mul-float/2addr v1, p1

    .line 403
    add-float/2addr v1, v8

    .line 404
    float-to-int p1, v1

    .line 405
    iput p1, v2, Ln75;->h:I

    .line 406
    .line 407
    new-instance p1, Li75;

    .line 408
    .line 409
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 410
    .line 411
    .line 412
    new-instance v1, Lom5;

    .line 413
    .line 414
    invoke-direct {v1, v4}, Lom5;-><init>(I)V

    .line 415
    .line 416
    .line 417
    new-instance v3, Lbb2;

    .line 418
    .line 419
    const/4 v4, 0x2

    .line 420
    invoke-direct {v3, v4}, Lbb2;-><init>(I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    if-eqz v5, :cond_6

    .line 432
    .line 433
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    check-cast v5, Lr4;

    .line 438
    .line 439
    invoke-virtual {v5, v0}, Lr4;->f(Lbx5;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5, v2}, Lr4;->h(Ln75;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, p1}, Lr4;->e(Li75;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5, v1}, Lr4;->i(Lom5;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v5, v3}, Lr4;->g(Lbb2;)V

    .line 452
    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_6
    new-instance v4, Lo75;

    .line 456
    .line 457
    invoke-direct {v4, v2}, Lo75;-><init>(Ln75;)V

    .line 458
    .line 459
    .line 460
    new-instance v2, Lky3;

    .line 461
    .line 462
    iget-object v3, v3, Lbb2;->a:Ljava/util/HashMap;

    .line 463
    .line 464
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-direct {v2, v3}, Lky3;-><init>(Ljava/util/Map;)V

    .line 469
    .line 470
    .line 471
    iput-object v4, p1, Li75;->a:Ljava/lang/Object;

    .line 472
    .line 473
    iput-object v2, p1, Li75;->k:Ljava/lang/Object;

    .line 474
    .line 475
    iget-object v2, p1, Li75;->b:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v2, Ljb9;

    .line 478
    .line 479
    if-nez v2, :cond_7

    .line 480
    .line 481
    new-instance v2, Lq60;

    .line 482
    .line 483
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 484
    .line 485
    .line 486
    iput-object v2, p1, Li75;->b:Ljava/lang/Object;

    .line 487
    .line 488
    :cond_7
    iget-object v2, p1, Li75;->c:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v2, Lsl4;

    .line 491
    .line 492
    if-nez v2, :cond_8

    .line 493
    .line 494
    new-instance v2, Lsl4;

    .line 495
    .line 496
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 497
    .line 498
    .line 499
    iput-object v2, p1, Li75;->c:Ljava/lang/Object;

    .line 500
    .line 501
    :cond_8
    iget-object v2, p1, Li75;->d:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v2, Lhx0;

    .line 504
    .line 505
    if-nez v2, :cond_9

    .line 506
    .line 507
    new-instance v2, Lhx0;

    .line 508
    .line 509
    const/16 v3, 0xa

    .line 510
    .line 511
    invoke-direct {v2, v3}, Lhx0;-><init>(I)V

    .line 512
    .line 513
    .line 514
    iput-object v2, p1, Li75;->d:Ljava/lang/Object;

    .line 515
    .line 516
    :cond_9
    iget-object v2, p1, Li75;->e:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v2, Lhx0;

    .line 519
    .line 520
    if-nez v2, :cond_a

    .line 521
    .line 522
    new-instance v2, Lhx0;

    .line 523
    .line 524
    const/16 v3, 0x9

    .line 525
    .line 526
    invoke-direct {v2, v3}, Lhx0;-><init>(I)V

    .line 527
    .line 528
    .line 529
    iput-object v2, p1, Li75;->e:Ljava/lang/Object;

    .line 530
    .line 531
    :cond_a
    iget-object v2, p1, Li75;->f:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v2, Lcz4;

    .line 534
    .line 535
    if-nez v2, :cond_b

    .line 536
    .line 537
    new-instance v2, Lcz4;

    .line 538
    .line 539
    const/16 v3, 0xd

    .line 540
    .line 541
    invoke-direct {v2, v3}, Lcz4;-><init>(I)V

    .line 542
    .line 543
    .line 544
    iput-object v2, p1, Li75;->f:Ljava/lang/Object;

    .line 545
    .line 546
    :cond_b
    new-instance v2, Lj75;

    .line 547
    .line 548
    invoke-direct {v2, p1}, Lj75;-><init>(Li75;)V

    .line 549
    .line 550
    .line 551
    new-instance p1, Lc00;

    .line 552
    .line 553
    const/4 v3, 0x6

    .line 554
    invoke-direct {p1, v3, v1, v2}, Lc00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    new-instance v1, Lbp0;

    .line 558
    .line 559
    new-instance v2, Ll40;

    .line 560
    .line 561
    invoke-direct {v2, v0}, Ll40;-><init>(Lbx5;)V

    .line 562
    .line 563
    .line 564
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 565
    .line 566
    .line 567
    move-result-object p2

    .line 568
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 571
    .line 572
    .line 573
    iput-object v2, v1, Lbp0;->a:Ljava/lang/Object;

    .line 574
    .line 575
    iput-object p1, v1, Lbp0;->b:Ljava/lang/Object;

    .line 576
    .line 577
    iput-object p2, v1, Lbp0;->c:Ljava/lang/Object;

    .line 578
    .line 579
    iput-object v1, p0, Lf75;->e:Lbp0;

    .line 580
    .line 581
    return-void

    .line 582
    :cond_c
    const-string p0, "No plugins were added to this builder. Use #usePlugin method to add them"

    .line 583
    .line 584
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v4
.end method
