.class public final synthetic Lv20;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lv20;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lv20;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lv20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lv20;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv20;->a:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    sget-object v6, Lbe8;->a:Lbe8;

    .line 11
    .line 12
    iget-object v7, v0, Lv20;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Lv20;->c:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, v0, Lv20;->b:Ljava/lang/Object;

    .line 17
    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v0, Lfs4;

    .line 22
    .line 23
    check-cast v8, Ljava/util/ArrayList;

    .line 24
    .line 25
    check-cast v7, Lqo0;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isDetached()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/o;->requireContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lzn4;->a:Lzn4;

    .line 52
    .line 53
    const-string v1, "No apps with GMS files"

    .line 54
    .line 55
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-static {v8, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lbz3;

    .line 84
    .line 85
    iget-object v9, v9, Lbz3;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    new-array v2, v3, [Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, [Ljava/lang/String;

    .line 98
    .line 99
    new-instance v2, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v3, Llh6;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/o;->requireActivity()Landroidx/fragment/app/u;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v9, Lhv1;

    .line 114
    .line 115
    const v10, 0x7f140160

    .line 116
    .line 117
    .line 118
    invoke-direct {v9, v0, v10}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 119
    .line 120
    .line 121
    new-instance v11, Ls35;

    .line 122
    .line 123
    invoke-direct {v11, v0, v10, v9, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 124
    .line 125
    .line 126
    array-length v0, v1

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " Apps with GMS files"

    .line 136
    .line 137
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v9, v11, Lva;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v9, Lra;

    .line 147
    .line 148
    iput-object v0, v9, Lra;->d:Ljava/lang/CharSequence;

    .line 149
    .line 150
    check-cast v1, [Ljava/lang/CharSequence;

    .line 151
    .line 152
    new-instance v0, Les4;

    .line 153
    .line 154
    invoke-direct {v0, v8, v2, v3}, Les4;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Llh6;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v1, v5, v0}, Lv75;->o([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lkb1;

    .line 161
    .line 162
    invoke-direct {v0, v4, v7, v2}, Lkb1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "Delete GMS files"

    .line 166
    .line 167
    invoke-virtual {v11, v1, v0}, Lv75;->t(Ljava/lang/String;Lkb1;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11}, Lv75;->p()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11}, Ls35;->m()Lwa;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    const/4 v1, -0x1

    .line 181
    invoke-virtual {v0, v1}, Lwa;->f(I)Landroid/widget/Button;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, v3, Llh6;->a:Ljava/lang/Object;

    .line 186
    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    xor-int/2addr v1, v4

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    .line 196
    .line 197
    :cond_3
    :goto_1
    return-object v6

    .line 198
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;

    .line 199
    .line 200
    check-cast v8, Ljava/util/List;

    .line 201
    .line 202
    check-cast v7, Llk3;

    .line 203
    .line 204
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 205
    .line 206
    iget-boolean v1, v7, Llk3;->f:Z

    .line 207
    .line 208
    if-eqz v1, :cond_4

    .line 209
    .line 210
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 211
    .line 212
    :goto_2
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    goto :goto_3

    .line 217
    :cond_4
    sget-object v1, Lq05;->DEVICE:Lq05;

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-static {v8, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_5

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    check-cast v7, Lzk3;

    .line 244
    .line 245
    new-instance v8, Lco3;

    .line 246
    .line 247
    iget-object v7, v7, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 248
    .line 249
    invoke-direct {v8, v7, v1}, Lco3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Ljava/util/List;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_5
    new-instance v2, Lvy7;

    .line 257
    .line 258
    invoke-direct {v2, v1}, Lvy7;-><init>(Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    new-instance v7, Ld32;

    .line 262
    .line 263
    const/4 v8, 0x4

    .line 264
    invoke-direct {v7, v8, v0, v3, v2}, Ld32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 268
    .line 269
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_6

    .line 274
    .line 275
    invoke-static {v0, v5, v7, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_6
    invoke-virtual {v7}, Ld32;->invoke()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :goto_5
    return-object v6

    .line 283
    :pswitch_1
    check-cast v0, Lkj3;

    .line 284
    .line 285
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 286
    .line 287
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 288
    .line 289
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 290
    .line 291
    if-eqz v0, :cond_7

    .line 292
    .line 293
    invoke-virtual {v0}, Lkj3;->d()Lq63;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lq63;->H(Lq63;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    goto :goto_6

    .line 302
    :cond_7
    if-eqz v8, :cond_8

    .line 303
    .line 304
    sget-object v0, Lw14;->a:Lgv7;

    .line 305
    .line 306
    invoke-static {}, Lw14;->d()Lcom/google/gson/a;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0, v8}, Lcom/google/gson/a;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    :goto_6
    sget-object v1, Lzn4;->a:Lzn4;

    .line 315
    .line 316
    new-instance v1, Lw01;

    .line 317
    .line 318
    const/16 v2, 0x9

    .line 319
    .line 320
    invoke-direct {v1, v2, v7, v0}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 324
    .line 325
    .line 326
    move-object v5, v6

    .line 327
    goto :goto_7

    .line 328
    :cond_8
    const-string v0, "Unexpected state reached."

    .line 329
    .line 330
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_7
    return-object v5

    .line 334
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 335
    .line 336
    check-cast v8, Ljava/lang/String;

    .line 337
    .line 338
    check-cast v7, Lmk2;

    .line 339
    .line 340
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    if-eqz v8, :cond_9

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-nez v2, :cond_a

    .line 351
    .line 352
    :cond_9
    move v3, v4

    .line 353
    :cond_a
    const-string v2, " with backup id: "

    .line 354
    .line 355
    const-string v4, "app"

    .line 356
    .line 357
    if-nez v3, :cond_c

    .line 358
    .line 359
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 360
    .line 361
    iget-object v10, v7, La55;->b:Ljava/lang/String;

    .line 362
    .line 363
    iget-object v11, v7, Lmk2;->e:Lji;

    .line 364
    .line 365
    if-eqz v11, :cond_b

    .line 366
    .line 367
    invoke-virtual {v11}, Lji;->asString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v12

    .line 375
    const-string v13, "Adding note for cloud backup for "

    .line 376
    .line 377
    invoke-static {v13, v11, v2, v12}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    const/4 v13, 0x4

    .line 382
    const/4 v14, 0x0

    .line 383
    const/4 v12, 0x0

    .line 384
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object v10, v7, La55;->b:Ljava/lang/String;

    .line 388
    .line 389
    const-string v2, "Note: \'"

    .line 390
    .line 391
    const-string v11, "\'"

    .line 392
    .line 393
    invoke-static {v2, v8, v11}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_b
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v5

    .line 405
    :cond_c
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 406
    .line 407
    iget-object v9, v7, La55;->b:Ljava/lang/String;

    .line 408
    .line 409
    iget-object v10, v7, Lmk2;->e:Lji;

    .line 410
    .line 411
    if-eqz v10, :cond_12

    .line 412
    .line 413
    invoke-virtual {v10}, Lji;->asString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v10

    .line 417
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    const-string v12, "Removing note from cloud backup for "

    .line 422
    .line 423
    invoke-static {v12, v10, v2, v11}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v17

    .line 427
    const/16 v19, 0x4

    .line 428
    .line 429
    const/16 v20, 0x0

    .line 430
    .line 431
    const/16 v18, 0x0

    .line 432
    .line 433
    move-object/from16 v16, v9

    .line 434
    .line 435
    invoke-static/range {v15 .. v20}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :goto_8
    invoke-virtual {v1, v8}, Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;->updateNote(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    iget-object v2, v7, Lmk2;->e:Lji;

    .line 442
    .line 443
    if-eqz v2, :cond_11

    .line 444
    .line 445
    invoke-virtual {v2}, Lji;->getAppId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    sget-object v4, Lre3;->a:Lzc2;

    .line 450
    .line 451
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v2, v0}, Lre3;->a(Ljava/lang/String;Ljava/lang/String;)Lzc2;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v0, v1}, Lcf3;->c(Lzc2;Ljava/lang/Object;)Laf3;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    sget-object v1, Lze3;->b:Lze3;

    .line 464
    .line 465
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    const-string v2, "Removing"

    .line 470
    .line 471
    const-string v4, "Adding"

    .line 472
    .line 473
    if-eqz v1, :cond_e

    .line 474
    .line 475
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 476
    .line 477
    iget-object v9, v7, La55;->b:Ljava/lang/String;

    .line 478
    .line 479
    if-nez v3, :cond_d

    .line 480
    .line 481
    move-object v2, v4

    .line 482
    :cond_d
    const-string v0, " note successful"

    .line 483
    .line 484
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    const/4 v12, 0x4

    .line 489
    const/4 v13, 0x0

    .line 490
    const/4 v11, 0x0

    .line 491
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_e
    instance-of v1, v0, Lye3;

    .line 496
    .line 497
    if-eqz v1, :cond_10

    .line 498
    .line 499
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 500
    .line 501
    iget-object v9, v7, La55;->b:Ljava/lang/String;

    .line 502
    .line 503
    if-nez v3, :cond_f

    .line 504
    .line 505
    move-object v2, v4

    .line 506
    :cond_f
    check-cast v0, Lye3;

    .line 507
    .line 508
    iget-object v0, v0, Lye3;->b:Lwc2;

    .line 509
    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v2, " note failed: "

    .line 519
    .line 520
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    const/4 v12, 0x4

    .line 531
    const/4 v13, 0x0

    .line 532
    const/4 v11, 0x0

    .line 533
    invoke-static/range {v8 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    :goto_9
    move-object v5, v6

    .line 537
    goto :goto_a

    .line 538
    :cond_10
    invoke-static {}, Lq;->j()V

    .line 539
    .line 540
    .line 541
    :goto_a
    return-object v5

    .line 542
    :cond_11
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    throw v5

    .line 546
    :cond_12
    invoke-static {v4}, Lpe4;->F(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    throw v5

    .line 550
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 551
    .line 552
    check-cast v8, Lhz;

    .line 553
    .line 554
    check-cast v7, Lky7;

    .line 555
    .line 556
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {v0, v8, v7}, Lmk2;->l(Lkz;Lty7;)V

    .line 561
    .line 562
    .line 563
    return-object v6

    .line 564
    :pswitch_4
    check-cast v0, Lokhttp3/CertificatePinner;

    .line 565
    .line 566
    check-cast v8, Lokhttp3/Handshake;

    .line 567
    .line 568
    check-cast v7, Lokhttp3/Address;

    .line 569
    .line 570
    iget-object v0, v0, Lokhttp3/CertificatePinner;->b:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v8}, Lokhttp3/Handshake;->a()Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    iget-object v2, v7, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 580
    .line 581
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v0, v2, v1}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    return-object v0

    .line 588
    :pswitch_5
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 589
    .line 590
    check-cast v8, Lpe4;

    .line 591
    .line 592
    check-cast v7, Lbi1;

    .line 593
    .line 594
    invoke-static {v8, v0}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->j(Lpe4;Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V

    .line 595
    .line 596
    .line 597
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->f:Lix6;

    .line 598
    .line 599
    new-instance v1, Lth1;

    .line 600
    .line 601
    iget-object v2, v7, Lbi1;->i:Ljava/lang/Exception;

    .line 602
    .line 603
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    if-nez v2, :cond_13

    .line 608
    .line 609
    const-string v2, ""

    .line 610
    .line 611
    :cond_13
    invoke-direct {v1, v2}, Lth1;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    return-object v6

    .line 618
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;

    .line 619
    .line 620
    check-cast v8, Ljava/util/ArrayList;

    .line 621
    .line 622
    check-cast v7, Lry7;

    .line 623
    .line 624
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->m0:I

    .line 625
    .line 626
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/listconfig/AppsConfigRunActivity;->i0()Ln30;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v0, v8, v7}, Ln30;->k(Ljava/util/ArrayList;Lty7;)V

    .line 631
    .line 632
    .line 633
    return-object v6

    .line 634
    nop

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
