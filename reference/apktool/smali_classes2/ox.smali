.class public final synthetic Lox;
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
    iput p2, p0, Lox;->a:I

    iput-object p1, p0, Lox;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 0

    .line 1
    const/4 p2, 0x7

    .line 2
    iput p2, p0, Lox;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lox;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lox;->a:I

    .line 6
    .line 7
    const/16 v3, 0xe

    .line 8
    .line 9
    const v4, 0x7f1303e6

    .line 10
    .line 11
    .line 12
    const v5, 0x7f130166

    .line 13
    .line 14
    .line 15
    const v6, 0x7f130167

    .line 16
    .line 17
    .line 18
    const-string v7, "Showing folder creation failed dialog (folder name = "

    .line 19
    .line 20
    const/16 v8, 0x8

    .line 21
    .line 22
    const v9, 0x7f140160

    .line 23
    .line 24
    .line 25
    const/4 v10, 0x3

    .line 26
    const/4 v11, 0x4

    .line 27
    const/4 v12, 0x2

    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x1

    .line 30
    const/4 v15, 0x0

    .line 31
    iget-object v0, v0, Lox;->b:Ljava/lang/Object;

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Boolean;

    .line 39
    .line 40
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v15}, Lgm7;->u(Z)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_0
    const-string v0, "mAdapter"

    .line 51
    .line 52
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v13

    .line 56
    :pswitch_0
    check-cast v0, Lto8;

    .line 57
    .line 58
    check-cast v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lto8;->a(Ljava/lang/Integer;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lbe8;->a:Lbe8;

    .line 67
    .line 68
    return-object v0

    .line 69
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 70
    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    sget v2, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, v1, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-object v2, v13

    .line 100
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v3, 0x7f1302b8

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    new-instance v3, Lhv1;

    .line 115
    .line 116
    invoke-direct {v3, v0, v9}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Ls35;

    .line 120
    .line 121
    invoke-direct {v4, v0, v9, v3, v13}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 122
    .line 123
    .line 124
    const v3, 0x7f1302b7

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v3}, Lv75;->v(I)V

    .line 128
    .line 129
    .line 130
    iget-object v3, v4, Lva;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Lra;

    .line 133
    .line 134
    iput-object v2, v3, Lra;->f:Ljava/lang/CharSequence;

    .line 135
    .line 136
    new-instance v2, Lqo8;

    .line 137
    .line 138
    invoke-direct {v2, v0, v1}, Lqo8;-><init>(Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const v1, 0x7f1302ad

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v1, v2}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->U:Lwa;

    .line 152
    .line 153
    sget-object v0, Lbe8;->a:Lbe8;

    .line 154
    .line 155
    return-object v0

    .line 156
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;

    .line 157
    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .line 160
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/TeraBoxSignInActivity;->N:I

    .line 161
    .line 162
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 163
    .line 164
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    invoke-static {v7, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v16

    .line 172
    const/16 v18, 0x4

    .line 173
    .line 174
    const/16 v19, 0x0

    .line 175
    .line 176
    const/16 v17, 0x0

    .line 177
    .line 178
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Lhv1;

    .line 182
    .line 183
    invoke-direct {v1, v0, v9}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Ls35;

    .line 187
    .line 188
    invoke-direct {v2, v0, v9, v1, v13}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v6}, Lv75;->v(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v5}, Lv75;->n(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v4, v13}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 201
    .line 202
    .line 203
    sget-object v0, Lbe8;->a:Lbe8;

    .line 204
    .line 205
    return-object v0

    .line 206
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;

    .line 207
    .line 208
    check-cast v1, Landroid/view/View;

    .line 209
    .line 210
    sget v2, Lorg/swiftapps/swiftbackup/password/PasswordStrategyActivity;->O:I

    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    new-instance v1, Landroid/content/Intent;

    .line 219
    .line 220
    const-class v2, Lorg/swiftapps/swiftbackup/password/UserPasswordActivity;

    .line 221
    .line 222
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "extra_is_restoring"

    .line 226
    .line 227
    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const v2, 0x1e3d73

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 238
    .line 239
    .line 240
    sget-object v0, Lbe8;->a:Lbe8;

    .line 241
    .line 242
    return-object v0

    .line 243
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;

    .line 244
    .line 245
    check-cast v1, Ljava/lang/String;

    .line 246
    .line 247
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/PCloudSignInActivity;->M:I

    .line 248
    .line 249
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 250
    .line 251
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v15

    .line 255
    invoke-static {v7, v1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v16

    .line 259
    const/16 v18, 0x4

    .line 260
    .line 261
    const/16 v19, 0x0

    .line 262
    .line 263
    const/16 v17, 0x0

    .line 264
    .line 265
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Lhv1;

    .line 269
    .line 270
    invoke-direct {v1, v0, v9}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 271
    .line 272
    .line 273
    new-instance v2, Ls35;

    .line 274
    .line 275
    invoke-direct {v2, v0, v9, v1, v13}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v6}, Lv75;->v(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v5}, Lv75;->n(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v4, v13}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 288
    .line 289
    .line 290
    sget-object v0, Lbe8;->a:Lbe8;

    .line 291
    .line 292
    return-object v0

    .line 293
    :pswitch_5
    check-cast v0, Lif5;

    .line 294
    .line 295
    check-cast v1, Lqw6;

    .line 296
    .line 297
    iget-object v2, v0, Lif5;->h:Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object v4, v0, Lif5;->d:Landroid/widget/TextView;

    .line 300
    .line 301
    iget-object v5, v0, Lif5;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 302
    .line 303
    iget-object v6, v0, Lif5;->b:Lcy7;

    .line 304
    .line 305
    iget-object v6, v6, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 306
    .line 307
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    new-instance v6, Ldy7;

    .line 311
    .line 312
    iget-object v7, v0, Lif5;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 313
    .line 314
    iget-object v9, v0, Lif5;->g:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-direct {v6, v7, v9}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 317
    .line 318
    .line 319
    iget-object v9, v0, Lif5;->c:Landroid/widget/TextView;

    .line 320
    .line 321
    const v10, 0x7f130348

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 325
    .line 326
    .line 327
    if-eqz v1, :cond_1

    .line 328
    .line 329
    iget-object v13, v1, Lqw6;->a:Lpw6;

    .line 330
    .line 331
    :cond_1
    check-cast v13, Lff5;

    .line 332
    .line 333
    const v9, 0x7f1305c4

    .line 334
    .line 335
    .line 336
    if-nez v13, :cond_3

    .line 337
    .line 338
    if-eqz v1, :cond_2

    .line 339
    .line 340
    invoke-virtual {v1}, Lqw6;->a()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-ne v0, v14, :cond_2

    .line 345
    .line 346
    const-string v0, "0"

    .line 347
    .line 348
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v7, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    goto :goto_1

    .line 357
    :cond_2
    const v0, 0x7f1305a0

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    .line 369
    .line 370
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :cond_3
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    const v1, 0x7f08017d

    .line 385
    .line 386
    .line 387
    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 388
    .line 389
    .line 390
    iget v1, v13, Lff5;->n:I

    .line 391
    .line 392
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v7, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, v13, Lpw6;->g:Lex6;

    .line 408
    .line 409
    new-instance v2, Lq24;

    .line 410
    .line 411
    invoke-direct {v2, v14, v13, v0}, Lq24;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    new-instance v4, Ltf;

    .line 415
    .line 416
    invoke-direct {v4, v11, v2}, Ltf;-><init>(ILmt3;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v7, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v13, Lpw6;->d:Lgj5;

    .line 423
    .line 424
    new-instance v2, Lu10;

    .line 425
    .line 426
    invoke-direct {v2, v6, v3}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 427
    .line 428
    .line 429
    new-instance v3, Ltf;

    .line 430
    .line 431
    invoke-direct {v3, v11, v2}, Ltf;-><init>(ILmt3;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v7, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 435
    .line 436
    .line 437
    iget-object v1, v13, Lpw6;->i:Lex6;

    .line 438
    .line 439
    new-instance v2, Lv10;

    .line 440
    .line 441
    const/16 v3, 0x10

    .line 442
    .line 443
    invoke-direct {v2, v0, v3}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 444
    .line 445
    .line 446
    new-instance v3, Ltf;

    .line 447
    .line 448
    invoke-direct {v3, v11, v2}, Ltf;-><init>(ILmt3;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v7, v3}, Lzy4;->e(Lfu4;Les5;)V

    .line 452
    .line 453
    .line 454
    iget-object v1, v13, Lpw6;->a:Lcz7;

    .line 455
    .line 456
    check-cast v1, Lzy7;

    .line 457
    .line 458
    iget-boolean v1, v1, Lzy7;->c:Z

    .line 459
    .line 460
    if-eqz v1, :cond_4

    .line 461
    .line 462
    iget-object v1, v0, Lif5;->f:Lkm5;

    .line 463
    .line 464
    invoke-virtual {v1, v14}, Lkm5;->t(Z)V

    .line 465
    .line 466
    .line 467
    iput-boolean v15, v6, Ldy7;->e:Z

    .line 468
    .line 469
    invoke-virtual {v6}, Ldy7;->d()V

    .line 470
    .line 471
    .line 472
    goto :goto_2

    .line 473
    :cond_4
    new-instance v1, Llh6;

    .line 474
    .line 475
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 476
    .line 477
    .line 478
    iget-object v2, v13, Lpw6;->e:Lex6;

    .line 479
    .line 480
    new-instance v3, Lgf5;

    .line 481
    .line 482
    invoke-direct {v3, v13, v0, v6, v1}, Lgf5;-><init>(Lff5;Lif5;Ldy7;Llh6;)V

    .line 483
    .line 484
    .line 485
    new-instance v1, Ltf;

    .line 486
    .line 487
    invoke-direct {v1, v11, v3}, Ltf;-><init>(ILmt3;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v7, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 491
    .line 492
    .line 493
    :goto_2
    iget-object v1, v13, Lpw6;->c:Lgj5;

    .line 494
    .line 495
    new-instance v2, Lhf5;

    .line 496
    .line 497
    invoke-direct {v2, v0, v6, v13}, Lhf5;-><init>(Lif5;Ldy7;Lff5;)V

    .line 498
    .line 499
    .line 500
    new-instance v0, Ltf;

    .line 501
    .line 502
    invoke-direct {v0, v11, v2}, Ltf;-><init>(ILmt3;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v7, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 506
    .line 507
    .line 508
    :goto_3
    sget-object v0, Lbe8;->a:Lbe8;

    .line 509
    .line 510
    return-object v0

    .line 511
    :pswitch_6
    check-cast v0, Ljh;

    .line 512
    .line 513
    check-cast v1, Ljava/util/Set;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    sget-object v2, Lq05;->Companion:Lo05;

    .line 519
    .line 520
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    new-instance v2, Ljava/util/ArrayList;

    .line 524
    .line 525
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_6

    .line 537
    .line 538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    check-cast v3, Ljava/lang/String;

    .line 543
    .line 544
    sget-object v4, Lq05;->Companion:Lo05;

    .line 545
    .line 546
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-static {v3}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    if-eqz v3, :cond_5

    .line 554
    .line 555
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_4

    .line 559
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v0, v1}, Ljh;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    sget-object v0, Lbe8;->a:Lbe8;

    .line 568
    .line 569
    return-object v0

    .line 570
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 571
    .line 572
    check-cast v1, Lq63;

    .line 573
    .line 574
    sget-object v2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 575
    .line 576
    if-eqz v1, :cond_8

    .line 577
    .line 578
    invoke-virtual {v1}, Lq63;->j()Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    if-ne v2, v14, :cond_8

    .line 583
    .line 584
    sget-object v2, Lg00;->a:Lg00;

    .line 585
    .line 586
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    const-string v3, "android.hardware.telephony"

    .line 591
    .line 592
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-nez v2, :cond_7

    .line 597
    .line 598
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 599
    .line 600
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    sget-object v2, Lzn4;->a:Lzn4;

    .line 605
    .line 606
    const-string v2, "Feature not supported on this device"

    .line 607
    .line 608
    invoke-static {v1, v2}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    goto :goto_5

    .line 612
    :cond_7
    new-instance v2, Landroid/content/Intent;

    .line 613
    .line 614
    const-class v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 615
    .line 616
    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .line 618
    .line 619
    const-string v3, "EXTRA_BACKUP_FILE_PATH"

    .line 620
    .line 621
    invoke-virtual {v1}, Lq63;->v()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 633
    .line 634
    .line 635
    :goto_5
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 636
    .line 637
    .line 638
    goto :goto_6

    .line 639
    :cond_8
    const v1, 0x7f1303bd

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    .line 648
    .line 649
    sget-object v2, Lzn4;->a:Lzn4;

    .line 650
    .line 651
    new-instance v2, Lcv;

    .line 652
    .line 653
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 657
    .line 658
    .line 659
    :goto_6
    sget-object v0, Lbe8;->a:Lbe8;

    .line 660
    .line 661
    return-object v0

    .line 662
    :pswitch_8
    check-cast v0, Lpu3;

    .line 663
    .line 664
    check-cast v1, Ljava/lang/Exception;

    .line 665
    .line 666
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 667
    .line 668
    .line 669
    iget v2, v0, Lag8;->f:I

    .line 670
    .line 671
    iget v3, v0, Lag8;->e:I

    .line 672
    .line 673
    if-ge v2, v3, :cond_b

    .line 674
    .line 675
    instance-of v2, v1, Lvz3;

    .line 676
    .line 677
    if-eqz v2, :cond_9

    .line 678
    .line 679
    check-cast v1, Lvz3;

    .line 680
    .line 681
    goto :goto_7

    .line 682
    :cond_9
    move-object v1, v13

    .line 683
    :goto_7
    if-eqz v1, :cond_a

    .line 684
    .line 685
    iget-object v13, v1, Lvz3;->d:Ljava/lang/Long;

    .line 686
    .line 687
    :cond_a
    invoke-virtual {v0, v13}, Lag8;->h(Ljava/lang/Long;)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    if-eqz v1, :cond_b

    .line 692
    .line 693
    move v15, v14

    .line 694
    :cond_b
    if-eqz v15, :cond_c

    .line 695
    .line 696
    iget v1, v0, Lag8;->f:I

    .line 697
    .line 698
    add-int/2addr v1, v14

    .line 699
    iput v1, v0, Lag8;->f:I

    .line 700
    .line 701
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 702
    .line 703
    iget-object v5, v0, Lpu3;->k:Ljava/lang/String;

    .line 704
    .line 705
    const-string v0, "/"

    .line 706
    .line 707
    const-string v2, ")"

    .line 708
    .line 709
    const-string v6, "Retrying Google Drive upload ("

    .line 710
    .line 711
    invoke-static {v6, v1, v0, v2, v3}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v6

    .line 715
    const/4 v8, 0x4

    .line 716
    const/4 v9, 0x0

    .line 717
    const/4 v7, 0x0

    .line 718
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 719
    .line 720
    .line 721
    :cond_c
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    return-object v0

    .line 726
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 727
    .line 728
    check-cast v1, Lym7;

    .line 729
    .line 730
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 731
    .line 732
    if-eqz v1, :cond_11

    .line 733
    .line 734
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v4, "onViewStatusUI: "

    .line 741
    .line 742
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->a0()V

    .line 756
    .line 757
    .line 758
    sget-object v2, Lno3;->a:[I

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    aget v2, v2, v3

    .line 765
    .line 766
    if-eq v2, v14, :cond_10

    .line 767
    .line 768
    if-eq v2, v12, :cond_f

    .line 769
    .line 770
    if-eq v2, v10, :cond_e

    .line 771
    .line 772
    if-ne v2, v11, :cond_d

    .line 773
    .line 774
    goto :goto_8

    .line 775
    :cond_d
    const-string v0, "Unhandled onViewStatusUI: "

    .line 776
    .line 777
    invoke-static {v1, v0}, Lg84;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    goto :goto_a

    .line 781
    :cond_e
    :goto_8
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    iget-object v1, v1, Loo3;->d:Landroid/widget/ProgressBar;

    .line 786
    .line 787
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 809
    .line 810
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 811
    .line 812
    .line 813
    goto :goto_9

    .line 814
    :cond_f
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    iget-object v1, v1, Loo3;->d:Landroid/widget/ProgressBar;

    .line 819
    .line 820
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 842
    .line 843
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 844
    .line 845
    .line 846
    goto :goto_9

    .line 847
    :cond_10
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->X()Loo3;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    iget-object v1, v1, Loo3;->d:Landroid/widget/ProgressBar;

    .line 852
    .line 853
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->W()Landroidx/recyclerview/widget/RecyclerView;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->U()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->V()Ley2;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    iget-object v0, v0, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 875
    .line 876
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 877
    .line 878
    .line 879
    :cond_11
    :goto_9
    sget-object v13, Lbe8;->a:Lbe8;

    .line 880
    .line 881
    :goto_a
    return-object v13

    .line 882
    :pswitch_a
    check-cast v0, Ljava/util/HashSet;

    .line 883
    .line 884
    check-cast v1, Ljava/lang/String;

    .line 885
    .line 886
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    return-object v0

    .line 898
    :pswitch_b
    check-cast v0, Lmt3;

    .line 899
    .line 900
    invoke-interface {v0, v1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    check-cast v0, Ljava/lang/CharSequence;

    .line 905
    .line 906
    const/16 v1, 0x2e

    .line 907
    .line 908
    invoke-static {v0, v1}, Lnq7;->y0(Ljava/lang/CharSequence;C)Z

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    return-object v0

    .line 917
    :pswitch_c
    check-cast v1, Lfj5;

    .line 918
    .line 919
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    iget-object v2, v1, Lfj5;->a:Lnh;

    .line 923
    .line 924
    iget-object v1, v1, Lfj5;->b:Lgy5;

    .line 925
    .line 926
    iget-object v3, v2, Lnh;->b:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v3, Lqn5;

    .line 929
    .line 930
    invoke-interface {v3, v1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    invoke-interface {v3}, Lqn5;->getValue()Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    if-eqz v3, :cond_12

    .line 939
    .line 940
    new-instance v0, Lb98;

    .line 941
    .line 942
    invoke-direct {v0, v15, v13}, Lb98;-><init>(ZLqn5;)V

    .line 943
    .line 944
    .line 945
    goto :goto_b

    .line 946
    :cond_12
    new-instance v3, Lrd2;

    .line 947
    .line 948
    invoke-direct {v3, v1}, Lrd2;-><init>(Lgy5;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, v0}, Lrd2;->e(Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v0}, Lt62;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    invoke-static {v0}, Lui8;->c(Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    sget-object v3, Lqv2;->e:Lqv2;

    .line 962
    .line 963
    invoke-static {v0, v3}, Lxh8;->a(Ljava/lang/Object;Lqn5;)Lqn5;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    iget-object v3, v2, Lnh;->b:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast v3, Lqn5;

    .line 970
    .line 971
    invoke-interface {v3, v1, v0}, Lqn5;->h0(Lgy5;Lqn5;)Lqn5;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    iput-object v0, v2, Lnh;->b:Ljava/lang/Object;

    .line 976
    .line 977
    new-instance v0, Lb98;

    .line 978
    .line 979
    iget-object v2, v2, Lnh;->b:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v2, Lqn5;

    .line 982
    .line 983
    invoke-interface {v2, v1}, Lqn5;->U(Lgy5;)Lqn5;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    invoke-direct {v0, v14, v1}, Lb98;-><init>(ZLqn5;)V

    .line 988
    .line 989
    .line 990
    :goto_b
    return-object v0

    .line 991
    :pswitch_d
    check-cast v0, Lrj2;

    .line 992
    .line 993
    check-cast v1, Landroid/view/View;

    .line 994
    .line 995
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    iget-object v0, v0, Lrj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 999
    .line 1000
    sget-object v2, Liu;->APP:Liu;

    .line 1001
    .line 1002
    invoke-virtual {v0, v1, v2}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->d0(Landroid/view/View;Liu;)V

    .line 1003
    .line 1004
    .line 1005
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1006
    .line 1007
    return-object v0

    .line 1008
    :pswitch_e
    check-cast v0, Lx92;

    .line 1009
    .line 1010
    check-cast v1, Ljava/lang/Boolean;

    .line 1011
    .line 1012
    invoke-virtual {v0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v1

    .line 1016
    new-instance v2, Lw20;

    .line 1017
    .line 1018
    const/16 v3, 0xb

    .line 1019
    .line 1020
    invoke-direct {v2, v0, v3}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v1, v2}, Lil0;->J(Lmt3;)V

    .line 1024
    .line 1025
    .line 1026
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1027
    .line 1028
    return-object v0

    .line 1029
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 1030
    .line 1031
    check-cast v1, Ljava/lang/String;

    .line 1032
    .line 1033
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 1034
    .line 1035
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->C0:Lgv7;

    .line 1036
    .line 1037
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1042
    .line 1043
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    .line 1045
    .line 1046
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1047
    .line 1048
    return-object v0

    .line 1049
    :pswitch_10
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 1050
    .line 1051
    check-cast v1, Lc12;

    .line 1052
    .line 1053
    invoke-static {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$NdEOl-joMLAMc5d7oW9mmtxBZxM(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    return-object v0

    .line 1058
    :pswitch_11
    check-cast v0, Lpe4;

    .line 1059
    .line 1060
    check-cast v1, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1061
    .line 1062
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    .line 1064
    .line 1065
    check-cast v0, Lii1;

    .line 1066
    .line 1067
    iget-object v3, v0, Lii1;->m:Ljava/util/ArrayList;

    .line 1068
    .line 1069
    sget-object v4, Lsv2;->a:Lsv2;

    .line 1070
    .line 1071
    const/4 v7, 0x0

    .line 1072
    const/16 v8, 0x1cff

    .line 1073
    .line 1074
    const/4 v2, 0x0

    .line 1075
    const/4 v5, 0x0

    .line 1076
    const/4 v6, 0x0

    .line 1077
    invoke-static/range {v1 .. v8}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v9

    .line 1081
    sget-object v10, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->RESULTS:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 1082
    .line 1083
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v1

    .line 1087
    if-eqz v1, :cond_13

    .line 1088
    .line 1089
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1090
    .line 1091
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v1

    .line 1095
    const v2, 0x7f13017a

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v1

    .line 1102
    :goto_c
    move-object v13, v1

    .line 1103
    goto :goto_d

    .line 1104
    :cond_13
    sget-object v1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1105
    .line 1106
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1111
    .line 1112
    .line 1113
    move-result v2

    .line 1114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    const v3, 0x7f130178

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    goto :goto_c

    .line 1130
    :goto_d
    iget v14, v0, Lii1;->n:I

    .line 1131
    .line 1132
    iget v15, v0, Lii1;->o:I

    .line 1133
    .line 1134
    const/16 v16, 0x37f

    .line 1135
    .line 1136
    const/4 v11, 0x0

    .line 1137
    const/4 v12, 0x0

    .line 1138
    invoke-static/range {v9 .. v16}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    return-object v0

    .line 1143
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1144
    .line 1145
    check-cast v1, Ljava/lang/String;

    .line 1146
    .line 1147
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1148
    .line 1149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    .line 1151
    .line 1152
    sget-object v2, Ltb1;->a:Ltb1;

    .line 1153
    .line 1154
    invoke-static {v1}, Lqb1;->t(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->O()Llc1;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Llc1;->j()V

    .line 1162
    .line 1163
    .line 1164
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1165
    .line 1166
    return-object v0

    .line 1167
    :pswitch_13
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 1168
    .line 1169
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z:Lgv7;

    .line 1170
    .line 1171
    check-cast v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/b$a;

    .line 1172
    .line 1173
    sget v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 1174
    .line 1175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0}, Lk28;->r()Ljava/lang/String;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    const-string v5, "updateViews: status = "

    .line 1185
    .line 1186
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v4

    .line 1196
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .line 1198
    .line 1199
    sget-object v3, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/a;->a:[I

    .line 1200
    .line 1201
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1202
    .line 1203
    .line 1204
    move-result v1

    .line 1205
    aget v1, v3, v1

    .line 1206
    .line 1207
    if-eq v1, v14, :cond_16

    .line 1208
    .line 1209
    if-eq v1, v12, :cond_15

    .line 1210
    .line 1211
    if-ne v1, v10, :cond_14

    .line 1212
    .line 1213
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v3

    .line 1221
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v4

    .line 1225
    new-array v5, v10, [Landroid/view/View;

    .line 1226
    .line 1227
    aput-object v1, v5, v15

    .line 1228
    .line 1229
    aput-object v3, v5, v14

    .line 1230
    .line 1231
    aput-object v4, v5, v12

    .line 1232
    .line 1233
    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v1

    .line 1237
    check-cast v1, [Landroid/view/View;

    .line 1238
    .line 1239
    invoke-virtual {v0, v15, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W()Lzx2;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v1

    .line 1246
    iget-object v1, v1, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1247
    .line 1248
    new-array v3, v14, [Landroid/view/View;

    .line 1249
    .line 1250
    aput-object v1, v3, v15

    .line 1251
    .line 1252
    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    check-cast v1, [Landroid/view/View;

    .line 1257
    .line 1258
    invoke-virtual {v0, v14, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y:Lgv7;

    .line 1262
    .line 1263
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    check-cast v1, Landroid/widget/ImageView;

    .line 1268
    .line 1269
    const v3, 0x7f08018b

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X:Lgv7;

    .line 1276
    .line 1277
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    check-cast v1, Landroid/widget/TextView;

    .line 1282
    .line 1283
    const v3, 0x7f1303c4

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v1

    .line 1293
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1294
    .line 1295
    .line 1296
    check-cast v1, Landroid/widget/Button;

    .line 1297
    .line 1298
    const v3, 0x7f130084

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v1

    .line 1308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1309
    .line 1310
    .line 1311
    check-cast v1, Landroid/widget/Button;

    .line 1312
    .line 1313
    new-instance v2, Les;

    .line 1314
    .line 1315
    invoke-direct {v2, v0, v12}, Les;-><init>(Ljava/lang/Object;I)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_e

    .line 1322
    :cond_14
    invoke-static {}, Lq;->j()V

    .line 1323
    .line 1324
    .line 1325
    goto :goto_f

    .line 1326
    :cond_15
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W()Lzx2;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    iget-object v2, v2, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1335
    .line 1336
    new-array v3, v12, [Landroid/view/View;

    .line 1337
    .line 1338
    aput-object v1, v3, v15

    .line 1339
    .line 1340
    aput-object v2, v3, v14

    .line 1341
    .line 1342
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    check-cast v1, [Landroid/view/View;

    .line 1347
    .line 1348
    invoke-virtual {v0, v15, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v1

    .line 1355
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v2

    .line 1359
    new-array v3, v12, [Landroid/view/View;

    .line 1360
    .line 1361
    aput-object v1, v3, v15

    .line 1362
    .line 1363
    aput-object v2, v3, v14

    .line 1364
    .line 1365
    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    check-cast v1, [Landroid/view/View;

    .line 1370
    .line 1371
    invoke-virtual {v0, v14, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1372
    .line 1373
    .line 1374
    goto :goto_e

    .line 1375
    :cond_16
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->V()Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v1

    .line 1379
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Y()Landroidx/recyclerview/widget/RecyclerView;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v2

    .line 1383
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->W()Lzx2;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    iget-object v3, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 1388
    .line 1389
    new-array v4, v10, [Landroid/view/View;

    .line 1390
    .line 1391
    aput-object v1, v4, v15

    .line 1392
    .line 1393
    aput-object v2, v4, v14

    .line 1394
    .line 1395
    aput-object v3, v4, v12

    .line 1396
    .line 1397
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v1

    .line 1401
    check-cast v1, [Landroid/view/View;

    .line 1402
    .line 1403
    invoke-virtual {v0, v15, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->X()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v1

    .line 1410
    new-array v2, v14, [Landroid/view/View;

    .line 1411
    .line 1412
    aput-object v1, v2, v15

    .line 1413
    .line 1414
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v1

    .line 1418
    check-cast v1, [Landroid/view/View;

    .line 1419
    .line 1420
    invoke-virtual {v0, v14, v1}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->U(Z[Landroid/view/View;)V

    .line 1421
    .line 1422
    .line 1423
    :goto_e
    sget-object v13, Lbe8;->a:Lbe8;

    .line 1424
    .line 1425
    :goto_f
    return-object v13

    .line 1426
    :pswitch_14
    check-cast v0, Lu95;

    .line 1427
    .line 1428
    check-cast v1, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 1429
    .line 1430
    if-eqz v1, :cond_17

    .line 1431
    .line 1432
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->getItems()Ljava/util/List;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    if-eqz v1, :cond_17

    .line 1437
    .line 1438
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 1439
    .line 1440
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1441
    .line 1442
    .line 1443
    new-instance v2, Lxg;

    .line 1444
    .line 1445
    invoke-direct {v2, v10}, Lxg;-><init>(I)V

    .line 1446
    .line 1447
    .line 1448
    invoke-static {v1, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v13

    .line 1452
    :cond_17
    if-nez v13, :cond_18

    .line 1453
    .line 1454
    sget-object v13, Lov2;->a:Lov2;

    .line 1455
    .line 1456
    :cond_18
    move-object v2, v13

    .line 1457
    new-instance v1, Lfm7;

    .line 1458
    .line 1459
    const/4 v5, 0x0

    .line 1460
    const/16 v6, 0x1e

    .line 1461
    .line 1462
    const/4 v3, 0x0

    .line 1463
    const/4 v4, 0x0

    .line 1464
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v0, v1}, Lzy4;->k(Ljava/lang/Object;)V

    .line 1468
    .line 1469
    .line 1470
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1471
    .line 1472
    return-object v0

    .line 1473
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 1474
    .line 1475
    check-cast v1, Los0;

    .line 1476
    .line 1477
    sget v2, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 1478
    .line 1479
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1480
    .line 1481
    .line 1482
    iget-object v2, v1, Los0;->c:Ljava/util/List;

    .line 1483
    .line 1484
    iget-object v3, v1, Los0;->d:Ljava/util/Set;

    .line 1485
    .line 1486
    new-instance v4, Lhv1;

    .line 1487
    .line 1488
    invoke-direct {v4, v0, v9}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1489
    .line 1490
    .line 1491
    new-instance v5, Ls35;

    .line 1492
    .line 1493
    invoke-direct {v5, v0, v9, v4, v13}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 1497
    .line 1498
    .line 1499
    move-result v4

    .line 1500
    const/16 v6, 0x64

    .line 1501
    .line 1502
    invoke-static {v0, v4, v6, v14}, Lorg/swiftapps/swiftbackup/common/Const;->p(Landroid/content/Context;IIZ)Landroid/text/SpannableStringBuilder;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v4

    .line 1506
    iget-object v6, v5, Lva;->b:Ljava/lang/Object;

    .line 1507
    .line 1508
    check-cast v6, Lra;

    .line 1509
    .line 1510
    iput-object v4, v6, Lra;->d:Ljava/lang/CharSequence;

    .line 1511
    .line 1512
    iget-object v4, v1, Los0;->a:[Ljava/lang/CharSequence;

    .line 1513
    .line 1514
    iget-object v1, v1, Los0;->b:[Z

    .line 1515
    .line 1516
    new-instance v6, Lsr0;

    .line 1517
    .line 1518
    invoke-direct {v6, v2, v3, v0}, Lsr0;-><init>(Ljava/util/List;Ljava/util/Set;Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;)V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v5, v4, v1, v6}, Lv75;->o([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 1522
    .line 1523
    .line 1524
    new-instance v0, Lsy;

    .line 1525
    .line 1526
    invoke-direct {v0, v3, v14}, Lsy;-><init>(Ljava/lang/Object;I)V

    .line 1527
    .line 1528
    .line 1529
    const v1, 0x7f130027

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v5, v1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1533
    .line 1534
    .line 1535
    const v0, 0x7f1300f1

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v5, v0, v13}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v5}, Ls35;->m()Lwa;

    .line 1542
    .line 1543
    .line 1544
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1545
    .line 1546
    return-object v0

    .line 1547
    :pswitch_16
    check-cast v0, Lil0;

    .line 1548
    .line 1549
    check-cast v1, Lpo0;

    .line 1550
    .line 1551
    sget-object v2, Lbe8;->a:Lbe8;

    .line 1552
    .line 1553
    sget-object v3, Lho0;->a:Lho0;

    .line 1554
    .line 1555
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1556
    .line 1557
    .line 1558
    move-result v3

    .line 1559
    if-eqz v3, :cond_1a

    .line 1560
    .line 1561
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 1562
    .line 1563
    .line 1564
    move-result v1

    .line 1565
    if-nez v1, :cond_19

    .line 1566
    .line 1567
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1568
    .line 1569
    .line 1570
    :cond_19
    :goto_10
    move-object v13, v2

    .line 1571
    goto/16 :goto_11

    .line 1572
    .line 1573
    :cond_1a
    sget-object v3, Lno0;->a:Lno0;

    .line 1574
    .line 1575
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1576
    .line 1577
    .line 1578
    move-result v3

    .line 1579
    if-eqz v3, :cond_1b

    .line 1580
    .line 1581
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 1582
    .line 1583
    .line 1584
    move-result v1

    .line 1585
    if-nez v1, :cond_19

    .line 1586
    .line 1587
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 1588
    .line 1589
    .line 1590
    goto :goto_10

    .line 1591
    :cond_1b
    instance-of v3, v1, Lio0;

    .line 1592
    .line 1593
    if-eqz v3, :cond_1c

    .line 1594
    .line 1595
    const-class v1, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 1596
    .line 1597
    invoke-static {v0, v1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1598
    .line 1599
    .line 1600
    goto :goto_10

    .line 1601
    :cond_1c
    sget-object v3, Lko0;->a:Lko0;

    .line 1602
    .line 1603
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v3

    .line 1607
    if-eqz v3, :cond_1d

    .line 1608
    .line 1609
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 1610
    .line 1611
    invoke-static {v0}, Ly13;->H(Landroid/app/Activity;)V

    .line 1612
    .line 1613
    .line 1614
    goto :goto_10

    .line 1615
    :cond_1d
    instance-of v3, v1, Ljo0;

    .line 1616
    .line 1617
    if-eqz v3, :cond_1f

    .line 1618
    .line 1619
    check-cast v1, Ljo0;

    .line 1620
    .line 1621
    iget-object v1, v1, Ljo0;->a:Lzc6;

    .line 1622
    .line 1623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v1}, Lzc6;->c()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v3

    .line 1630
    if-eqz v3, :cond_1e

    .line 1631
    .line 1632
    sget-object v3, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 1633
    .line 1634
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    if-nez v3, :cond_1e

    .line 1639
    .line 1640
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1641
    .line 1642
    new-instance v1, Lb56;

    .line 1643
    .line 1644
    invoke-direct {v1, v0, v15}, Lb56;-><init>(Lk28;I)V

    .line 1645
    .line 1646
    .line 1647
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 1648
    .line 1649
    .line 1650
    goto :goto_10

    .line 1651
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    .line 1652
    .line 1653
    const-class v4, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1654
    .line 1655
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1656
    .line 1657
    .line 1658
    const-string v4, "quick_action_item"

    .line 1659
    .line 1660
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v1

    .line 1664
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1665
    .line 1666
    .line 1667
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1668
    .line 1669
    .line 1670
    goto :goto_10

    .line 1671
    :cond_1f
    instance-of v3, v1, Llo0;

    .line 1672
    .line 1673
    if-eqz v3, :cond_21

    .line 1674
    .line 1675
    check-cast v1, Llo0;

    .line 1676
    .line 1677
    iget-object v1, v1, Llo0;->a:Lk30;

    .line 1678
    .line 1679
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1680
    .line 1681
    .line 1682
    sget-object v3, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 1683
    .line 1684
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 1685
    .line 1686
    .line 1687
    move-result v3

    .line 1688
    if-nez v3, :cond_20

    .line 1689
    .line 1690
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1691
    .line 1692
    new-instance v1, Lb56;

    .line 1693
    .line 1694
    invoke-direct {v1, v0, v15}, Lb56;-><init>(Lk28;I)V

    .line 1695
    .line 1696
    .line 1697
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 1698
    .line 1699
    .line 1700
    goto/16 :goto_10

    .line 1701
    .line 1702
    :cond_20
    new-instance v3, Landroid/content/Intent;

    .line 1703
    .line 1704
    const-class v4, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 1705
    .line 1706
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1707
    .line 1708
    .line 1709
    const-string v4, "extra_config_run_item"

    .line 1710
    .line 1711
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v1

    .line 1715
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1719
    .line 1720
    .line 1721
    goto/16 :goto_10

    .line 1722
    .line 1723
    :cond_21
    instance-of v3, v1, Lmo0;

    .line 1724
    .line 1725
    if-eqz v3, :cond_23

    .line 1726
    .line 1727
    sget-object v3, Lhy7;->a:Lhy7;

    .line 1728
    .line 1729
    sget-object v3, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 1730
    .line 1731
    sget-object v3, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 1732
    .line 1733
    invoke-virtual {v3}, Lgz7;->isRunning()Z

    .line 1734
    .line 1735
    .line 1736
    move-result v3

    .line 1737
    if-nez v3, :cond_22

    .line 1738
    .line 1739
    check-cast v1, Lmo0;

    .line 1740
    .line 1741
    iget-object v1, v1, Lmo0;->a:Ljava/lang/String;

    .line 1742
    .line 1743
    new-instance v3, Landroid/content/Intent;

    .line 1744
    .line 1745
    const-class v4, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 1746
    .line 1747
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1748
    .line 1749
    .line 1750
    const-string v4, "detail_launched_from_shortcut"

    .line 1751
    .line 1752
    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v3

    .line 1756
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1764
    .line 1765
    .line 1766
    goto/16 :goto_10

    .line 1767
    .line 1768
    :cond_22
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1769
    .line 1770
    .line 1771
    goto/16 :goto_10

    .line 1772
    .line 1773
    :cond_23
    instance-of v3, v1, Loo0;

    .line 1774
    .line 1775
    if-eqz v3, :cond_24

    .line 1776
    .line 1777
    sget-object v3, Lhy7;->a:Lhy7;

    .line 1778
    .line 1779
    check-cast v1, Loo0;

    .line 1780
    .line 1781
    iget-object v3, v1, Loo0;->a:Ljava/lang/Class;

    .line 1782
    .line 1783
    iget-object v1, v1, Loo0;->b:Lpw6;

    .line 1784
    .line 1785
    invoke-static {v3, v1}, Lhy7;->a(Ljava/lang/Class;Lpw6;)V

    .line 1786
    .line 1787
    .line 1788
    invoke-static {v0, v13}, Lhy7;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1789
    .line 1790
    .line 1791
    goto/16 :goto_10

    .line 1792
    .line 1793
    :cond_24
    instance-of v3, v1, Lgo0;

    .line 1794
    .line 1795
    if-eqz v3, :cond_25

    .line 1796
    .line 1797
    check-cast v1, Lgo0;

    .line 1798
    .line 1799
    const-string v3, "Error"

    .line 1800
    .line 1801
    iget-object v1, v1, Lgo0;->a:Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-static {v0, v3, v1, v8}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 1804
    .line 1805
    .line 1806
    goto/16 :goto_10

    .line 1807
    .line 1808
    :cond_25
    invoke-static {}, Lq;->j()V

    .line 1809
    .line 1810
    .line 1811
    :goto_11
    return-object v13

    .line 1812
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1813
    .line 1814
    check-cast v1, Ljava/lang/Boolean;

    .line 1815
    .line 1816
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1817
    .line 1818
    .line 1819
    move-result v1

    .line 1820
    if-eqz v1, :cond_26

    .line 1821
    .line 1822
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->r0:Lkm5;

    .line 1823
    .line 1824
    new-instance v2, Lpy7;

    .line 1825
    .line 1826
    invoke-direct {v2, v1}, Lpy7;-><init>(Z)V

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0, v2}, Lkm5;->a(Lty7;)V

    .line 1830
    .line 1831
    .line 1832
    goto :goto_12

    .line 1833
    :cond_26
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1834
    .line 1835
    const v2, 0x7f1301fe

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v2

    .line 1842
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1843
    .line 1844
    .line 1845
    const v3, 0x7f1301ff

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v3

    .line 1852
    new-instance v4, Lw10;

    .line 1853
    .line 1854
    invoke-direct {v4, v0, v1, v15}, Lw10;-><init>(Lsa1;ZI)V

    .line 1855
    .line 1856
    .line 1857
    invoke-static {v0, v2, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->I(Lzm;Ljava/lang/String;Ljava/lang/String;Lbt3;)V

    .line 1858
    .line 1859
    .line 1860
    :goto_12
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1861
    .line 1862
    return-object v0

    .line 1863
    :pswitch_18
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1864
    .line 1865
    check-cast v1, Lyu;

    .line 1866
    .line 1867
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1868
    .line 1869
    .line 1870
    sget-object v2, Lyu;->Companion:Lwu;

    .line 1871
    .line 1872
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1873
    .line 1874
    .line 1875
    invoke-virtual {v1}, Lyu;->getId()I

    .line 1876
    .line 1877
    .line 1878
    move-result v1

    .line 1879
    sget-object v3, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 1880
    .line 1881
    if-eqz v3, :cond_28

    .line 1882
    .line 1883
    const-string v4, "restore_runtime_permissions"

    .line 1884
    .line 1885
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v1

    .line 1889
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1890
    .line 1891
    .line 1892
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/settings/a;->r:Lgv7;

    .line 1893
    .line 1894
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v1

    .line 1898
    check-cast v1, Landroidx/preference/Preference;

    .line 1899
    .line 1900
    invoke-virtual {v1}, Landroidx/preference/Preference;->g()Z

    .line 1901
    .line 1902
    .line 1903
    move-result v1

    .line 1904
    if-eqz v1, :cond_27

    .line 1905
    .line 1906
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v0

    .line 1910
    check-cast v0, Landroidx/preference/Preference;

    .line 1911
    .line 1912
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1913
    .line 1914
    .line 1915
    invoke-static {}, Lwu;->a()Lyu;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v1

    .line 1919
    invoke-virtual {v1}, Lyu;->asDisplayString()Ljava/lang/String;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v1

    .line 1923
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 1924
    .line 1925
    .line 1926
    :cond_27
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1927
    .line 1928
    return-object v0

    .line 1929
    :cond_28
    const-string v0, "editor"

    .line 1930
    .line 1931
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1932
    .line 1933
    .line 1934
    throw v13

    .line 1935
    :pswitch_data_0
    .packed-switch 0x0
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
