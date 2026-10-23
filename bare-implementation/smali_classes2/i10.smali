.class public final synthetic Li10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Li10;->a:I

    iput-object p2, p0, Li10;->b:Ljava/lang/Object;

    iput-object p3, p0, Li10;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lpj0;Llj0;Lbt3;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Li10;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Li10;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Li10;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Li10;->a:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Li10;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Li10;->b:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 17
    .line 18
    check-cast v5, Lyo8;

    .line 19
    .line 20
    sget v1, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->W:I

    .line 21
    .line 22
    check-cast v5, Lxo8;

    .line 23
    .line 24
    iget-object v1, v5, Lxo8;->a:Lrv7;

    .line 25
    .line 26
    iget-object v2, v5, Lxo8;->b:Lrv7;

    .line 27
    .line 28
    filled-new-array {v1, v2}, [Lrv7;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, v0, Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;->V:Lgv7;

    .line 37
    .line 38
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcj0;

    .line 43
    .line 44
    new-instance v3, Lln5;

    .line 45
    .line 46
    const/16 v5, 0xf

    .line 47
    .line 48
    invoke-direct {v3, v0, v5}, Lln5;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v6, Ljj0;

    .line 55
    .line 56
    iget-object v0, v2, Lcj0;->a:Lil0;

    .line 57
    .line 58
    const v5, 0x7f1304da

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    const/16 v11, 0x1c

    .line 70
    .line 71
    const-string v7, "locations"

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-direct/range {v6 .. v11}, Ljj0;-><init>(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Lli0;

    .line 78
    .line 79
    sget-object v5, Lq05;->DEVICE:Lq05;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const v9, 0x7f1301fa

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const v10, 0x7f080129

    .line 96
    .line 97
    .line 98
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    const/4 v10, 0x4

    .line 103
    invoke-virtual {v5, v10}, Lq05;->isCheckedInExpansion(I)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    const/4 v14, 0x0

    .line 108
    const/16 v15, 0xd4

    .line 109
    .line 110
    move v5, v10

    .line 111
    const/4 v10, 0x0

    .line 112
    const/4 v12, 0x0

    .line 113
    invoke-direct/range {v7 .. v15}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 114
    .line 115
    .line 116
    iget-object v8, v6, Ljj0;->c:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v9, Lli0;

    .line 122
    .line 123
    sget-object v7, Lq05;->CLOUD:Lq05;

    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const v11, 0x7f130106

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    const v12, 0x7f080114

    .line 140
    .line 141
    .line 142
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    invoke-virtual {v7, v5}, Lq05;->isCheckedInExpansion(I)Z

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    const/16 v17, 0xd4

    .line 153
    .line 154
    const/4 v12, 0x0

    .line 155
    invoke-direct/range {v9 .. v17}, Lli0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLao;I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    new-instance v5, Lmj0;

    .line 162
    .line 163
    filled-new-array {v6}, [Ljj0;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-static {v6}, Lfl1;->C0([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-direct {v5, v6, v4}, Lmj0;-><init>(Ljava/util/ArrayList;Z)V

    .line 172
    .line 173
    .line 174
    new-instance v4, Llj0;

    .line 175
    .line 176
    invoke-direct {v4, v0}, Llj0;-><init>(Lil0;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lbj0;

    .line 180
    .line 181
    invoke-direct {v0, v3, v2, v1, v5}, Lbj0;-><init>(Lln5;Lcj0;Ljava/util/List;Lmj0;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v5, v0}, Llj0;->j(Lpj0;Lbt3;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_0
    check-cast v0, Lqo5;

    .line 189
    .line 190
    check-cast v5, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 191
    .line 192
    iget-object v0, v0, Lqo5;->n:Lmt3;

    .line 193
    .line 194
    if-eqz v0, :cond_0

    .line 195
    .line 196
    invoke-interface {v0, v5}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_0
    return-void

    .line 200
    :pswitch_1
    check-cast v0, Lj95;

    .line 201
    .line 202
    check-cast v5, Landroid/view/ViewGroup;

    .line 203
    .line 204
    iget-object v2, v0, Lj95;->Q:Ln38;

    .line 205
    .line 206
    instance-of v3, v2, Lv38;

    .line 207
    .line 208
    if-eqz v3, :cond_5

    .line 209
    .line 210
    check-cast v2, Lv38;

    .line 211
    .line 212
    iget-object v3, v2, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 213
    .line 214
    iget-object v6, v2, Lv38;->f:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 215
    .line 216
    iget-boolean v7, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->n:Z

    .line 217
    .line 218
    if-nez v7, :cond_1

    .line 219
    .line 220
    iget-boolean v7, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->n:Z

    .line 221
    .line 222
    if-eqz v7, :cond_5

    .line 223
    .line 224
    :cond_1
    invoke-static {v5}, Lv38;->i(Landroid/view/View;)V

    .line 225
    .line 226
    .line 227
    iget-boolean v0, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->n:Z

    .line 228
    .line 229
    const/16 v1, 0x8

    .line 230
    .line 231
    if-eqz v0, :cond_3

    .line 232
    .line 233
    iget-object v0, v2, Lv38;->q:Landroid/widget/TextView;

    .line 234
    .line 235
    iget-object v2, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Landroid/widget/EditText;

    .line 236
    .line 237
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_2

    .line 242
    .line 243
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_2
    iget-object v2, v6, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/chip/Chip;

    .line 248
    .line 249
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 250
    .line 251
    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_3
    iget-boolean v0, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->n:Z

    .line 261
    .line 262
    if-eqz v0, :cond_7

    .line 263
    .line 264
    iget-object v0, v2, Lv38;->p:Landroid/widget/TextView;

    .line 265
    .line 266
    iget-object v2, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->c:Landroid/widget/EditText;

    .line 267
    .line 268
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_4

    .line 273
    .line 274
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_4
    iget-object v2, v3, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a:Lcom/google/android/material/chip/Chip;

    .line 279
    .line 280
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 281
    .line 282
    .line 283
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_5
    iget-object v2, v0, Lj95;->I:Ljava/util/LinkedHashSet;

    .line 292
    .line 293
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_6

    .line 302
    .line 303
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Landroid/view/View$OnClickListener;

    .line 308
    .line 309
    invoke-interface {v3, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_6
    invoke-virtual {v0, v4, v4}, Landroidx/fragment/app/h;->i(ZZ)V

    .line 314
    .line 315
    .line 316
    :cond_7
    :goto_3
    return-void

    .line 317
    :pswitch_2
    check-cast v0, Lwa;

    .line 318
    .line 319
    check-cast v5, Lq02;

    .line 320
    .line 321
    invoke-virtual {v0}, Lho;->dismiss()V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Lq02;->invoke()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_3
    check-cast v0, Lkl3;

    .line 329
    .line 330
    check-cast v5, Lol3;

    .line 331
    .line 332
    iget-object v0, v0, Lkl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-object v2, v5, Lol3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 338
    .line 339
    const/4 v4, 0x2

    .line 340
    invoke-static {v0, v1, v3, v2, v4}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Landroid/view/View;Lkj3;Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;I)V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :pswitch_4
    check-cast v0, Luc3;

    .line 345
    .line 346
    check-cast v5, Lxc3;

    .line 347
    .line 348
    iget-object v0, v0, Luc3;->b:Lnd3;

    .line 349
    .line 350
    sget-object v1, Lce3;->Synced:Lce3;

    .line 351
    .line 352
    if-ne v0, v1, :cond_8

    .line 353
    .line 354
    invoke-interface {v0}, Lnd3;->reset()V

    .line 355
    .line 356
    .line 357
    iget-object v0, v5, Lxc3;->h:Lfj;

    .line 358
    .line 359
    invoke-virtual {v0}, Lfj;->invoke()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    :cond_8
    return-void

    .line 363
    :pswitch_5
    check-cast v0, Lgj2;

    .line 364
    .line 365
    check-cast v5, Lji;

    .line 366
    .line 367
    sget-object v1, Lg00;->a:Lg00;

    .line 368
    .line 369
    iget-object v0, v0, Lgj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 370
    .line 371
    invoke-static {v0, v5}, Lg00;->B(Lzm;Lji;)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_6
    check-cast v0, Llj0;

    .line 376
    .line 377
    check-cast v5, Lbt3;

    .line 378
    .line 379
    invoke-interface {v5}, Lbt3;->invoke()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lu35;->K:Ljk8;

    .line 383
    .line 384
    check-cast v1, Lvv0;

    .line 385
    .line 386
    iget-object v1, v1, Lvv0;->a:Landroidx/core/widget/NestedScrollView;

    .line 387
    .line 388
    new-instance v2, La9;

    .line 389
    .line 390
    const/4 v3, 0x1

    .line 391
    invoke-direct {v2, v0, v3}, La9;-><init>(Ljava/lang/Object;I)V

    .line 392
    .line 393
    .line 394
    sget-object v0, Llj0;->T:Lgv7;

    .line 395
    .line 396
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Ljava/lang/Number;

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 403
    .line 404
    .line 405
    move-result-wide v3

    .line 406
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_7
    check-cast v0, Lk10;

    .line 411
    .line 412
    check-cast v5, Ll10;

    .line 413
    .line 414
    iget-object v1, v5, Ll10;->a:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lgm7;->e:Lfm7;

    .line 420
    .line 421
    iget-object v6, v2, Lfm7;->a:Ljava/util/List;

    .line 422
    .line 423
    new-instance v7, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-eqz v8, :cond_a

    .line 437
    .line 438
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    move-object v9, v8

    .line 443
    check-cast v9, Ljl0;

    .line 444
    .line 445
    invoke-interface {v9}, Ljl0;->getItemId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-static {v9, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v9

    .line 453
    if-nez v9, :cond_9

    .line 454
    .line 455
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_a
    const/16 v1, 0x1e

    .line 460
    .line 461
    invoke-static {v2, v7, v3, v4, v1}, Lfm7;->a(Lfm7;Ljava/util/List;Ljava/util/Set;ZI)Lfm7;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v0, v1, v4}, Lgm7;->w(Lfm7;Z)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v0, Lk10;->m:Llm;

    .line 469
    .line 470
    invoke-virtual {v0, v5}, Llm;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    nop

    .line 475
    :pswitch_data_0
    .packed-switch 0x0
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
