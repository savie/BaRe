.class public final synthetic Ldk;
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
    iput p2, p0, Ldk;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ldk;->b:Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ldk;->a:I

    .line 4
    .line 5
    const v2, 0x7f0a05ba

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "Missing required view with ID: "

    .line 10
    .line 11
    sget-object v5, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    iget-object v0, v0, Ldk;->b:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, La14;

    .line 21
    .line 22
    iget-object v0, v0, La14;->e:Lk28;

    .line 23
    .line 24
    const v1, 0x7f0d00be

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a00e8

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 41
    .line 42
    new-instance v10, Lfe;

    .line 43
    .line 44
    invoke-direct {v10, v3}, Lfe;-><init>(Lcom/google/android/material/button/MaterialButton;)V

    .line 45
    .line 46
    .line 47
    const v1, 0x7f0a00ec

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    move-object v11, v3

    .line 55
    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    if-eqz v11, :cond_0

    .line 58
    .line 59
    const v1, 0x7f0a0108

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 69
    .line 70
    new-instance v12, Lv04;

    .line 71
    .line 72
    invoke-direct {v12, v3, v3}, Lv04;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f0a017d

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object v13, v3

    .line 83
    check-cast v13, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    if-eqz v13, :cond_0

    .line 86
    .line 87
    const v1, 0x7f0a02b7

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .line 96
    if-eqz v3, :cond_0

    .line 97
    .line 98
    const v1, 0x7f0a054a

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    new-instance v8, Lb14;

    .line 118
    .line 119
    move-object v9, v0

    .line 120
    check-cast v9, Landroidx/core/widget/NestedScrollView;

    .line 121
    .line 122
    invoke-direct/range {v8 .. v13}, Lb14;-><init>(Landroidx/core/widget/NestedScrollView;Lfe;Lcom/google/android/material/button/MaterialButton;Lv04;Landroid/widget/LinearLayout;)V

    .line 123
    .line 124
    .line 125
    move-object v7, v8

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    move v2, v1

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return-object v7

    .line 144
    :pswitch_0
    check-cast v0, Lpu3;

    .line 145
    .line 146
    iget v1, v0, Lpu3;->n:I

    .line 147
    .line 148
    if-ge v1, v3, :cond_2

    .line 149
    .line 150
    add-int/2addr v1, v3

    .line 151
    iput v1, v0, Lpu3;->n:I

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_2
    const-string v0, "Google Drive fresh-session restart budget exhausted"

    .line 155
    .line 156
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    move-object v5, v7

    .line 160
    :goto_1
    return-object v5

    .line 161
    :pswitch_1
    check-cast v0, Lln3;

    .line 162
    .line 163
    new-instance v1, Lao3;

    .line 164
    .line 165
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 166
    .line 167
    check-cast v0, Lmn3;

    .line 168
    .line 169
    iget-object v0, v0, Lmn3;->e:Lcp1;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Lao3;-><init>(Lcp1;)V

    .line 172
    .line 173
    .line 174
    return-object v1

    .line 175
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 176
    .line 177
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const v1, 0x7f0d00b1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const v1, 0x7f0a00a8

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    check-cast v2, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 198
    .line 199
    if-eqz v2, :cond_3

    .line 200
    .line 201
    const v1, 0x7f0a0123

    .line 202
    .line 203
    .line 204
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    move-object v10, v2

    .line 209
    check-cast v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 210
    .line 211
    if-eqz v10, :cond_3

    .line 212
    .line 213
    const v1, 0x7f0a03a8

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-eqz v2, :cond_3

    .line 221
    .line 222
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 223
    .line 224
    new-instance v11, Lix0;

    .line 225
    .line 226
    const/4 v1, 0x6

    .line 227
    invoke-direct {v11, v1, v2, v2}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    const v1, 0x7f0a03e2

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    move-object v12, v2

    .line 238
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    .line 239
    .line 240
    if-eqz v12, :cond_3

    .line 241
    .line 242
    const v1, 0x7f0a0407

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    move-object v13, v2

    .line 250
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    .line 252
    if-eqz v13, :cond_3

    .line 253
    .line 254
    const v1, 0x7f0a04e5

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_3

    .line 262
    .line 263
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 264
    .line 265
    new-instance v14, Lix0;

    .line 266
    .line 267
    const/16 v1, 0x9

    .line 268
    .line 269
    invoke-direct {v14, v1, v2, v2}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v8, Lym3;

    .line 273
    .line 274
    move-object v9, v0

    .line 275
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 276
    .line 277
    invoke-direct/range {v8 .. v14}, Lym3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lix0;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lix0;)V

    .line 278
    .line 279
    .line 280
    move-object v7, v8

    .line 281
    goto :goto_2

    .line 282
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :goto_2
    return-object v7

    .line 298
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 299
    .line 300
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 301
    .line 302
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    iget-object v0, v0, Lkm3;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 307
    .line 308
    return-object v0

    .line 309
    :pswitch_4
    check-cast v0, Lyl3;

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    iget-object v2, v0, Lyl3;->f:Lgv7;

    .line 317
    .line 318
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    sget-object v2, Lp93;->a:Lp93;

    .line 328
    .line 329
    iget v2, v0, Lyl3;->e:I

    .line 330
    .line 331
    iget v0, v0, Lyl3;->d:I

    .line 332
    .line 333
    invoke-static {v2, v0}, Lp93;->d(II)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v3, " ("

    .line 340
    .line 341
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v0, ")"

    .line 348
    .line 349
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    return-object v0

    .line 364
    :pswitch_5
    check-cast v0, Lrj3;

    .line 365
    .line 366
    new-instance v1, Lao3;

    .line 367
    .line 368
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 369
    .line 370
    check-cast v0, Lsj3;

    .line 371
    .line 372
    iget-object v0, v0, Lsj3;->e:Lcp1;

    .line 373
    .line 374
    invoke-direct {v1, v0}, Lao3;-><init>(Lcp1;)V

    .line 375
    .line 376
    .line 377
    return-object v1

    .line 378
    :pswitch_6
    check-cast v0, Lvj;

    .line 379
    .line 380
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->P:I

    .line 381
    .line 382
    iget-object v0, v0, Lvj;->a:Ljava/lang/String;

    .line 383
    .line 384
    return-object v0

    .line 385
    :pswitch_7
    check-cast v0, Lpj2;

    .line 386
    .line 387
    iget-object v0, v0, Lpj2;->b:Lmk2;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    sget-object v1, Lzn4;->a:Lzn4;

    .line 393
    .line 394
    new-instance v1, Lqj;

    .line 395
    .line 396
    invoke-direct {v1, v0, v7, v3}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 397
    .line 398
    .line 399
    invoke-static {v7, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 400
    .line 401
    .line 402
    return-object v5

    .line 403
    :pswitch_8
    check-cast v0, Llr1;

    .line 404
    .line 405
    const-string v1, "config_app_backup_limits"

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    return-object v0

    .line 415
    :pswitch_9
    check-cast v0, Ljava/lang/String;

    .line 416
    .line 417
    if-eqz v0, :cond_6

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-nez v1, :cond_4

    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_4
    sget-object v1, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 427
    .line 428
    if-eqz v1, :cond_5

    .line 429
    .line 430
    invoke-virtual {v1, v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->remove(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :cond_5
    sget-object v0, Lbr1;->a:Lbr1;

    .line 434
    .line 435
    sget-object v0, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 436
    .line 437
    new-instance v1, Lah;

    .line 438
    .line 439
    const/16 v2, 0x11

    .line 440
    .line 441
    invoke-direct {v1, v0, v2}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 442
    .line 443
    .line 444
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 445
    .line 446
    .line 447
    :cond_6
    :goto_3
    return-object v5

    .line 448
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;

    .line 449
    .line 450
    sget v1, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V:I

    .line 451
    .line 452
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    iget-object v2, v1, Lqq1;->f:Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 457
    .line 458
    invoke-virtual {v1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v2, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_8

    .line 467
    .line 468
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/edit/ConfigEditActivity;->V()Lqq1;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lqq1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->hasValidSettings()Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    const v2, 0x7f140160

    .line 481
    .line 482
    .line 483
    const v4, 0x7f1303e6

    .line 484
    .line 485
    .line 486
    if-eqz v1, :cond_7

    .line 487
    .line 488
    new-instance v1, Lhv1;

    .line 489
    .line 490
    invoke-direct {v1, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 491
    .line 492
    .line 493
    new-instance v6, Ls35;

    .line 494
    .line 495
    invoke-direct {v6, v0, v2, v1, v7}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 496
    .line 497
    .line 498
    const v1, 0x7f130202

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v1}, Lv75;->n(I)V

    .line 502
    .line 503
    .line 504
    new-instance v1, Lub1;

    .line 505
    .line 506
    invoke-direct {v1, v0, v3}, Lub1;-><init>(Ljava/lang/Object;I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6, v4, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 510
    .line 511
    .line 512
    const v0, 0x7f1300f1

    .line 513
    .line 514
    .line 515
    invoke-virtual {v6, v0, v7}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 519
    .line 520
    .line 521
    goto :goto_4

    .line 522
    :cond_7
    new-instance v1, Lhv1;

    .line 523
    .line 524
    invoke-direct {v1, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 525
    .line 526
    .line 527
    new-instance v3, Ls35;

    .line 528
    .line 529
    invoke-direct {v3, v0, v2, v1, v7}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 530
    .line 531
    .line 532
    const v1, 0x7f1302cf

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v1}, Lv75;->v(I)V

    .line 536
    .line 537
    .line 538
    const v1, 0x7f1302d0

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v1}, Lv75;->n(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v4, v7}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 545
    .line 546
    .line 547
    new-instance v1, Liq1;

    .line 548
    .line 549
    invoke-direct {v1, v0, v6}, Liq1;-><init>(Ljava/lang/Object;I)V

    .line 550
    .line 551
    .line 552
    const v0, 0x7f1301ef

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v0, v1}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3}, Ls35;->m()Lwa;

    .line 559
    .line 560
    .line 561
    goto :goto_4

    .line 562
    :cond_8
    invoke-virtual {v0, v6}, Lil0;->A(Z)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Lil0;->z()V

    .line 566
    .line 567
    .line 568
    :goto_4
    return-object v5

    .line 569
    :pswitch_b
    check-cast v0, Lsl1;

    .line 570
    .line 571
    iget-object v0, v0, Lsl1;->a:Ljava/util/LinkedHashMap;

    .line 572
    .line 573
    const-string v1, "500"

    .line 574
    .line 575
    invoke-static {v0, v1}, Lx65;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    check-cast v0, Ljava/lang/String;

    .line 580
    .line 581
    return-object v0

    .line 582
    :pswitch_c
    check-cast v0, Luj1;

    .line 583
    .line 584
    sget-object v1, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;->Companion:Lob1;

    .line 585
    .line 586
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 587
    .line 588
    .line 589
    invoke-static {}, Lob1;->a()Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    sget-object v2, Lzn4;->a:Lzn4;

    .line 594
    .line 595
    new-instance v2, Lqf;

    .line 596
    .line 597
    const/4 v3, 0x5

    .line 598
    invoke-direct {v2, v3, v0, v1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 602
    .line 603
    .line 604
    return-object v5

    .line 605
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 606
    .line 607
    sget v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 608
    .line 609
    new-instance v1, Lmh1;

    .line 610
    .line 611
    invoke-direct {v1, v0}, Lmh1;-><init>(Lil0;)V

    .line 612
    .line 613
    .line 614
    return-object v1

    .line 615
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 616
    .line 617
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 618
    .line 619
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    iget-object v1, v0, Lhf1;->h:Lef1;

    .line 624
    .line 625
    if-nez v1, :cond_9

    .line 626
    .line 627
    goto :goto_5

    .line 628
    :cond_9
    iget-boolean v1, v1, Lef1;->i:Z

    .line 629
    .line 630
    if-eqz v1, :cond_a

    .line 631
    .line 632
    goto :goto_5

    .line 633
    :cond_a
    sget-object v1, Ltb1;->a:Ltb1;

    .line 634
    .line 635
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v1}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string v3, "Disconnecting cloud: "

    .line 646
    .line 647
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    const-string v2, "CloudDiagnosticsVM"

    .line 658
    .line 659
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    sget-object v1, Lzn4;->a:Lzn4;

    .line 663
    .line 664
    new-instance v1, Lff1;

    .line 665
    .line 666
    invoke-direct {v1, v0, v7, v6}, Lff1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 667
    .line 668
    .line 669
    invoke-static {v7, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 670
    .line 671
    .line 672
    :goto_5
    return-object v5

    .line 673
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 674
    .line 675
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 676
    .line 677
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    const-string v1, "org.swiftapps.swiftbackup.cloud.connect.extra.RUNTIME_SMOKE"

    .line 682
    .line 683
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 684
    .line 685
    .line 686
    move-result v0

    .line 687
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    return-object v0

    .line 692
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;

    .line 693
    .line 694
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->T:I

    .line 695
    .line 696
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/CallsBackupsActivity;->Q:Lgv7;

    .line 697
    .line 698
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    check-cast v0, Lni7;

    .line 703
    .line 704
    iget-object v0, v0, Lni7;->c:Lix0;

    .line 705
    .line 706
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 707
    .line 708
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 709
    .line 710
    return-object v0

    .line 711
    :pswitch_11
    check-cast v0, Lqk0;

    .line 712
    .line 713
    sget-object v1, Liu;->MEDIA:Liu;

    .line 714
    .line 715
    iget-object v2, v0, Lqk0;->h:Lji;

    .line 716
    .line 717
    invoke-virtual {v2}, Lji;->getSizeInfo()Lqx;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    if-eqz v2, :cond_b

    .line 722
    .line 723
    invoke-virtual {v2}, Lqx;->getMediaSize()J

    .line 724
    .line 725
    .line 726
    move-result-wide v2

    .line 727
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 728
    .line 729
    .line 730
    move-result-object v7

    .line 731
    :cond_b
    invoke-static {v7}, Lio4;->h(Ljava/lang/Long;)J

    .line 732
    .line 733
    .line 734
    move-result-wide v2

    .line 735
    invoke-virtual {v0, v1, v2, v3}, Lqk0;->n(Liu;J)Z

    .line 736
    .line 737
    .line 738
    move-result v0

    .line 739
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    return-object v0

    .line 744
    :pswitch_12
    check-cast v0, Landroid/app/Activity;

    .line 745
    .line 746
    const-string v1, "https://www.swiftapps.org/faq#appparts"

    .line 747
    .line 748
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    return-object v5

    .line 752
    :pswitch_13
    check-cast v0, Lc40;

    .line 753
    .line 754
    invoke-virtual {v0}, Lpw6;->g()Z

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    if-eqz v1, :cond_c

    .line 759
    .line 760
    iget-object v1, v0, Lc40;->o:Lex6;

    .line 761
    .line 762
    invoke-virtual {v1}, Lzy4;->d()Ljava/lang/Object;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    check-cast v1, Lji;

    .line 767
    .line 768
    goto :goto_6

    .line 769
    :cond_c
    iget-object v1, v0, Lc40;->m:Ljava/util/List;

    .line 770
    .line 771
    invoke-static {v1}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    check-cast v1, Lkz;

    .line 776
    .line 777
    invoke-virtual {v1}, Lkz;->a()Lji;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    :goto_6
    if-eqz v1, :cond_d

    .line 782
    .line 783
    invoke-virtual {v1}, Lji;->getName()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    goto :goto_7

    .line 788
    :cond_d
    move-object v2, v7

    .line 789
    :goto_7
    iget-object v3, v0, Lc40;->v:Lpw5;

    .line 790
    .line 791
    if-eqz v3, :cond_e

    .line 792
    .line 793
    iget-object v3, v3, Lpw5;->a:Ljava/lang/Object;

    .line 794
    .line 795
    check-cast v3, Ljava/lang/String;

    .line 796
    .line 797
    goto :goto_8

    .line 798
    :cond_e
    move-object v3, v7

    .line 799
    :goto_8
    if-eqz v1, :cond_f

    .line 800
    .line 801
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    goto :goto_9

    .line 806
    :cond_f
    move-object v4, v7

    .line 807
    :goto_9
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-eqz v3, :cond_10

    .line 812
    .line 813
    iget-object v0, v0, Lc40;->v:Lpw5;

    .line 814
    .line 815
    if-eqz v0, :cond_11

    .line 816
    .line 817
    iget-object v0, v0, Lpw5;->b:Ljava/lang/Object;

    .line 818
    .line 819
    move-object v7, v0

    .line 820
    check-cast v7, Landroid/graphics/Bitmap;

    .line 821
    .line 822
    goto :goto_a

    .line 823
    :cond_10
    if-eqz v1, :cond_11

    .line 824
    .line 825
    sget-object v3, Lj94;->a:Ljava/util/Set;

    .line 826
    .line 827
    new-instance v3, Lsx3;

    .line 828
    .line 829
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    invoke-virtual {v1}, Lji;->isInstalled()Z

    .line 834
    .line 835
    .line 836
    move-result v6

    .line 837
    invoke-direct {v3, v4, v6}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 838
    .line 839
    .line 840
    invoke-static {v3}, Lj94;->a(Lsx3;)Landroid/graphics/Bitmap;

    .line 841
    .line 842
    .line 843
    move-result-object v7

    .line 844
    invoke-virtual {v1}, Lji;->getPackageName()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    new-instance v3, Lpw5;

    .line 849
    .line 850
    invoke-direct {v3, v1, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    iput-object v3, v0, Lc40;->v:Lpw5;

    .line 854
    .line 855
    :cond_11
    :goto_a
    if-nez v2, :cond_12

    .line 856
    .line 857
    const-string v2, ""

    .line 858
    .line 859
    :cond_12
    invoke-static {v2, v7}, Lpw6;->m(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 860
    .line 861
    .line 862
    return-object v5

    .line 863
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;

    .line 864
    .line 865
    sget v1, Lorg/swiftapps/swiftbackup/appsquickactions/AppsQuickActionsActivity;->S:I

    .line 866
    .line 867
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const v1, 0x7f0d0038

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    const v1, 0x7f0a00a9

    .line 879
    .line 880
    .line 881
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    if-eqz v2, :cond_14

    .line 886
    .line 887
    invoke-static {v2}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    const v2, 0x7f0a0245

    .line 892
    .line 893
    .line 894
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 895
    .line 896
    .line 897
    move-result-object v3

    .line 898
    check-cast v3, Landroid/widget/FrameLayout;

    .line 899
    .line 900
    if-eqz v3, :cond_13

    .line 901
    .line 902
    new-instance v7, Lr30;

    .line 903
    .line 904
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 905
    .line 906
    invoke-direct {v7, v0, v1}, Lr30;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;)V

    .line 907
    .line 908
    .line 909
    goto :goto_b

    .line 910
    :cond_13
    move v1, v2

    .line 911
    :cond_14
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 916
    .line 917
    .line 918
    move-result-object v0

    .line 919
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    :goto_b
    return-object v7

    .line 927
    :pswitch_15
    check-cast v0, Lqx;

    .line 928
    .line 929
    invoke-static {v0}, Lqx;->m(Lqx;)J

    .line 930
    .line 931
    .line 932
    move-result-wide v0

    .line 933
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    return-object v0

    .line 938
    :pswitch_16
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 939
    .line 940
    const-string v1, "restore_ssaids"

    .line 941
    .line 942
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MSwitchPreference;

    .line 950
    .line 951
    return-object v0

    .line 952
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 953
    .line 954
    sget v1, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->M:I

    .line 955
    .line 956
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    const v1, 0x7f0d0029

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    move-object v1, v0

    .line 968
    check-cast v1, Landroid/widget/ScrollView;

    .line 969
    .line 970
    const v2, 0x7f0a0556

    .line 971
    .line 972
    .line 973
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    check-cast v3, Landroid/widget/TextView;

    .line 978
    .line 979
    if-eqz v3, :cond_15

    .line 980
    .line 981
    new-instance v7, Ltq;

    .line 982
    .line 983
    invoke-direct {v7, v1, v1, v3}, Ltq;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;Landroid/widget/TextView;)V

    .line 984
    .line 985
    .line 986
    goto :goto_c

    .line 987
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    :goto_c
    return-object v7

    .line 1003
    :pswitch_18
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 1004
    .line 1005
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->g(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)J

    .line 1006
    .line 1007
    .line 1008
    move-result-wide v0

    .line 1009
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    return-object v0

    .line 1014
    :pswitch_19
    check-cast v0, Lyl;

    .line 1015
    .line 1016
    iget-object v0, v0, Lyl;->b:Lji;

    .line 1017
    .line 1018
    invoke-virtual {v0}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    if-eqz v1, :cond_17

    .line 1023
    .line 1024
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 1025
    .line 1026
    .line 1027
    move-result v1

    .line 1028
    if-nez v1, :cond_16

    .line 1029
    .line 1030
    goto :goto_d

    .line 1031
    :cond_16
    invoke-virtual {v0}, Lji;->hasDeData()Z

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    if-eqz v0, :cond_17

    .line 1036
    .line 1037
    goto :goto_e

    .line 1038
    :cond_17
    :goto_d
    move v3, v6

    .line 1039
    :goto_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    return-object v0

    .line 1044
    :pswitch_1a
    check-cast v0, Lvl;

    .line 1045
    .line 1046
    invoke-virtual {v0}, Lvl;->i()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v0

    .line 1050
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    return-object v0

    .line 1055
    :pswitch_1b
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;

    .line 1056
    .line 1057
    sget v1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitsActivity;->M:I

    .line 1058
    .line 1059
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    const v1, 0x7f0d0024

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    const v1, 0x7f0a0188

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v3

    .line 1077
    if-eqz v3, :cond_18

    .line 1078
    .line 1079
    invoke-static {v3}, Lju7;->e(Landroid/view/View;)Lju7;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v10

    .line 1083
    const v1, 0x7f0a018a

    .line 1084
    .line 1085
    .line 1086
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v3

    .line 1090
    if-eqz v3, :cond_18

    .line 1091
    .line 1092
    invoke-static {v3}, Lju7;->e(Landroid/view/View;)Lju7;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v11

    .line 1096
    const v1, 0x7f0a018b

    .line 1097
    .line 1098
    .line 1099
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    if-eqz v3, :cond_18

    .line 1104
    .line 1105
    invoke-static {v3}, Lju7;->e(Landroid/view/View;)Lju7;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v12

    .line 1109
    const v1, 0x7f0a0193

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v3

    .line 1116
    if-eqz v3, :cond_18

    .line 1117
    .line 1118
    invoke-static {v3}, Lju7;->e(Landroid/view/View;)Lju7;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v13

    .line 1122
    const v1, 0x7f0a042d

    .line 1123
    .line 1124
    .line 1125
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v3

    .line 1129
    move-object v14, v3

    .line 1130
    check-cast v14, Landroidx/core/widget/NestedScrollView;

    .line 1131
    .line 1132
    if-eqz v14, :cond_18

    .line 1133
    .line 1134
    const v1, 0x7f0a05b0

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v3

    .line 1141
    move-object v15, v3

    .line 1142
    check-cast v15, Landroid/widget/TextView;

    .line 1143
    .line 1144
    if-eqz v15, :cond_18

    .line 1145
    .line 1146
    invoke-static {v0, v2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v1

    .line 1150
    move-object/from16 v16, v1

    .line 1151
    .line 1152
    check-cast v16, Landroid/widget/TextView;

    .line 1153
    .line 1154
    if-eqz v16, :cond_19

    .line 1155
    .line 1156
    new-instance v8, Lvk;

    .line 1157
    .line 1158
    move-object v9, v0

    .line 1159
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1160
    .line 1161
    invoke-direct/range {v8 .. v16}, Lvk;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lju7;Lju7;Lju7;Lju7;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1162
    .line 1163
    .line 1164
    move-object v7, v8

    .line 1165
    goto :goto_f

    .line 1166
    :cond_18
    move v2, v1

    .line 1167
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    :goto_f
    return-object v7

    .line 1183
    :pswitch_1c
    check-cast v0, Lhk;

    .line 1184
    .line 1185
    invoke-virtual {v0}, Lhk;->e()Lq63;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    iget-object v0, v0, Lhk;->b:Ljava/lang/String;

    .line 1190
    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1192
    .line 1193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    const-string v0, ".app"

    .line 1200
    .line 1201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    invoke-virtual {v1, v0}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    return-object v0

    .line 1213
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
