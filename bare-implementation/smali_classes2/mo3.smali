.class public final synthetic Lmo3;
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
    iput p2, p0, Lmo3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lmo3;->b:Ljava/lang/Object;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lmo3;->a:I

    .line 4
    .line 5
    const v2, 0x7f0a04e5

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    const-string v5, "Missing required view with ID: "

    .line 11
    .line 12
    const/16 v6, 0xc

    .line 13
    .line 14
    sget-object v7, Lbe8;->a:Lbe8;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    iget-object v0, v0, Lmo3;->b:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Lto8;

    .line 23
    .line 24
    iget-object v0, v0, Lto8;->b:Lpp8;

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lpp8;->l(Z)V

    .line 27
    .line 28
    .line 29
    return-object v7

    .line 30
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 31
    .line 32
    sget-object v1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O()Lco8;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lco8;->i:Lex6;

    .line 39
    .line 40
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lq63;

    .line 45
    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lq63;->q()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v5, ".png"

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Lnc3;->U(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const v3, 0x7f13042d

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Lil0;->M(I)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Lq63;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const/4 v9, 0x2

    .line 85
    invoke-direct {v3, v5, v9}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3, v8}, Lq63;->d(Lq63;Lkl;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lil0;->H()V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lf93;->b(Ljava/io/File;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Landroid/content/Intent;

    .line 99
    .line 100
    const-string v3, "android.intent.action.SEND"

    .line 101
    .line 102
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v3, "android.intent.category.DEFAULT"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-string v3, "android.intent.extra.STREAM"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    const-string v1, "image/jpeg"

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    const-string v3, "mimeType"

    .line 124
    .line 125
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const v1, 0x7f1304f4

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/high16 v2, 0x10000000

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    sget-object v2, Lzn4;->a:Lzn4;

    .line 149
    .line 150
    new-instance v2, Lo20;

    .line 151
    .line 152
    invoke-direct {v2, v6, v0, v1}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 156
    .line 157
    .line 158
    :cond_1
    :goto_0
    return-object v7

    .line 159
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 160
    .line 161
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 162
    .line 163
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v0, v0, Lay7;->e:Lfm1;

    .line 168
    .line 169
    iget-object v0, v0, Lfm1;->a:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Landroid/widget/TextView;

    .line 172
    .line 173
    return-object v0

    .line 174
    :pswitch_2
    check-cast v0, Lpa7;

    .line 175
    .line 176
    const-string v1, "dynamic_colors"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 186
    .line 187
    return-object v0

    .line 188
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 189
    .line 190
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 191
    .line 192
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->N()Ls37;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v0, v0, Ls37;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 197
    .line 198
    return-object v0

    .line 199
    :pswitch_4
    check-cast v0, Lzl8;

    .line 200
    .line 201
    invoke-static {v0}, Lcy0;->w(Lzl8;)Lsx6;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0

    .line 206
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 207
    .line 208
    sget v1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 209
    .line 210
    const v1, 0x7f0d0173

    .line 211
    .line 212
    .line 213
    invoke-static {v0, v1, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const v2, 0x7f0a05b2

    .line 218
    .line 219
    .line 220
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroid/widget/LinearLayout;

    .line 225
    .line 226
    if-eqz v3, :cond_2

    .line 227
    .line 228
    const v2, 0x7f0a05b3

    .line 229
    .line 230
    .line 231
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    check-cast v4, Landroid/widget/LinearLayout;

    .line 236
    .line 237
    if-eqz v4, :cond_2

    .line 238
    .line 239
    const v2, 0x7f0a05b4

    .line 240
    .line 241
    .line 242
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Landroid/widget/TextView;

    .line 247
    .line 248
    if-eqz v7, :cond_2

    .line 249
    .line 250
    new-instance v2, Luh7;

    .line 251
    .line 252
    check-cast v1, Landroid/widget/LinearLayout;

    .line 253
    .line 254
    invoke-direct {v2, v1, v3, v4, v7}, Luh7;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Ldj;

    .line 258
    .line 259
    invoke-direct {v1, v0, v6}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    .line 264
    .line 265
    new-instance v8, Lu35;

    .line 266
    .line 267
    invoke-direct {v8, v0, v2, v6}, Lu35;-><init>(Lk28;Ljk8;I)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_1
    return-object v8

    .line 287
    :pswitch_6
    check-cast v0, Lnd6;

    .line 288
    .line 289
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lsa1;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    return-object v0

    .line 299
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 300
    .line 301
    sget v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 302
    .line 303
    new-instance v1, Lorg/swiftapps/swiftbackup/settings/h;

    .line 304
    .line 305
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->O()Lbj5;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    iget-object v2, v2, Lbj5;->f:Lcj5;

    .line 310
    .line 311
    invoke-direct {v1, v0, v2}, Lorg/swiftapps/swiftbackup/settings/h;-><init>(Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;Lcj5;)V

    .line 312
    .line 313
    .line 314
    return-object v1

    .line 315
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 316
    .line 317
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 318
    .line 319
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v0, v0, Lli7;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 324
    .line 325
    return-object v0

    .line 326
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 327
    .line 328
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 329
    .line 330
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget-object v0, v0, Lub5;->b:Lcom/google/android/material/button/MaterialButton;

    .line 335
    .line 336
    return-object v0

    .line 337
    :pswitch_a
    check-cast v0, Lfs4;

    .line 338
    .line 339
    const-string v1, "onedrive_auth_agent"

    .line 340
    .line 341
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    return-object v0

    .line 349
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 350
    .line 351
    sget-object v1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const v1, 0x7f0d00c5

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    const v0, 0x7f0a0185

    .line 365
    .line 366
    .line 367
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    move-object v11, v1

    .line 372
    check-cast v11, Landroid/widget/FrameLayout;

    .line 373
    .line 374
    if-eqz v11, :cond_5

    .line 375
    .line 376
    const v0, 0x7f0a025e

    .line 377
    .line 378
    .line 379
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_5

    .line 384
    .line 385
    const v0, 0x7f0a00a7

    .line 386
    .line 387
    .line 388
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    move-object v14, v3

    .line 393
    check-cast v14, Landroid/widget/LinearLayout;

    .line 394
    .line 395
    if-eqz v14, :cond_3

    .line 396
    .line 397
    const v0, 0x7f0a02d4

    .line 398
    .line 399
    .line 400
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    move-object v15, v3

    .line 405
    check-cast v15, Landroid/widget/ImageView;

    .line 406
    .line 407
    if-eqz v15, :cond_3

    .line 408
    .line 409
    const v0, 0x7f0a0433

    .line 410
    .line 411
    .line 412
    invoke-static {v1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    move-object/from16 v16, v3

    .line 417
    .line 418
    check-cast v16, Lcom/google/android/material/card/MaterialCardView;

    .line 419
    .line 420
    if-eqz v16, :cond_3

    .line 421
    .line 422
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    move-object/from16 v17, v0

    .line 427
    .line 428
    check-cast v17, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 429
    .line 430
    if-eqz v17, :cond_4

    .line 431
    .line 432
    const v2, 0x7f0a04e6

    .line 433
    .line 434
    .line 435
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    move-object/from16 v18, v0

    .line 440
    .line 441
    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 442
    .line 443
    if-eqz v18, :cond_4

    .line 444
    .line 445
    const v2, 0x7f0a0575

    .line 446
    .line 447
    .line 448
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    move-object/from16 v19, v0

    .line 453
    .line 454
    check-cast v19, Landroid/widget/TextView;

    .line 455
    .line 456
    if-eqz v19, :cond_4

    .line 457
    .line 458
    const v2, 0x7f0a05b1

    .line 459
    .line 460
    .line 461
    invoke-static {v1, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    move-object/from16 v20, v0

    .line 466
    .line 467
    check-cast v20, Landroid/widget/TextView;

    .line 468
    .line 469
    if-eqz v20, :cond_4

    .line 470
    .line 471
    new-instance v12, Lx44;

    .line 472
    .line 473
    move-object v13, v1

    .line 474
    check-cast v13, Lcom/google/android/material/appbar/AppBarLayout;

    .line 475
    .line 476
    invoke-direct/range {v12 .. v20}, Lx44;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/appbar/MaterialToolbar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 477
    .line 478
    .line 479
    const v0, 0x7f0a025f

    .line 480
    .line 481
    .line 482
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 487
    .line 488
    const v0, 0x7f0a03a2

    .line 489
    .line 490
    .line 491
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 492
    .line 493
    .line 494
    move-result-object v13

    .line 495
    if-eqz v13, :cond_5

    .line 496
    .line 497
    const v0, 0x7f0a041d

    .line 498
    .line 499
    .line 500
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    move-object v14, v1

    .line 505
    check-cast v14, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 506
    .line 507
    if-eqz v14, :cond_5

    .line 508
    .line 509
    const v0, 0x7f0a05de

    .line 510
    .line 511
    .line 512
    invoke-static {v10, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    move-object v15, v1

    .line 517
    check-cast v15, Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;

    .line 518
    .line 519
    if-eqz v15, :cond_5

    .line 520
    .line 521
    new-instance v9, Lw44;

    .line 522
    .line 523
    invoke-direct/range {v9 .. v15}, Lw44;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Lx44;Landroid/view/View;Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Lorg/swiftapps/swiftbackup/views/NoSwipeViewPager;)V

    .line 524
    .line 525
    .line 526
    move-object v8, v9

    .line 527
    goto :goto_2

    .line 528
    :cond_3
    move v2, v0

    .line 529
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto :goto_2

    .line 545
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    :goto_2
    return-object v8

    .line 561
    :pswitch_c
    check-cast v0, La14;

    .line 562
    .line 563
    iget-object v0, v0, La14;->p:Lgv7;

    .line 564
    .line 565
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Lb14;

    .line 570
    .line 571
    iget-object v0, v0, Lb14;->d:Lv04;

    .line 572
    .line 573
    return-object v0

    .line 574
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 575
    .line 576
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 577
    .line 578
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    const-string v1, "EXTRA_REQUEST_CODE"

    .line 583
    .line 584
    const/16 v2, 0x3eb

    .line 585
    .line 586
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    return-object v0

    .line 595
    :pswitch_e
    check-cast v0, Lnp3;

    .line 596
    .line 597
    iget-object v1, v0, Lnp3;->f:Ljava/util/List;

    .line 598
    .line 599
    new-instance v2, Ly2;

    .line 600
    .line 601
    const/16 v3, 0xe

    .line 602
    .line 603
    invoke-direct {v2, v3, v0, v1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 607
    .line 608
    .line 609
    return-object v7

    .line 610
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 611
    .line 612
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 613
    .line 614
    sget-object v1, Lsf1;->g:Lsf1;

    .line 615
    .line 616
    invoke-virtual {v1}, Ldv;->e()Ljava/util/List;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    new-instance v2, Ljava/util/ArrayList;

    .line 621
    .line 622
    const/16 v3, 0xa

    .line 623
    .line 624
    invoke-static {v1, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 625
    .line 626
    .line 627
    move-result v4

    .line 628
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    .line 630
    .line 631
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 636
    .line 637
    .line 638
    move-result v4

    .line 639
    if-eqz v4, :cond_6

    .line 640
    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 646
    .line 647
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    new-instance v5, Lzk3;

    .line 651
    .line 652
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getLatestBackupDate()J

    .line 657
    .line 658
    .line 659
    move-result-wide v9

    .line 660
    invoke-direct {v5, v6, v9, v10, v8}, Lzk3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;JLjava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    goto :goto_3

    .line 667
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 668
    .line 669
    invoke-static {v2, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 681
    .line 682
    .line 683
    move-result v5

    .line 684
    if-eqz v5, :cond_7

    .line 685
    .line 686
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    check-cast v5, Lzk3;

    .line 691
    .line 692
    iget-object v5, v5, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 693
    .line 694
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    goto :goto_4

    .line 698
    :cond_7
    sget-object v4, Lpz4;->g:Lpz4;

    .line 699
    .line 700
    invoke-virtual {v4}, Ldv;->e()Ljava/util/List;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    new-instance v5, Ljava/util/ArrayList;

    .line 705
    .line 706
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    .line 712
    .line 713
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 718
    .line 719
    .line 720
    move-result v4

    .line 721
    if-eqz v4, :cond_8

    .line 722
    .line 723
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 728
    .line 729
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    goto :goto_5

    .line 737
    :cond_8
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 738
    .line 739
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 747
    .line 748
    .line 749
    move-result v5

    .line 750
    if-eqz v5, :cond_9

    .line 751
    .line 752
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    check-cast v5, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 757
    .line 758
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    goto :goto_6

    .line 766
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    if-eqz v5, :cond_b

    .line 780
    .line 781
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v5

    .line 785
    move-object v6, v5

    .line 786
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 787
    .line 788
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v6

    .line 792
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v6

    .line 796
    if-nez v6, :cond_a

    .line 797
    .line 798
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    goto :goto_7

    .line 802
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    sget-object v3, Lzn4;->a:Lzn4;

    .line 807
    .line 808
    new-instance v3, Lro3;

    .line 809
    .line 810
    invoke-direct {v3, v0, v1, v2}, Lro3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;ILjava/util/ArrayList;)V

    .line 811
    .line 812
    .line 813
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 814
    .line 815
    .line 816
    return-object v7

    .line 817
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 818
    .line 819
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 820
    .line 821
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    const v1, 0x7f0d00b9

    .line 826
    .line 827
    .line 828
    invoke-virtual {v0, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    const v1, 0x7f0a00a9

    .line 833
    .line 834
    .line 835
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    check-cast v3, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 840
    .line 841
    if-eqz v3, :cond_c

    .line 842
    .line 843
    const v1, 0x7f0a00e3

    .line 844
    .line 845
    .line 846
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    move-object v11, v3

    .line 851
    check-cast v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 852
    .line 853
    if-eqz v11, :cond_c

    .line 854
    .line 855
    const v1, 0x7f0a0209

    .line 856
    .line 857
    .line 858
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    if-eqz v3, :cond_c

    .line 863
    .line 864
    invoke-static {v3}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 865
    .line 866
    .line 867
    move-result-object v12

    .line 868
    const v1, 0x7f0a03a5

    .line 869
    .line 870
    .line 871
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    move-object v13, v3

    .line 876
    check-cast v13, Landroid/widget/ProgressBar;

    .line 877
    .line 878
    if-eqz v13, :cond_c

    .line 879
    .line 880
    const v1, 0x7f0a03f7

    .line 881
    .line 882
    .line 883
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    move-object v14, v3

    .line 888
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 889
    .line 890
    if-eqz v14, :cond_c

    .line 891
    .line 892
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    if-eqz v1, :cond_d

    .line 897
    .line 898
    invoke-static {v1}, Ltf2;->a(Landroid/view/View;)Ltf2;

    .line 899
    .line 900
    .line 901
    move-result-object v15

    .line 902
    new-instance v9, Loo3;

    .line 903
    .line 904
    move-object v10, v0

    .line 905
    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 906
    .line 907
    invoke-direct/range {v9 .. v15}, Loo3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ley2;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Ltf2;)V

    .line 908
    .line 909
    .line 910
    move-object v8, v9

    .line 911
    goto :goto_8

    .line 912
    :cond_c
    move v2, v1

    .line 913
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    :goto_8
    return-object v8

    .line 929
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
