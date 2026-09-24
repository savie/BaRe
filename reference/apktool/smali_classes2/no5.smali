.class public final synthetic Lno5;
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
    iput p2, p0, Lno5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lno5;->b:Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Lno5;->a:I

    .line 2
    .line 3
    const v1, 0x7f0a04e5

    .line 4
    .line 5
    .line 6
    sget-object v2, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    const-string v3, "Missing required view with ID: "

    .line 9
    .line 10
    const v4, 0x7f0a00a9

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    iget-object p0, p0, Lno5;->b:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast p0, Liu8;

    .line 21
    .line 22
    invoke-virtual {p0}, Liu8;->j()Lus8;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance p0, Lq63;

    .line 30
    .line 31
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v5, v6}, Lqy5;->f(ZLzn7;)Lry5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lry5;->n:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "wifi_networks.wfi"

    .line 40
    .line 41
    invoke-static {v0, v1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {p0, v0, v1}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    filled-new-array {p0}, [Lq63;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    aget-object p0, p0, v5

    .line 54
    .line 55
    invoke-virtual {p0}, Lq63;->h()Z

    .line 56
    .line 57
    .line 58
    sget-object p0, Lvr8;->LOCAL:Lvr8;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lwr8;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p0, v0, Lwr8;->a:Lvr8;

    .line 69
    .line 70
    invoke-static {}, Lny2;->b()Lny2;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 79
    .line 80
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 81
    .line 82
    new-instance v0, Lcj0;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcj0;-><init>(Lil0;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 89
    .line 90
    sget-object v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const v0, 0x7f0d018c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    move-object v9, v0

    .line 108
    check-cast v9, Lcom/google/android/material/appbar/AppBarLayout;

    .line 109
    .line 110
    if-eqz v9, :cond_1

    .line 111
    .line 112
    const v0, 0x7f0a0126

    .line 113
    .line 114
    .line 115
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object v10, v2

    .line 120
    check-cast v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 121
    .line 122
    if-eqz v10, :cond_0

    .line 123
    .line 124
    const v0, 0x7f0a01a4

    .line 125
    .line 126
    .line 127
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 132
    .line 133
    if-eqz v2, :cond_0

    .line 134
    .line 135
    const v0, 0x7f0a02d5

    .line 136
    .line 137
    .line 138
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object v11, v2

    .line 143
    check-cast v11, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 144
    .line 145
    if-eqz v11, :cond_0

    .line 146
    .line 147
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    move-object v12, v0

    .line 152
    check-cast v12, Landroidx/appcompat/widget/Toolbar;

    .line 153
    .line 154
    if-eqz v12, :cond_2

    .line 155
    .line 156
    new-instance v7, Lno8;

    .line 157
    .line 158
    move-object v8, p0

    .line 159
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 160
    .line 161
    invoke-direct/range {v7 .. v12}, Lno8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/github/chrisbanes/photoview/PhotoView;Landroidx/appcompat/widget/Toolbar;)V

    .line 162
    .line 163
    .line 164
    move-object v6, v7

    .line 165
    goto :goto_1

    .line 166
    :cond_0
    move v1, v0

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    move v1, v4

    .line 169
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    return-object v6

    .line 185
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 186
    .line 187
    sget v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    const-string v0, "extra_is_restoring"

    .line 194
    .line 195
    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :pswitch_3
    check-cast p0, Lpa8;

    .line 205
    .line 206
    iget-object p0, p0, Lu35;->K:Ljk8;

    .line 207
    .line 208
    check-cast p0, Lqa8;

    .line 209
    .line 210
    iget-object p0, p0, Lqa8;->d:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 211
    .line 212
    return-object p0

    .line 213
    :pswitch_4
    check-cast p0, Lk28;

    .line 214
    .line 215
    invoke-virtual {p0}, Lk28;->v()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_5

    .line 220
    .line 221
    sget-object v0, Lh28;->Companion:Lf28;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lf28;->e()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_3

    .line 231
    .line 232
    const/high16 p0, -0x1000000

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_3
    new-instance v0, Lxt2;

    .line 236
    .line 237
    invoke-direct {v0, p0}, Lxt2;-><init>(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    const v1, 0x7f040158

    .line 241
    .line 242
    .line 243
    invoke-static {p0, v1}, Lz85;->n(Landroid/content/Context;I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    if-eqz p0, :cond_4

    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    :cond_4
    const/4 p0, 0x0

    .line 254
    invoke-virtual {v0, v5, p0}, Lxt2;->a(IF)I

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    goto :goto_2

    .line 259
    :cond_5
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->k(Landroid/content/Context;)I

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    :pswitch_5
    check-cast p0, Lzn7;

    .line 269
    .line 270
    invoke-virtual {p0}, Lzn7;->n()Lq63;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    return-object p0

    .line 275
    :pswitch_6
    check-cast p0, Lpa7;

    .line 276
    .line 277
    const-string v0, "encryption_password"

    .line 278
    .line 279
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    return-object p0

    .line 287
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 288
    .line 289
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isParallelCloudTransfers()Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_6

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    goto :goto_3

    .line 300
    :cond_6
    move v0, v5

    .line 301
    :goto_3
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 302
    .line 303
    const-string v3, "editor"

    .line 304
    .line 305
    if-eqz v1, :cond_f

    .line 306
    .line 307
    const-string v4, "parallel_cloud_transfers"

    .line 308
    .line 309
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isMultithreadedDownloads()Ljava/lang/Boolean;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    goto :goto_4

    .line 327
    :cond_7
    move v0, v5

    .line 328
    :goto_4
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 329
    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    const-string v3, "multithreaded_downloads"

    .line 333
    .line 334
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getMultiThreadChunksCount()Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    if-eqz v0, :cond_8

    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    goto :goto_5

    .line 352
    :cond_8
    sget-object v0, Loi5;->L:Lgv7;

    .line 353
    .line 354
    invoke-static {}, Lly8;->v()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    :goto_5
    invoke-static {v0}, Lho6;->V(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getDropboxChunkSize()Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    if-eqz v0, :cond_9

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    goto :goto_6

    .line 372
    :cond_9
    const/16 v0, 0x19

    .line 373
    .line 374
    :goto_6
    invoke-static {v0}, Lho6;->T(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getOneDriveChunkSize()Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const/4 v1, 0x5

    .line 382
    if-eqz v0, :cond_a

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    goto :goto_7

    .line 389
    :cond_a
    move v0, v1

    .line 390
    :goto_7
    invoke-static {v0}, Lho6;->X(I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getNextCloudChunkSize()Ljava/lang/Integer;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    if-eqz v0, :cond_b

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    goto :goto_8

    .line 404
    :cond_b
    const/16 v0, 0x64

    .line 405
    .line 406
    :goto_8
    invoke-static {v0}, Lho6;->W(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getNextCloudForcedChunking()Ljava/lang/Boolean;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-eqz v0, :cond_c

    .line 414
    .line 415
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    :cond_c
    invoke-static {v5}, Lho6;->U(Z)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getS3ChunkSize()Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    if-eqz p0, :cond_d

    .line 427
    .line 428
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    :cond_d
    invoke-static {v1}, Lho6;->Y(I)V

    .line 433
    .line 434
    .line 435
    return-object v2

    .line 436
    :cond_e
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v6

    .line 440
    :cond_f
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw v6

    .line 444
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 445
    .line 446
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 447
    .line 448
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    iget-object p0, p0, Ls37;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 453
    .line 454
    return-object p0

    .line 455
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;

    .line 456
    .line 457
    sget v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->R:I

    .line 458
    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    const v0, 0x7f0d0162

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object p0

    .line 470
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 475
    .line 476
    if-eqz v0, :cond_11

    .line 477
    .line 478
    const v0, 0x7f0a0120

    .line 479
    .line 480
    .line 481
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    move-object v9, v2

    .line 486
    check-cast v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 487
    .line 488
    if-eqz v9, :cond_10

    .line 489
    .line 490
    const v0, 0x7f0a0209

    .line 491
    .line 492
    .line 493
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    if-eqz v2, :cond_10

    .line 498
    .line 499
    invoke-static {v2}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    const v0, 0x7f0a03a5

    .line 504
    .line 505
    .line 506
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    move-object v11, v2

    .line 511
    check-cast v11, Landroid/widget/ProgressBar;

    .line 512
    .line 513
    if-eqz v11, :cond_10

    .line 514
    .line 515
    const v0, 0x7f0a03f7

    .line 516
    .line 517
    .line 518
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    move-object v12, v2

    .line 523
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 524
    .line 525
    if-eqz v12, :cond_10

    .line 526
    .line 527
    invoke-static {p0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    if-eqz v0, :cond_12

    .line 532
    .line 533
    invoke-static {v0}, Ltf2;->a(Landroid/view/View;)Ltf2;

    .line 534
    .line 535
    .line 536
    move-result-object v13

    .line 537
    new-instance v7, Lf37;

    .line 538
    .line 539
    move-object v8, p0

    .line 540
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 541
    .line 542
    invoke-direct/range {v7 .. v13}, Lf37;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ley2;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Ltf2;)V

    .line 543
    .line 544
    .line 545
    move-object v6, v7

    .line 546
    goto :goto_a

    .line 547
    :cond_10
    move v1, v0

    .line 548
    goto :goto_9

    .line 549
    :cond_11
    move v1, v4

    .line 550
    :cond_12
    :goto_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :goto_a
    return-object v6

    .line 566
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 567
    .line 568
    sget v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 569
    .line 570
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 571
    .line 572
    .line 573
    move-result-object p0

    .line 574
    const v0, 0x7f0d0172

    .line 575
    .line 576
    .line 577
    invoke-virtual {p0, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 586
    .line 587
    if-eqz v0, :cond_13

    .line 588
    .line 589
    const v4, 0x7f0a0125

    .line 590
    .line 591
    .line 592
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    move-object v9, v0

    .line 597
    check-cast v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 598
    .line 599
    if-eqz v9, :cond_13

    .line 600
    .line 601
    const v4, 0x7f0a0220

    .line 602
    .line 603
    .line 604
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    move-object v10, v0

    .line 609
    check-cast v10, Lcom/l4digital/fastscroll/FastScroller;

    .line 610
    .line 611
    if-eqz v10, :cond_13

    .line 612
    .line 613
    const v4, 0x7f0a0410

    .line 614
    .line 615
    .line 616
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    move-object v11, v0

    .line 621
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 622
    .line 623
    if-eqz v11, :cond_13

    .line 624
    .line 625
    const v4, 0x7f0a04e7

    .line 626
    .line 627
    .line 628
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-eqz v0, :cond_13

    .line 633
    .line 634
    invoke-static {v0}, Ltf2;->a(Landroid/view/View;)Ltf2;

    .line 635
    .line 636
    .line 637
    move-result-object v12

    .line 638
    new-instance v7, Lth7;

    .line 639
    .line 640
    move-object v8, p0

    .line 641
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 642
    .line 643
    invoke-direct/range {v7 .. v12}, Lth7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/l4digital/fastscroll/FastScroller;Landroidx/recyclerview/widget/RecyclerView;Ltf2;)V

    .line 644
    .line 645
    .line 646
    move-object v6, v7

    .line 647
    goto :goto_b

    .line 648
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 649
    .line 650
    .line 651
    move-result-object p0

    .line 652
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object p0

    .line 660
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :goto_b
    return-object v6

    .line 664
    :pswitch_b
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 665
    .line 666
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 667
    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    const v0, 0x7f0d012f

    .line 673
    .line 674
    .line 675
    invoke-virtual {p0, v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    if-eqz v0, :cond_14

    .line 684
    .line 685
    invoke-static {v0}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const v4, 0x7f0a0409

    .line 690
    .line 691
    .line 692
    invoke-static {p0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 697
    .line 698
    if-eqz v1, :cond_14

    .line 699
    .line 700
    new-instance v6, Loo5;

    .line 701
    .line 702
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 703
    .line 704
    invoke-direct {v6, p0, v0, v1}, Loo5;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 705
    .line 706
    .line 707
    goto :goto_c

    .line 708
    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object p0

    .line 716
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    :goto_c
    return-object v6

    .line 724
    nop

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
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
