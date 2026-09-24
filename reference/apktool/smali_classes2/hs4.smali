.class public final synthetic Lhs4;
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
    iput p2, p0, Lhs4;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhs4;->b:Ljava/lang/Object;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lhs4;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const-string v3, "Missing required view with ID: "

    .line 8
    .line 9
    const v4, 0x7f0a00a9

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    iget-object v0, v0, Lhs4;->b:Ljava/lang/Object;

    .line 15
    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 20
    .line 21
    sget v1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 22
    .line 23
    new-instance v1, Luo8;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->X()Lro8;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lro8;->e:Lxp3;

    .line 30
    .line 31
    invoke-direct {v1, v0, v2}, Luo8;-><init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Lxp3;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 36
    .line 37
    sget v1, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;->O:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v1, 0x7f0d018a

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const v4, 0x7f0a00e6

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v10, v1

    .line 68
    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    if-eqz v10, :cond_0

    .line 71
    .line 72
    const v4, 0x7f0a00ff

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move-object v11, v1

    .line 80
    check-cast v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 81
    .line 82
    if-eqz v11, :cond_0

    .line 83
    .line 84
    const v4, 0x7f0a0100

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v12, v1

    .line 92
    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    .line 93
    .line 94
    if-eqz v12, :cond_0

    .line 95
    .line 96
    const v4, 0x7f0a0298

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    move-object v13, v1

    .line 104
    check-cast v13, Landroid/widget/ImageView;

    .line 105
    .line 106
    if-eqz v13, :cond_0

    .line 107
    .line 108
    const v4, 0x7f0a02a5

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    move-object v14, v1

    .line 116
    check-cast v14, Landroid/widget/ImageView;

    .line 117
    .line 118
    if-eqz v14, :cond_0

    .line 119
    .line 120
    const v4, 0x7f0a02a7

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    move-object v15, v1

    .line 128
    check-cast v15, Landroid/widget/ImageView;

    .line 129
    .line 130
    if-eqz v15, :cond_0

    .line 131
    .line 132
    const v4, 0x7f0a050d

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Landroid/widget/TextView;

    .line 140
    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    const v4, 0x7f0a050e

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Landroid/widget/TextView;

    .line 151
    .line 152
    if-eqz v1, :cond_0

    .line 153
    .line 154
    const v4, 0x7f0a050f

    .line 155
    .line 156
    .line 157
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    move-object/from16 v16, v1

    .line 162
    .line 163
    check-cast v16, Landroid/widget/TextView;

    .line 164
    .line 165
    if-eqz v16, :cond_0

    .line 166
    .line 167
    const v4, 0x7f0a056b

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Landroid/widget/TextView;

    .line 175
    .line 176
    if-eqz v1, :cond_0

    .line 177
    .line 178
    const v4, 0x7f0a056c

    .line 179
    .line 180
    .line 181
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/widget/TextView;

    .line 186
    .line 187
    if-eqz v1, :cond_0

    .line 188
    .line 189
    const v4, 0x7f0a056d

    .line 190
    .line 191
    .line 192
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    move-object/from16 v17, v1

    .line 197
    .line 198
    check-cast v17, Landroid/widget/TextView;

    .line 199
    .line 200
    if-eqz v17, :cond_0

    .line 201
    .line 202
    const v4, 0x7f0a0586

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    move-object/from16 v18, v1

    .line 210
    .line 211
    check-cast v18, Landroid/widget/TextView;

    .line 212
    .line 213
    if-eqz v18, :cond_0

    .line 214
    .line 215
    new-instance v7, Lgh8;

    .line 216
    .line 217
    move-object v8, v0

    .line 218
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 219
    .line 220
    invoke-direct/range {v7 .. v18}, Lgh8;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 221
    .line 222
    .line 223
    move-object v6, v7

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_0
    return-object v6

    .line 241
    :pswitch_1
    check-cast v0, Lk28;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    return-object v0

    .line 252
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 253
    .line 254
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 255
    .line 256
    new-instance v1, Liz7;

    .line 257
    .line 258
    invoke-direct {v1, v0}, Liz7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;)V

    .line 259
    .line 260
    .line 261
    return-object v1

    .line 262
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 263
    .line 264
    sget v1, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 265
    .line 266
    new-instance v1, Lqo7;

    .line 267
    .line 268
    invoke-direct {v1, v0}, Lqo7;-><init>(Lil0;)V

    .line 269
    .line 270
    .line 271
    return-object v1

    .line 272
    :pswitch_4
    check-cast v0, Lpa7;

    .line 273
    .line 274
    const-string v1, "language"

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    return-object v0

    .line 284
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 285
    .line 286
    sget v1, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;->R:I

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0}, Lga7;->a(Landroid/view/LayoutInflater;)Lga7;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    return-object v0

    .line 297
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;

    .line 298
    .line 299
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getMaxSmsBackups()Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const/4 v3, -0x1

    .line 304
    if-eqz v1, :cond_1

    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    goto :goto_1

    .line 311
    :cond_1
    move v1, v3

    .line 312
    :goto_1
    sget-object v4, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 313
    .line 314
    const-string v5, "editor"

    .line 315
    .line 316
    if-eqz v4, :cond_6

    .line 317
    .line 318
    const-string v7, "max_sms_backups"

    .line 319
    .line 320
    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getBackupMms()Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-eqz v1, :cond_2

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    goto :goto_2

    .line 338
    :cond_2
    const/4 v1, 0x1

    .line 339
    :goto_2
    sget-object v4, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 340
    .line 341
    if-eqz v4, :cond_5

    .line 342
    .line 343
    const-string v7, "messages_backup_mms"

    .line 344
    .line 345
    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/firebase/AppSettings;->getMaxCallBackups()Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    if-eqz v0, :cond_3

    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    :cond_3
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 363
    .line 364
    if-eqz v0, :cond_4

    .line 365
    .line 366
    const-string v1, "max_call_backups"

    .line 367
    .line 368
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    .line 374
    .line 375
    return-object v2

    .line 376
    :cond_4
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v6

    .line 380
    :cond_5
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v6

    .line 384
    :cond_6
    invoke-static {v5}, Lpe4;->F(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v6

    .line 388
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;

    .line 389
    .line 390
    sget v1, Lorg/swiftapps/swiftbackup/settings/RestoreSpecialDataDetailsActivity;->R:I

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const v1, 0x7f0d015a

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-eqz v1, :cond_7

    .line 408
    .line 409
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    const v4, 0x7f0a0197

    .line 414
    .line 415
    .line 416
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    move-object v10, v1

    .line 421
    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    .line 422
    .line 423
    if-eqz v10, :cond_7

    .line 424
    .line 425
    const v4, 0x7f0a03f3

    .line 426
    .line 427
    .line 428
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    move-object v11, v1

    .line 433
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 434
    .line 435
    if-eqz v11, :cond_7

    .line 436
    .line 437
    const v4, 0x7f0a042d

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    move-object v12, v1

    .line 445
    check-cast v12, Landroidx/core/widget/NestedScrollView;

    .line 446
    .line 447
    if-eqz v12, :cond_7

    .line 448
    .line 449
    const v4, 0x7f0a0496

    .line 450
    .line 451
    .line 452
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    move-object v13, v1

    .line 457
    check-cast v13, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 458
    .line 459
    if-eqz v13, :cond_7

    .line 460
    .line 461
    const v4, 0x7f0a0587

    .line 462
    .line 463
    .line 464
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    move-object v14, v1

    .line 469
    check-cast v14, Landroid/widget/TextView;

    .line 470
    .line 471
    if-eqz v14, :cond_7

    .line 472
    .line 473
    const v4, 0x7f0a0588

    .line 474
    .line 475
    .line 476
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, Landroid/widget/TextView;

    .line 481
    .line 482
    if-eqz v1, :cond_7

    .line 483
    .line 484
    new-instance v7, Lxm6;

    .line 485
    .line 486
    move-object v8, v0

    .line 487
    check-cast v8, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 488
    .line 489
    invoke-direct/range {v7 .. v14}, Lxm6;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;Landroid/widget/TextView;)V

    .line 490
    .line 491
    .line 492
    move-object v6, v7

    .line 493
    goto :goto_3

    .line 494
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    :goto_3
    return-object v6

    .line 510
    :pswitch_8
    check-cast v0, Lni8;

    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    return-object v0

    .line 530
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;

    .line 531
    .line 532
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 533
    .line 534
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->R()Lc56;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    iget-object v0, v0, Lc56;->b:Lcom/google/android/material/button/MaterialButton;

    .line 539
    .line 540
    return-object v0

    .line 541
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 542
    .line 543
    sget v1, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->O:I

    .line 544
    .line 545
    new-instance v1, Lvx5;

    .line 546
    .line 547
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->L:Lgv7;

    .line 548
    .line 549
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    check-cast v2, Lwx5;

    .line 554
    .line 555
    iget-object v2, v2, Lwx5;->c:Le38;

    .line 556
    .line 557
    invoke-direct {v1, v0, v2}, Lvx5;-><init>(Lil0;Le38;)V

    .line 558
    .line 559
    .line 560
    return-object v1

    .line 561
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;

    .line 562
    .line 563
    sget v1, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->O:I

    .line 564
    .line 565
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/notice/NoticeViewActivity;->L:Lgv7;

    .line 566
    .line 567
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    check-cast v0, Llo5;

    .line 572
    .line 573
    iget-object v0, v0, Llo5;->d:Landroid/widget/TextView;

    .line 574
    .line 575
    return-object v0

    .line 576
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 577
    .line 578
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 579
    .line 580
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->X()Lhe5;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    iget-boolean v1, v1, Lhe5;->g:Z

    .line 585
    .line 586
    if-eqz v1, :cond_8

    .line 587
    .line 588
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->y(Lzm;)Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    if-nez v1, :cond_8

    .line 593
    .line 594
    goto :goto_4

    .line 595
    :cond_8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->X()Lhe5;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    iget-object v1, v1, Lhe5;->f:Lex6;

    .line 600
    .line 601
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    check-cast v1, Lfe5;

    .line 606
    .line 607
    if-eqz v1, :cond_9

    .line 608
    .line 609
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->X()Lhe5;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    iget-object v1, v1, Lfe5;->b:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->X()Lhe5;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    iget-boolean v0, v0, Lhe5;->g:Z

    .line 620
    .line 621
    invoke-virtual {v3, v1, v0}, Lhe5;->j(Ljava/util/List;Z)V

    .line 622
    .line 623
    .line 624
    :cond_9
    :goto_4
    return-object v2

    .line 625
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/database/MDatabase_Impl;

    .line 626
    .line 627
    new-instance v1, Lnv6;

    .line 628
    .line 629
    invoke-direct {v1, v0}, Lnv6;-><init>(Leo6;)V

    .line 630
    .line 631
    .line 632
    return-object v1

    .line 633
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 634
    .line 635
    sget v1, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->P:I

    .line 636
    .line 637
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const v1, 0x7f0d00e2

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    if-eqz v1, :cond_a

    .line 653
    .line 654
    invoke-static {v1}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    const v4, 0x7f0a0404

    .line 659
    .line 660
    .line 661
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    check-cast v2, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 666
    .line 667
    if-eqz v2, :cond_a

    .line 668
    .line 669
    new-instance v6, Le05;

    .line 670
    .line 671
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 672
    .line 673
    invoke-direct {v6, v0, v1, v2}, Le05;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 674
    .line 675
    .line 676
    goto :goto_5

    .line 677
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    :goto_5
    return-object v6

    .line 693
    :pswitch_f
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 694
    .line 695
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    return-object v0

    .line 700
    :pswitch_10
    check-cast v0, Lis4;

    .line 701
    .line 702
    iget-object v1, v0, Lis4;->a:Ljava/lang/String;

    .line 703
    .line 704
    const-string v2, "en"

    .line 705
    .line 706
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    if-eqz v2, :cond_b

    .line 711
    .line 712
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 717
    .line 718
    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    goto :goto_6

    .line 723
    :cond_b
    const-string v2, "zh"

    .line 724
    .line 725
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v1

    .line 729
    if-eqz v1, :cond_d

    .line 730
    .line 731
    iget-object v0, v0, Lis4;->b:Ljava/lang/String;

    .line 732
    .line 733
    const-string v1, "CN"

    .line 734
    .line 735
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    if-eqz v0, :cond_c

    .line 740
    .line 741
    const-string v0, "Chinese Simplified"

    .line 742
    .line 743
    goto :goto_6

    .line 744
    :cond_c
    const-string v0, "Chinese Traditional"

    .line 745
    .line 746
    goto :goto_6

    .line 747
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 748
    .line 749
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .line 751
    .line 752
    iget-object v2, v0, Lis4;->n:Lgv7;

    .line 753
    .line 754
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    .line 760
    .line 761
    check-cast v2, Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    iget-boolean v2, v0, Lis4;->c:Z

    .line 767
    .line 768
    if-eqz v2, :cond_e

    .line 769
    .line 770
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 775
    .line 776
    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    const-string v3, ", "

    .line 783
    .line 784
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    .line 796
    .line 797
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    :goto_6
    return-object v0

    .line 802
    nop

    .line 803
    :pswitch_data_0
    .packed-switch 0x0
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
