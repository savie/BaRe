.class public final synthetic Lcj2;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lcj2;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcj2;->a:I

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    const-string v3, " ("

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    sget-object v7, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    move-object/from16 v1, p1

    .line 20
    .line 21
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/k;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/settings/k;->j(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 31
    .line 32
    .line 33
    return-object v7

    .line 34
    :pswitch_0
    move-object/from16 v1, p1

    .line 35
    .line 36
    check-cast v1, Lia5;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lka5;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lia5;->c:Ljava/lang/String;

    .line 49
    .line 50
    const/16 v2, 0x2b

    .line 51
    .line 52
    const/16 v3, 0x2d

    .line 53
    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const/16 v2, 0x2f

    .line 62
    .line 63
    const/16 v3, 0x5f

    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, 0x4

    .line 77
    rem-int/2addr v2, v3

    .line 78
    rsub-int/lit8 v2, v2, 0x4

    .line 79
    .line 80
    rem-int/2addr v2, v3

    .line 81
    const-string v4, "="

    .line 82
    .line 83
    invoke-static {v2, v4}, Luq7;->R(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {}, Ljava/util/Base64;->getUrlDecoder()Ljava/util/Base64$Decoder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    array-length v2, v0

    .line 103
    const/16 v4, 0x30

    .line 104
    .line 105
    if-ne v2, v4, :cond_6

    .line 106
    .line 107
    const v2, 0xc00004

    .line 108
    .line 109
    .line 110
    new-array v10, v2, [B

    .line 111
    .line 112
    invoke-static {v0, v8, v10, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :goto_0
    const/high16 v0, 0xc00000

    .line 116
    .line 117
    if-ge v4, v0, :cond_0

    .line 118
    .line 119
    sub-int/2addr v0, v4

    .line 120
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    add-int/lit8 v2, v4, 0x4

    .line 125
    .line 126
    invoke-static {v10, v3, v10, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    .line 128
    .line 129
    add-int/2addr v4, v0

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    iget v0, v1, Lia5;->a:I

    .line 132
    .line 133
    if-ltz v0, :cond_5

    .line 134
    .line 135
    const/16 v1, 0x100

    .line 136
    .line 137
    if-ge v0, v1, :cond_5

    .line 138
    .line 139
    and-int/lit8 v1, v0, 0x3f

    .line 140
    .line 141
    shl-int/2addr v1, v5

    .line 142
    add-int/2addr v1, v5

    .line 143
    int-to-long v1, v1

    .line 144
    ushr-int/lit8 v0, v0, 0x6

    .line 145
    .line 146
    mul-int/lit8 v0, v0, 0x7

    .line 147
    .line 148
    add-int/lit8 v0, v0, 0x3

    .line 149
    .line 150
    shl-long v11, v1, v0

    .line 151
    .line 152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-ge v0, v5, :cond_1

    .line 161
    .line 162
    move v0, v5

    .line 163
    :cond_1
    const/4 v1, 0x2

    .line 164
    if-le v1, v0, :cond_2

    .line 165
    .line 166
    move v14, v0

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    move v14, v1

    .line 169
    :goto_1
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 170
    .line 171
    invoke-direct {v15, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v16, Ljava/util/concurrent/atomic/AtomicReference;

    .line 175
    .line 176
    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 180
    .line 181
    invoke-direct {v0, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 182
    .line 183
    .line 184
    invoke-static {v14}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    move v13, v8

    .line 189
    :goto_2
    if-ge v13, v14, :cond_3

    .line 190
    .line 191
    :try_start_0
    new-instance v9, Lha5;

    .line 192
    .line 193
    move-object/from16 v17, v0

    .line 194
    .line 195
    invoke-direct/range {v9 .. v17}, Lha5;-><init>([BJIILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v0, v17

    .line 199
    .line 200
    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    .line 202
    .line 203
    add-int/lit8 v13, v13, 0x1

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    goto :goto_3

    .line 208
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    const-wide/32 v3, 0x249f0

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 214
    .line 215
    .line 216
    invoke-virtual {v15, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Ljava/lang/String;

    .line 224
    .line 225
    if-nez v0, :cond_4

    .line 226
    .line 227
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    :cond_4
    move-object v6, v0

    .line 230
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_5
    const-string v1, "Invalid MEGA hashcash easiness: "

    .line 239
    .line 240
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_6
    array-length v0, v0

    .line 249
    const-string v1, "Invalid MEGA hashcash token size: "

    .line 250
    .line 251
    invoke-static {v0, v1}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    :goto_4
    return-object v6

    .line 259
    :pswitch_1
    move-object/from16 v1, p1

    .line 260
    .line 261
    check-cast v1, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 270
    .line 271
    sget v2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 272
    .line 273
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget-object v2, v2, Lym3;->c:Lix0;

    .line 278
    .line 279
    iget-object v2, v2, Lix0;->b:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 282
    .line 283
    invoke-static {v2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v0, v0, Lym3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    xor-int/2addr v1, v5

    .line 293
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 294
    .line 295
    .line 296
    return-object v7

    .line 297
    :pswitch_2
    move-object/from16 v1, p1

    .line 298
    .line 299
    check-cast v1, Lxl3;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 307
    .line 308
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->R:Lgv7;

    .line 309
    .line 310
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    check-cast v0, Lml3;

    .line 315
    .line 316
    iget-object v9, v0, Lml3;->b:Ljl3;

    .line 317
    .line 318
    iget-object v10, v9, Ljl3;->e:Lzx2;

    .line 319
    .line 320
    iget-object v11, v9, Ljl3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 321
    .line 322
    iget-object v12, v9, Ljl3;->n:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 323
    .line 324
    sget-object v13, Lvl3;->a:Lvl3;

    .line 325
    .line 326
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    if-eqz v13, :cond_7

    .line 331
    .line 332
    invoke-virtual {v12, v8}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v0, v10, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 339
    .line 340
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_7
    sget-object v13, Lwl3;->a:Lwl3;

    .line 346
    .line 347
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    if-eqz v13, :cond_8

    .line 352
    .line 353
    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v10, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 360
    .line 361
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    iget-object v0, v10, Lzx2;->d:Landroid/widget/ImageView;

    .line 365
    .line 366
    const v1, 0x7f08018b

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v10, Lzx2;->e:Landroid/widget/TextView;

    .line 373
    .line 374
    const v1, 0x7f1303be

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 378
    .line 379
    .line 380
    iget-object v0, v10, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 381
    .line 382
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_6

    .line 386
    .line 387
    :cond_8
    instance-of v13, v1, Lul3;

    .line 388
    .line 389
    if-eqz v13, :cond_f

    .line 390
    .line 391
    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    iget-object v10, v10, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 398
    .line 399
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    check-cast v1, Lul3;

    .line 403
    .line 404
    iget-object v4, v0, Lml3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 405
    .line 406
    iget-object v10, v1, Lul3;->a:Lkj3;

    .line 407
    .line 408
    invoke-virtual {v10}, Lkj3;->a()Ljava/util/ArrayList;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    if-eqz v10, :cond_d

    .line 413
    .line 414
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v11

    .line 422
    if-nez v11, :cond_9

    .line 423
    .line 424
    goto :goto_5

    .line 425
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v11

    .line 433
    if-nez v11, :cond_a

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_a
    move-object v11, v6

    .line 437
    check-cast v11, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 438
    .line 439
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 440
    .line 441
    .line 442
    move-result-wide v11

    .line 443
    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v13

    .line 447
    move-object v14, v13

    .line 448
    check-cast v14, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 449
    .line 450
    invoke-virtual {v14}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getDate()J

    .line 451
    .line 452
    .line 453
    move-result-wide v14

    .line 454
    cmp-long v16, v11, v14

    .line 455
    .line 456
    if-gez v16, :cond_c

    .line 457
    .line 458
    move-object v6, v13

    .line 459
    move-wide v11, v14

    .line 460
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 461
    .line 462
    .line 463
    move-result v13

    .line 464
    if-nez v13, :cond_b

    .line 465
    .line 466
    :goto_5
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 467
    .line 468
    :cond_d
    iget-object v10, v9, Ljl3;->p:Landroid/widget/TextView;

    .line 469
    .line 470
    iget-object v11, v1, Lul3;->h:Ljava/lang/String;

    .line 471
    .line 472
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    iget-object v10, v9, Ljl3;->c:Llj3;

    .line 476
    .line 477
    iget-object v11, v10, Llj3;->b:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v11, Landroid/widget/ImageView;

    .line 480
    .line 481
    const v12, 0x7f08014a

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    .line 486
    .line 487
    iget-object v11, v10, Llj3;->d:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v11, Landroid/widget/TextView;

    .line 490
    .line 491
    const v12, 0x7f1300c0

    .line 492
    .line 493
    .line 494
    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v12

    .line 498
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    .line 500
    .line 501
    iget-object v11, v10, Llj3;->c:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v11, Landroid/widget/TextView;

    .line 504
    .line 505
    iget-object v12, v1, Lul3;->f:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    iget-object v11, v10, Llj3;->a:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 513
    .line 514
    new-instance v12, Lfj2;

    .line 515
    .line 516
    invoke-direct {v12, v0, v10, v1}, Lfj2;-><init>(Lml3;Llj3;Lul3;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    .line 521
    .line 522
    iget-object v10, v9, Ljl3;->d:Llj3;

    .line 523
    .line 524
    iget-object v11, v10, Llj3;->a:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v11, Lcom/google/android/material/card/MaterialCardView;

    .line 527
    .line 528
    iget-boolean v12, v1, Lul3;->d:Z

    .line 529
    .line 530
    invoke-static {v11, v12}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    if-nez v12, :cond_e

    .line 538
    .line 539
    iget-object v12, v10, Llj3;->b:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v12, Landroid/widget/ImageView;

    .line 542
    .line 543
    const v13, 0x7f0801f5

    .line 544
    .line 545
    .line 546
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    .line 548
    .line 549
    iget-object v12, v10, Llj3;->d:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v12, Landroid/widget/TextView;

    .line 552
    .line 553
    const v13, 0x7f1302ba

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    iget v13, v1, Lul3;->e:I

    .line 561
    .line 562
    new-instance v14, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    .line 585
    .line 586
    iget-object v2, v10, Llj3;->c:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v2, Landroid/widget/TextView;

    .line 589
    .line 590
    iget-object v3, v1, Lul3;->g:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    .line 594
    .line 595
    new-instance v2, Lce1;

    .line 596
    .line 597
    invoke-direct {v2, v6, v0, v10}, Lce1;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;Lml3;Llj3;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    .line 602
    .line 603
    :cond_e
    iget-object v2, v9, Ljl3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 604
    .line 605
    new-instance v3, Lll3;

    .line 606
    .line 607
    invoke-direct {v3, v8, v0, v1}, Lll3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    .line 612
    .line 613
    iget-object v2, v9, Ljl3;->f:Landroid/widget/ImageView;

    .line 614
    .line 615
    new-instance v3, Lqi;

    .line 616
    .line 617
    invoke-direct {v3, v5, v0, v1}, Lqi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    .line 622
    .line 623
    :goto_6
    move-object v6, v7

    .line 624
    goto :goto_7

    .line 625
    :cond_f
    invoke-static {}, Lq;->j()V

    .line 626
    .line 627
    .line 628
    :goto_7
    return-object v6

    .line 629
    :pswitch_3
    move-object/from16 v1, p1

    .line 630
    .line 631
    check-cast v1, Lyj2;

    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v0, Lpj2;

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    .line 642
    .line 643
    iget-object v5, v1, Lyj2;->b:Ljava/util/List;

    .line 644
    .line 645
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 646
    .line 647
    .line 648
    move-result v6

    .line 649
    new-instance v9, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .line 653
    .line 654
    iget-object v10, v0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 655
    .line 656
    const v11, 0x7f13010b

    .line 657
    .line 658
    .line 659
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v10

    .line 663
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    if-lez v6, :cond_10

    .line 667
    .line 668
    new-instance v10, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    :cond_10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    iget-object v3, v0, Lpj2;->c:Landroid/widget/TextView;

    .line 691
    .line 692
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    .line 694
    .line 695
    iget-object v2, v1, Lyj2;->a:Lxj2;

    .line 696
    .line 697
    sget-object v3, Lxj2;->Loading:Lxj2;

    .line 698
    .line 699
    iget-object v6, v0, Lpj2;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 700
    .line 701
    if-ne v2, v3, :cond_11

    .line 702
    .line 703
    invoke-static {v6}, Lsz8;->c0(Landroid/view/View;)V

    .line 704
    .line 705
    .line 706
    iget-object v1, v0, Lpj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 707
    .line 708
    invoke-static {v1}, Lsz8;->W(Landroid/view/View;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v0, Lpj2;->g:Lzx2;

    .line 712
    .line 713
    iget-object v0, v0, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 714
    .line 715
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 716
    .line 717
    .line 718
    goto :goto_a

    .line 719
    :cond_11
    invoke-static {v6}, Lsz8;->W(Landroid/view/View;)V

    .line 720
    .line 721
    .line 722
    iget-object v2, v0, Lpj2;->f:Lgm1;

    .line 723
    .line 724
    new-instance v3, Ljava/util/ArrayList;

    .line 725
    .line 726
    const/16 v4, 0xa

    .line 727
    .line 728
    invoke-static {v5, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .line 734
    .line 735
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 740
    .line 741
    .line 742
    move-result v5

    .line 743
    if-eqz v5, :cond_14

    .line 744
    .line 745
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v5

    .line 749
    check-cast v5, Lwj2;

    .line 750
    .line 751
    iget-object v6, v5, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 752
    .line 753
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackup()J

    .line 754
    .line 755
    .line 756
    move-result-wide v9

    .line 757
    invoke-static {v9, v10}, Lorg/swiftapps/swiftbackup/common/Const;->h(J)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v9

    .line 761
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupTag()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v10

    .line 765
    if-eqz v10, :cond_13

    .line 766
    .line 767
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 768
    .line 769
    .line 770
    move-result v11

    .line 771
    if-nez v11, :cond_12

    .line 772
    .line 773
    goto :goto_9

    .line 774
    :cond_12
    const-string v11, " "

    .line 775
    .line 776
    invoke-static {v9, v11, v10}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    :cond_13
    :goto_9
    new-instance v10, Lgk2;

    .line 781
    .line 782
    iget-object v11, v5, Lwj2;->q:Ljava/lang/String;

    .line 783
    .line 784
    iget-boolean v5, v5, Lwj2;->s:Z

    .line 785
    .line 786
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v6

    .line 790
    invoke-direct {v10, v9, v11, v5, v6}, Lgk2;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    goto :goto_8

    .line 797
    :cond_14
    new-instance v4, Ljj2;

    .line 798
    .line 799
    invoke-direct {v4, v8, v0, v1}, Ljj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 800
    .line 801
    .line 802
    new-instance v5, Llj2;

    .line 803
    .line 804
    invoke-direct {v5, v8, v1, v0}, Llj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 805
    .line 806
    .line 807
    new-instance v6, Ly2;

    .line 808
    .line 809
    const/16 v8, 0xb

    .line 810
    .line 811
    invoke-direct {v6, v8, v0, v1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v2, v3, v4, v5, v6}, Lgm1;->b(Ljava/util/ArrayList;Lmt3;Lqt3;Lbt3;)V

    .line 815
    .line 816
    .line 817
    :goto_a
    return-object v7

    .line 818
    nop

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
