.class public final synthetic Lak;
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
    iput p2, p0, Lak;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lak;->b:Ljava/lang/Object;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lak;->a:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-string v4, "Missing required view with ID: "

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v0, v0, Lak;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Lol1;

    .line 18
    .line 19
    sget-object v1, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    iget-object v2, v0, Lol1;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lho;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v0, Lol1;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lho;

    .line 43
    .line 44
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-object v1

    .line 48
    :pswitch_0
    check-cast v0, Lq63;

    .line 49
    .line 50
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 51
    .line 52
    sget-object v2, Lp93;->a:Lp93;

    .line 53
    .line 54
    invoke-virtual {v0}, Lq63;->A()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, "Decompressed file size: "

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/4 v5, 0x4

    .line 73
    const/4 v6, 0x0

    .line 74
    const-string v2, "MultiCompressor"

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lbe8;->a:Lbe8;

    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 84
    .line 85
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->Z()Lye5;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lzn4;->a:Lzn4;

    .line 92
    .line 93
    new-instance v1, Lqj;

    .line 94
    .line 95
    const/4 v2, 0x2

    .line 96
    invoke-direct {v1, v0, v7, v2}, Lqj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v7, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 100
    .line 101
    .line 102
    sget-object v0, Lbe8;->a:Lbe8;

    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 106
    .line 107
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->T:I

    .line 108
    .line 109
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->Q:Lgv7;

    .line 110
    .line 111
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lni7;

    .line 116
    .line 117
    iget-object v0, v0, Lni7;->c:Lix0;

    .line 118
    .line 119
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 122
    .line 123
    return-object v0

    .line 124
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 125
    .line 126
    sget v1, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->P:I

    .line 127
    .line 128
    new-instance v1, Lpa8;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Lpa8;-><init>(Lk28;)V

    .line 131
    .line 132
    .line 133
    return-object v1

    .line 134
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 135
    .line 136
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 137
    .line 138
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q()Lrr4;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v0, v0, Lrr4;->n:Landroid/widget/ImageView;

    .line 143
    .line 144
    return-object v0

    .line 145
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 146
    .line 147
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->c(Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 157
    .line 158
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/intro/d;->l:Lix6;

    .line 159
    .line 160
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lbe8;->a:Lbe8;

    .line 166
    .line 167
    return-object v0

    .line 168
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 169
    .line 170
    sget-object v1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 171
    .line 172
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Y()Lol5;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const v1, 0x7f0a034c

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lol5;->setSelectedItemId(I)V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lbe8;->a:Lbe8;

    .line 183
    .line 184
    return-object v0

    .line 185
    :pswitch_8
    check-cast v0, Lns3;

    .line 186
    .line 187
    new-instance v1, Lms3;

    .line 188
    .line 189
    iget-object v2, v0, Lns3;->a:Landroid/content/Context;

    .line 190
    .line 191
    iget-object v3, v0, Lns3;->b:Ljava/lang/String;

    .line 192
    .line 193
    new-instance v4, Ltr9;

    .line 194
    .line 195
    const/16 v5, 0x8

    .line 196
    .line 197
    invoke-direct {v4, v5, v6}, Ltr9;-><init>(IZ)V

    .line 198
    .line 199
    .line 200
    iput-object v7, v4, Ltr9;->b:Ljava/lang/Object;

    .line 201
    .line 202
    iget-object v5, v0, Lns3;->c:Lkh5;

    .line 203
    .line 204
    invoke-direct {v1, v2, v3, v4, v5}, Lms3;-><init>(Landroid/content/Context;Ljava/lang/String;Ltr9;Lkh5;)V

    .line 205
    .line 206
    .line 207
    iget-boolean v0, v0, Lns3;->e:Z

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 210
    .line 211
    .line 212
    return-object v1

    .line 213
    :pswitch_9
    check-cast v0, Lkp3;

    .line 214
    .line 215
    invoke-virtual {v0}, Lkp3;->m()Lnp3;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0, v5, v5}, Lnp3;->j(ZZ)V

    .line 220
    .line 221
    .line 222
    sget-object v0, Lbe8;->a:Lbe8;

    .line 223
    .line 224
    return-object v0

    .line 225
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 226
    .line 227
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 228
    .line 229
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 234
    .line 235
    invoke-virtual {v0, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lbe8;->a:Lbe8;

    .line 239
    .line 240
    return-object v0

    .line 241
    :pswitch_b
    check-cast v0, Lin3;

    .line 242
    .line 243
    invoke-virtual {v0}, Lin3;->k()Lhn3;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iget-object v1, v1, Lhn3;->c:Lq63;

    .line 248
    .line 249
    invoke-virtual {v1}, Lq63;->j()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_1

    .line 254
    .line 255
    invoke-virtual {v0}, Lin3;->k()Lhn3;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    iget-object v2, v2, Lhn3;->a:Lzn7;

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    new-instance v3, Lcv;

    .line 265
    .line 266
    const/16 v4, 0x9

    .line 267
    .line 268
    invoke-direct {v3, v4, v1, v2}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    const/16 v2, 0xe

    .line 272
    .line 273
    const-string v4, "FolderPickerHelper"

    .line 274
    .line 275
    invoke-static {v4, v7, v6, v3, v2}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 280
    .line 281
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_1

    .line 286
    .line 287
    iget-object v0, v0, Lin3;->k:Lix6;

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_1
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 294
    .line 295
    iget-object v3, v0, La55;->b:Ljava/lang/String;

    .line 296
    .line 297
    const-string v0, "Folder is not selectable: "

    .line 298
    .line 299
    invoke-static {v1, v0}, Lxs1;->i(Lq63;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    const/4 v6, 0x4

    .line 304
    const/4 v7, 0x0

    .line 305
    const/4 v5, 0x0

    .line 306
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :goto_1
    sget-object v0, Lbe8;->a:Lbe8;

    .line 310
    .line 311
    return-object v0

    .line 312
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 313
    .line 314
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 315
    .line 316
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->Z()Lkm3;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v0, v0, Lkm3;->e:Lcom/google/android/material/textfield/TextInputEditText;

    .line 321
    .line 322
    return-object v0

    .line 323
    :pswitch_d
    check-cast v0, Ljc3;

    .line 324
    .line 325
    iget-boolean v0, v0, Ljc3;->o:Z

    .line 326
    .line 327
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    :pswitch_e
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;

    .line 333
    .line 334
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/DropboxSignInActivity;->P:I

    .line 335
    .line 336
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const v1, 0x7f0d0095

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const v1, 0x7f0a02bc

    .line 348
    .line 349
    .line 350
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    check-cast v2, Landroid/widget/ImageView;

    .line 355
    .line 356
    if-eqz v2, :cond_2

    .line 357
    .line 358
    const v1, 0x7f0a0530

    .line 359
    .line 360
    .line 361
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    check-cast v2, Landroid/widget/TextView;

    .line 366
    .line 367
    if-eqz v2, :cond_2

    .line 368
    .line 369
    new-instance v7, Ldr2;

    .line 370
    .line 371
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 372
    .line 373
    invoke-direct {v7, v0, v2}, Ldr2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    .line 374
    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    :goto_2
    return-object v7

    .line 393
    :pswitch_f
    check-cast v0, Lrj2;

    .line 394
    .line 395
    new-instance v1, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .line 399
    .line 400
    iget-object v0, v0, Lrj2;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    :goto_3
    if-ge v6, v2, :cond_3

    .line 407
    .line 408
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    add-int/lit8 v6, v6, 0x1

    .line 419
    .line 420
    goto :goto_3

    .line 421
    :cond_3
    return-object v1

    .line 422
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 423
    .line 424
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 425
    .line 426
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const v1, 0x7f0d008b

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    const v1, 0x7f0a00a9

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    if-eqz v2, :cond_9

    .line 445
    .line 446
    invoke-static {v2}, Lw00;->b(Landroid/view/View;)Lw00;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    const v1, 0x7f0a01d2

    .line 451
    .line 452
    .line 453
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    if-eqz v2, :cond_9

    .line 458
    .line 459
    invoke-static {v2}, Lej2;->a(Landroid/view/View;)Lej2;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    const v1, 0x7f0a01d3

    .line 464
    .line 465
    .line 466
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    if-eqz v2, :cond_9

    .line 471
    .line 472
    invoke-static {v2}, Lej2;->a(Landroid/view/View;)Lej2;

    .line 473
    .line 474
    .line 475
    move-result-object v12

    .line 476
    const v1, 0x7f0a01d4

    .line 477
    .line 478
    .line 479
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    if-eqz v2, :cond_9

    .line 484
    .line 485
    const v1, 0x7f0a00c1

    .line 486
    .line 487
    .line 488
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    check-cast v3, Landroid/widget/LinearLayout;

    .line 493
    .line 494
    if-eqz v3, :cond_8

    .line 495
    .line 496
    const v1, 0x7f0a0101

    .line 497
    .line 498
    .line 499
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v3

    .line 503
    move-object v15, v3

    .line 504
    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 505
    .line 506
    if-eqz v15, :cond_8

    .line 507
    .line 508
    const v1, 0x7f0a010d

    .line 509
    .line 510
    .line 511
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    move-object/from16 v16, v3

    .line 516
    .line 517
    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 518
    .line 519
    if-eqz v16, :cond_8

    .line 520
    .line 521
    const v1, 0x7f0a0111

    .line 522
    .line 523
    .line 524
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    move-object/from16 v17, v3

    .line 529
    .line 530
    check-cast v17, Lcom/google/android/material/button/MaterialButton;

    .line 531
    .line 532
    if-eqz v17, :cond_8

    .line 533
    .line 534
    const v1, 0x7f0a0135

    .line 535
    .line 536
    .line 537
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v3

    .line 541
    move-object/from16 v18, v3

    .line 542
    .line 543
    check-cast v18, Lcom/google/android/material/button/MaterialButton;

    .line 544
    .line 545
    if-eqz v18, :cond_8

    .line 546
    .line 547
    const v1, 0x7f0a01d5

    .line 548
    .line 549
    .line 550
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    if-eqz v3, :cond_8

    .line 555
    .line 556
    const v1, 0x7f0a00eb

    .line 557
    .line 558
    .line 559
    invoke-static {v3, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 564
    .line 565
    if-eqz v5, :cond_7

    .line 566
    .line 567
    move-object v1, v3

    .line 568
    check-cast v1, Landroid/widget/FrameLayout;

    .line 569
    .line 570
    const v6, 0x7f0a02fb

    .line 571
    .line 572
    .line 573
    invoke-static {v3, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    if-eqz v8, :cond_6

    .line 578
    .line 579
    const v6, 0x7f0a0159

    .line 580
    .line 581
    .line 582
    invoke-static {v8, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    if-eqz v9, :cond_5

    .line 587
    .line 588
    const v6, 0x7f0a015a

    .line 589
    .line 590
    .line 591
    invoke-static {v8, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    check-cast v9, Lcom/google/android/material/chip/Chip;

    .line 596
    .line 597
    if-eqz v9, :cond_5

    .line 598
    .line 599
    const v6, 0x7f0a0540

    .line 600
    .line 601
    .line 602
    invoke-static {v8, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 603
    .line 604
    .line 605
    move-result-object v9

    .line 606
    if-eqz v9, :cond_5

    .line 607
    .line 608
    const v6, 0x7f0a0541

    .line 609
    .line 610
    .line 611
    invoke-static {v8, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    if-eqz v9, :cond_5

    .line 616
    .line 617
    new-instance v6, Lke;

    .line 618
    .line 619
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 620
    .line 621
    const/4 v9, 0x3

    .line 622
    invoke-direct {v6, v8, v9}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 623
    .line 624
    .line 625
    const v8, 0x7f0a0302

    .line 626
    .line 627
    .line 628
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 629
    .line 630
    .line 631
    move-result-object v9

    .line 632
    check-cast v9, Landroid/widget/LinearLayout;

    .line 633
    .line 634
    if-eqz v9, :cond_4

    .line 635
    .line 636
    const v8, 0x7f0a03ed

    .line 637
    .line 638
    .line 639
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 640
    .line 641
    .line 642
    move-result-object v13

    .line 643
    check-cast v13, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 644
    .line 645
    if-eqz v13, :cond_4

    .line 646
    .line 647
    const v8, 0x7f0a0556

    .line 648
    .line 649
    .line 650
    invoke-static {v3, v8}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 651
    .line 652
    .line 653
    move-result-object v14

    .line 654
    check-cast v14, Landroid/widget/TextView;

    .line 655
    .line 656
    if-eqz v14, :cond_4

    .line 657
    .line 658
    new-instance v3, Lij2;

    .line 659
    .line 660
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 661
    .line 662
    .line 663
    iput-object v1, v3, Lij2;->a:Ljava/lang/Object;

    .line 664
    .line 665
    iput-object v5, v3, Lij2;->b:Ljava/lang/Object;

    .line 666
    .line 667
    iput-object v6, v3, Lij2;->c:Ljava/lang/Object;

    .line 668
    .line 669
    iput-object v9, v3, Lij2;->d:Ljava/lang/Object;

    .line 670
    .line 671
    iput-object v13, v3, Lij2;->e:Ljava/lang/Object;

    .line 672
    .line 673
    iput-object v14, v3, Lij2;->f:Ljava/lang/Object;

    .line 674
    .line 675
    const v1, 0x7f0a01e2

    .line 676
    .line 677
    .line 678
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 679
    .line 680
    .line 681
    move-result-object v20

    .line 682
    if-eqz v20, :cond_8

    .line 683
    .line 684
    const v1, 0x7f0a02b5

    .line 685
    .line 686
    .line 687
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    move-object/from16 v21, v5

    .line 692
    .line 693
    check-cast v21, Landroid/widget/ImageView;

    .line 694
    .line 695
    if-eqz v21, :cond_8

    .line 696
    .line 697
    const v1, 0x7f0a02b7

    .line 698
    .line 699
    .line 700
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    move-object/from16 v22, v5

    .line 705
    .line 706
    check-cast v22, Landroid/widget/ImageView;

    .line 707
    .line 708
    if-eqz v22, :cond_8

    .line 709
    .line 710
    const v1, 0x7f0a02bd

    .line 711
    .line 712
    .line 713
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    move-object/from16 v23, v5

    .line 718
    .line 719
    check-cast v23, Landroid/widget/ImageView;

    .line 720
    .line 721
    if-eqz v23, :cond_8

    .line 722
    .line 723
    const v1, 0x7f0a03e7

    .line 724
    .line 725
    .line 726
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 727
    .line 728
    .line 729
    move-result-object v5

    .line 730
    move-object/from16 v24, v5

    .line 731
    .line 732
    check-cast v24, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 733
    .line 734
    if-eqz v24, :cond_8

    .line 735
    .line 736
    const v1, 0x7f0a0514

    .line 737
    .line 738
    .line 739
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    move-object/from16 v25, v5

    .line 744
    .line 745
    check-cast v25, Landroid/widget/TextView;

    .line 746
    .line 747
    if-eqz v25, :cond_8

    .line 748
    .line 749
    const v1, 0x7f0a056e

    .line 750
    .line 751
    .line 752
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    move-object/from16 v26, v5

    .line 757
    .line 758
    check-cast v26, Landroid/widget/TextView;

    .line 759
    .line 760
    if-eqz v26, :cond_8

    .line 761
    .line 762
    const v1, 0x7f0a05c9

    .line 763
    .line 764
    .line 765
    invoke-static {v2, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    move-object/from16 v27, v5

    .line 770
    .line 771
    check-cast v27, Landroid/widget/TextView;

    .line 772
    .line 773
    if-eqz v27, :cond_8

    .line 774
    .line 775
    new-instance v13, Lhj2;

    .line 776
    .line 777
    move-object v14, v2

    .line 778
    check-cast v14, Lcom/google/android/material/card/MaterialCardView;

    .line 779
    .line 780
    move-object/from16 v19, v3

    .line 781
    .line 782
    invoke-direct/range {v13 .. v27}, Lhj2;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lij2;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 783
    .line 784
    .line 785
    const v1, 0x7f0a042d

    .line 786
    .line 787
    .line 788
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    move-object v14, v2

    .line 793
    check-cast v14, Landroidx/core/widget/NestedScrollView;

    .line 794
    .line 795
    if-eqz v14, :cond_9

    .line 796
    .line 797
    new-instance v8, Ldj2;

    .line 798
    .line 799
    move-object v9, v0

    .line 800
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 801
    .line 802
    invoke-direct/range {v8 .. v14}, Ldj2;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lw00;Lej2;Lej2;Lhj2;Landroidx/core/widget/NestedScrollView;)V

    .line 803
    .line 804
    .line 805
    move-object v7, v8

    .line 806
    goto :goto_5

    .line 807
    :cond_4
    move v1, v8

    .line 808
    goto :goto_4

    .line 809
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    goto :goto_5

    .line 825
    :cond_6
    move v1, v6

    .line 826
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    goto :goto_5

    .line 842
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    goto :goto_5

    .line 858
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    :goto_5
    return-object v7

    .line 874
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 875
    .line 876
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->c(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;)Ljava/util/List;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    return-object v0

    .line 881
    :pswitch_12
    check-cast v0, Lio1;

    .line 882
    .line 883
    new-instance v1, Lxx6;

    .line 884
    .line 885
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    if-eqz v3, :cond_a

    .line 894
    .line 895
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 900
    .line 901
    .line 902
    move-result-object v7

    .line 903
    :cond_a
    invoke-direct {v1, v2, v0, v7}, Lxx6;-><init>(Landroid/app/Application;Lwx6;Landroid/os/Bundle;)V

    .line 904
    .line 905
    .line 906
    return-object v1

    .line 907
    :pswitch_13
    check-cast v0, Leb2;

    .line 908
    .line 909
    sget-object v1, Lsf1;->g:Lsf1;

    .line 910
    .line 911
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    .line 913
    .line 914
    const-class v2, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 915
    .line 916
    invoke-virtual {v0, v2}, Leb2;->c(Ljava/lang/Class;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 921
    .line 922
    if-eqz v0, :cond_c

    .line 923
    .line 924
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getItemId()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    invoke-virtual {v1, v2}, Ldv;->b(Ljava/lang/String;)Ljl0;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    if-eqz v2, :cond_b

    .line 933
    .line 934
    goto :goto_6

    .line 935
    :cond_b
    iget-object v2, v1, Ldv;->a:Ljava/lang/String;

    .line 936
    .line 937
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->toDisplayString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    .line 942
    .line 943
    const-string v5, "onChildAdded = "

    .line 944
    .line 945
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1, v0}, Ldv;->l(Ljl0;)V

    .line 959
    .line 960
    .line 961
    :cond_c
    :goto_6
    sget-object v0, Lbe8;->a:Lbe8;

    .line 962
    .line 963
    return-object v0

    .line 964
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;

    .line 965
    .line 966
    sget v1, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->Z:I

    .line 967
    .line 968
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/diagnostics/CloudDiagnosticsActivity;->V()Lhf1;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-virtual {v0}, Lhf1;->n()V

    .line 973
    .line 974
    .line 975
    sget-object v0, Lbe8;->a:Lbe8;

    .line 976
    .line 977
    return-object v0

    .line 978
    :pswitch_15
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;

    .line 979
    .line 980
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->c0:I

    .line 981
    .line 982
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/CallsBackupRestoreActivity;->Z()Lli7;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    iget-object v0, v0, Lli7;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 987
    .line 988
    return-object v0

    .line 989
    :pswitch_16
    check-cast v0, Lxi0;

    .line 990
    .line 991
    iget-object v0, v0, Lxi0;->a:Lil0;

    .line 992
    .line 993
    sget-object v1, Ltb1;->a:Ltb1;

    .line 994
    .line 995
    invoke-static {}, Lqb1;->m()Z

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    if-eqz v1, :cond_d

    .line 1000
    .line 1001
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 1002
    .line 1003
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_7

    .line 1007
    :cond_d
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 1008
    .line 1009
    new-instance v1, Landroid/content/Intent;

    .line 1010
    .line 1011
    const-class v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 1012
    .line 1013
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1014
    .line 1015
    .line 1016
    const-string v2, "cloud_constant"

    .line 1017
    .line 1018
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1023
    .line 1024
    .line 1025
    const/16 v2, 0x7d4

    .line 1026
    .line 1027
    invoke-virtual {v0, v1, v2}, Lio1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1028
    .line 1029
    .line 1030
    :goto_7
    sget-object v0, Lbe8;->a:Lbe8;

    .line 1031
    .line 1032
    return-object v0

    .line 1033
    :pswitch_17
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 1034
    .line 1035
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;->s0:I

    .line 1036
    .line 1037
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const v1, 0x7f0d0034

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v0, v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    const v1, 0x7f0a00aa

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v2

    .line 1055
    if-eqz v2, :cond_e

    .line 1056
    .line 1057
    invoke-static {v2}, Lx00;->a(Landroid/view/View;)Lx00;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v10

    .line 1061
    const v1, 0x7f0a00e3

    .line 1062
    .line 1063
    .line 1064
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    move-object v11, v2

    .line 1069
    check-cast v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1070
    .line 1071
    if-eqz v11, :cond_e

    .line 1072
    .line 1073
    const v1, 0x7f0a0209

    .line 1074
    .line 1075
    .line 1076
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v2

    .line 1080
    if-eqz v2, :cond_e

    .line 1081
    .line 1082
    invoke-static {v2}, Ley2;->a(Landroid/view/View;)Ley2;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v12

    .line 1086
    const v1, 0x7f0a0220

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v2

    .line 1093
    move-object v13, v2

    .line 1094
    check-cast v13, Lcom/l4digital/fastscroll/FastScroller;

    .line 1095
    .line 1096
    if-eqz v13, :cond_e

    .line 1097
    .line 1098
    const v1, 0x7f0a03a8

    .line 1099
    .line 1100
    .line 1101
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v2

    .line 1105
    move-object v14, v2

    .line 1106
    check-cast v14, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 1107
    .line 1108
    if-eqz v14, :cond_e

    .line 1109
    .line 1110
    const v1, 0x7f0a03eb

    .line 1111
    .line 1112
    .line 1113
    invoke-static {v0, v1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v2

    .line 1117
    move-object v15, v2

    .line 1118
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    .line 1119
    .line 1120
    if-eqz v15, :cond_e

    .line 1121
    .line 1122
    new-instance v8, Lg20;

    .line 1123
    .line 1124
    move-object v9, v0

    .line 1125
    check-cast v9, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 1126
    .line 1127
    invoke-direct/range {v8 .. v15}, Lg20;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lx00;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Ley2;Lcom/l4digital/fastscroll/FastScroller;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1128
    .line 1129
    .line 1130
    move-object v7, v8

    .line 1131
    goto :goto_8

    .line 1132
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-static {v0}, Lf6;->n(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    :goto_8
    return-object v7

    .line 1148
    :pswitch_18
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 1149
    .line 1150
    const-string v1, "multiple_backups_strategy"

    .line 1151
    .line 1152
    invoke-virtual {v0, v1}, Lc46;->j(Ljava/lang/String;)Landroidx/preference/Preference;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    .line 1158
    .line 1159
    return-object v0

    .line 1160
    :pswitch_19
    check-cast v0, Ldt;

    .line 1161
    .line 1162
    const v1, 0x7f0a03ea

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v0, v1}, Lzm;->findViewById(I)Landroid/view/View;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 1170
    .line 1171
    return-object v0

    .line 1172
    :pswitch_1a
    check-cast v0, Ldm;

    .line 1173
    .line 1174
    iget-object v0, v0, Ldm;->e:Lgv7;

    .line 1175
    .line 1176
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    check-cast v0, Ljava/util/List;

    .line 1181
    .line 1182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1187
    .line 1188
    .line 1189
    move-result v1

    .line 1190
    if-eqz v1, :cond_f

    .line 1191
    .line 1192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    check-cast v1, Lq63;

    .line 1197
    .line 1198
    invoke-virtual {v1}, Lq63;->A()J

    .line 1199
    .line 1200
    .line 1201
    move-result-wide v4

    .line 1202
    add-long/2addr v2, v4

    .line 1203
    goto :goto_9

    .line 1204
    :cond_f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v0

    .line 1208
    return-object v0

    .line 1209
    :pswitch_1b
    check-cast v0, Lwl;

    .line 1210
    .line 1211
    iget-object v0, v0, Lwl;->b:Lq63;

    .line 1212
    .line 1213
    invoke-virtual {v0}, Lq63;->A()J

    .line 1214
    .line 1215
    .line 1216
    move-result-wide v0

    .line 1217
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    return-object v0

    .line 1222
    :pswitch_1c
    check-cast v0, Lhk;

    .line 1223
    .line 1224
    sget-object v1, Lhk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1225
    .line 1226
    iget-object v1, v0, Lhk;->a:Ljava/lang/String;

    .line 1227
    .line 1228
    invoke-static {v1}, Lfk;->e(Ljava/lang/String;)Ljava/lang/Long;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v1

    .line 1232
    if-eqz v1, :cond_10

    .line 1233
    .line 1234
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1235
    .line 1236
    .line 1237
    move-result-wide v0

    .line 1238
    goto :goto_c

    .line 1239
    :cond_10
    :try_start_0
    invoke-virtual {v0}, Lhk;->u()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    if-eqz v1, :cond_11

    .line 1244
    .line 1245
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;->getDateBackup()Ljava/lang/Long;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    if-eqz v1, :cond_11

    .line 1250
    .line 1251
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v0

    .line 1255
    :goto_a
    move-wide v2, v0

    .line 1256
    goto :goto_b

    .line 1257
    :cond_11
    invoke-virtual {v0}, Lhk;->v()Lq63;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Lq63;->z()J

    .line 1262
    .line 1263
    .line 1264
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    goto :goto_a

    .line 1266
    :catch_0
    :goto_b
    move-wide v0, v2

    .line 1267
    :goto_c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    return-object v0

    .line 1272
    nop

    .line 1273
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
