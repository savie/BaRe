.class public final synthetic Lw20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lw20;->a:I

    iput-object p1, p0, Lw20;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lw20;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lw20;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw20;->a:I

    .line 4
    .line 5
    const-string v2, "mAdapter"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    sget-object v11, Lbe8;->a:Lbe8;

    .line 17
    .line 18
    iget-object v0, v0, Lw20;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 33
    .line 34
    if-ltz v1, :cond_1

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v9, v10

    .line 48
    :cond_1
    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 54
    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    check-cast v1, Lvt8;

    .line 58
    .line 59
    sget-object v2, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 60
    .line 61
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 62
    .line 63
    const v3, 0x7f0d0092

    .line 64
    .line 65
    .line 66
    iget-object v4, v1, Lvt8;->b:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2, v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lhv1;

    .line 72
    .line 73
    const v4, 0x7f140160

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Ls35;

    .line 80
    .line 81
    invoke-direct {v5, v0, v4, v3, v8}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 82
    .line 83
    .line 84
    const v3, 0x7f1301b8

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3}, Lv75;->v(I)V

    .line 88
    .line 89
    .line 90
    new-instance v3, Lfp3;

    .line 91
    .line 92
    invoke-direct {v3, v6, v1, v0}, Lfp3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v5, Lva;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lra;

    .line 98
    .line 99
    iput-object v2, v0, Lra;->q:Landroid/widget/ListAdapter;

    .line 100
    .line 101
    iput-object v3, v0, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    .line 103
    const v0, 0x7f1300f1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v0, v8}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 110
    .line 111
    .line 112
    return-object v11

    .line 113
    :pswitch_1
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v1, p1

    .line 116
    .line 117
    check-cast v1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-ge v2, v3, :cond_2

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    move-object v0, v1

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_1
    return-object v0

    .line 146
    :pswitch_2
    move-object v1, v0

    .line 147
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 148
    .line 149
    move-object/from16 v0, p1

    .line 150
    .line 151
    check-cast v0, Landroid/view/MenuItem;

    .line 152
    .line 153
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->p:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v2, :cond_4

    .line 165
    .line 166
    new-instance v2, La37;

    .line 167
    .line 168
    invoke-direct {v2, v1, v9}, La37;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v3, v0, v9, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k(Landroid/widget/LinearLayout;Landroid/view/MenuItem;ZLbt3;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const v3, 0x7f130084

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const v3, 0x7f080107

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    const/4 v5, 0x0

    .line 196
    const/16 v6, 0xc

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-static/range {v1 .. v6}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->i(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Ljava/lang/CharSequence;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;ZI)Lb37;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v3, v2, Lb37;->b:Lcom/google/android/material/button/MaterialButton;

    .line 204
    .line 205
    new-instance v4, Lmf;

    .line 206
    .line 207
    const/16 v5, 0xb

    .line 208
    .line 209
    invoke-direct {v4, v1, v5}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget-object v3, v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 216
    .line 217
    invoke-virtual {v1, v3, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->a(Landroid/widget/LinearLayout;Lb37;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    if-eqz v0, :cond_5

    .line 225
    .line 226
    new-instance v2, Ld7;

    .line 227
    .line 228
    const/16 v3, 0x16

    .line 229
    .line 230
    invoke-direct {v2, v1, v3}, Ld7;-><init>(Ljava/lang/Object;I)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    :goto_2
    if-ge v10, v1, :cond_5

    .line 238
    .line 239
    invoke-interface {v0, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Ld7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    add-int/lit8 v10, v10, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_4
    new-instance v2, Lkg;

    .line 250
    .line 251
    const/16 v4, 0xf

    .line 252
    .line 253
    invoke-direct {v2, v4, v0, v1}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v3, v0, v10, v2}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k(Landroid/widget/LinearLayout;Landroid/view/MenuItem;ZLbt3;)V

    .line 257
    .line 258
    .line 259
    :cond_5
    return-object v11

    .line 260
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 261
    .line 262
    move-object/from16 v1, p1

    .line 263
    .line 264
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    instance-of v3, v2, Ldt1;

    .line 274
    .line 275
    if-eqz v3, :cond_6

    .line 276
    .line 277
    move-object v8, v2

    .line 278
    check-cast v8, Ldt1;

    .line 279
    .line 280
    :cond_6
    if-eqz v8, :cond_7

    .line 281
    .line 282
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 283
    .line 284
    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    invoke-virtual {v1, v10}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 288
    .line 289
    .line 290
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 291
    .line 292
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 296
    .line 297
    .line 298
    new-instance v2, Li56;

    .line 299
    .line 300
    invoke-direct {v2, v0}, Li56;-><init>(Lorg/swiftapps/swiftbackup/premium/PremiumActivity;)V

    .line 301
    .line 302
    .line 303
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    check-cast v3, Lz3;

    .line 313
    .line 314
    invoke-virtual {v3}, Lz3;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    :cond_8
    :goto_3
    move-object v6, v3

    .line 319
    check-cast v6, Lw3;

    .line 320
    .line 321
    invoke-virtual {v6}, Lw3;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_9

    .line 326
    .line 327
    invoke-virtual {v6}, Lw3;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    move-object v7, v6

    .line 332
    check-cast v7, Ldd1;

    .line 333
    .line 334
    invoke-virtual {v7}, Ldd1;->getSupportsCurrentAndroidSdk()Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_8

    .line 339
    .line 340
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_b

    .line 358
    .line 359
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    move-object v7, v6

    .line 364
    check-cast v7, Ldd1;

    .line 365
    .line 366
    invoke-virtual {v7}, Ldd1;->getReleaseState()Lxi6;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    sget-object v8, Lxi6;->Beta:Lxi6;

    .line 371
    .line 372
    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    if-ltz v7, :cond_a

    .line 377
    .line 378
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    goto :goto_4

    .line 382
    :cond_b
    sget-object v4, Ldd1;->S3:Ldd1;

    .line 383
    .line 384
    sget-object v6, Ldd1;->WebDav:Ldd1;

    .line 385
    .line 386
    sget-object v7, Ldd1;->SMB:Ldd1;

    .line 387
    .line 388
    sget-object v8, Ldd1;->SFTP:Ldd1;

    .line 389
    .line 390
    sget-object v10, Ldd1;->FTP:Ldd1;

    .line 391
    .line 392
    filled-new-array {v4, v6, v7, v8, v10}, [Ldd1;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    invoke-static {v4}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    new-instance v7, Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-eqz v8, :cond_d

    .line 418
    .line 419
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    move-object v10, v8

    .line 424
    check-cast v10, Ldd1;

    .line 425
    .line 426
    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    if-nez v10, :cond_c

    .line 431
    .line 432
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    .line 437
    .line 438
    const/16 v4, 0xa

    .line 439
    .line 440
    invoke-static {v7, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    if-eqz v8, :cond_e

    .line 456
    .line 457
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v8

    .line 461
    check-cast v8, Ldd1;

    .line 462
    .line 463
    new-instance v10, Lg56;

    .line 464
    .line 465
    invoke-virtual {v8}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    invoke-virtual {v8}, Ldd1;->getBrandingIconRes()I

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    invoke-direct {v10, v12, v8, v9}, Lg56;-><init>(Ljava/lang/String;IZ)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    goto :goto_6

    .line 480
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 486
    .line 487
    .line 488
    move-result v8

    .line 489
    if-nez v8, :cond_f

    .line 490
    .line 491
    const v8, 0x7f130415

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    new-instance v10, Lf56;

    .line 502
    .line 503
    invoke-direct {v10, v5, v8, v3}, Lf56;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    :cond_f
    sget-object v3, Ldd1;->S3:Ldd1;

    .line 510
    .line 511
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    if-eqz v3, :cond_11

    .line 516
    .line 517
    const v3, 0x7f130416

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    sget-object v8, Lxq6;->n:Ljava/util/ArrayList;

    .line 528
    .line 529
    new-instance v10, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-static {v8, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 532
    .line 533
    .line 534
    move-result v12

    .line 535
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 543
    .line 544
    .line 545
    move-result v12

    .line 546
    if-eqz v12, :cond_10

    .line 547
    .line 548
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v12

    .line 552
    check-cast v12, Lxq6;

    .line 553
    .line 554
    new-instance v13, Lg56;

    .line 555
    .line 556
    iget-object v14, v12, Lxq6;->b:Ljava/lang/String;

    .line 557
    .line 558
    iget v15, v12, Lxq6;->c:I

    .line 559
    .line 560
    sget-object v16, Lxq6;->n:Ljava/util/ArrayList;

    .line 561
    .line 562
    move/from16 v17, v9

    .line 563
    .line 564
    invoke-static/range {v16 .. v16}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v9

    .line 568
    invoke-virtual {v12, v9}, Lxq6;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    xor-int/lit8 v9, v9, 0x1

    .line 573
    .line 574
    invoke-direct {v13, v14, v15, v9}, Lg56;-><init>(Ljava/lang/String;IZ)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move/from16 v9, v17

    .line 581
    .line 582
    goto :goto_7

    .line 583
    :cond_10
    move/from16 v17, v9

    .line 584
    .line 585
    new-instance v8, Lf56;

    .line 586
    .line 587
    invoke-direct {v8, v5, v3, v10}, Lf56;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_11
    move/from16 v17, v9

    .line 595
    .line 596
    :goto_8
    sget-object v3, Ldd1;->WebDav:Ldd1;

    .line 597
    .line 598
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-eqz v3, :cond_13

    .line 603
    .line 604
    const v3, 0x7f130418

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    sget-object v8, Loq8;->m:Ljava/util/ArrayList;

    .line 615
    .line 616
    new-instance v9, Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-static {v8, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 619
    .line 620
    .line 621
    move-result v10

    .line 622
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v10

    .line 633
    if-eqz v10, :cond_12

    .line 634
    .line 635
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v10

    .line 639
    check-cast v10, Loq8;

    .line 640
    .line 641
    new-instance v12, Lg56;

    .line 642
    .line 643
    iget-object v13, v10, Loq8;->b:Ljava/lang/String;

    .line 644
    .line 645
    iget v14, v10, Loq8;->c:I

    .line 646
    .line 647
    sget-object v15, Loq8;->m:Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-static {v15}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v15

    .line 653
    invoke-virtual {v10, v15}, Loq8;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v10

    .line 657
    xor-int/lit8 v10, v10, 0x1

    .line 658
    .line 659
    invoke-direct {v12, v13, v14, v10}, Lg56;-><init>(Ljava/lang/String;IZ)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    goto :goto_9

    .line 666
    :cond_12
    new-instance v8, Lf56;

    .line 667
    .line 668
    invoke-direct {v8, v5, v3, v9}, Lf56;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    :cond_13
    sget-object v3, Ldd1;->WebDav:Ldd1;

    .line 675
    .line 676
    sget-object v5, Ldd1;->S3:Ldd1;

    .line 677
    .line 678
    sget-object v8, Ldd1;->SFTP:Ldd1;

    .line 679
    .line 680
    sget-object v9, Ldd1;->SMB:Ldd1;

    .line 681
    .line 682
    sget-object v10, Ldd1;->FTP:Ldd1;

    .line 683
    .line 684
    filled-new-array {v3, v5, v8, v9, v10}, [Ldd1;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    new-instance v5, Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    :cond_14
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 702
    .line 703
    .line 704
    move-result v8

    .line 705
    if-eqz v8, :cond_15

    .line 706
    .line 707
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v8

    .line 711
    move-object v9, v8

    .line 712
    check-cast v9, Ldd1;

    .line 713
    .line 714
    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v9

    .line 718
    if-eqz v9, :cond_14

    .line 719
    .line 720
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    goto :goto_a

    .line 724
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-static {v5, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    if-eqz v5, :cond_17

    .line 742
    .line 743
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v5

    .line 747
    check-cast v5, Ldd1;

    .line 748
    .line 749
    new-instance v6, Lg56;

    .line 750
    .line 751
    invoke-virtual {v5}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v8

    .line 755
    sget-object v9, Lk56;->a:[I

    .line 756
    .line 757
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 758
    .line 759
    .line 760
    move-result v10

    .line 761
    aget v9, v9, v10

    .line 762
    .line 763
    move/from16 v10, v17

    .line 764
    .line 765
    if-ne v9, v10, :cond_16

    .line 766
    .line 767
    sget-object v5, Loq8;->i:Loq8;

    .line 768
    .line 769
    iget v5, v5, Loq8;->c:I

    .line 770
    .line 771
    goto :goto_c

    .line 772
    :cond_16
    invoke-virtual {v5}, Ldd1;->getBrandingIconRes()I

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    :goto_c
    invoke-direct {v6, v8, v5, v10}, Lg56;-><init>(Ljava/lang/String;IZ)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    const/16 v17, 0x1

    .line 783
    .line 784
    goto :goto_b

    .line 785
    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    if-nez v4, :cond_18

    .line 790
    .line 791
    const v4, 0x7f130417

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 802
    .line 803
    .line 804
    move-result v4

    .line 805
    new-instance v5, Lf56;

    .line 806
    .line 807
    invoke-direct {v5, v4, v0, v3}, Lf56;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    :cond_18
    new-instance v0, Le56;

    .line 814
    .line 815
    invoke-direct {v0, v7}, Le56;-><init>(Ljava/util/ArrayList;)V

    .line 816
    .line 817
    .line 818
    invoke-static {v0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    invoke-static {v2, v0}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 826
    .line 827
    .line 828
    return-object v11

    .line 829
    :pswitch_4
    check-cast v0, Lnq5;

    .line 830
    .line 831
    move-object/from16 v1, p1

    .line 832
    .line 833
    check-cast v1, Ljava/lang/String;

    .line 834
    .line 835
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    iget-object v0, v0, Lnq5;->h:Lst5;

    .line 839
    .line 840
    const-string v7, "lastModifiedDateTime"

    .line 841
    .line 842
    const-string v8, "folder"

    .line 843
    .line 844
    const-string v2, "id"

    .line 845
    .line 846
    const-string v3, "name"

    .line 847
    .line 848
    const-string v4, "parentReference"

    .line 849
    .line 850
    const-string v5, "size"

    .line 851
    .line 852
    const-string v6, "createdDateTime"

    .line 853
    .line 854
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-static {v2}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    invoke-virtual {v0, v1, v2}, Lst5;->j(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    new-instance v1, Lab1;

    .line 867
    .line 868
    invoke-static {v0}, Log1;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    invoke-direct {v1, v0}, Lab1;-><init>(Ljava/util/List;)V

    .line 873
    .line 874
    .line 875
    return-object v1

    .line 876
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;

    .line 877
    .line 878
    move-object/from16 v1, p1

    .line 879
    .line 880
    check-cast v1, Ljava/lang/Boolean;

    .line 881
    .line 882
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/NoGmsSignInActivity;->M:I

    .line 887
    .line 888
    if-eqz v1, :cond_19

    .line 889
    .line 890
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 894
    .line 895
    .line 896
    goto :goto_d

    .line 897
    :cond_19
    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 901
    .line 902
    .line 903
    :goto_d
    return-object v11

    .line 904
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 905
    .line 906
    move-object/from16 v1, p1

    .line 907
    .line 908
    check-cast v1, Lqv1$c;

    .line 909
    .line 910
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 911
    .line 912
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0:Lgv7;

    .line 913
    .line 914
    if-nez v1, :cond_1a

    .line 915
    .line 916
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    check-cast v0, Lw45;

    .line 921
    .line 922
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 923
    .line 924
    .line 925
    goto :goto_10

    .line 926
    :cond_1a
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    check-cast v2, Lw45;

    .line 931
    .line 932
    invoke-virtual {v1}, Lqv1$c;->getTotal()I

    .line 933
    .line 934
    .line 935
    move-result v3

    .line 936
    invoke-virtual {v2, v3}, Lw45;->l(I)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1}, Lqv1$c;->getIndex()I

    .line 940
    .line 941
    .line 942
    move-result v1

    .line 943
    invoke-virtual {v2, v1}, Lw45;->m(I)V

    .line 944
    .line 945
    .line 946
    const v1, 0x7f130444

    .line 947
    .line 948
    .line 949
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    iget-object v3, v2, Lw45;->p:Landroid/widget/ProgressBar;

    .line 954
    .line 955
    if-eqz v3, :cond_1b

    .line 956
    .line 957
    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    goto :goto_e

    .line 962
    :cond_1b
    iget v3, v2, Lw45;->I:I

    .line 963
    .line 964
    :goto_e
    iget-object v5, v2, Lw45;->p:Landroid/widget/ProgressBar;

    .line 965
    .line 966
    if-eqz v5, :cond_1c

    .line 967
    .line 968
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    .line 969
    .line 970
    .line 971
    move-result v5

    .line 972
    goto :goto_f

    .line 973
    :cond_1c
    iget v5, v2, Lw45;->H:I

    .line 974
    .line 975
    :goto_f
    const-string v6, "\n\n"

    .line 976
    .line 977
    const-string v7, "/"

    .line 978
    .line 979
    const-string v8, "\n"

    .line 980
    .line 981
    invoke-static {v8, v1, v6, v3, v7}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    invoke-virtual {v2, v1}, Lw45;->i(Ljava/lang/CharSequence;)V

    .line 993
    .line 994
    .line 995
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-nez v1, :cond_1d

    .line 1000
    .line 1001
    const v1, 0x7f13050c

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v1

    .line 1008
    new-instance v3, Le21;

    .line 1009
    .line 1010
    const/4 v10, 0x1

    .line 1011
    invoke-direct {v3, v0, v10}, Le21;-><init>(Ljava/lang/Object;I)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v0, v2, Lwa;->k:Lua;

    .line 1015
    .line 1016
    invoke-virtual {v0, v4, v1, v3}, Lua;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v2}, Lw45;->show()V

    .line 1020
    .line 1021
    .line 1022
    const v0, 0x102000b

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2, v0}, Lho;->findViewById(I)Landroid/view/View;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    check-cast v0, Landroid/widget/TextView;

    .line 1030
    .line 1031
    if-eqz v0, :cond_1d

    .line 1032
    .line 1033
    const/high16 v1, 0x41580000    # 13.5f

    .line 1034
    .line 1035
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1036
    .line 1037
    .line 1038
    :cond_1d
    :goto_10
    return-object v11

    .line 1039
    :pswitch_7
    check-cast v0, Lt75;

    .line 1040
    .line 1041
    move-object/from16 v1, p1

    .line 1042
    .line 1043
    check-cast v1, Ljava/lang/Integer;

    .line 1044
    .line 1045
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1046
    .line 1047
    .line 1048
    move-result v1

    .line 1049
    invoke-virtual {v0, v1}, Lt75;->e(I)Lr75;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    return-object v0

    .line 1054
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 1055
    .line 1056
    move-object/from16 v1, p1

    .line 1057
    .line 1058
    check-cast v1, Ljava/lang/Boolean;

    .line 1059
    .line 1060
    sget v1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 1061
    .line 1062
    new-instance v2, Ls52;

    .line 1063
    .line 1064
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->R()Lorg/swiftapps/swiftbackup/intro/d;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v4

    .line 1068
    const/4 v8, 0x0

    .line 1069
    const/4 v9, 0x1

    .line 1070
    const/4 v3, 0x1

    .line 1071
    const-class v5, Lorg/swiftapps/swiftbackup/intro/d;

    .line 1072
    .line 1073
    const-string v6, "onShizukuPermissionResult"

    .line 1074
    .line 1075
    const-string v7, "onShizukuPermissionResult(Z)V"

    .line 1076
    .line 1077
    invoke-direct/range {v2 .. v9}, Ls52;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0, v2}, Lil0;->J(Lmt3;)V

    .line 1081
    .line 1082
    .line 1083
    return-object v11

    .line 1084
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 1085
    .line 1086
    move-object/from16 v1, p1

    .line 1087
    .line 1088
    check-cast v1, Lbe8;

    .line 1089
    .line 1090
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 1091
    .line 1092
    invoke-static {v0}, Lz85;->t(Lfu4;)Lxt4;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v1

    .line 1096
    new-instance v2, Lfz3;

    .line 1097
    .line 1098
    invoke-direct {v2, v0, v8}, Lfz3;-><init>(Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;Ljv1;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v1, v8, v2, v6}, Ll73;->v(Lxx1;Lox1;Lqt3;I)Lbl7;

    .line 1102
    .line 1103
    .line 1104
    return-object v11

    .line 1105
    :pswitch_a
    check-cast v0, Ltp3;

    .line 1106
    .line 1107
    move-object/from16 v1, p1

    .line 1108
    .line 1109
    check-cast v1, Ljava/lang/Boolean;

    .line 1110
    .line 1111
    iget-object v0, v0, Ltp3;->g:Lkm5;

    .line 1112
    .line 1113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v1

    .line 1120
    invoke-virtual {v0, v1}, Lkm5;->t(Z)V

    .line 1121
    .line 1122
    .line 1123
    return-object v11

    .line 1124
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 1125
    .line 1126
    move-object/from16 v1, p1

    .line 1127
    .line 1128
    check-cast v1, Ljava/lang/String;

    .line 1129
    .line 1130
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z:Lgv7;

    .line 1131
    .line 1132
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 1137
    .line 1138
    if-eqz v1, :cond_1f

    .line 1139
    .line 1140
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1141
    .line 1142
    .line 1143
    move-result v3

    .line 1144
    if-nez v3, :cond_1e

    .line 1145
    .line 1146
    goto :goto_12

    .line 1147
    :cond_1e
    move/from16 v17, v10

    .line 1148
    .line 1149
    :goto_11
    const/4 v3, 0x1

    .line 1150
    goto :goto_13

    .line 1151
    :cond_1f
    :goto_12
    const/16 v17, 0x1

    .line 1152
    .line 1153
    goto :goto_11

    .line 1154
    :goto_13
    xor-int/lit8 v4, v17, 0x1

    .line 1155
    .line 1156
    iget-object v3, v2, Lcom/google/android/material/textfield/TextInputLayout;->r:Lyb4;

    .line 1157
    .line 1158
    iget-boolean v3, v3, Lyb4;->q:Z

    .line 1159
    .line 1160
    if-eq v3, v4, :cond_20

    .line 1161
    .line 1162
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    iget-object v3, v3, Lkm3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1167
    .line 1168
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    new-array v4, v10, [Ljava/lang/Class;

    .line 1172
    .line 1173
    invoke-virtual {v0, v3, v4}, Lil0;->x(Landroid/view/ViewGroup;[Ljava/lang/Class;)V

    .line 1174
    .line 1175
    .line 1176
    :cond_20
    if-eqz v1, :cond_22

    .line 1177
    .line 1178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1179
    .line 1180
    .line 1181
    move-result v0

    .line 1182
    if-nez v0, :cond_21

    .line 1183
    .line 1184
    goto :goto_15

    .line 1185
    :cond_21
    :goto_14
    const/16 v17, 0x1

    .line 1186
    .line 1187
    goto :goto_16

    .line 1188
    :cond_22
    :goto_15
    const/4 v10, 0x1

    .line 1189
    goto :goto_14

    .line 1190
    :goto_16
    xor-int/lit8 v0, v10, 0x1

    .line 1191
    .line 1192
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1199
    .line 1200
    .line 1201
    return-object v11

    .line 1202
    :pswitch_c
    check-cast v0, Lx92;

    .line 1203
    .line 1204
    move-object/from16 v1, p1

    .line 1205
    .line 1206
    check-cast v1, Ljava/lang/Boolean;

    .line 1207
    .line 1208
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1209
    .line 1210
    .line 1211
    move-result v1

    .line 1212
    invoke-virtual {v0}, Lx92;->m()Lfa2;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v0

    .line 1216
    new-instance v2, Lda2;

    .line 1217
    .line 1218
    invoke-direct {v2, v10, v0, v1}, Lda2;-><init>(ZLfa2;Z)V

    .line 1219
    .line 1220
    .line 1221
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 1222
    .line 1223
    .line 1224
    return-object v11

    .line 1225
    :pswitch_d
    move-object v1, v0

    .line 1226
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 1227
    .line 1228
    move-object/from16 v0, p1

    .line 1229
    .line 1230
    check-cast v0, Lfd1;

    .line 1231
    .line 1232
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 1233
    .line 1234
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->h0()Lcom/google/android/material/textfield/TextInputLayout;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v2

    .line 1241
    invoke-virtual {v2, v8}, Lcom/google/android/material/textfield/TextInputLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v2

    .line 1248
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->g0()Lcom/google/android/material/textfield/TextInputEditText;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    sget-object v5, Lgc1;->a:Lai6;

    .line 1253
    .line 1254
    invoke-virtual {v4}, Llo;->getText()Landroid/text/Editable;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v4

    .line 1258
    if-eqz v4, :cond_23

    .line 1259
    .line 1260
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v4

    .line 1264
    goto :goto_17

    .line 1265
    :cond_23
    move-object v4, v8

    .line 1266
    :goto_17
    invoke-static {v4}, Lgc1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v4

    .line 1270
    invoke-static {v4}, Lgc1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v4

    .line 1274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1275
    .line 1276
    .line 1277
    move-result v5

    .line 1278
    if-lez v5, :cond_24

    .line 1279
    .line 1280
    goto :goto_18

    .line 1281
    :cond_24
    move-object v4, v8

    .line 1282
    :goto_18
    if-nez v4, :cond_25

    .line 1283
    .line 1284
    move-object v0, v8

    .line 1285
    goto :goto_19

    .line 1286
    :cond_25
    invoke-virtual {v0}, Lfd1;->getScheme()Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v0

    .line 1290
    const-string v5, "://"

    .line 1291
    .line 1292
    invoke-static {v0, v5, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v0

    .line 1296
    :goto_19
    invoke-virtual {v2}, Llo;->getText()Landroid/text/Editable;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v4

    .line 1300
    if-eqz v4, :cond_26

    .line 1301
    .line 1302
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v8

    .line 1306
    :cond_26
    if-nez v0, :cond_27

    .line 1307
    .line 1308
    goto :goto_1a

    .line 1309
    :cond_27
    move-object v3, v0

    .line 1310
    :goto_1a
    invoke-static {v8, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    if-eqz v3, :cond_28

    .line 1315
    .line 1316
    goto :goto_1b

    .line 1317
    :cond_28
    const/4 v3, 0x1

    .line 1318
    iput-boolean v3, v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->L0:Z

    .line 1319
    .line 1320
    :try_start_0
    invoke-static {v2, v0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->q0(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    .line 1322
    .line 1323
    iput-boolean v10, v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->L0:Z

    .line 1324
    .line 1325
    :goto_1b
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->v0()V

    .line 1326
    .line 1327
    .line 1328
    return-object v11

    .line 1329
    :catchall_0
    move-exception v0

    .line 1330
    iput-boolean v10, v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->L0:Z

    .line 1331
    .line 1332
    throw v0

    .line 1333
    :pswitch_e
    check-cast v0, Llr1;

    .line 1334
    .line 1335
    move-object/from16 v1, p1

    .line 1336
    .line 1337
    check-cast v1, Lyu;

    .line 1338
    .line 1339
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v12

    .line 1354
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v22

    .line 1358
    const v29, 0xfdff

    .line 1359
    .line 1360
    .line 1361
    const/16 v30, 0x0

    .line 1362
    .line 1363
    const/4 v13, 0x0

    .line 1364
    const/4 v14, 0x0

    .line 1365
    const/4 v15, 0x0

    .line 1366
    const/16 v16, 0x0

    .line 1367
    .line 1368
    const/16 v17, 0x0

    .line 1369
    .line 1370
    const/16 v18, 0x0

    .line 1371
    .line 1372
    const/16 v19, 0x0

    .line 1373
    .line 1374
    const/16 v20, 0x0

    .line 1375
    .line 1376
    const/16 v21, 0x0

    .line 1377
    .line 1378
    const/16 v23, 0x0

    .line 1379
    .line 1380
    const/16 v24, 0x0

    .line 1381
    .line 1382
    const/16 v25, 0x0

    .line 1383
    .line 1384
    const/16 v26, 0x0

    .line 1385
    .line 1386
    const/16 v27, 0x0

    .line 1387
    .line 1388
    const/16 v28, 0x0

    .line 1389
    .line 1390
    invoke-static/range {v12 .. v30}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v0

    .line 1394
    invoke-virtual {v2, v0}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 1395
    .line 1396
    .line 1397
    return-object v11

    .line 1398
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 1399
    .line 1400
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->S:Lgv7;

    .line 1401
    .line 1402
    move-object/from16 v2, p1

    .line 1403
    .line 1404
    check-cast v2, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 1405
    .line 1406
    sget v3, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 1407
    .line 1408
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v3

    .line 1415
    iget-object v4, v3, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 1416
    .line 1417
    invoke-virtual {v3}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v3

    .line 1421
    invoke-static {v4, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result v3

    .line 1425
    const/16 v17, 0x1

    .line 1426
    .line 1427
    xor-int/lit8 v3, v3, 0x1

    .line 1428
    .line 1429
    invoke-virtual {v0, v3}, Lil0;->A(Z)V

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v3

    .line 1436
    iget-object v3, v3, Lkq1;->d:Lcom/google/android/material/button/MaterialButton;

    .line 1437
    .line 1438
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->isNameValid()Z

    .line 1439
    .line 1440
    .line 1441
    move-result v4

    .line 1442
    if-eqz v4, :cond_29

    .line 1443
    .line 1444
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->isNameTaken()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v4

    .line 1448
    if-nez v4, :cond_29

    .line 1449
    .line 1450
    const/4 v4, 0x1

    .line 1451
    goto :goto_1c

    .line 1452
    :cond_29
    move v4, v10

    .line 1453
    :goto_1c
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v3

    .line 1460
    iget-object v3, v3, Lkq1;->e:Ll39;

    .line 1461
    .line 1462
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->hasValidSettings()Z

    .line 1463
    .line 1464
    .line 1465
    move-result v4

    .line 1466
    if-eqz v4, :cond_2a

    .line 1467
    .line 1468
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->hasCloudLocation()Z

    .line 1469
    .line 1470
    .line 1471
    move-result v4

    .line 1472
    if-eqz v4, :cond_2a

    .line 1473
    .line 1474
    sget-object v4, Ltb1;->a:Ltb1;

    .line 1475
    .line 1476
    invoke-static {}, Lqb1;->m()Z

    .line 1477
    .line 1478
    .line 1479
    move-result v4

    .line 1480
    if-nez v4, :cond_2a

    .line 1481
    .line 1482
    const/4 v4, 0x1

    .line 1483
    goto :goto_1d

    .line 1484
    :cond_2a
    move v4, v10

    .line 1485
    :goto_1d
    iget-object v5, v3, Ll39;->b:Ljava/lang/Object;

    .line 1486
    .line 1487
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 1488
    .line 1489
    invoke-static {v5, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1490
    .line 1491
    .line 1492
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v4

    .line 1496
    if-eqz v4, :cond_2b

    .line 1497
    .line 1498
    iget-object v3, v3, Ll39;->c:Ljava/lang/Object;

    .line 1499
    .line 1500
    check-cast v3, Landroid/widget/TextView;

    .line 1501
    .line 1502
    const v4, 0x7f1301ae

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v4

    .line 1509
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    .line 1511
    .line 1512
    new-instance v3, Ler;

    .line 1513
    .line 1514
    invoke-direct {v3, v7, v0, v2}, Ler;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    .line 1519
    .line 1520
    :cond_2b
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v3

    .line 1524
    check-cast v3, Lpq1;

    .line 1525
    .line 1526
    iget-object v3, v3, Lgm7;->e:Lfm7;

    .line 1527
    .line 1528
    iget-object v3, v3, Lfm7;->a:Ljava/util/List;

    .line 1529
    .line 1530
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v4

    .line 1534
    if-nez v4, :cond_2c

    .line 1535
    .line 1536
    sget-object v4, Lov2;->a:Lov2;

    .line 1537
    .line 1538
    :cond_2c
    move-object/from16 v19, v4

    .line 1539
    .line 1540
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 1541
    .line 1542
    .line 1543
    move-result v4

    .line 1544
    if-nez v4, :cond_2d

    .line 1545
    .line 1546
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 1547
    .line 1548
    .line 1549
    move-result v4

    .line 1550
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1551
    .line 1552
    .line 1553
    move-result v3

    .line 1554
    sub-int/2addr v4, v3

    .line 1555
    const/4 v3, 0x1

    .line 1556
    if-ne v4, v3, :cond_2d

    .line 1557
    .line 1558
    const/4 v3, 0x1

    .line 1559
    goto :goto_1e

    .line 1560
    :cond_2d
    move v3, v10

    .line 1561
    :goto_1e
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v1

    .line 1565
    check-cast v1, Lpq1;

    .line 1566
    .line 1567
    new-instance v18, Lfm7;

    .line 1568
    .line 1569
    const/16 v22, 0x0

    .line 1570
    .line 1571
    const/16 v23, 0x1e

    .line 1572
    .line 1573
    const/16 v20, 0x0

    .line 1574
    .line 1575
    const/16 v21, 0x0

    .line 1576
    .line 1577
    invoke-direct/range {v18 .. v23}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1578
    .line 1579
    .line 1580
    move-object/from16 v4, v18

    .line 1581
    .line 1582
    invoke-virtual {v1, v4, v10}, Lgm7;->w(Lfm7;Z)V

    .line 1583
    .line 1584
    .line 1585
    if-eqz v3, :cond_2e

    .line 1586
    .line 1587
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 1588
    .line 1589
    .line 1590
    move-result v1

    .line 1591
    const/16 v17, 0x1

    .line 1592
    .line 1593
    add-int/lit8 v1, v1, -0x1

    .line 1594
    .line 1595
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v3

    .line 1599
    iget-object v3, v3, Lkq1;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 1600
    .line 1601
    new-instance v4, Lhq1;

    .line 1602
    .line 1603
    invoke-direct {v4, v0, v1}, Lhq1;-><init>(Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;I)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v3, v4}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1607
    .line 1608
    .line 1609
    :cond_2e
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->U()Lkq1;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    iget-object v1, v1, Lkq1;->c:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1614
    .line 1615
    invoke-static {v2, v10}, Lsq1;->a(Lorg/swiftapps/swiftbackup/appconfigs/data/Config;Z)Z

    .line 1616
    .line 1617
    .line 1618
    move-result v3

    .line 1619
    if-nez v3, :cond_2f

    .line 1620
    .line 1621
    sget-object v3, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Hide:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1622
    .line 1623
    goto :goto_1f

    .line 1624
    :cond_2f
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v3

    .line 1628
    iget-object v4, v3, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 1629
    .line 1630
    invoke-virtual {v3}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v3

    .line 1634
    invoke-static {v4, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    if-nez v3, :cond_30

    .line 1639
    .line 1640
    sget-object v3, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Save:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1641
    .line 1642
    goto :goto_1f

    .line 1643
    :cond_30
    sget-object v3, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Run:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1644
    .line 1645
    :goto_1f
    iget-object v4, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->T:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1646
    .line 1647
    if-eq v3, v4, :cond_33

    .line 1648
    .line 1649
    filled-new-array {v3, v4}, [Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v4

    .line 1653
    invoke-static {v4}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v4

    .line 1657
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v5

    .line 1661
    if-eqz v5, :cond_31

    .line 1662
    .line 1663
    goto :goto_20

    .line 1664
    :cond_31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1665
    .line 1666
    .line 1667
    move-result-object v4

    .line 1668
    :cond_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1669
    .line 1670
    .line 1671
    move-result v5

    .line 1672
    if-eqz v5, :cond_33

    .line 1673
    .line 1674
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v5

    .line 1678
    check-cast v5, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1679
    .line 1680
    sget-object v9, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Hide:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1681
    .line 1682
    if-ne v5, v9, :cond_32

    .line 1683
    .line 1684
    const/4 v4, 0x1

    .line 1685
    goto :goto_21

    .line 1686
    :cond_33
    :goto_20
    move v4, v10

    .line 1687
    :goto_21
    sget-object v5, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;->Hide:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1688
    .line 1689
    if-eq v3, v5, :cond_34

    .line 1690
    .line 1691
    const/4 v10, 0x1

    .line 1692
    :cond_34
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 1693
    .line 1694
    .line 1695
    if-eqz v4, :cond_36

    .line 1696
    .line 1697
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 1698
    .line 1699
    .line 1700
    move-result v4

    .line 1701
    if-eqz v4, :cond_35

    .line 1702
    .line 1703
    const v4, 0x7f010014

    .line 1704
    .line 1705
    .line 1706
    goto :goto_22

    .line 1707
    :cond_35
    const v4, 0x7f010015

    .line 1708
    .line 1709
    .line 1710
    :goto_22
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v4

    .line 1714
    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1715
    .line 1716
    .line 1717
    :cond_36
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 1718
    .line 1719
    .line 1720
    move-result v4

    .line 1721
    invoke-static {v1, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1722
    .line 1723
    .line 1724
    sget-object v4, Lorg/swiftapps/swiftbackup/appconfigs/edit/a;->a:[I

    .line 1725
    .line 1726
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1727
    .line 1728
    .line 1729
    move-result v5

    .line 1730
    aget v4, v4, v5

    .line 1731
    .line 1732
    const/4 v10, 0x1

    .line 1733
    if-eq v4, v10, :cond_39

    .line 1734
    .line 1735
    if-eq v4, v7, :cond_38

    .line 1736
    .line 1737
    if-ne v4, v6, :cond_37

    .line 1738
    .line 1739
    invoke-virtual {v1, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1740
    .line 1741
    .line 1742
    goto :goto_23

    .line 1743
    :cond_37
    invoke-static {}, Lq;->j()V

    .line 1744
    .line 1745
    .line 1746
    goto :goto_24

    .line 1747
    :cond_38
    const v4, 0x7f040163

    .line 1748
    .line 1749
    .line 1750
    invoke-static {v0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1751
    .line 1752
    .line 1753
    move-result v4

    .line 1754
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 1755
    .line 1756
    .line 1757
    move-result v4

    .line 1758
    const v5, 0x7f040142

    .line 1759
    .line 1760
    .line 1761
    invoke-static {v0, v5}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1762
    .line 1763
    .line 1764
    move-result v5

    .line 1765
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 1766
    .line 1767
    .line 1768
    move-result v5

    .line 1769
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v1, v5}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(I)V

    .line 1773
    .line 1774
    .line 1775
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v4

    .line 1779
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 1780
    .line 1781
    .line 1782
    const v4, 0x7f1304bc

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1786
    .line 1787
    .line 1788
    const v4, 0x7f0801ad

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 1792
    .line 1793
    .line 1794
    new-instance v4, Lt20;

    .line 1795
    .line 1796
    invoke-direct {v4, v7, v2, v0}, Lt20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1797
    .line 1798
    .line 1799
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1800
    .line 1801
    .line 1802
    goto :goto_23

    .line 1803
    :cond_39
    const v4, 0x7f04014b

    .line 1804
    .line 1805
    .line 1806
    invoke-static {v0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1807
    .line 1808
    .line 1809
    move-result v4

    .line 1810
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 1811
    .line 1812
    .line 1813
    move-result v4

    .line 1814
    const v5, 0x7f040137

    .line 1815
    .line 1816
    .line 1817
    invoke-static {v0, v5}, Lsz8;->y(Landroid/content/Context;I)I

    .line 1818
    .line 1819
    .line 1820
    move-result v5

    .line 1821
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    .line 1822
    .line 1823
    .line 1824
    move-result v5

    .line 1825
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v1, v5}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setTextColor(I)V

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v4

    .line 1835
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 1836
    .line 1837
    .line 1838
    const v4, 0x7f1301ac

    .line 1839
    .line 1840
    .line 1841
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1842
    .line 1843
    .line 1844
    const v4, 0x7f08019e

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 1848
    .line 1849
    .line 1850
    new-instance v4, Lgr;

    .line 1851
    .line 1852
    const/4 v10, 0x1

    .line 1853
    invoke-direct {v4, v10, v0, v2}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1857
    .line 1858
    .line 1859
    :goto_23
    iput-object v3, v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->T:Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity$a;

    .line 1860
    .line 1861
    move-object v8, v11

    .line 1862
    :goto_24
    return-object v8

    .line 1863
    :pswitch_10
    check-cast v0, Lsj1;

    .line 1864
    .line 1865
    move-object/from16 v1, p1

    .line 1866
    .line 1867
    check-cast v1, Ljava/lang/Integer;

    .line 1868
    .line 1869
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1870
    .line 1871
    .line 1872
    move-result v1

    .line 1873
    sget-object v2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1874
    .line 1875
    if-eqz v2, :cond_3a

    .line 1876
    .line 1877
    const-string v3, "multithreaded_downloads_chunk_count"

    .line 1878
    .line 1879
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v1

    .line 1883
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1884
    .line 1885
    .line 1886
    invoke-virtual {v0}, Lsj1;->t()V

    .line 1887
    .line 1888
    .line 1889
    return-object v11

    .line 1890
    :cond_3a
    const-string v0, "editor"

    .line 1891
    .line 1892
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1893
    .line 1894
    .line 1895
    throw v8

    .line 1896
    :pswitch_11
    check-cast v0, Ljava/lang/Exception;

    .line 1897
    .line 1898
    move-object/from16 v4, p1

    .line 1899
    .line 1900
    check-cast v4, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1901
    .line 1902
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1903
    .line 1904
    .line 1905
    sget-object v5, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->ERROR:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1906
    .line 1907
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1908
    .line 1909
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v1

    .line 1913
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v0

    .line 1917
    if-nez v0, :cond_3b

    .line 1918
    .line 1919
    goto :goto_25

    .line 1920
    :cond_3b
    move-object v3, v0

    .line 1921
    :goto_25
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v0

    .line 1925
    const v2, 0x7f130182

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v8

    .line 1932
    const/4 v10, 0x0

    .line 1933
    const/16 v11, 0x187f

    .line 1934
    .line 1935
    sget-object v6, Lov2;->a:Lov2;

    .line 1936
    .line 1937
    sget-object v7, Lsv2;->a:Lsv2;

    .line 1938
    .line 1939
    const/4 v9, 0x0

    .line 1940
    invoke-static/range {v4 .. v11}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v0

    .line 1944
    return-object v0

    .line 1945
    :pswitch_12
    check-cast v0, Lgg1;

    .line 1946
    .line 1947
    move-object/from16 v1, p1

    .line 1948
    .line 1949
    check-cast v1, Ljava/lang/Boolean;

    .line 1950
    .line 1951
    invoke-virtual {v0}, Lgg1;->o()V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v0}, Lgg1;->m()Lng1;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v0

    .line 1958
    invoke-virtual {v0}, Lng1;->c()V

    .line 1959
    .line 1960
    .line 1961
    return-object v11

    .line 1962
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1963
    .line 1964
    move-object/from16 v1, p1

    .line 1965
    .line 1966
    check-cast v1, Lfm7;

    .line 1967
    .line 1968
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1969
    .line 1970
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1971
    .line 1972
    .line 1973
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P:Lgv7;

    .line 1974
    .line 1975
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1976
    .line 1977
    .line 1978
    move-result-object v0

    .line 1979
    check-cast v0, Lac1;

    .line 1980
    .line 1981
    invoke-virtual {v0, v1, v10}, Lgm7;->w(Lfm7;Z)V

    .line 1982
    .line 1983
    .line 1984
    return-object v11

    .line 1985
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 1986
    .line 1987
    move-object/from16 v1, p1

    .line 1988
    .line 1989
    check-cast v1, Ln11;

    .line 1990
    .line 1991
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 1992
    .line 1993
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Y()Loi7;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v2

    .line 2000
    iget-object v2, v2, Loi7;->e:Lpi7;

    .line 2001
    .line 2002
    iget-object v3, v2, Lpi7;->n:Landroid/widget/TextView;

    .line 2003
    .line 2004
    iget-object v4, v2, Lpi7;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 2005
    .line 2006
    iget-object v9, v2, Lpi7;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2007
    .line 2008
    iget-object v12, v2, Lpi7;->f:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 2009
    .line 2010
    const/4 v13, 0x1

    .line 2011
    invoke-virtual {v12, v13}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 2012
    .line 2013
    .line 2014
    iget-object v13, v2, Lpi7;->b:Lzx2;

    .line 2015
    .line 2016
    iget-object v14, v13, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 2017
    .line 2018
    iget-object v15, v13, Lzx2;->d:Landroid/widget/ImageView;

    .line 2019
    .line 2020
    const v6, 0x7f080114

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2024
    .line 2025
    .line 2026
    iget-object v6, v13, Lzx2;->e:Landroid/widget/TextView;

    .line 2027
    .line 2028
    iget-object v13, v13, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 2029
    .line 2030
    iget-object v15, v2, Lpi7;->k:Landroid/widget/RelativeLayout;

    .line 2031
    .line 2032
    iget-object v7, v2, Lpi7;->c:Landroid/widget/ImageView;

    .line 2033
    .line 2034
    iget-object v2, v2, Lpi7;->p:Landroid/widget/TextView;

    .line 2035
    .line 2036
    iget-boolean v5, v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->R:Z

    .line 2037
    .line 2038
    if-eqz v5, :cond_3c

    .line 2039
    .line 2040
    iget-boolean v5, v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->S:Z

    .line 2041
    .line 2042
    if-nez v5, :cond_3c

    .line 2043
    .line 2044
    const/4 v5, 0x1

    .line 2045
    iput-boolean v5, v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->S:Z

    .line 2046
    .line 2047
    const/4 v5, 0x7

    .line 2048
    invoke-static {v5}, Lorg/swiftapps/swiftbackup/common/Const;->j(I)Landroid/view/animation/AlphaAnimation;

    .line 2049
    .line 2050
    .line 2051
    move-result-object v5

    .line 2052
    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2053
    .line 2054
    .line 2055
    :cond_3c
    sget-object v5, Ll11;->a:Ll11;

    .line 2056
    .line 2057
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2058
    .line 2059
    .line 2060
    move-result v5

    .line 2061
    if-eqz v5, :cond_3e

    .line 2062
    .line 2063
    invoke-static {v0, v3, v8}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2067
    .line 2068
    .line 2069
    const/4 v3, 0x4

    .line 2070
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2071
    .line 2072
    .line 2073
    :cond_3d
    :goto_26
    const/4 v4, 0x3

    .line 2074
    goto/16 :goto_2b

    .line 2075
    .line 2076
    :cond_3e
    instance-of v5, v1, Li11;

    .line 2077
    .line 2078
    const/16 v8, 0x8

    .line 2079
    .line 2080
    if-eqz v5, :cond_3f

    .line 2081
    .line 2082
    move-object v5, v1

    .line 2083
    check-cast v5, Li11;

    .line 2084
    .line 2085
    iget-object v5, v5, Li11;->a:Ljava/util/ArrayList;

    .line 2086
    .line 2087
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2088
    .line 2089
    .line 2090
    move-result v5

    .line 2091
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v5

    .line 2095
    invoke-static {v0, v3, v5}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {v14, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2105
    .line 2106
    .line 2107
    const/4 v3, 0x2

    .line 2108
    new-array v4, v3, [Landroid/view/View;

    .line 2109
    .line 2110
    aput-object v12, v4, v10

    .line 2111
    .line 2112
    const/16 v17, 0x1

    .line 2113
    .line 2114
    aput-object v15, v4, v17

    .line 2115
    .line 2116
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v4

    .line 2120
    check-cast v4, [Landroid/view/View;

    .line 2121
    .line 2122
    array-length v3, v4

    .line 2123
    move v5, v10

    .line 2124
    :goto_27
    if-ge v5, v3, :cond_3d

    .line 2125
    .line 2126
    aget-object v6, v4, v5

    .line 2127
    .line 2128
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    .line 2130
    .line 2131
    add-int/lit8 v5, v5, 0x1

    .line 2132
    .line 2133
    goto :goto_27

    .line 2134
    :cond_3f
    sget-object v5, Lk11;->a:Lk11;

    .line 2135
    .line 2136
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2137
    .line 2138
    .line 2139
    move-result v5

    .line 2140
    if-eqz v5, :cond_41

    .line 2141
    .line 2142
    const/4 v5, 0x0

    .line 2143
    invoke-static {v0, v3, v5}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 2144
    .line 2145
    .line 2146
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2147
    .line 2148
    .line 2149
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2150
    .line 2151
    .line 2152
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    .line 2154
    .line 2155
    invoke-virtual {v13, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    .line 2157
    .line 2158
    const/4 v3, 0x2

    .line 2159
    new-array v4, v3, [Landroid/view/View;

    .line 2160
    .line 2161
    aput-object v12, v4, v10

    .line 2162
    .line 2163
    const/16 v17, 0x1

    .line 2164
    .line 2165
    aput-object v15, v4, v17

    .line 2166
    .line 2167
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2168
    .line 2169
    .line 2170
    move-result-object v4

    .line 2171
    check-cast v4, [Landroid/view/View;

    .line 2172
    .line 2173
    array-length v3, v4

    .line 2174
    move v5, v10

    .line 2175
    :goto_28
    if-ge v5, v3, :cond_40

    .line 2176
    .line 2177
    aget-object v9, v4, v5

    .line 2178
    .line 2179
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2180
    .line 2181
    .line 2182
    add-int/lit8 v5, v5, 0x1

    .line 2183
    .line 2184
    goto :goto_28

    .line 2185
    :cond_40
    const v3, 0x7f1303bf

    .line 2186
    .line 2187
    .line 2188
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2189
    .line 2190
    .line 2191
    goto :goto_26

    .line 2192
    :cond_41
    sget-object v5, Lm11;->a:Lm11;

    .line 2193
    .line 2194
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2195
    .line 2196
    .line 2197
    move-result v5

    .line 2198
    if-eqz v5, :cond_43

    .line 2199
    .line 2200
    const/4 v5, 0x0

    .line 2201
    invoke-static {v0, v3, v5}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 2202
    .line 2203
    .line 2204
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2211
    .line 2212
    .line 2213
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2214
    .line 2215
    .line 2216
    const/4 v3, 0x2

    .line 2217
    new-array v4, v3, [Landroid/view/View;

    .line 2218
    .line 2219
    aput-object v12, v4, v10

    .line 2220
    .line 2221
    const/16 v17, 0x1

    .line 2222
    .line 2223
    aput-object v15, v4, v17

    .line 2224
    .line 2225
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v4

    .line 2229
    check-cast v4, [Landroid/view/View;

    .line 2230
    .line 2231
    array-length v3, v4

    .line 2232
    move v5, v10

    .line 2233
    :goto_29
    if-ge v5, v3, :cond_42

    .line 2234
    .line 2235
    aget-object v9, v4, v5

    .line 2236
    .line 2237
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2238
    .line 2239
    .line 2240
    add-int/lit8 v5, v5, 0x1

    .line 2241
    .line 2242
    goto :goto_29

    .line 2243
    :cond_42
    const v3, 0x7f1303c8

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2247
    .line 2248
    .line 2249
    const v3, 0x7f13049a

    .line 2250
    .line 2251
    .line 2252
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2253
    .line 2254
    .line 2255
    new-instance v3, Ldj;

    .line 2256
    .line 2257
    const/4 v4, 0x3

    .line 2258
    invoke-direct {v3, v0, v4}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 2259
    .line 2260
    .line 2261
    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2262
    .line 2263
    .line 2264
    goto/16 :goto_26

    .line 2265
    .line 2266
    :cond_43
    sget-object v5, Lj11;->a:Lj11;

    .line 2267
    .line 2268
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2269
    .line 2270
    .line 2271
    move-result v5

    .line 2272
    if-eqz v5, :cond_49

    .line 2273
    .line 2274
    const/4 v5, 0x0

    .line 2275
    invoke-static {v0, v3, v5}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->a0(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 2276
    .line 2277
    .line 2278
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2279
    .line 2280
    .line 2281
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    .line 2283
    .line 2284
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2285
    .line 2286
    .line 2287
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2288
    .line 2289
    .line 2290
    const/4 v3, 0x2

    .line 2291
    new-array v4, v3, [Landroid/view/View;

    .line 2292
    .line 2293
    aput-object v12, v4, v10

    .line 2294
    .line 2295
    const/16 v17, 0x1

    .line 2296
    .line 2297
    aput-object v15, v4, v17

    .line 2298
    .line 2299
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 2300
    .line 2301
    .line 2302
    move-result-object v4

    .line 2303
    check-cast v4, [Landroid/view/View;

    .line 2304
    .line 2305
    array-length v3, v4

    .line 2306
    move v5, v10

    .line 2307
    :goto_2a
    if-ge v5, v3, :cond_44

    .line 2308
    .line 2309
    aget-object v9, v4, v5

    .line 2310
    .line 2311
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    .line 2313
    .line 2314
    add-int/lit8 v5, v5, 0x1

    .line 2315
    .line 2316
    goto :goto_2a

    .line 2317
    :cond_44
    const v3, 0x7f13016d

    .line 2318
    .line 2319
    .line 2320
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2321
    .line 2322
    .line 2323
    const v3, 0x7f1301b4

    .line 2324
    .line 2325
    .line 2326
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2327
    .line 2328
    .line 2329
    new-instance v3, Lhs;

    .line 2330
    .line 2331
    const/4 v4, 0x3

    .line 2332
    invoke-direct {v3, v0, v4}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 2333
    .line 2334
    .line 2335
    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2336
    .line 2337
    .line 2338
    :goto_2b
    instance-of v3, v1, Li11;

    .line 2339
    .line 2340
    if-nez v3, :cond_45

    .line 2341
    .line 2342
    goto/16 :goto_2e

    .line 2343
    .line 2344
    :cond_45
    check-cast v1, Li11;

    .line 2345
    .line 2346
    iget-object v1, v1, Li11;->a:Ljava/util/ArrayList;

    .line 2347
    .line 2348
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2349
    .line 2350
    .line 2351
    move-result v3

    .line 2352
    if-le v3, v4, :cond_46

    .line 2353
    .line 2354
    const/4 v3, 0x1

    .line 2355
    goto :goto_2c

    .line 2356
    :cond_46
    move v3, v10

    .line 2357
    :goto_2c
    if-eqz v3, :cond_47

    .line 2358
    .line 2359
    invoke-static {v1, v4}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v4

    .line 2363
    new-instance v5, Ljava/util/ArrayList;

    .line 2364
    .line 2365
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2366
    .line 2367
    .line 2368
    goto :goto_2d

    .line 2369
    :cond_47
    move-object v5, v1

    .line 2370
    :goto_2d
    new-instance v4, Lq01;

    .line 2371
    .line 2372
    new-instance v18, Lg11;

    .line 2373
    .line 2374
    const/16 v24, 0x0

    .line 2375
    .line 2376
    const/16 v25, 0x0

    .line 2377
    .line 2378
    const/16 v19, 0x2

    .line 2379
    .line 2380
    const-class v21, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 2381
    .line 2382
    const-string v22, "onBackupItemMenuClick"

    .line 2383
    .line 2384
    const-string v23, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/CallLogBackupItem;)V"

    .line 2385
    .line 2386
    move-object/from16 v20, v0

    .line 2387
    .line 2388
    invoke-direct/range {v18 .. v25}, Lg11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2389
    .line 2390
    .line 2391
    move-object/from16 v6, v18

    .line 2392
    .line 2393
    invoke-direct {v4, v6}, Lq01;-><init>(Lqt3;)V

    .line 2394
    .line 2395
    .line 2396
    new-instance v18, Lfm7;

    .line 2397
    .line 2398
    const/16 v22, 0x0

    .line 2399
    .line 2400
    const/16 v23, 0x1e

    .line 2401
    .line 2402
    const/16 v20, 0x0

    .line 2403
    .line 2404
    const/16 v21, 0x0

    .line 2405
    .line 2406
    move-object/from16 v19, v5

    .line 2407
    .line 2408
    invoke-direct/range {v18 .. v23}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 2409
    .line 2410
    .line 2411
    move-object/from16 v5, v18

    .line 2412
    .line 2413
    invoke-virtual {v4, v5, v10}, Lgm7;->w(Lfm7;Z)V

    .line 2414
    .line 2415
    .line 2416
    new-instance v5, Lrj0;

    .line 2417
    .line 2418
    const/4 v10, 0x1

    .line 2419
    invoke-direct {v5, v0, v10}, Lrj0;-><init>(Ljava/lang/Object;I)V

    .line 2420
    .line 2421
    .line 2422
    iput-object v5, v4, Lgm7;->j:Lqt3;

    .line 2423
    .line 2424
    invoke-virtual {v12, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 2425
    .line 2426
    .line 2427
    const-class v4, Landroid/widget/TextView;

    .line 2428
    .line 2429
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 2430
    .line 2431
    .line 2432
    move-result-object v4

    .line 2433
    invoke-virtual {v0, v4}, Lil0;->y([Ljava/lang/Class;)V

    .line 2434
    .line 2435
    .line 2436
    if-eqz v3, :cond_48

    .line 2437
    .line 2438
    const v3, 0x7f0800c7

    .line 2439
    .line 2440
    .line 2441
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2442
    .line 2443
    .line 2444
    invoke-static {v0}, Lsz8;->A(Landroid/content/Context;)I

    .line 2445
    .line 2446
    .line 2447
    move-result v3

    .line 2448
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v3

    .line 2452
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2453
    .line 2454
    .line 2455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2456
    .line 2457
    .line 2458
    move-result v3

    .line 2459
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 2460
    .line 2461
    .line 2462
    move-result v4

    .line 2463
    sub-int/2addr v3, v4

    .line 2464
    const-string v4, "+"

    .line 2465
    .line 2466
    invoke-static {v3, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 2467
    .line 2468
    .line 2469
    move-result-object v3

    .line 2470
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v3

    .line 2474
    const v4, 0x7f130411

    .line 2475
    .line 2476
    .line 2477
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 2478
    .line 2479
    .line 2480
    move-result-object v3

    .line 2481
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2482
    .line 2483
    .line 2484
    new-instance v2, Lfr;

    .line 2485
    .line 2486
    const/4 v3, 0x2

    .line 2487
    invoke-direct {v2, v3, v0, v1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2488
    .line 2489
    .line 2490
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2491
    .line 2492
    .line 2493
    goto :goto_2e

    .line 2494
    :cond_48
    const v3, 0x7f080128

    .line 2495
    .line 2496
    .line 2497
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2498
    .line 2499
    .line 2500
    invoke-static {v0}, Lsz8;->r(Landroid/content/Context;)I

    .line 2501
    .line 2502
    .line 2503
    move-result v3

    .line 2504
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v3

    .line 2508
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 2509
    .line 2510
    .line 2511
    const v3, 0x7f1301e2

    .line 2512
    .line 2513
    .line 2514
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2515
    .line 2516
    .line 2517
    new-instance v2, Lc11;

    .line 2518
    .line 2519
    const/4 v10, 0x1

    .line 2520
    invoke-direct {v2, v0, v1, v10}, Lc11;-><init>(Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;Ljava/util/ArrayList;I)V

    .line 2521
    .line 2522
    .line 2523
    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2524
    .line 2525
    .line 2526
    :goto_2e
    move-object v8, v11

    .line 2527
    goto :goto_2f

    .line 2528
    :cond_49
    invoke-static {}, Lq;->j()V

    .line 2529
    .line 2530
    .line 2531
    const/4 v8, 0x0

    .line 2532
    :goto_2f
    return-object v8

    .line 2533
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 2534
    .line 2535
    move-object/from16 v1, p1

    .line 2536
    .line 2537
    check-cast v1, Lfm7;

    .line 2538
    .line 2539
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 2540
    .line 2541
    if-eqz v3, :cond_4b

    .line 2542
    .line 2543
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2544
    .line 2545
    .line 2546
    invoke-virtual {v3, v1, v10}, Lgm7;->w(Lfm7;Z)V

    .line 2547
    .line 2548
    .line 2549
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->T:Lm01;

    .line 2550
    .line 2551
    if-eqz v0, :cond_4a

    .line 2552
    .line 2553
    invoke-virtual {v0}, Lm01;->y()V

    .line 2554
    .line 2555
    .line 2556
    return-object v11

    .line 2557
    :cond_4a
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 2558
    .line 2559
    .line 2560
    const/16 v18, 0x0

    .line 2561
    .line 2562
    throw v18

    .line 2563
    :cond_4b
    const/16 v18, 0x0

    .line 2564
    .line 2565
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 2566
    .line 2567
    .line 2568
    throw v18

    .line 2569
    :pswitch_16
    check-cast v0, Ly30;

    .line 2570
    .line 2571
    move-object/from16 v1, p1

    .line 2572
    .line 2573
    check-cast v1, Ljava/util/List;

    .line 2574
    .line 2575
    if-eqz v1, :cond_4c

    .line 2576
    .line 2577
    iget-object v2, v0, Lrl0;->b:Ljk8;

    .line 2578
    .line 2579
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2580
    .line 2581
    .line 2582
    check-cast v2, Lz30;

    .line 2583
    .line 2584
    iget-object v2, v2, Lz30;->e:Lxc6;

    .line 2585
    .line 2586
    const/4 v6, 0x0

    .line 2587
    const/16 v7, 0x40

    .line 2588
    .line 2589
    const v3, 0x7f130441

    .line 2590
    .line 2591
    .line 2592
    const v4, 0x7f0800bf

    .line 2593
    .line 2594
    .line 2595
    const/4 v5, 0x1

    .line 2596
    invoke-static/range {v0 .. v7}, Lnd6;->j(Lnd6;Ljava/util/List;Lxc6;IIZLbh;I)V

    .line 2597
    .line 2598
    .line 2599
    :cond_4c
    return-object v11

    .line 2600
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 2601
    .line 2602
    move-object/from16 v1, p1

    .line 2603
    .line 2604
    check-cast v1, Lfm7;

    .line 2605
    .line 2606
    sget v3, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 2607
    .line 2608
    if-eqz v1, :cond_52

    .line 2609
    .line 2610
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v3

    .line 2614
    iget-object v4, v1, Lfm7;->a:Ljava/util/List;

    .line 2615
    .line 2616
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 2617
    .line 2618
    .line 2619
    move-result v4

    .line 2620
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2621
    .line 2622
    const-string v6, "onAdapterState: Apps received = "

    .line 2623
    .line 2624
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2625
    .line 2626
    .line 2627
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2628
    .line 2629
    .line 2630
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v4

    .line 2634
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    .line 2636
    .line 2637
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->h0:Lgv7;

    .line 2638
    .line 2639
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v3

    .line 2643
    check-cast v3, Lcom/l4digital/fastscroll/FastScroller;

    .line 2644
    .line 2645
    sget-object v4, Liy;->a:Liy;

    .line 2646
    .line 2647
    invoke-static {}, Liy;->b()Lsx;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v4

    .line 2651
    sget-object v5, Lsx;->Name:Lsx;

    .line 2652
    .line 2653
    if-ne v4, v5, :cond_4d

    .line 2654
    .line 2655
    const/16 v4, 0x30

    .line 2656
    .line 2657
    goto :goto_30

    .line 2658
    :cond_4d
    const/16 v4, 0x20

    .line 2659
    .line 2660
    :goto_30
    invoke-virtual {v3, v4}, Lcom/l4digital/fastscroll/FastScroller;->setBubbleTextSize(I)V

    .line 2661
    .line 2662
    .line 2663
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 2664
    .line 2665
    if-eqz v3, :cond_51

    .line 2666
    .line 2667
    invoke-virtual {v3, v1, v10}, Lgm7;->w(Lfm7;Z)V

    .line 2668
    .line 2669
    .line 2670
    iget-boolean v1, v1, Lfm7;->d:Z

    .line 2671
    .line 2672
    if-eqz v1, :cond_4e

    .line 2673
    .line 2674
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 2675
    .line 2676
    .line 2677
    move-result-object v1

    .line 2678
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 2679
    .line 2680
    .line 2681
    :cond_4e
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 2682
    .line 2683
    if-eqz v1, :cond_50

    .line 2684
    .line 2685
    invoke-virtual {v1}, Lf30;->y()V

    .line 2686
    .line 2687
    .line 2688
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0:Lf30;

    .line 2689
    .line 2690
    if-eqz v1, :cond_4f

    .line 2691
    .line 2692
    invoke-virtual {v1}, Lgm7;->p()Z

    .line 2693
    .line 2694
    .line 2695
    move-result v1

    .line 2696
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->j0(Z)V

    .line 2697
    .line 2698
    .line 2699
    goto :goto_31

    .line 2700
    :cond_4f
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 2701
    .line 2702
    .line 2703
    const/16 v18, 0x0

    .line 2704
    .line 2705
    throw v18

    .line 2706
    :cond_50
    const/16 v18, 0x0

    .line 2707
    .line 2708
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 2709
    .line 2710
    .line 2711
    throw v18

    .line 2712
    :cond_51
    const/16 v18, 0x0

    .line 2713
    .line 2714
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 2715
    .line 2716
    .line 2717
    throw v18

    .line 2718
    :cond_52
    :goto_31
    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
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
