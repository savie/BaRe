.class public final synthetic Ld7;
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

    .line 1
    iput p2, p0, Ld7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ld7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld7;->a:I

    .line 4
    .line 5
    const v2, 0x7f1303e6

    .line 6
    .line 7
    .line 8
    const v3, 0x7f13007f

    .line 9
    .line 10
    .line 11
    const v4, 0x7f140160

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x3

    .line 16
    const/4 v7, 0x1

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    sget-object v10, Lbe8;->a:Lbe8;

    .line 20
    .line 21
    iget-object v0, v0, Ld7;->b:Ljava/lang/Object;

    .line 22
    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Landroid/view/MenuItem;

    .line 31
    .line 32
    sget-object v2, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->q:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    new-instance v3, Lkg;

    .line 40
    .line 41
    const/16 v4, 0xf

    .line 42
    .line 43
    invoke-direct {v3, v4, v1, v0}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1, v9, v3}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->k(Landroid/widget/LinearLayout;Landroid/view/MenuItem;ZLbt3;)V

    .line 47
    .line 48
    .line 49
    return-object v10

    .line 50
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 51
    .line 52
    move-object/from16 v1, p1

    .line 53
    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    sget v2, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->P(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v10

    .line 65
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;

    .line 66
    .line 67
    move-object/from16 v1, p1

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/OneDriveSignInActivity;->L:I

    .line 76
    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    const/4 v9, -0x1

    .line 80
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    return-object v10

    .line 87
    :pswitch_2
    move-object v13, v0

    .line 88
    check-cast v13, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 89
    .line 90
    move-object/from16 v0, p1

    .line 91
    .line 92
    check-cast v0, Lfe5;

    .line 93
    .line 94
    iget-object v1, v13, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->R:Lgv7;

    .line 95
    .line 96
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    check-cast v1, Landroid/widget/ProgressBar;

    .line 104
    .line 105
    iget-boolean v2, v0, Lfe5;->a:Z

    .line 106
    .line 107
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v13, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;->S:Lgv7;

    .line 111
    .line 112
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 117
    .line 118
    iget-boolean v3, v0, Lfe5;->a:Z

    .line 119
    .line 120
    xor-int/lit8 v4, v3, 0x1

    .line 121
    .line 122
    invoke-static {v2, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 123
    .line 124
    .line 125
    if-nez v3, :cond_1

    .line 126
    .line 127
    iget-object v0, v0, Lfe5;->b:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 134
    .line 135
    invoke-virtual {v2, v7}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setLinearLayoutManager(I)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lee5;

    .line 139
    .line 140
    new-instance v11, Lh11;

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v18, 0x1

    .line 145
    .line 146
    const/4 v12, 0x2

    .line 147
    const-class v14, Lorg/swiftapps/swiftbackup/messagescalls/backups/MessagesBackupsActivity;

    .line 148
    .line 149
    const-string v15, "onBackupItemMenuClick"

    .line 150
    .line 151
    const-string v16, "onBackupItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/model/provider/MessagesBackupItem;)V"

    .line 152
    .line 153
    invoke-direct/range {v11 .. v18}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    invoke-direct {v2, v11}, Lee5;-><init>(Lqt3;)V

    .line 157
    .line 158
    .line 159
    new-instance v14, Lfm7;

    .line 160
    .line 161
    const/16 v18, 0x0

    .line 162
    .line 163
    const/16 v19, 0x1e

    .line 164
    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    move-object v15, v0

    .line 168
    invoke-direct/range {v14 .. v19}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v14, v9}, Lgm7;->w(Lfm7;Z)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lh20;

    .line 175
    .line 176
    invoke-direct {v0, v13, v6}, Lh20;-><init>(Ljava/lang/Object;I)V

    .line 177
    .line 178
    .line 179
    iput-object v0, v2, Lgm7;->j:Lqt3;

    .line 180
    .line 181
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 188
    .line 189
    .line 190
    :cond_1
    return-object v10

    .line 191
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 192
    .line 193
    move-object/from16 v1, p1

    .line 194
    .line 195
    check-cast v1, Ljava/lang/Boolean;

    .line 196
    .line 197
    sget v2, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_2

    .line 204
    .line 205
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->f0()V

    .line 206
    .line 207
    .line 208
    :cond_2
    return-object v10

    .line 209
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 210
    .line 211
    move-object/from16 v1, p1

    .line 212
    .line 213
    check-cast v1, Ljava/lang/Boolean;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 220
    .line 221
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->R:Lgv7;

    .line 222
    .line 223
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_3

    .line 237
    .line 238
    const/high16 v1, 0x3f800000    # 1.0f

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 242
    .line 243
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 244
    .line 245
    .line 246
    return-object v10

    .line 247
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 248
    .line 249
    move-object/from16 v1, p1

    .line 250
    .line 251
    check-cast v1, Ljava/lang/Boolean;

    .line 252
    .line 253
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->P:Lgv7;

    .line 263
    .line 264
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 269
    .line 270
    invoke-static {v2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Q:Lgv7;

    .line 274
    .line 275
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 280
    .line 281
    xor-int/lit8 v3, v1, 0x1

    .line 282
    .line 283
    invoke-static {v2, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 284
    .line 285
    .line 286
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->U:Lgv7;

    .line 287
    .line 288
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 293
    .line 294
    if-nez v1, :cond_4

    .line 295
    .line 296
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eq v1, v7, :cond_5

    .line 301
    .line 302
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-ne v0, v5, :cond_4

    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_4
    move v7, v9

    .line 310
    :cond_5
    :goto_1
    invoke-static {v2, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 311
    .line 312
    .line 313
    return-object v10

    .line 314
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 315
    .line 316
    move-object/from16 v1, p1

    .line 317
    .line 318
    check-cast v1, Lpf4;

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    sget-object v2, Lsf4;->a:[I

    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    aget v1, v2, v1

    .line 330
    .line 331
    if-eq v1, v7, :cond_8

    .line 332
    .line 333
    if-eq v1, v5, :cond_7

    .line 334
    .line 335
    if-ne v1, v6, :cond_6

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_6
    invoke-static {}, Lq;->j()V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_7
    invoke-virtual {v0}, Lqo0;->f()V

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_8
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/intro/d;->n:Lex6;

    .line 347
    .line 348
    invoke-virtual {v0, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :goto_2
    move-object v8, v10

    .line 352
    :goto_3
    return-object v8

    .line 353
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 354
    .line 355
    move-object/from16 v1, p1

    .line 356
    .line 357
    check-cast v1, Lv54;

    .line 358
    .line 359
    sget-object v2, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 360
    .line 361
    iget-object v2, v1, Lv54;->a:Ljava/lang/String;

    .line 362
    .line 363
    iget-object v3, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V:Lv54;

    .line 364
    .line 365
    iget-object v3, v3, Lv54;->a:Ljava/lang/String;

    .line 366
    .line 367
    invoke-static {v2, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-nez v2, :cond_9

    .line 372
    .line 373
    iput-boolean v9, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->W:Z

    .line 374
    .line 375
    :cond_9
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V:Lv54;

    .line 376
    .line 377
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->b0(Lv54;)V

    .line 378
    .line 379
    .line 380
    return-object v10

    .line 381
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 382
    .line 383
    move-object/from16 v1, p1

    .line 384
    .line 385
    check-cast v1, Ljava/lang/String;

    .line 386
    .line 387
    sget v5, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 388
    .line 389
    new-instance v5, Lhv1;

    .line 390
    .line 391
    invoke-direct {v5, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 392
    .line 393
    .line 394
    new-instance v6, Ls35;

    .line 395
    .line 396
    invoke-direct {v6, v0, v4, v5, v8}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 397
    .line 398
    .line 399
    iget-object v4, v6, Lva;->b:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v4, Lra;

    .line 402
    .line 403
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    iput-object v3, v4, Lra;->d:Ljava/lang/CharSequence;

    .line 408
    .line 409
    iput-object v1, v4, Lra;->f:Ljava/lang/CharSequence;

    .line 410
    .line 411
    invoke-virtual {v6, v2, v8}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    new-instance v1, Lnv0;

    .line 415
    .line 416
    invoke-direct {v1, v0, v7}, Lnv0;-><init>(Lil0;I)V

    .line 417
    .line 418
    .line 419
    iput-object v1, v4, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 420
    .line 421
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 422
    .line 423
    .line 424
    return-object v10

    .line 425
    :pswitch_9
    check-cast v0, Lgo3;

    .line 426
    .line 427
    move-object/from16 v1, p1

    .line 428
    .line 429
    check-cast v1, Ljava/lang/Long;

    .line 430
    .line 431
    invoke-static {v1}, Lio4;->h(Ljava/lang/Long;)J

    .line 432
    .line 433
    .line 434
    move-result-wide v1

    .line 435
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Lgo3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    return-object v10

    .line 443
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;

    .line 444
    .line 445
    move-object/from16 v1, p1

    .line 446
    .line 447
    check-cast v1, Ljava/lang/Boolean;

    .line 448
    .line 449
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->h0:I

    .line 450
    .line 451
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderEditActivity;->e0:Lgv7;

    .line 452
    .line 453
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 467
    .line 468
    .line 469
    return-object v10

    .line 470
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 471
    .line 472
    move-object/from16 v1, p1

    .line 473
    .line 474
    check-cast v1, Landroid/text/Editable;

    .line 475
    .line 476
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->N:I

    .line 477
    .line 478
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->P()V

    .line 479
    .line 480
    .line 481
    return-object v10

    .line 482
    :pswitch_c
    check-cast v0, Llr1;

    .line 483
    .line 484
    move-object/from16 v1, p1

    .line 485
    .line 486
    check-cast v1, Lxp1;

    .line 487
    .line 488
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v0}, Llr1;->r()Lmr1;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lmr1;->j()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 500
    .line 501
    .line 502
    move-result-object v11

    .line 503
    invoke-virtual {v1}, Lxp1;->getLevel()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v24

    .line 511
    const v28, 0xefff

    .line 512
    .line 513
    .line 514
    const/16 v29, 0x0

    .line 515
    .line 516
    const/4 v12, 0x0

    .line 517
    const/4 v13, 0x0

    .line 518
    const/4 v14, 0x0

    .line 519
    const/4 v15, 0x0

    .line 520
    const/16 v16, 0x0

    .line 521
    .line 522
    const/16 v17, 0x0

    .line 523
    .line 524
    const/16 v18, 0x0

    .line 525
    .line 526
    const/16 v19, 0x0

    .line 527
    .line 528
    const/16 v20, 0x0

    .line 529
    .line 530
    const/16 v21, 0x0

    .line 531
    .line 532
    const/16 v22, 0x0

    .line 533
    .line 534
    const/16 v23, 0x0

    .line 535
    .line 536
    const/16 v25, 0x0

    .line 537
    .line 538
    const/16 v26, 0x0

    .line 539
    .line 540
    const/16 v27, 0x0

    .line 541
    .line 542
    invoke-static/range {v11 .. v29}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->copy$default(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;ILjava/lang/String;Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v2, v0}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 547
    .line 548
    .line 549
    return-object v10

    .line 550
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 551
    .line 552
    move-object/from16 v1, p1

    .line 553
    .line 554
    check-cast v1, Lrb1;

    .line 555
    .line 556
    sget v1, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 557
    .line 558
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->q()V

    .line 563
    .line 564
    .line 565
    return-object v10

    .line 566
    :pswitch_e
    check-cast v0, Lgg1;

    .line 567
    .line 568
    move-object/from16 v1, p1

    .line 569
    .line 570
    check-cast v1, Lfo7;

    .line 571
    .line 572
    if-eqz v1, :cond_15

    .line 573
    .line 574
    iget-object v0, v0, Lgg1;->d:Lwf1;

    .line 575
    .line 576
    if-eqz v0, :cond_14

    .line 577
    .line 578
    sget-object v2, Ltb1;->a:Ltb1;

    .line 579
    .line 580
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v2}, Ldd1;->getDisplayName()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    sget-object v4, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->Companion:Lorg/swiftapps/swiftbackup/cloud/protocols/a;

    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    invoke-static {v2}, Lorg/swiftapps/swiftbackup/cloud/protocols/a;->b(Ldd1;)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 594
    .line 595
    .line 596
    move-result-object v4

    .line 597
    invoke-static {v2, v3, v4}, Lvm4;->i(Ldd1;Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)Lki1;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    iget-object v4, v0, Lwf1;->b:Ly54;

    .line 602
    .line 603
    iget-object v5, v3, Lki1;->a:Ljava/lang/String;

    .line 604
    .line 605
    iget-object v6, v4, Ly54;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 606
    .line 607
    iget-object v11, v4, Ly54;->a:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 608
    .line 609
    iget-object v12, v4, Ly54;->b:Lca2;

    .line 610
    .line 611
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    .line 613
    .line 614
    iget-object v13, v12, Lca2;->d:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v13, Landroid/widget/TextView;

    .line 617
    .line 618
    iget-object v14, v12, Lca2;->f:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v14, Landroid/widget/TextView;

    .line 621
    .line 622
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    .line 624
    .line 625
    instance-of v5, v1, Lfo7$b;

    .line 626
    .line 627
    if-eqz v5, :cond_a

    .line 628
    .line 629
    move-object v13, v1

    .line 630
    check-cast v13, Lfo7$b;

    .line 631
    .line 632
    goto :goto_4

    .line 633
    :cond_a
    move-object v13, v8

    .line 634
    :goto_4
    iget-object v15, v12, Lca2;->c:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v15, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 637
    .line 638
    if-eqz v13, :cond_b

    .line 639
    .line 640
    move v8, v7

    .line 641
    goto :goto_5

    .line 642
    :cond_b
    move v8, v9

    .line 643
    :goto_5
    invoke-static {v15, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 644
    .line 645
    .line 646
    const/16 v8, 0x8

    .line 647
    .line 648
    if-eqz v13, :cond_e

    .line 649
    .line 650
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 651
    .line 652
    .line 653
    move-result v7

    .line 654
    if-ne v7, v8, :cond_c

    .line 655
    .line 656
    goto :goto_6

    .line 657
    :cond_c
    invoke-virtual {v13}, Lfo7$b;->getUsedPercent()I

    .line 658
    .line 659
    .line 660
    move-result v7

    .line 661
    invoke-virtual {v15, v9}, Lkm0;->setIndeterminate(Z)V

    .line 662
    .line 663
    .line 664
    iget-object v13, v4, Ly54;->b:Lca2;

    .line 665
    .line 666
    iget-object v13, v13, Lca2;->c:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v13, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 669
    .line 670
    iget-object v8, v4, Ly54;->c:[I

    .line 671
    .line 672
    array-length v9, v8

    .line 673
    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    .line 674
    .line 675
    .line 676
    move-result-object v8

    .line 677
    invoke-virtual {v13, v8}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 678
    .line 679
    .line 680
    iget v4, v4, Ly54;->d:I

    .line 681
    .line 682
    invoke-virtual {v13, v4}, Lkm0;->setTrackColor(I)V

    .line 683
    .line 684
    .line 685
    const/16 v4, 0x5a

    .line 686
    .line 687
    if-le v7, v4, :cond_d

    .line 688
    .line 689
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    invoke-static {v4}, Lsz8;->r(Landroid/content/Context;)I

    .line 697
    .line 698
    .line 699
    move-result v4

    .line 700
    filled-new-array {v4}, [I

    .line 701
    .line 702
    .line 703
    move-result-object v8

    .line 704
    invoke-virtual {v15, v8}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 705
    .line 706
    .line 707
    const/16 v8, 0x1e

    .line 708
    .line 709
    invoke-static {v4, v8}, Lsz8;->U(II)I

    .line 710
    .line 711
    .line 712
    move-result v4

    .line 713
    invoke-virtual {v15, v4}, Lkm0;->setTrackColor(I)V

    .line 714
    .line 715
    .line 716
    :cond_d
    const/16 v4, 0x64

    .line 717
    .line 718
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    .line 719
    .line 720
    .line 721
    move-result v4

    .line 722
    const/4 v7, 0x1

    .line 723
    invoke-static {v15, v4, v7, v7, v7}, Lsz8;->Z(Lkm0;IZZZ)V

    .line 724
    .line 725
    .line 726
    :cond_e
    :goto_6
    iget-object v4, v12, Lca2;->e:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v4, Landroid/widget/TextView;

    .line 729
    .line 730
    if-eqz v5, :cond_f

    .line 731
    .line 732
    const/4 v5, 0x0

    .line 733
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 734
    .line 735
    .line 736
    check-cast v1, Lfo7$b;

    .line 737
    .line 738
    invoke-virtual {v1}, Lfo7$b;->getUsedPercentExact()F

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    invoke-static {v6, v5}, Liz1;->j(Lorg/swiftapps/swiftbackup/home/HomeActivity;F)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v5

    .line 746
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v1}, Lfo7$b;->getFreeMemoryString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    invoke-virtual {v1}, Lfo7$b;->getTotalMemoryString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-static {v6}, Lsz8;->x(Landroid/content/Context;)I

    .line 758
    .line 759
    .line 760
    move-result v7

    .line 761
    invoke-static {v6}, Lsz8;->A(Landroid/content/Context;)I

    .line 762
    .line 763
    .line 764
    move-result v6

    .line 765
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 769
    .line 770
    .line 771
    const v8, 0x7f130286

    .line 772
    .line 773
    .line 774
    filled-new-array {v5, v1}, [Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    invoke-virtual {v11, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    invoke-static {v1, v7, v6, v5}, Lnc8;->A(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    goto :goto_7

    .line 790
    :cond_f
    instance-of v5, v1, Lfo7$d;

    .line 791
    .line 792
    if-eqz v5, :cond_10

    .line 793
    .line 794
    const/16 v5, 0x8

    .line 795
    .line 796
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 797
    .line 798
    .line 799
    check-cast v1, Lfo7$d;

    .line 800
    .line 801
    invoke-virtual {v1}, Lfo7$d;->getUsageString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v5

    .line 805
    invoke-virtual {v1}, Lfo7$d;->getUsedMemoryString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    invoke-static {v6}, Lsz8;->x(Landroid/content/Context;)I

    .line 810
    .line 811
    .line 812
    move-result v7

    .line 813
    invoke-static {v6}, Lsz8;->A(Landroid/content/Context;)I

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    invoke-static {v5, v7, v6, v1}, Lnc8;->A(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    goto :goto_7

    .line 822
    :cond_10
    const/16 v5, 0x8

    .line 823
    .line 824
    sget-object v7, Lfo7$c;->INSTANCE:Lfo7$c;

    .line 825
    .line 826
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-eqz v1, :cond_13

    .line 831
    .line 832
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 833
    .line 834
    .line 835
    const v1, 0x7f130543

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    .line 844
    .line 845
    iget v1, v3, Lki1;->b:I

    .line 846
    .line 847
    iget-object v4, v3, Lki1;->d:Ljava/lang/String;

    .line 848
    .line 849
    iget-boolean v3, v3, Lki1;->c:Z

    .line 850
    .line 851
    iget-object v5, v12, Lca2;->b:Ljava/lang/Object;

    .line 852
    .line 853
    check-cast v5, Landroid/widget/ImageView;

    .line 854
    .line 855
    invoke-virtual {v11}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 856
    .line 857
    .line 858
    move-result-object v6

    .line 859
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 860
    .line 861
    .line 862
    move-result-object v6

    .line 863
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 864
    .line 865
    const/high16 v7, 0x42200000    # 40.0f

    .line 866
    .line 867
    mul-float/2addr v7, v6

    .line 868
    invoke-static {v7}, Ltu0;->v(F)I

    .line 869
    .line 870
    .line 871
    move-result v6

    .line 872
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 873
    .line 874
    .line 875
    move-result-object v7

    .line 876
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 877
    .line 878
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 879
    .line 880
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    .line 882
    .line 883
    const/4 v6, 0x0

    .line 884
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 885
    .line 886
    .line 887
    if-eqz v3, :cond_11

    .line 888
    .line 889
    const/high16 v3, 0x40400000    # 3.0f

    .line 890
    .line 891
    invoke-static {v5, v1, v4, v3}, Ly13;->D(Landroid/widget/ImageView;ILjava/lang/CharSequence;F)V

    .line 892
    .line 893
    .line 894
    goto :goto_8

    .line 895
    :cond_11
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v5, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 902
    .line 903
    .line 904
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 905
    .line 906
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 907
    .line 908
    .line 909
    const/4 v7, 0x1

    .line 910
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 911
    .line 912
    .line 913
    const/4 v1, 0x0

    .line 914
    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 915
    .line 916
    .line 917
    :goto_8
    iget-object v1, v0, Lwf1;->c:Landroid/widget/TextView;

    .line 918
    .line 919
    invoke-static {}, Lqb1;->g()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v3

    .line 923
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    .line 925
    .line 926
    iget-object v1, v0, Lwf1;->d:Landroid/widget/TextView;

    .line 927
    .line 928
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    invoke-virtual {v3}, Ldd1;->getCloudFolderAddress()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v3

    .line 936
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    .line 938
    .line 939
    iget-object v1, v0, Lwf1;->e:Landroid/widget/ImageView;

    .line 940
    .line 941
    invoke-virtual {v2}, Ldd1;->getAllowSavingSetupDetails()Z

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    if-eqz v3, :cond_12

    .line 946
    .line 947
    invoke-static {v1}, Lsz8;->c0(Landroid/view/View;)V

    .line 948
    .line 949
    .line 950
    new-instance v3, Luf1;

    .line 951
    .line 952
    const/4 v5, 0x0

    .line 953
    invoke-direct {v3, v5, v0, v2}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    .line 958
    .line 959
    goto :goto_9

    .line 960
    :cond_12
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 961
    .line 962
    .line 963
    const/4 v6, 0x0

    .line 964
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 965
    .line 966
    .line 967
    goto :goto_9

    .line 968
    :cond_13
    const/4 v6, 0x0

    .line 969
    invoke-static {}, Lq;->j()V

    .line 970
    .line 971
    .line 972
    move-object v8, v6

    .line 973
    goto :goto_a

    .line 974
    :cond_14
    move-object v6, v8

    .line 975
    const-string v0, "cloudStorageCard"

    .line 976
    .line 977
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 978
    .line 979
    .line 980
    throw v6

    .line 981
    :cond_15
    :goto_9
    move-object v8, v10

    .line 982
    :goto_a
    return-object v8

    .line 983
    :pswitch_f
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 984
    .line 985
    move-object/from16 v1, p1

    .line 986
    .line 987
    check-cast v1, Ljava/util/List;

    .line 988
    .line 989
    sget v2, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    sget-object v2, Lorg/swiftapps/swiftbackup/home/cloud/CloudBackupTag;->Companion:Lob1;

    .line 995
    .line 996
    new-instance v3, Lox;

    .line 997
    .line 998
    const/4 v4, 0x6

    .line 999
    invoke-direct {v3, v0, v4}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1003
    .line 1004
    .line 1005
    const/4 v6, 0x0

    .line 1006
    invoke-static {v0, v1, v3, v6}, Lob1;->b(Lil0;Ljava/util/List;Lmt3;Lae1;)V

    .line 1007
    .line 1008
    .line 1009
    return-object v10

    .line 1010
    :pswitch_10
    move-object v6, v8

    .line 1011
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;

    .line 1012
    .line 1013
    move-object/from16 v1, p1

    .line 1014
    .line 1015
    check-cast v1, Ljava/lang/String;

    .line 1016
    .line 1017
    sget v5, Lorg/swiftapps/swiftbackup/cloud/connect/BoxSignInActivity;->L:I

    .line 1018
    .line 1019
    new-instance v5, Lhv1;

    .line 1020
    .line 1021
    invoke-direct {v5, v0, v4}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v7, Ls35;

    .line 1025
    .line 1026
    invoke-direct {v7, v0, v4, v5, v6}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 1027
    .line 1028
    .line 1029
    iget-object v4, v7, Lva;->b:Ljava/lang/Object;

    .line 1030
    .line 1031
    check-cast v4, Lra;

    .line 1032
    .line 1033
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    iput-object v3, v4, Lra;->d:Ljava/lang/CharSequence;

    .line 1038
    .line 1039
    iput-object v1, v4, Lra;->f:Ljava/lang/CharSequence;

    .line 1040
    .line 1041
    invoke-virtual {v7, v2, v6}, Lv75;->r(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v1, Lnv0;

    .line 1045
    .line 1046
    const/4 v5, 0x0

    .line 1047
    invoke-direct {v1, v0, v5}, Lnv0;-><init>(Lil0;I)V

    .line 1048
    .line 1049
    .line 1050
    iput-object v1, v4, Lra;->n:Landroid/content/DialogInterface$OnDismissListener;

    .line 1051
    .line 1052
    invoke-virtual {v7}, Ls35;->m()Lwa;

    .line 1053
    .line 1054
    .line 1055
    return-object v10

    .line 1056
    :pswitch_11
    check-cast v0, Lsj0;

    .line 1057
    .line 1058
    move-object/from16 v1, p1

    .line 1059
    .line 1060
    check-cast v1, Ljava/io/InputStream;

    .line 1061
    .line 1062
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    .line 1064
    .line 1065
    iput-object v1, v0, Lsj0;->k:Ljava/io/InputStream;

    .line 1066
    .line 1067
    return-object v10

    .line 1068
    :pswitch_12
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 1069
    .line 1070
    move-object/from16 v1, p1

    .line 1071
    .line 1072
    check-cast v1, Lfm7;

    .line 1073
    .line 1074
    sget v2, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 1075
    .line 1076
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    .line 1078
    .line 1079
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0:Lgv7;

    .line 1080
    .line 1081
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    check-cast v3, Lcom/l4digital/fastscroll/FastScroller;

    .line 1086
    .line 1087
    iget-object v4, v1, Lfm7;->a:Ljava/util/List;

    .line 1088
    .line 1089
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v5

    .line 1093
    const/16 v17, 0x1

    .line 1094
    .line 1095
    xor-int/lit8 v5, v5, 0x1

    .line 1096
    .line 1097
    invoke-virtual {v3, v5}, Lcom/l4digital/fastscroll/FastScroller;->setEnabled(Z)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v2

    .line 1104
    check-cast v2, Lcom/l4digital/fastscroll/FastScroller;

    .line 1105
    .line 1106
    sget-object v3, Liy;->a:Liy;

    .line 1107
    .line 1108
    invoke-static {}, Liy;->b()Lsx;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v3

    .line 1112
    sget-object v5, Lsx;->Name:Lsx;

    .line 1113
    .line 1114
    const/16 v6, 0x30

    .line 1115
    .line 1116
    if-ne v3, v5, :cond_16

    .line 1117
    .line 1118
    move v3, v6

    .line 1119
    goto :goto_b

    .line 1120
    :cond_16
    const/16 v3, 0x20

    .line 1121
    .line 1122
    :goto_b
    invoke-virtual {v2, v3}, Lcom/l4digital/fastscroll/FastScroller;->setBubbleTextSize(I)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->l0()Lws;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v2

    .line 1129
    const/4 v5, 0x0

    .line 1130
    invoke-virtual {v2, v1, v5}, Lgm7;->w(Lfm7;Z)V

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v4, v5, v6}, Lj94;->e(Ljava/util/List;II)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->l0()Lws;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Lws;->z()V

    .line 1141
    .line 1142
    .line 1143
    iget-boolean v1, v1, Lfm7;->d:Z

    .line 1144
    .line 1145
    if-eqz v1, :cond_17

    .line 1146
    .line 1147
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0()Landroidx/recyclerview/widget/RecyclerView;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->f0(I)V

    .line 1152
    .line 1153
    .line 1154
    :cond_17
    return-object v10

    .line 1155
    :pswitch_13
    check-cast v0, Ljava/lang/String;

    .line 1156
    .line 1157
    move-object/from16 v1, p1

    .line 1158
    .line 1159
    check-cast v1, Ljava/lang/String;

    .line 1160
    .line 1161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    .line 1163
    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    const-string v0, "/code_cache"

    .line 1173
    .line 1174
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    const/4 v5, 0x0

    .line 1182
    invoke-static {v1, v0, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    return-object v0

    .line 1191
    :pswitch_14
    check-cast v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 1192
    .line 1193
    move-object/from16 v1, p1

    .line 1194
    .line 1195
    check-cast v1, Lzf;

    .line 1196
    .line 1197
    sget v2, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 1198
    .line 1199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->R(Lzf;)V

    .line 1203
    .line 1204
    .line 1205
    return-object v10

    .line 1206
    :pswitch_15
    move-object v6, v8

    .line 1207
    move v5, v9

    .line 1208
    check-cast v0, Lo7;

    .line 1209
    .line 1210
    move-object/from16 v1, p1

    .line 1211
    .line 1212
    check-cast v1, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 1213
    .line 1214
    if-eqz v1, :cond_1e

    .line 1215
    .line 1216
    iget-object v2, v0, Lrl0;->b:Ljk8;

    .line 1217
    .line 1218
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    check-cast v2, Lp7;

    .line 1222
    .line 1223
    iget-object v2, v2, Lp7;->b:Lj75;

    .line 1224
    .line 1225
    iget-object v2, v2, Lj75;->d:Ljava/lang/Object;

    .line 1226
    .line 1227
    check-cast v2, Landroid/widget/ImageView;

    .line 1228
    .line 1229
    invoke-static {v2}, Lp15;->a(Landroid/widget/ImageView;)V

    .line 1230
    .line 1231
    .line 1232
    iget-object v2, v0, Lrl0;->b:Ljk8;

    .line 1233
    .line 1234
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1235
    .line 1236
    .line 1237
    check-cast v2, Lp7;

    .line 1238
    .line 1239
    iget-object v2, v2, Lp7;->b:Lj75;

    .line 1240
    .line 1241
    iget-object v2, v2, Lj75;->k:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v2, Landroid/widget/TextView;

    .line 1244
    .line 1245
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getDisplayName()Ljava/lang/String;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v3

    .line 1249
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v4

    .line 1253
    if-nez v4, :cond_18

    .line 1254
    .line 1255
    goto :goto_c

    .line 1256
    :cond_18
    move-object v3, v6

    .line 1257
    :goto_c
    if-nez v3, :cond_19

    .line 1258
    .line 1259
    const-string v3, "Anonymous user"

    .line 1260
    .line 1261
    :cond_19
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    .line 1263
    .line 1264
    iget-object v2, v0, Lrl0;->b:Ljk8;

    .line 1265
    .line 1266
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    check-cast v2, Lp7;

    .line 1270
    .line 1271
    iget-object v2, v2, Lp7;->b:Lj75;

    .line 1272
    .line 1273
    iget-object v2, v2, Lj75;->f:Ljava/lang/Object;

    .line 1274
    .line 1275
    check-cast v2, Landroid/widget/TextView;

    .line 1276
    .line 1277
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->getEmail()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v3

    .line 1281
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 1282
    .line 1283
    .line 1284
    move-result v1

    .line 1285
    if-nez v1, :cond_1a

    .line 1286
    .line 1287
    move-object v8, v3

    .line 1288
    goto :goto_d

    .line 1289
    :cond_1a
    move-object v8, v6

    .line 1290
    :goto_d
    if-eqz v8, :cond_1c

    .line 1291
    .line 1292
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1293
    .line 1294
    .line 1295
    move-result v1

    .line 1296
    if-nez v1, :cond_1b

    .line 1297
    .line 1298
    goto :goto_f

    .line 1299
    :cond_1b
    move v9, v5

    .line 1300
    :goto_e
    const/16 v17, 0x1

    .line 1301
    .line 1302
    goto :goto_10

    .line 1303
    :cond_1c
    :goto_f
    const/4 v9, 0x1

    .line 1304
    goto :goto_e

    .line 1305
    :goto_10
    xor-int/lit8 v1, v9, 0x1

    .line 1306
    .line 1307
    invoke-static {v2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 1308
    .line 1309
    .line 1310
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    if-eqz v1, :cond_1d

    .line 1315
    .line 1316
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1317
    .line 1318
    .line 1319
    :cond_1d
    iget-object v0, v0, Lrl0;->b:Ljk8;

    .line 1320
    .line 1321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1322
    .line 1323
    .line 1324
    check-cast v0, Lp7;

    .line 1325
    .line 1326
    iget-object v0, v0, Lp7;->b:Lj75;

    .line 1327
    .line 1328
    iget-object v0, v0, Lj75;->e:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v0, Landroid/widget/TextView;

    .line 1331
    .line 1332
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1333
    .line 1334
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    .line 1336
    .line 1337
    :cond_1e
    return-object v10

    .line 1338
    nop

    .line 1339
    :pswitch_data_0
    .packed-switch 0x0
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
