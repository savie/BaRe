.class public final synthetic Lej;
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
    iput p2, p0, Lej;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lej;->b:Ljava/lang/Object;

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
    iget v1, v0, Lej;->a:I

    .line 4
    .line 5
    const-string v2, "prefs"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sget-object v4, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v0, v0, Lej;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 18
    .line 19
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 20
    .line 21
    new-instance v1, Lw45;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lw45;-><init>(Lio1;)V

    .line 24
    .line 25
    .line 26
    const v2, 0x7f130443

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 37
    .line 38
    .line 39
    iput v3, v1, Lw45;->r:I

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Lw45;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :pswitch_0
    check-cast v0, Lu35;

    .line 46
    .line 47
    const v1, 0x7f0a01cd

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lho;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/FrameLayout;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_1
    check-cast v0, Lis4;

    .line 58
    .line 59
    iget-object v1, v0, Lis4;->a:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "en"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string v2, "zh"

    .line 81
    .line 82
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v0, v0, Lis4;->b:Ljava/lang/String;

    .line 89
    .line 90
    const-string v1, "CN"

    .line 91
    .line 92
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    const-string v0, "\u7b80\u4f53\u4e2d\u6587"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "\u7e41\u9ad4\u4e2d\u6587"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget-object v2, v0, Lis4;->k:Lgv7;

    .line 107
    .line 108
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    check-cast v2, Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-boolean v2, v0, Lis4;->c:Z

    .line 121
    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0}, Lis4;->a()Ljava/util/Locale;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v2, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, ", "

    .line 139
    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 158
    :pswitch_2
    check-cast v0, Lfs4;

    .line 159
    .line 160
    const-string v1, "delete_gms_files"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    return-object v0

    .line 170
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;

    .line 171
    .line 172
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->U:I

    .line 173
    .line 174
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelEditActivity;->N()Lyq4;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v0, v0, Lyq4;->d:Lcom/google/android/material/button/MaterialButton;

    .line 179
    .line 180
    return-object v0

    .line 181
    :pswitch_4
    move-object v1, v0

    .line 182
    check-cast v1, Lnf4;

    .line 183
    .line 184
    iget-object v0, v1, Lnf4;->c:Lsm;

    .line 185
    .line 186
    :try_start_0
    invoke-virtual {v0}, Lsm;->invoke()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    new-instance v2, Lbn6;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    move-object v0, v2

    .line 198
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 199
    .line 200
    instance-of v3, v0, Lbn6;

    .line 201
    .line 202
    if-eqz v3, :cond_4

    .line 203
    .line 204
    move-object v0, v2

    .line 205
    :cond_4
    check-cast v0, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    iget-object v2, v1, Lnf4;->b:Lhl0;

    .line 212
    .line 213
    new-instance v3, Llf4;

    .line 214
    .line 215
    invoke-direct {v3, v1, v0}, Llf4;-><init>(Lnf4;Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v3}, Lhl0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    return-object v4

    .line 222
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 223
    .line 224
    sget v1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v1, 0x7f0d00d1

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    const v1, 0x7f0a00e8

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v3, "Missing required view with ID: "

    .line 245
    .line 246
    if-eqz v2, :cond_7

    .line 247
    .line 248
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 249
    .line 250
    new-instance v9, Lh80;

    .line 251
    .line 252
    const/16 v1, 0x9

    .line 253
    .line 254
    invoke-direct {v9, v2, v2, v1, v6}, Lh80;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 255
    .line 256
    .line 257
    const v1, 0x7f0a0108

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-eqz v2, :cond_7

    .line 265
    .line 266
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 267
    .line 268
    new-instance v10, Lv04;

    .line 269
    .line 270
    invoke-direct {v10, v2, v2}, Lv04;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 271
    .line 272
    .line 273
    const v1, 0x7f0a019c

    .line 274
    .line 275
    .line 276
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Landroid/widget/LinearLayout;

    .line 281
    .line 282
    if-eqz v2, :cond_7

    .line 283
    .line 284
    const v1, 0x7f0a0233

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    if-eqz v2, :cond_7

    .line 292
    .line 293
    invoke-static {v2}, Luf3;->a(Landroid/view/View;)Luf3;

    .line 294
    .line 295
    .line 296
    move-result-object v11

    .line 297
    const v1, 0x7f0a027f

    .line 298
    .line 299
    .line 300
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    if-eqz v2, :cond_7

    .line 305
    .line 306
    const v1, 0x7f0a011d

    .line 307
    .line 308
    .line 309
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    move-object v14, v4

    .line 314
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 315
    .line 316
    if-eqz v14, :cond_6

    .line 317
    .line 318
    const v1, 0x7f0a0195

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    move-object v15, v4

    .line 326
    check-cast v15, Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;

    .line 327
    .line 328
    if-eqz v15, :cond_6

    .line 329
    .line 330
    move-object v13, v2

    .line 331
    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 332
    .line 333
    const v1, 0x7f0a0198

    .line 334
    .line 335
    .line 336
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    move-object/from16 v16, v4

    .line 341
    .line 342
    check-cast v16, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 343
    .line 344
    if-eqz v16, :cond_6

    .line 345
    .line 346
    const v1, 0x7f0a019e

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    move-object/from16 v17, v4

    .line 354
    .line 355
    check-cast v17, Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;

    .line 356
    .line 357
    if-eqz v17, :cond_6

    .line 358
    .line 359
    const v1, 0x7f0a01a3

    .line 360
    .line 361
    .line 362
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    move-object/from16 v18, v4

    .line 367
    .line 368
    check-cast v18, Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;

    .line 369
    .line 370
    if-eqz v18, :cond_6

    .line 371
    .line 372
    const v1, 0x7f0a054b

    .line 373
    .line 374
    .line 375
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    check-cast v4, Landroid/widget/TextView;

    .line 380
    .line 381
    if-eqz v4, :cond_6

    .line 382
    .line 383
    new-instance v12, Ljf4;

    .line 384
    .line 385
    invoke-direct/range {v12 .. v18}, Ljf4;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;Landroidx/appcompat/widget/LinearLayoutCompat;Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;Lorg/swiftapps/swiftbackup/intro/IntroPermissionCardView;)V

    .line 386
    .line 387
    .line 388
    const v1, 0x7f0a0280

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    if-eqz v2, :cond_7

    .line 396
    .line 397
    const v1, 0x7f0a0598

    .line 398
    .line 399
    .line 400
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    check-cast v4, Landroid/widget/TextView;

    .line 405
    .line 406
    if-eqz v4, :cond_5

    .line 407
    .line 408
    const v1, 0x7f0a059a

    .line 409
    .line 410
    .line 411
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    check-cast v6, Landroid/widget/TextView;

    .line 416
    .line 417
    if-eqz v6, :cond_5

    .line 418
    .line 419
    new-instance v13, Lkf4;

    .line 420
    .line 421
    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 422
    .line 423
    invoke-direct {v13, v2, v4}, Lkf4;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Landroid/widget/TextView;)V

    .line 424
    .line 425
    .line 426
    const v1, 0x7f0a0281

    .line 427
    .line 428
    .line 429
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    move-object v14, v2

    .line 434
    check-cast v14, Landroid/widget/LinearLayout;

    .line 435
    .line 436
    if-eqz v14, :cond_7

    .line 437
    .line 438
    const v1, 0x7f0a0282

    .line 439
    .line 440
    .line 441
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 446
    .line 447
    if-eqz v2, :cond_7

    .line 448
    .line 449
    const v1, 0x7f0a0283

    .line 450
    .line 451
    .line 452
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, Landroid/widget/ImageView;

    .line 457
    .line 458
    if-eqz v2, :cond_7

    .line 459
    .line 460
    const v1, 0x7f0a02bd

    .line 461
    .line 462
    .line 463
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    move-object v15, v2

    .line 468
    check-cast v15, Landroid/widget/ImageView;

    .line 469
    .line 470
    if-eqz v15, :cond_7

    .line 471
    .line 472
    const v1, 0x7f0a0577

    .line 473
    .line 474
    .line 475
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    move-object/from16 v16, v2

    .line 480
    .line 481
    check-cast v16, Landroid/widget/TextView;

    .line 482
    .line 483
    if-eqz v16, :cond_7

    .line 484
    .line 485
    const v1, 0x7f0a0599

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Landroid/widget/TextView;

    .line 493
    .line 494
    if-eqz v2, :cond_7

    .line 495
    .line 496
    new-instance v7, Lif4;

    .line 497
    .line 498
    move-object v8, v0

    .line 499
    check-cast v8, Landroid/widget/LinearLayout;

    .line 500
    .line 501
    invoke-direct/range {v7 .. v16}, Lif4;-><init>(Landroid/widget/LinearLayout;Lh80;Lv04;Luf3;Ljf4;Lkf4;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 502
    .line 503
    .line 504
    move-object v5, v7

    .line 505
    goto :goto_2

    .line 506
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    goto :goto_2

    .line 522
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    :goto_2
    return-object v5

    .line 554
    :pswitch_6
    check-cast v0, Lc64;

    .line 555
    .line 556
    sget-object v1, Lc64;->l:Lix6;

    .line 557
    .line 558
    sget-object v1, Ltb1;->a:Ltb1;

    .line 559
    .line 560
    const-string v1, "setup_cloud_first_startup"

    .line 561
    .line 562
    :try_start_1
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 563
    .line 564
    if-eqz v6, :cond_8

    .line 565
    .line 566
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    goto :goto_3

    .line 571
    :cond_8
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    throw v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :catch_0
    move-object v2, v5

    .line 576
    :goto_3
    if-eqz v2, :cond_11

    .line 577
    .line 578
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    if-nez v6, :cond_9

    .line 583
    .line 584
    goto/16 :goto_5

    .line 585
    .line 586
    :cond_9
    sget-object v6, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 587
    .line 588
    if-eqz v6, :cond_10

    .line 589
    .line 590
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    .line 596
    .line 597
    sget-object v1, Lc64;->l:Lix6;

    .line 598
    .line 599
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 600
    .line 601
    invoke-virtual {v1, v6}, Lix6;->k(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    iget-object v1, v0, La55;->b:Ljava/lang/String;

    .line 605
    .line 606
    const-string v6, "checkCloudConnectPromptNeeded="

    .line 607
    .line 608
    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    invoke-static {}, Lqb1;->m()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_a

    .line 620
    .line 621
    iget-object v0, v0, La55;->b:Ljava/lang/String;

    .line 622
    .line 623
    const-string v1, "Cloud already connected"

    .line 624
    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    goto/16 :goto_5

    .line 629
    .line 630
    :cond_a
    invoke-static {}, Ldd1;->getEntries()Ljx2;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    new-instance v6, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    check-cast v1, Lz3;

    .line 640
    .line 641
    invoke-virtual {v1}, Lz3;->iterator()Ljava/util/Iterator;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    :cond_b
    :goto_4
    move-object v7, v1

    .line 646
    check-cast v7, Lw3;

    .line 647
    .line 648
    invoke-virtual {v7}, Lw3;->hasNext()Z

    .line 649
    .line 650
    .line 651
    move-result v8

    .line 652
    if-eqz v8, :cond_c

    .line 653
    .line 654
    invoke-virtual {v7}, Lw3;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v7

    .line 658
    move-object v8, v7

    .line 659
    check-cast v8, Ldd1;

    .line 660
    .line 661
    invoke-virtual {v8}, Ldd1;->getSupportsCurrentAndroidSdk()Z

    .line 662
    .line 663
    .line 664
    move-result v8

    .line 665
    if-eqz v8, :cond_b

    .line 666
    .line 667
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_4

    .line 671
    :cond_c
    new-instance v1, Lll1;

    .line 672
    .line 673
    invoke-direct {v1, v6}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 674
    .line 675
    .line 676
    new-instance v6, Ldq;

    .line 677
    .line 678
    const/4 v7, 0x7

    .line 679
    invoke-direct {v6, v7}, Ldq;-><init>(I)V

    .line 680
    .line 681
    .line 682
    new-instance v7, Lme3;

    .line 683
    .line 684
    invoke-direct {v7, v1, v3, v6}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 685
    .line 686
    .line 687
    new-instance v1, Lle3;

    .line 688
    .line 689
    invoke-direct {v1, v7}, Lle3;-><init>(Lme3;)V

    .line 690
    .line 691
    .line 692
    :cond_d
    invoke-virtual {v1}, Lle3;->hasNext()Z

    .line 693
    .line 694
    .line 695
    move-result v3

    .line 696
    if-eqz v3, :cond_e

    .line 697
    .line 698
    invoke-virtual {v1}, Lle3;->next()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    move-object v6, v3

    .line 703
    check-cast v6, Ldd1;

    .line 704
    .line 705
    invoke-virtual {v6}, Ldd1;->getConstant()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    invoke-static {v6, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    if-eqz v6, :cond_d

    .line 714
    .line 715
    move-object v5, v3

    .line 716
    :cond_e
    check-cast v5, Ldd1;

    .line 717
    .line 718
    if-eqz v5, :cond_f

    .line 719
    .line 720
    iget-object v0, v0, Lc64;->k:Lix6;

    .line 721
    .line 722
    invoke-virtual {v0, v5}, Lix6;->k(Ljava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    goto :goto_5

    .line 726
    :cond_f
    const-string v1, "Not showing previous cloud connect dialog. Cloud type not available in the app or not meant for production use ["

    .line 727
    .line 728
    const-string v3, "]"

    .line 729
    .line 730
    invoke-static {v1, v2, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 735
    .line 736
    iget-object v6, v0, La55;->b:Ljava/lang/String;

    .line 737
    .line 738
    const/4 v9, 0x4

    .line 739
    const/4 v10, 0x0

    .line 740
    const/4 v8, 0x0

    .line 741
    invoke-static/range {v5 .. v10}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    goto :goto_5

    .line 745
    :cond_10
    const-string v0, "editor"

    .line 746
    .line 747
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    throw v5

    .line 751
    :cond_11
    :goto_5
    return-object v4

    .line 752
    :pswitch_7
    check-cast v0, Ldm3;

    .line 753
    .line 754
    iget-object v1, v0, Ldm3;->j:Lex6;

    .line 755
    .line 756
    invoke-virtual {v0}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    iget-object v3, v0, Ldm3;->l:Ljava/util/concurrent/atomic/AtomicLong;

    .line 761
    .line 762
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 763
    .line 764
    .line 765
    move-result-wide v7

    .line 766
    iget-object v3, v0, Ldm3;->h:Lex6;

    .line 767
    .line 768
    invoke-virtual {v3}, Lzy4;->d()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    if-nez v5, :cond_12

    .line 773
    .line 774
    invoke-static {v7, v8, v0, v2}, Ldm3;->l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z

    .line 775
    .line 776
    .line 777
    move-result v5

    .line 778
    if-eqz v5, :cond_12

    .line 779
    .line 780
    sget-object v5, Lvl3;->a:Lvl3;

    .line 781
    .line 782
    invoke-virtual {v3, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    :cond_12
    invoke-static {v2, v6, v6}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 786
    .line 787
    .line 788
    move-result-object v5

    .line 789
    invoke-virtual {v5}, Lkj3;->d()Lq63;

    .line 790
    .line 791
    .line 792
    move-result-object v6

    .line 793
    invoke-virtual {v6}, Lq63;->k()Z

    .line 794
    .line 795
    .line 796
    move-result v6

    .line 797
    invoke-virtual {v5}, Lkj3;->f()Z

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    if-nez v9, :cond_14

    .line 802
    .line 803
    invoke-static {v7, v8, v0, v2}, Ldm3;->l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    if-eqz v5, :cond_13

    .line 808
    .line 809
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    invoke-virtual {v1, v5}, Lex6;->k(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    :cond_13
    invoke-static {v7, v8, v0, v2}, Ldm3;->l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z

    .line 817
    .line 818
    .line 819
    move-result v0

    .line 820
    if-eqz v0, :cond_16

    .line 821
    .line 822
    sget-object v0, Lwl3;->a:Lwl3;

    .line 823
    .line 824
    invoke-virtual {v3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 825
    .line 826
    .line 827
    goto :goto_6

    .line 828
    :cond_14
    invoke-static {v7, v8, v0, v2}, Ldm3;->l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z

    .line 829
    .line 830
    .line 831
    move-result v6

    .line 832
    if-eqz v6, :cond_15

    .line 833
    .line 834
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 835
    .line 836
    invoke-virtual {v1, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    :cond_15
    new-instance v1, Lul3;

    .line 840
    .line 841
    invoke-direct {v1, v5}, Lul3;-><init>(Lkj3;)V

    .line 842
    .line 843
    .line 844
    invoke-static {v7, v8, v0, v2}, Ldm3;->l(JLdm3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;)Z

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    if-eqz v0, :cond_16

    .line 849
    .line 850
    invoke-virtual {v3, v1}, Lex6;->k(Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    :cond_16
    :goto_6
    return-object v4

    .line 854
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;

    .line 855
    .line 856
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;)Lq63;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    return-object v0

    .line 861
    :pswitch_9
    check-cast v0, Lsc3;

    .line 862
    .line 863
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 864
    .line 865
    if-eqz v1, :cond_1f

    .line 866
    .line 867
    const-string v2, "selected_labels_filter_temp"

    .line 868
    .line 869
    sget-object v3, Lsv2;->a:Lsv2;

    .line 870
    .line 871
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    if-nez v1, :cond_17

    .line 876
    .line 877
    goto :goto_7

    .line 878
    :cond_17
    move-object v3, v1

    .line 879
    :goto_7
    new-instance v1, Ljava/util/ArrayList;

    .line 880
    .line 881
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 885
    .line 886
    .line 887
    move-result-object v2

    .line 888
    :cond_18
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 889
    .line 890
    .line 891
    move-result v3

    .line 892
    if-eqz v3, :cond_19

    .line 893
    .line 894
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    check-cast v3, Ljava/lang/String;

    .line 899
    .line 900
    sget-object v7, Llr4;->a:Llr4;

    .line 901
    .line 902
    invoke-static {v3}, Llr4;->c(Ljava/lang/String;)Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    if-eqz v3, :cond_18

    .line 907
    .line 908
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .line 910
    .line 911
    goto :goto_8

    .line 912
    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    if-nez v2, :cond_1a

    .line 917
    .line 918
    goto :goto_9

    .line 919
    :cond_1a
    move-object v1, v5

    .line 920
    :goto_9
    if-eqz v1, :cond_1b

    .line 921
    .line 922
    invoke-static {v1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    goto :goto_a

    .line 927
    :cond_1b
    move-object v1, v5

    .line 928
    :goto_a
    if-eqz v1, :cond_1e

    .line 929
    .line 930
    new-instance v2, Ljava/util/ArrayList;

    .line 931
    .line 932
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .line 934
    .line 935
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 936
    .line 937
    .line 938
    move-result-object v1

    .line 939
    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 940
    .line 941
    .line 942
    move-result v3

    .line 943
    if-eqz v3, :cond_1d

    .line 944
    .line 945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    check-cast v3, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 950
    .line 951
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    if-eqz v3, :cond_1c

    .line 956
    .line 957
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    goto :goto_b

    .line 961
    :cond_1d
    new-array v1, v6, [Ljava/lang/String;

    .line 962
    .line 963
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    move-object v5, v1

    .line 968
    check-cast v5, [Ljava/lang/String;

    .line 969
    .line 970
    :cond_1e
    iget-object v0, v0, Lsc3;->Q:Ldt;

    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    const/16 v1, 0x12

    .line 976
    .line 977
    const/16 v2, 0x66

    .line 978
    .line 979
    invoke-static {v0, v2, v5, v6, v1}, Lus2;->E(Lk28;I[Ljava/lang/String;ZI)V

    .line 980
    .line 981
    .line 982
    return-object v4

    .line 983
    :cond_1f
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    throw v5

    .line 987
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 988
    .line 989
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 990
    .line 991
    new-instance v1, Lpj2;

    .line 992
    .line 993
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->X()Ldj2;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    iget-object v2, v2, Ldj2;->c:Lej2;

    .line 998
    .line 999
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    invoke-direct {v1, v0, v2, v3}, Lpj2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Lej2;Lmk2;)V

    .line 1004
    .line 1005
    .line 1006
    return-object v1

    .line 1007
    :pswitch_b
    check-cast v0, Lfa2;

    .line 1008
    .line 1009
    iget-object v0, v0, Lfa2;->c:Lex6;

    .line 1010
    .line 1011
    invoke-virtual {v0}, Lzy4;->d()Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v1

    .line 1015
    check-cast v1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 1016
    .line 1017
    sget-object v2, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;->Companion:Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;

    .line 1018
    .line 1019
    new-instance v3, Lq63;

    .line 1020
    .line 1021
    sget-object v7, Lry5;->u:Ljava/lang/String;

    .line 1022
    .line 1023
    invoke-static {v6, v5}, Lqy5;->f(ZLzn7;)Lry5;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v7

    .line 1027
    iget-object v7, v7, Lry5;->a:Ljava/lang/String;

    .line 1028
    .line 1029
    const/4 v8, 0x2

    .line 1030
    invoke-direct {v3, v7, v8}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v2, v3, v6, v8, v5}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->create$default(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;Lq63;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/StorageInfoLocal;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v1

    .line 1041
    if-nez v1, :cond_21

    .line 1042
    .line 1043
    instance-of v1, v3, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 1044
    .line 1045
    if-eqz v1, :cond_20

    .line 1046
    .line 1047
    move-object v1, v3

    .line 1048
    check-cast v1, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;

    .line 1049
    .line 1050
    invoke-virtual {v2, v1}, Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$a;->setSavedStorageInfo(Lorg/swiftapps/swiftbackup/model/StorageInfoLocal$Success;)V

    .line 1051
    .line 1052
    .line 1053
    :cond_20
    const-wide/16 v1, 0x3e8

    .line 1054
    .line 1055
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1056
    .line 1057
    .line 1058
    :catch_1
    invoke-virtual {v0, v3}, Lex6;->k(Ljava/lang/Object;)V

    .line 1059
    .line 1060
    .line 1061
    :cond_21
    return-object v4

    .line 1062
    :pswitch_c
    check-cast v0, Lx92;

    .line 1063
    .line 1064
    iget-object v0, v0, Lrl0;->a:Ljava/lang/String;

    .line 1065
    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    const-string v0, ": Firebase connection error"

    .line 1075
    .line 1076
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v0

    .line 1083
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    return-object v4

    .line 1087
    :pswitch_d
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 1088
    .line 1089
    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$0CceaXcXO808hVbG1PFwXNfQChw(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)Lbe8;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v0

    .line 1093
    return-object v0

    .line 1094
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;

    .line 1095
    .line 1096
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->O:I

    .line 1097
    .line 1098
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->L:Lgv7;

    .line 1099
    .line 1100
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    check-cast v0, Lsv1;

    .line 1105
    .line 1106
    iget-object v0, v0, Lsv1;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1107
    .line 1108
    return-object v0

    .line 1109
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;

    .line 1110
    .line 1111
    sget v1, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 1112
    .line 1113
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->N()Lov1;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    iget-object v0, v0, Lov1;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 1118
    .line 1119
    return-object v0

    .line 1120
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;

    .line 1121
    .line 1122
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->R:I

    .line 1123
    .line 1124
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/list/ConfigListActivity;->O()Lnr1;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0

    .line 1128
    iget-object v0, v0, Lnr1;->d:Lzx2;

    .line 1129
    .line 1130
    return-object v0

    .line 1131
    :pswitch_11
    check-cast v0, Lv11;

    .line 1132
    .line 1133
    const-string v1, "max_call_backups"

    .line 1134
    .line 1135
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    .line 1141
    .line 1142
    return-object v0

    .line 1143
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;

    .line 1144
    .line 1145
    sget v1, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->P:I

    .line 1146
    .line 1147
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    iget-object v0, v0, Lqr0;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 1152
    .line 1153
    return-object v0

    .line 1154
    :pswitch_13
    check-cast v0, Lil0;

    .line 1155
    .line 1156
    new-instance v1, Lw45;

    .line 1157
    .line 1158
    invoke-direct {v1, v0}, Lw45;-><init>(Lio1;)V

    .line 1159
    .line 1160
    .line 1161
    const-string v0, "Migrating local app backups..."

    .line 1162
    .line 1163
    invoke-virtual {v1, v0}, Lwa;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1167
    .line 1168
    .line 1169
    iput v3, v1, Lw45;->r:I

    .line 1170
    .line 1171
    const-string v0, "%1d/%2d backups"

    .line 1172
    .line 1173
    invoke-virtual {v1, v0}, Lw45;->n(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    return-object v1

    .line 1177
    :pswitch_14
    check-cast v0, Lqk0;

    .line 1178
    .line 1179
    iget-object v1, v0, Lqk0;->h:Lji;

    .line 1180
    .line 1181
    iget-object v0, v0, Lqk0;->a:Lhz;

    .line 1182
    .line 1183
    iget-boolean v0, v0, Lhz;->g:Z

    .line 1184
    .line 1185
    invoke-virtual {v1, v0}, Lji;->hasExternalData(Z)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v0

    .line 1189
    if-eqz v0, :cond_22

    .line 1190
    .line 1191
    invoke-virtual {v1}, Lji;->getSizeInfo()Lqx;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    if-eqz v0, :cond_22

    .line 1196
    .line 1197
    invoke-virtual {v0}, Lqx;->getHasExternalData()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v0

    .line 1201
    if-ne v0, v3, :cond_22

    .line 1202
    .line 1203
    goto :goto_c

    .line 1204
    :cond_22
    move v3, v6

    .line 1205
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    return-object v0

    .line 1210
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1211
    .line 1212
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1213
    .line 1214
    new-instance v1, Lsc3;

    .line 1215
    .line 1216
    invoke-direct {v1, v0}, Lsc3;-><init>(Ldt;)V

    .line 1217
    .line 1218
    .line 1219
    iput-object v1, v0, Ldt;->Z:Lsc3;

    .line 1220
    .line 1221
    return-object v1

    .line 1222
    :pswitch_16
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1223
    .line 1224
    const-string v1, "restore_special_permissions"

    .line 1225
    .line 1226
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    .line 1232
    .line 1233
    return-object v0

    .line 1234
    :pswitch_17
    check-cast v0, Lxw;

    .line 1235
    .line 1236
    sget-object v1, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;->Companion:Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;

    .line 1237
    .line 1238
    iget-object v0, v0, Lxw;->k:Lhk;

    .line 1239
    .line 1240
    invoke-virtual {v0}, Lhk;->B()Lq63;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload$a;->read(Lq63;)Lorg/swiftapps/swiftbackup/model/app/AppSpecialDataPayload;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    return-object v0

    .line 1249
    :pswitch_18
    check-cast v0, Lwv;

    .line 1250
    .line 1251
    new-instance v1, Ltv;

    .line 1252
    .line 1253
    iget-object v2, v0, Lwv;->a:Lc40;

    .line 1254
    .line 1255
    iget-object v3, v0, Lwv;->b:Lry7;

    .line 1256
    .line 1257
    iget-object v0, v0, Lwv;->c:Lgv7;

    .line 1258
    .line 1259
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v0

    .line 1263
    check-cast v0, Ljava/lang/String;

    .line 1264
    .line 1265
    invoke-direct {v1, v2, v3, v0}, Ltv;-><init>(Lc40;Lry7;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    return-object v1

    .line 1269
    :pswitch_19
    check-cast v0, Lcm;

    .line 1270
    .line 1271
    iget-object v0, v0, Lcm;->e:Lgv7;

    .line 1272
    .line 1273
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    check-cast v0, Ljava/util/List;

    .line 1278
    .line 1279
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    const-wide/16 v1, 0x0

    .line 1284
    .line 1285
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-eqz v3, :cond_23

    .line 1290
    .line 1291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v3

    .line 1295
    check-cast v3, Lq63;

    .line 1296
    .line 1297
    invoke-virtual {v3}, Lq63;->A()J

    .line 1298
    .line 1299
    .line 1300
    move-result-wide v3

    .line 1301
    add-long/2addr v1, v3

    .line 1302
    goto :goto_d

    .line 1303
    :cond_23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    return-object v0

    .line 1308
    :pswitch_1a
    check-cast v0, Lgl;

    .line 1309
    .line 1310
    iget-object v0, v0, Lgl;->h:Lgv7;

    .line 1311
    .line 1312
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    check-cast v0, Lg55;

    .line 1317
    .line 1318
    return-object v0

    .line 1319
    :pswitch_1b
    check-cast v0, Lhk;

    .line 1320
    .line 1321
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1326
    .line 1327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    const-string v0, ".extra"

    .line 1336
    .line 1337
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    return-object v0

    .line 1349
    :pswitch_1c
    check-cast v0, Lrj;

    .line 1350
    .line 1351
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1352
    .line 1353
    new-instance v1, Lqj;

    .line 1354
    .line 1355
    invoke-direct {v1, v0, v5, v6}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 1356
    .line 1357
    .line 1358
    invoke-static {v5, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 1359
    .line 1360
    .line 1361
    return-object v4

    .line 1362
    nop

    .line 1363
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
