.class public final synthetic Lw01;
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

    .line 12
    iput p1, p0, Lw01;->a:I

    iput-object p2, p0, Lw01;->b:Ljava/lang/Object;

    iput-object p3, p0, Lw01;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Landroid/os/Parcelable;Liz4;)V
    .locals 0

    .line 1
    const/4 p3, 0x6

    .line 2
    iput p3, p0, Lw01;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lw01;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lw01;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw01;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    iget-object v6, v0, Lw01;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Lw01;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lah8;

    .line 18
    .line 19
    check-cast v6, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 20
    .line 21
    invoke-static {v0, v6}, Lah8;->a(Lah8;Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;)Lbe8;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 27
    .line 28
    check-cast v6, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;

    .line 29
    .line 30
    sget-object v1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView$a;)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0xc

    .line 36
    .line 37
    invoke-static {v0, v3, v3, v4, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->c(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;ZZLa37;I)V

    .line 38
    .line 39
    .line 40
    return-object v5

    .line 41
    :pswitch_1
    check-cast v0, Lov5;

    .line 42
    .line 43
    check-cast v6, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0}, Lov5;->u()Lpe;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v6}, Lov5;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v1, Lcom/pcloud/sdk/internal/a;

    .line 54
    .line 55
    invoke-static {v0, v4}, Lcom/pcloud/sdk/internal/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lcom/pcloud/sdk/internal/a;->c:Lokhttp3/HttpUrl;

    .line 59
    .line 60
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "getfilelink"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v3, "path"

    .line 70
    .line 71
    invoke-virtual {v2, v3, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lokhttp3/Request$Builder;

    .line 75
    .line 76
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 84
    .line 85
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lokhttp3/Request;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lfs;

    .line 94
    .line 95
    const/16 v3, 0x9

    .line 96
    .line 97
    invoke-direct {v0, v1, v3}, Lfs;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v0}, Lcom/pcloud/sdk/internal/a;->h(Lokhttp3/Request;Lhm6;)Lks5;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lks5;->a()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Luf6;

    .line 109
    .line 110
    return-object v0

    .line 111
    :pswitch_2
    check-cast v0, Lzc6;

    .line 112
    .line 113
    check-cast v6, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 114
    .line 115
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 116
    .line 117
    sget-object v1, Lzn4;->a:Lzn4;

    .line 118
    .line 119
    new-instance v1, Ly44;

    .line 120
    .line 121
    invoke-direct {v1, v0, v6, v4}, Ly44;-><init>(Lzc6;Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;Ljv1;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :pswitch_3
    check-cast v0, Ljava/lang/String;

    .line 130
    .line 131
    check-cast v6, Lin3;

    .line 132
    .line 133
    iget-object v1, v6, Lin3;->j:Lix6;

    .line 134
    .line 135
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-lez v7, :cond_7

    .line 159
    .line 160
    const-string v7, "."

    .line 161
    .line 162
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_7

    .line 167
    .line 168
    const-string v7, ".."

    .line 169
    .line 170
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-nez v7, :cond_7

    .line 175
    .line 176
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    array-length v7, v7

    .line 189
    const/16 v8, 0xff

    .line 190
    .line 191
    if-gt v7, v8, :cond_7

    .line 192
    .line 193
    move v7, v2

    .line 194
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-ge v7, v8, :cond_1

    .line 199
    .line 200
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    const/16 v9, 0x2f

    .line 205
    .line 206
    if-eq v8, v9, :cond_7

    .line 207
    .line 208
    const/16 v9, 0x5c

    .line 209
    .line 210
    if-eq v8, v9, :cond_7

    .line 211
    .line 212
    const/16 v9, 0x1f

    .line 213
    .line 214
    if-le v8, v9, :cond_7

    .line 215
    .line 216
    const/16 v9, 0x7f

    .line 217
    .line 218
    if-ne v8, v9, :cond_0

    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v6}, Lin3;->k()Lhn3;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    iget-object v7, v6, Lin3;->g:Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    iget-object v4, v4, Lhn3;->a:Lzn7;

    .line 232
    .line 233
    invoke-virtual {v6}, Lin3;->k()Lhn3;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    iget-object v8, v8, Lhn3;->c:Lq63;

    .line 238
    .line 239
    invoke-virtual {v8, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v9}, Lq63;->j()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    .line 249
    const v0, 0x7f130261

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_5

    .line 260
    .line 261
    :cond_2
    :try_start_0
    invoke-static {v9}, Lq63;->E(Lq63;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_3

    .line 266
    .line 267
    invoke-virtual {v9}, Lq63;->x()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    .line 273
    move v2, v3

    .line 274
    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    goto :goto_2

    .line 277
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 278
    .line 279
    .line 280
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    goto :goto_3

    .line 282
    :goto_2
    new-instance v2, Lbn6;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    move-object v0, v2

    .line 288
    :goto_3
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    if-eqz v13, :cond_4

    .line 293
    .line 294
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 295
    .line 296
    iget-object v11, v6, La55;->b:Ljava/lang/String;

    .line 297
    .line 298
    const-string v2, "Failed to create folder: "

    .line 299
    .line 300
    invoke-static {v9, v2}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    const/16 v15, 0x8

    .line 305
    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    const/4 v14, 0x0

    .line 309
    invoke-static/range {v10 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 313
    .line 314
    instance-of v3, v0, Lbn6;

    .line 315
    .line 316
    if-eqz v3, :cond_5

    .line 317
    .line 318
    move-object v0, v2

    .line 319
    :cond_5
    check-cast v0, Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_6

    .line 326
    .line 327
    const v0, 0x7f13026b

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_6
    invoke-virtual {v8}, Lq63;->v()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9}, Lq63;->v()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    iget-object v0, v6, Lin3;->m:Ljava/util/LinkedHashMap;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 355
    .line 356
    .line 357
    new-instance v0, Lyi0;

    .line 358
    .line 359
    const/4 v1, 0x2

    .line 360
    invoke-direct {v0, v1, v6, v9, v4}, Lyi0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6, v9, v0}, Lin3;->m(Lq63;Lbt3;)V

    .line 364
    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_7
    :goto_4
    const v0, 0x7f1302d4

    .line 368
    .line 369
    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v1, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :goto_5
    return-object v5

    .line 378
    :pswitch_4
    check-cast v0, Ldm3;

    .line 379
    .line 380
    check-cast v6, Lkj3;

    .line 381
    .line 382
    new-instance v1, Luy7;

    .line 383
    .line 384
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 385
    .line 386
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Companion:Lfk3;

    .line 391
    .line 392
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    sget-object v4, Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;->Single:Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;

    .line 396
    .line 397
    invoke-direct {v1, v2, v4, v3}, Luy7;-><init>(Ljava/util/List;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;Z)V

    .line 398
    .line 399
    .line 400
    new-instance v3, Lbo3;

    .line 401
    .line 402
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-direct {v3, v7, v2, v6, v4}, Lbo3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;Lkj3;Lorg/swiftapps/swiftbackup/settings/FolderBackupStrategy;)V

    .line 407
    .line 408
    .line 409
    new-instance v2, Loj;

    .line 410
    .line 411
    const/4 v4, 0x4

    .line 412
    invoke-direct {v2, v4, v3, v1, v0}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 416
    .line 417
    .line 418
    return-object v5

    .line 419
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 420
    .line 421
    check-cast v6, Ljava/lang/String;

    .line 422
    .line 423
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 424
    .line 425
    const-string v1, "Metadata"

    .line 426
    .line 427
    const/16 v2, 0x8

    .line 428
    .line 429
    invoke-static {v0, v1, v6, v2}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 430
    .line 431
    .line 432
    return-object v5

    .line 433
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 434
    .line 435
    check-cast v6, Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v0}, Lil0;->H()V

    .line 438
    .line 439
    .line 440
    sget-object v1, Lzn4;->a:Lzn4;

    .line 441
    .line 442
    new-instance v1, Lcv;

    .line 443
    .line 444
    const/16 v3, 0xe

    .line 445
    .line 446
    invoke-direct {v1, v3, v0, v6}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 456
    .line 457
    .line 458
    return-object v5

    .line 459
    :pswitch_7
    check-cast v0, Lqj2;

    .line 460
    .line 461
    check-cast v6, Lak2;

    .line 462
    .line 463
    invoke-virtual {v0, v6, v4}, Lqj2;->a(Lak2;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    return-object v5

    .line 467
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 468
    .line 469
    check-cast v6, Landroid/os/Parcelable;

    .line 470
    .line 471
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 472
    .line 473
    sget-object v1, Lw14;->a:Lgv7;

    .line 474
    .line 475
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    :try_start_1
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v1, v6}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 486
    :catch_0
    if-nez v4, :cond_8

    .line 487
    .line 488
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    :cond_8
    filled-new-array {v4}, [Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {v1}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    const/4 v10, 0x0

    .line 501
    const/16 v11, 0x3e

    .line 502
    .line 503
    const-string v7, "\n\n"

    .line 504
    .line 505
    const/4 v8, 0x0

    .line 506
    const/4 v9, 0x0

    .line 507
    invoke-static/range {v6 .. v11}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    sget-object v2, Lzn4;->a:Lzn4;

    .line 512
    .line 513
    new-instance v2, Ly2;

    .line 514
    .line 515
    const/16 v3, 0xa

    .line 516
    .line 517
    invoke-direct {v2, v3, v0, v1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 521
    .line 522
    .line 523
    return-object v5

    .line 524
    :pswitch_9
    check-cast v0, Lz92;

    .line 525
    .line 526
    check-cast v6, Landroid/view/View;

    .line 527
    .line 528
    invoke-virtual {v0, v6}, Lz92;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    return-object v5

    .line 532
    :pswitch_a
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 533
    .line 534
    check-cast v6, Lbw3;

    .line 535
    .line 536
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$aHrcgRlEsXrMYr-nCfjpRjwptf4(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lbw3;)Lbe8;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    return-object v0

    .line 541
    :pswitch_b
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 542
    .line 543
    check-cast v6, Lc12;

    .line 544
    .line 545
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$iKFfRkDUQzn61dV-PjEc3lKL3iA(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Lc12;)Lbe8;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    return-object v0

    .line 550
    :pswitch_c
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    .line 551
    .line 552
    check-cast v6, Llh6;

    .line 553
    .line 554
    invoke-static {v0, v6}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$XYSM6gKR0lvMg-lQxjkap1gMtlI(Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;Llh6;)Lbe8;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    return-object v0

    .line 559
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 560
    .line 561
    check-cast v6, Lpe4;

    .line 562
    .line 563
    invoke-static {v6, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 564
    .line 565
    .line 566
    return-object v5

    .line 567
    :pswitch_e
    check-cast v0, Lx01;

    .line 568
    .line 569
    check-cast v6, Lrz0;

    .line 570
    .line 571
    invoke-virtual {v0}, Lx01;->U()Lb11;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    sget-object v1, Lzn4;->a:Lzn4;

    .line 582
    .line 583
    new-instance v1, La11;

    .line 584
    .line 585
    invoke-direct {v1, v0, v6, v4, v2}, La11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 586
    .line 587
    .line 588
    invoke-static {v4, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 589
    .line 590
    .line 591
    return-object v5

    .line 592
    nop

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
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
