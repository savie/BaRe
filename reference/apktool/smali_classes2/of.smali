.class public final synthetic Lof;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lof;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lof;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lof;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const v3, 0x7f1303ba

    .line 7
    .line 8
    .line 9
    const v4, 0x7f1305d0

    .line 10
    .line 11
    .line 12
    const v5, 0x7f140160

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v0, v0, Lof;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;

    .line 24
    .line 25
    sget-object v1, Lcom/yubico/yubikit/android/ui/YubiKeyPromptActivity;->q:Ll15;

    .line 26
    .line 27
    new-instance v1, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v2, "android.settings.NFC_SETTINGS"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    check-cast v0, Lto8;

    .line 39
    .line 40
    sget v1, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 41
    .line 42
    iget-object v0, v0, Lto8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 43
    .line 44
    invoke-static {v0, v7}, Lk55;->E(Lil0;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 49
    .line 50
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 51
    .line 52
    sget-object v1, Lhy7;->a:Lhy7;

    .line 53
    .line 54
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 55
    .line 56
    sget-object v1, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 57
    .line 58
    invoke-virtual {v1}, Lgz7;->isRunning()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-boolean v1, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->L:Z

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->X:Lwa;

    .line 69
    .line 70
    if-nez v1, :cond_0

    .line 71
    .line 72
    new-instance v1, Lhv1;

    .line 73
    .line 74
    invoke-direct {v1, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ls35;

    .line 78
    .line 79
    invoke-direct {v2, v0, v5, v1, v8}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 80
    .line 81
    .line 82
    const v1, 0x7f1300f1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lv75;->v(I)V

    .line 86
    .line 87
    .line 88
    const v1, 0x7f13054d

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v1}, Lv75;->n(I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lyx7;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3, v8}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lv75;->c()Lwa;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->X:Lwa;

    .line 110
    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0, v6}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->P(Z)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lil0;->z()V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    return-void

    .line 128
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 129
    .line 130
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v1, v1, Lv37;->g:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_3

    .line 143
    .line 144
    new-instance v1, Lkn3;

    .line 145
    .line 146
    const/16 v2, 0xf

    .line 147
    .line 148
    invoke-direct {v1, v0, v2}, Lkn3;-><init>(Ljava/lang/Object;I)V

    .line 149
    .line 150
    .line 151
    const v2, 0x7f1300fe

    .line 152
    .line 153
    .line 154
    invoke-static {v0, v2, v1, v8}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-void

    .line 158
    :pswitch_3
    check-cast v0, Lmt3;

    .line 159
    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    invoke-interface {v0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 167
    .line 168
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 169
    .line 170
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->R()Lzr4;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lzr4;->j()Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-ne v3, v7, :cond_4

    .line 183
    .line 184
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->finish()V

    .line 185
    .line 186
    .line 187
    sget-object v3, Llr4;->a:Llr4;

    .line 188
    .line 189
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N:Lgv7;

    .line 190
    .line 191
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lji;

    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    new-instance v5, Lir4;

    .line 205
    .line 206
    invoke-direct {v5, v3, v4, v7}, Lir4;-><init>(Lji;Ljava/util/Set;Z)V

    .line 207
    .line 208
    .line 209
    invoke-static {v5}, Lzn4;->c(Lbt3;)V

    .line 210
    .line 211
    .line 212
    :cond_4
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-ne v3, v2, :cond_9

    .line 217
    .line 218
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O:Lgv7;

    .line 219
    .line 220
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/util/Set;

    .line 225
    .line 226
    if-nez v2, :cond_5

    .line 227
    .line 228
    sget-object v2, Lsv2;->a:Lsv2;

    .line 229
    .line 230
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_7

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v4, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 250
    .line 251
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    if-eqz v4, :cond_6

    .line 256
    .line 257
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_7
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_8

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    const-string v3, "select_mode_replace_existing_labels"

    .line 276
    .line 277
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    new-instance v4, Landroid/content/Intent;

    .line 282
    .line 283
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 284
    .line 285
    .line 286
    new-array v5, v6, [Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    check-cast v1, [Ljava/lang/String;

    .line 293
    .line 294
    const-string v5, "labels_extra_filtered_ids"

    .line 295
    .line 296
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    const/4 v2, -0x1

    .line 308
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 309
    .line 310
    .line 311
    :cond_8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->finish()V

    .line 312
    .line 313
    .line 314
    :cond_9
    return-void

    .line 315
    :pswitch_5
    move-object v11, v0

    .line 316
    check-cast v11, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 317
    .line 318
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 319
    .line 320
    sget-object v0, Ld45;->b:Ld45;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_b

    .line 330
    .line 331
    :try_start_0
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-eqz v0, :cond_a

    .line 336
    .line 337
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 342
    .line 343
    .line 344
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    goto :goto_2

    .line 346
    :catch_0
    :cond_a
    move-object v0, v8

    .line 347
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 348
    .line 349
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_c

    .line 354
    .line 355
    :cond_b
    new-instance v0, La14;

    .line 356
    .line 357
    new-instance v9, Lg11;

    .line 358
    .line 359
    const/4 v15, 0x0

    .line 360
    const/16 v16, 0x1

    .line 361
    .line 362
    const/4 v10, 0x2

    .line 363
    const-class v12, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 364
    .line 365
    const-string v13, "onSignInButtonClick"

    .line 366
    .line 367
    const-string v14, "onSignInButtonClick(ZZ)V"

    .line 368
    .line 369
    invoke-direct/range {v9 .. v16}, Lg11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v11, v7, v6, v9}, La14;-><init>(Lk28;ZZLqt3;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v11, v8}, Lol1;->G(Lzm;Ljava/lang/Integer;)V

    .line 376
    .line 377
    .line 378
    :cond_c
    return-void

    .line 379
    :pswitch_6
    check-cast v0, Lkl3;

    .line 380
    .line 381
    iget-object v1, v0, Lkl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 382
    .line 383
    new-instance v2, Lbh;

    .line 384
    .line 385
    const/16 v3, 0x18

    .line 386
    .line 387
    invoke-direct {v2, v0, v3}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 388
    .line 389
    .line 390
    invoke-static {v1, v8, v2, v7}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 395
    .line 396
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 397
    .line 398
    new-instance v1, Lhv1;

    .line 399
    .line 400
    invoke-direct {v1, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 401
    .line 402
    .line 403
    new-instance v6, Ls35;

    .line 404
    .line 405
    invoke-direct {v6, v0, v5, v1, v8}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 406
    .line 407
    .line 408
    const v1, 0x7f1301f1

    .line 409
    .line 410
    .line 411
    invoke-virtual {v6, v1}, Lv75;->v(I)V

    .line 412
    .line 413
    .line 414
    const v1, 0x7f13054e

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6, v1}, Lv75;->n(I)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Lwi2;

    .line 421
    .line 422
    invoke-direct {v1, v0, v2}, Lwi2;-><init>(Ljava/lang/Object;I)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v4, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6, v3, v8}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_8
    check-cast v0, Lgg1;

    .line 436
    .line 437
    sget-object v1, Ltb1;->a:Ltb1;

    .line 438
    .line 439
    invoke-static {}, Lqb1;->a()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Lgg1;->i()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    const/4 v1, 0x3

    .line 447
    invoke-static {v0, v8, v8, v1}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :pswitch_9
    check-cast v0, Ltk0;

    .line 452
    .line 453
    invoke-virtual {v0, v6}, Lol1;->j(Z)V

    .line 454
    .line 455
    .line 456
    return-void

    .line 457
    :pswitch_a
    check-cast v0, Luy;

    .line 458
    .line 459
    sget-object v1, Lxy;->Left:Lxy;

    .line 460
    .line 461
    sget-object v2, Luy$a;->Secondary:Luy$a;

    .line 462
    .line 463
    invoke-virtual {v0, v1, v2}, Luy;->m(Lxy;Luy$a;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 468
    .line 469
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 470
    .line 471
    if-nez v1, :cond_d

    .line 472
    .line 473
    goto :goto_3

    .line 474
    :cond_d
    iget-object v1, v1, Lag;->a:Ljava/lang/String;

    .line 475
    .line 476
    if-nez v1, :cond_e

    .line 477
    .line 478
    goto :goto_3

    .line 479
    :cond_e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    if-nez v1, :cond_f

    .line 488
    .line 489
    goto :goto_3

    .line 490
    :cond_f
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 494
    .line 495
    .line 496
    :goto_3
    return-void

    .line 497
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
