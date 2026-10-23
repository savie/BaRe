.class public final synthetic Lyi5;
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
    iput p2, p0, Lyi5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lyi5;->b:Ljava/lang/Object;

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
    .locals 8

    .line 1
    iget v0, p0, Lyi5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Missing required view with ID: "

    .line 5
    .line 6
    const v3, 0x7f0a00a9

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v6, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    iget-object p0, p0, Lyi5;->b:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast p0, Liu8;

    .line 20
    .line 21
    iget-object v0, p0, La55;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "init: Wifi change detected"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Liu8;->l()V

    .line 29
    .line 30
    .line 31
    return-object v6

    .line 32
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 33
    .line 34
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const v0, 0x7f0d0190

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-static {v0}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const v3, 0x7f0a03bf

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    new-instance v7, Lrp8;

    .line 69
    .line 70
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 71
    .line 72
    invoke-direct {v7, p0, v0, v1}, Lrp8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-object v7

    .line 92
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 93
    .line 94
    sget v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 95
    .line 96
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->Y:Lgv7;

    .line 97
    .line 98
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Loo7;

    .line 103
    .line 104
    iget-object p0, p0, Loo7;->d:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 108
    .line 109
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->a(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)Lbe8;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_3
    check-cast p0, Lpa7;

    .line 115
    .line 116
    const-string v0, "battery_opt"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    check-cast p0, Landroidx/preference/CheckBoxPreference;

    .line 126
    .line 127
    return-object p0

    .line 128
    :pswitch_4
    check-cast p0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 129
    .line 130
    sget-object v0, Lh28;->Companion:Lf28;

    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getThemeModeId()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v1}, Lf28;->a(Ljava/lang/Integer;)Lh28;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lh28;->getThemeId()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    const-string v2, "editor"

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    const-string v3, "app_theme_mode"

    .line 157
    .line 158
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getUseAmoledTheme()Ljava/lang/Boolean;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    :cond_1
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 176
    .line 177
    if-eqz v0, :cond_4

    .line 178
    .line 179
    const-string v1, "use_amoled_theme"

    .line 180
    .line 181
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->isDynamicColors()Ljava/lang/Boolean;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_2

    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    :cond_2
    sget-object p0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 199
    .line 200
    if-eqz p0, :cond_3

    .line 201
    .line 202
    const-string v0, "dynamic_colors"

    .line 203
    .line 204
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    .line 210
    .line 211
    return-object v6

    .line 212
    :cond_3
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v7

    .line 216
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v7

    .line 220
    :cond_5
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v7

    .line 224
    :pswitch_5
    check-cast p0, Lod6;

    .line 225
    .line 226
    invoke-static {}, Ld01;->f()Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_6

    .line 235
    .line 236
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lrz0;

    .line 241
    .line 242
    invoke-virtual {v0}, Lrz0;->getLocalFile()Lq63;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lq63;->j()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_6

    .line 251
    .line 252
    invoke-virtual {v0}, Lrz0;->getLocalFile()Lq63;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    :cond_6
    iget-object p0, p0, Lod6;->g:Lgv7;

    .line 257
    .line 258
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    check-cast p0, Lix6;

    .line 263
    .line 264
    invoke-virtual {p0, v7}, Lix6;->k(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    return-object v6

    .line 268
    :pswitch_6
    check-cast p0, Lnd6;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_7

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-ne v0, v4, :cond_7

    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_7
    invoke-virtual {p0}, Lnd6;->i()Lod6;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    sget-object v0, Lzn4;->a:Lzn4;

    .line 288
    .line 289
    new-instance v0, Llj;

    .line 290
    .line 291
    invoke-direct {v0, p0, v7, v1}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 292
    .line 293
    .line 294
    invoke-static {v7, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 295
    .line 296
    .line 297
    :goto_1
    return-object v6

    .line 298
    :pswitch_7
    check-cast p0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 299
    .line 300
    sget v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 301
    .line 302
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    iget-object p0, p0, Lc56;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 307
    .line 308
    return-object p0

    .line 309
    :pswitch_8
    check-cast p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;

    .line 310
    .line 311
    iput-boolean v4, p0, Lorg/swiftapps/swiftbackup/tasks/PreconditionsActivity;->O:Z

    .line 312
    .line 313
    invoke-virtual {p0, v5}, Lil0;->A(Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0}, Lil0;->z()V

    .line 317
    .line 318
    .line 319
    return-object v6

    .line 320
    :pswitch_9
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 321
    .line 322
    sget v0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->O:I

    .line 323
    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    const v0, 0x7f0d012d

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-eqz v0, :cond_8

    .line 340
    .line 341
    invoke-static {v0}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const v3, 0x7f0a042d

    .line 346
    .line 347
    .line 348
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 353
    .line 354
    if-eqz v1, :cond_8

    .line 355
    .line 356
    const v3, 0x7f0a0562

    .line 357
    .line 358
    .line 359
    invoke-static {p0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Landroid/widget/TextView;

    .line 364
    .line 365
    if-eqz v4, :cond_8

    .line 366
    .line 367
    new-instance v7, Llo5;

    .line 368
    .line 369
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 370
    .line 371
    invoke-direct {v7, p0, v0, v1, v4}, Llo5;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    .line 372
    .line 373
    .line 374
    goto :goto_2

    .line 375
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :goto_2
    return-object v7

    .line 391
    :pswitch_a
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 392
    .line 393
    sget v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 394
    .line 395
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->N()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->M:Lgv7;

    .line 400
    .line 401
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    check-cast v2, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 406
    .line 407
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_9

    .line 412
    .line 413
    new-instance v0, Lhv1;

    .line 414
    .line 415
    const v2, 0x7f140160

    .line 416
    .line 417
    .line 418
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 419
    .line 420
    .line 421
    new-instance v3, Ls35;

    .line 422
    .line 423
    invoke-direct {v3, p0, v2, v0, v7}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 424
    .line 425
    .line 426
    const v0, 0x7f130202

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3, v0}, Lv75;->n(I)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Lsy;

    .line 433
    .line 434
    invoke-direct {v0, p0, v1}, Lsy;-><init>(Ljava/lang/Object;I)V

    .line 435
    .line 436
    .line 437
    const p0, 0x7f1303e6

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    const p0, 0x7f1300f1

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, p0, v7}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 450
    .line 451
    .line 452
    goto :goto_3

    .line 453
    :cond_9
    invoke-virtual {p0, v5}, Lil0;->A(Z)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p0}, Lil0;->z()V

    .line 457
    .line 458
    .line 459
    :goto_3
    return-object v6

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
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
