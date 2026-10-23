.class public final synthetic Lhq0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lhq0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lhq0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lhq0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lhq0;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    iget-object v6, v0, Lhq0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v0, v0, Lhq0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v0, Ltt8;

    .line 18
    .line 19
    check-cast v6, Lyp8;

    .line 20
    .line 21
    iget-object v1, v6, Lyp8;->i:Landroid/widget/TextView;

    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lpw6;->e()Lgz7;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lgz7;->isComplete()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_1
    :goto_0
    invoke-static {v1, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v6, Lyp8;->j:Landroid/view/View;

    .line 51
    .line 52
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v6, Lyp8;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 58
    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object v5

    .line 66
    :pswitch_0
    check-cast v0, Lwp8;

    .line 67
    .line 68
    check-cast v6, Lyp8;

    .line 69
    .line 70
    iget-object v1, v6, Lyp8;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    move-object/from16 v2, p1

    .line 73
    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v0}, Lpw6;->e()Lgz7;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lgz7;->isComplete()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    move v3, v4

    .line 96
    :cond_4
    :goto_1
    invoke-static {v1, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v6, Lyp8;->j:Landroid/view/View;

    .line 100
    .line 101
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v6, Lyp8;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 105
    .line 106
    invoke-static {v0, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 107
    .line 108
    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    return-object v5

    .line 115
    :pswitch_1
    check-cast v0, Lzn7;

    .line 116
    .line 117
    check-cast v6, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;

    .line 118
    .line 119
    move-object/from16 v1, p1

    .line 120
    .line 121
    check-cast v1, Landroid/net/Uri;

    .line 122
    .line 123
    sget v3, Lorg/swiftapps/swiftbackup/home/storageswitch/StorageSwitchActivity;->f0:I

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lzn7;->g()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    sget-object v1, Lzn4;->a:Lzn4;

    .line 135
    .line 136
    new-instance v1, Las0;

    .line 137
    .line 138
    invoke-direct {v1, v0, v6, v2, v4}, Las0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v1}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 142
    .line 143
    .line 144
    :cond_6
    return-object v5

    .line 145
    :pswitch_2
    move-object v1, v0

    .line 146
    check-cast v1, Lji7;

    .line 147
    .line 148
    check-cast v6, Ljava/lang/String;

    .line 149
    .line 150
    move-object/from16 v0, p1

    .line 151
    .line 152
    check-cast v0, Lwm2;

    .line 153
    .line 154
    const-string v2, "Unable to delete file at "

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    :try_start_0
    invoke-virtual {v1, v6}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Lwm2;->j(Ljava/lang/String;)Lu63;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    iget-object v7, v7, Lu63;->b:Lu93;

    .line 168
    .line 169
    iget-boolean v7, v7, Lu93;->b:Z

    .line 170
    .line 171
    if-eqz v7, :cond_7

    .line 172
    .line 173
    invoke-virtual {v0, v3, v4}, Lwm2;->z(Ljava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    move-object v10, v0

    .line 179
    goto :goto_2

    .line 180
    :cond_7
    invoke-virtual {v1, v6}, Lji7;->x(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_2
    invoke-virtual {v1, v6}, Lji7;->r(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 216
    .line 217
    const/16 v12, 0x8

    .line 218
    .line 219
    const/4 v13, 0x0

    .line 220
    const-string v8, "SmbService"

    .line 221
    .line 222
    const-string v9, "delete"

    .line 223
    .line 224
    const/4 v11, 0x0

    .line 225
    invoke-static/range {v7 .. v13}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    :goto_3
    return-object v5

    .line 229
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 230
    .line 231
    check-cast v6, Lj57;

    .line 232
    .line 233
    move-object/from16 v1, p1

    .line 234
    .line 235
    check-cast v1, Ljava/lang/Boolean;

    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    move-object v7, v0

    .line 242
    check-cast v7, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 243
    .line 244
    const/16 v17, 0x1fb

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const/4 v8, 0x0

    .line 249
    const/4 v9, 0x0

    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v12, 0x0

    .line 252
    const/4 v13, 0x0

    .line 253
    const/4 v14, 0x0

    .line 254
    const/4 v15, 0x0

    .line 255
    const/16 v16, 0x0

    .line 256
    .line 257
    invoke-static/range {v7 .. v18}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->copy$default(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;Ljava/lang/String;Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Type;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-nez v10, :cond_b

    .line 262
    .line 263
    iput-object v0, v6, Lj57;->t:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;

    .line 264
    .line 265
    new-instance v1, Landroid/os/Bundle;

    .line 266
    .line 267
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v2, "EXTRA_BACKUP_ALL_FOLDERS"

    .line 271
    .line 272
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    new-instance v2, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$Folders;->getFolderItems()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-nez v0, :cond_a

    .line 282
    .line 283
    sget-object v0, Lov2;->a:Lov2;

    .line 284
    .line 285
    :cond_a
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .line 287
    .line 288
    const-string v0, "EXTRA_SELECTED_FOLDER_ITEMS"

    .line 289
    .line 290
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v6, Lj57;->m:Lm37;

    .line 294
    .line 295
    iget-object v0, v0, Lm37;->f:Lcr3;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lcr3;->a(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_b
    iget-object v1, v6, Lj57;->o:Lu10;

    .line 302
    .line 303
    if-eqz v1, :cond_c

    .line 304
    .line 305
    invoke-virtual {v1, v0}, Lu10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    :cond_c
    :goto_4
    return-object v5

    .line 309
    :pswitch_4
    check-cast v0, Ly27;

    .line 310
    .line 311
    check-cast v6, Lw27;

    .line 312
    .line 313
    move-object/from16 v1, p1

    .line 314
    .line 315
    check-cast v1, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-static {}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->getEntries()Ljx2;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    new-instance v8, Ljava/util/ArrayList;

    .line 326
    .line 327
    const/16 v4, 0xa

    .line 328
    .line 329
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 330
    .line 331
    .line 332
    move-result v4

    .line 333
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    check-cast v2, Lz3;

    .line 337
    .line 338
    invoke-virtual {v2}, Lz3;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    :goto_5
    move-object v4, v2

    .line 343
    check-cast v4, Lw3;

    .line 344
    .line 345
    invoke-virtual {v4}, Lw3;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    if-eqz v7, :cond_e

    .line 350
    .line 351
    invoke-virtual {v4}, Lw3;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 356
    .line 357
    new-instance v7, Lx27;

    .line 358
    .line 359
    sget-object v9, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 360
    .line 361
    if-ne v4, v9, :cond_d

    .line 362
    .line 363
    move v9, v1

    .line 364
    goto :goto_6

    .line 365
    :cond_d
    const/16 v9, 0x32

    .line 366
    .line 367
    :goto_6
    invoke-direct {v7, v4, v9}, Lx27;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_e
    iget-object v0, v0, Ly27;->f:Lw27;

    .line 375
    .line 376
    new-instance v7, Lfm7;

    .line 377
    .line 378
    iget-object v1, v6, Lgm7;->e:Lfm7;

    .line 379
    .line 380
    iget-object v9, v1, Lfm7;->b:Ljava/util/Set;

    .line 381
    .line 382
    const/4 v11, 0x0

    .line 383
    const/16 v12, 0x1c

    .line 384
    .line 385
    const/4 v10, 0x0

    .line 386
    invoke-direct/range {v7 .. v12}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v7, v3}, Lgm7;->w(Lfm7;Z)V

    .line 390
    .line 391
    .line 392
    return-object v5

    .line 393
    :pswitch_5
    check-cast v0, Ljava/util/TreeMap;

    .line 394
    .line 395
    check-cast v6, Ljava/util/ArrayList;

    .line 396
    .line 397
    move-object/from16 v1, p1

    .line 398
    .line 399
    check-cast v1, Lza5;

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    iget-object v2, v1, Lza5;->c:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eqz v3, :cond_f

    .line 415
    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    check-cast v3, Lbb5;

    .line 421
    .line 422
    iget v4, v3, Lbb5;->a:I

    .line 423
    .line 424
    iget-object v3, v3, Lbb5;->b:[B

    .line 425
    .line 426
    invoke-virtual {v6, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_f
    iget v2, v1, Lza5;->a:I

    .line 431
    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    iget-object v1, v1, Lza5;->b:[B

    .line 437
    .line 438
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    return-object v5

    .line 442
    :pswitch_6
    move-object v10, v0

    .line 443
    check-cast v10, Ltp3;

    .line 444
    .line 445
    check-cast v6, Lrw6;

    .line 446
    .line 447
    move-object/from16 v0, p1

    .line 448
    .line 449
    check-cast v0, Lqw6;

    .line 450
    .line 451
    iget-object v1, v10, Ltp3;->i:Landroid/widget/TextView;

    .line 452
    .line 453
    iget-object v8, v10, Ltp3;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 454
    .line 455
    iget-object v9, v10, Ltp3;->k:Landroid/widget/TextView;

    .line 456
    .line 457
    iget-object v11, v10, Ltp3;->e:Landroid/widget/TextView;

    .line 458
    .line 459
    iget-object v12, v10, Ltp3;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 460
    .line 461
    iget-object v13, v10, Ltp3;->d:Landroid/widget/TextView;

    .line 462
    .line 463
    iget-object v14, v10, Ltp3;->b:Lcy7;

    .line 464
    .line 465
    iget-object v14, v14, Lcy7;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 466
    .line 467
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    .line 469
    .line 470
    new-instance v14, Ldy7;

    .line 471
    .line 472
    iget-object v15, v10, Ltp3;->a:Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 473
    .line 474
    iget-object v2, v10, Ltp3;->j:Landroid/widget/TextView;

    .line 475
    .line 476
    invoke-direct {v14, v15, v2}, Ldy7;-><init>(Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;Landroid/widget/TextView;)V

    .line 477
    .line 478
    .line 479
    iget-object v2, v6, Lrw6;->d:Lvq;

    .line 480
    .line 481
    new-instance v6, Lih6;

    .line 482
    .line 483
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 484
    .line 485
    .line 486
    new-instance v7, Lih6;

    .line 487
    .line 488
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 489
    .line 490
    .line 491
    if-eqz v2, :cond_10

    .line 492
    .line 493
    iget-object v3, v2, Lvq;->c:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v3, Ljava/lang/String;

    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_10
    const/4 v3, 0x0

    .line 499
    :goto_8
    if-eqz v3, :cond_12

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-nez v3, :cond_11

    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_11
    const/4 v3, 0x0

    .line 509
    goto :goto_a

    .line 510
    :cond_12
    :goto_9
    move v3, v4

    .line 511
    :goto_a
    xor-int/2addr v3, v4

    .line 512
    iget-object v4, v10, Ltp3;->c:Landroid/widget/TextView;

    .line 513
    .line 514
    move-object/from16 p1, v1

    .line 515
    .line 516
    if-eqz v2, :cond_13

    .line 517
    .line 518
    iget-object v1, v2, Lvq;->b:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Ljava/lang/String;

    .line 521
    .line 522
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    iget-object v1, v2, Lvq;->c:Ljava/lang/Object;

    .line 526
    .line 527
    check-cast v1, Ljava/lang/String;

    .line 528
    .line 529
    invoke-static {v13, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_13
    const v1, 0x7f130281

    .line 537
    .line 538
    .line 539
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 540
    .line 541
    .line 542
    const/16 v1, 0x8

    .line 543
    .line 544
    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    .line 546
    .line 547
    :goto_b
    invoke-static {v6, v7, v10}, Ltp3;->b(Lih6;Lih6;Ltp3;)V

    .line 548
    .line 549
    .line 550
    if-eqz v0, :cond_14

    .line 551
    .line 552
    iget-object v2, v0, Lqw6;->a:Lpw6;

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_14
    const/4 v2, 0x0

    .line 556
    :goto_c
    check-cast v2, Lqp3;

    .line 557
    .line 558
    const v1, 0x7f1305c3

    .line 559
    .line 560
    .line 561
    if-nez v2, :cond_16

    .line 562
    .line 563
    if-eqz v0, :cond_15

    .line 564
    .line 565
    invoke-virtual {v0}, Lqw6;->a()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    const/4 v2, 0x1

    .line 570
    if-ne v0, v2, :cond_15

    .line 571
    .line 572
    const-string v0, "0"

    .line 573
    .line 574
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v15, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    goto :goto_d

    .line 583
    :cond_15
    const v0, 0x7f1305a0

    .line 584
    .line 585
    .line 586
    invoke-virtual {v15, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    .line 595
    .line 596
    invoke-static {v9}, Lsz8;->W(Landroid/view/View;)V

    .line 597
    .line 598
    .line 599
    const/16 v1, 0x8

    .line 600
    .line 601
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    .line 603
    .line 604
    invoke-static {v8}, Lsz8;->W(Landroid/view/View;)V

    .line 605
    .line 606
    .line 607
    invoke-static/range {p1 .. p1}, Lsz8;->W(Landroid/view/View;)V

    .line 608
    .line 609
    .line 610
    goto/16 :goto_e

    .line 611
    .line 612
    :cond_16
    invoke-static {v9}, Lsz8;->c0(Landroid/view/View;)V

    .line 613
    .line 614
    .line 615
    const/4 v0, 0x0

    .line 616
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    invoke-static {v8}, Lsz8;->X(Landroid/view/View;)V

    .line 620
    .line 621
    .line 622
    invoke-static/range {p1 .. p1}, Lsz8;->X(Landroid/view/View;)V

    .line 623
    .line 624
    .line 625
    const v0, 0x7f08014c

    .line 626
    .line 627
    .line 628
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v2}, Lpw6;->g()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_17

    .line 636
    .line 637
    iget-object v0, v2, Lqp3;->m:Ljava/util/List;

    .line 638
    .line 639
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {v15, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    .line 657
    .line 658
    :cond_17
    iget-object v0, v2, Lqp3;->o:Lex6;

    .line 659
    .line 660
    new-instance v1, Lbz;

    .line 661
    .line 662
    const/4 v3, 0x4

    .line 663
    invoke-direct {v1, v3, v2, v10}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    new-instance v4, Ls30;

    .line 667
    .line 668
    invoke-direct {v4, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0, v15, v4}, Lzy4;->e(Lfu4;Les5;)V

    .line 672
    .line 673
    .line 674
    iget-object v0, v2, Lpw6;->g:Lex6;

    .line 675
    .line 676
    new-instance v8, Lle1;

    .line 677
    .line 678
    const/4 v13, 0x1

    .line 679
    move-object v9, v2

    .line 680
    move-object v11, v6

    .line 681
    move-object v12, v7

    .line 682
    invoke-direct/range {v8 .. v13}, Lle1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 683
    .line 684
    .line 685
    new-instance v1, Ls30;

    .line 686
    .line 687
    invoke-direct {v1, v3, v8}, Ls30;-><init>(ILmt3;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v15, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 691
    .line 692
    .line 693
    iget-object v0, v9, Lpw6;->h:Lex6;

    .line 694
    .line 695
    new-instance v8, Lrp3;

    .line 696
    .line 697
    const/4 v13, 0x0

    .line 698
    move-object/from16 v19, v12

    .line 699
    .line 700
    move-object v12, v11

    .line 701
    move-object/from16 v11, v19

    .line 702
    .line 703
    invoke-direct/range {v8 .. v13}, Lrp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 704
    .line 705
    .line 706
    new-instance v1, Ls30;

    .line 707
    .line 708
    invoke-direct {v1, v3, v8}, Ls30;-><init>(ILmt3;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v15, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 712
    .line 713
    .line 714
    iget-object v0, v9, Lpw6;->d:Lgj5;

    .line 715
    .line 716
    new-instance v1, Lv10;

    .line 717
    .line 718
    const/16 v2, 0xc

    .line 719
    .line 720
    invoke-direct {v1, v14, v2}, Lv10;-><init>(Ljava/lang/Object;I)V

    .line 721
    .line 722
    .line 723
    new-instance v2, Ls30;

    .line 724
    .line 725
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0, v15, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 729
    .line 730
    .line 731
    iget-object v0, v9, Lpw6;->i:Lex6;

    .line 732
    .line 733
    new-instance v1, Lpx;

    .line 734
    .line 735
    const/16 v2, 0x8

    .line 736
    .line 737
    invoke-direct {v1, v10, v2}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 738
    .line 739
    .line 740
    new-instance v2, Ls30;

    .line 741
    .line 742
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0, v15, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Llh6;

    .line 749
    .line 750
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 751
    .line 752
    .line 753
    iget-object v1, v9, Lpw6;->e:Lex6;

    .line 754
    .line 755
    new-instance v2, Lsp3;

    .line 756
    .line 757
    invoke-direct {v2, v0, v9, v14, v10}, Lsp3;-><init>(Llh6;Lqp3;Ldy7;Ltp3;)V

    .line 758
    .line 759
    .line 760
    new-instance v0, Ls30;

    .line 761
    .line 762
    invoke-direct {v0, v3, v2}, Ls30;-><init>(ILmt3;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1, v15, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 766
    .line 767
    .line 768
    new-instance v0, Llh6;

    .line 769
    .line 770
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 771
    .line 772
    .line 773
    iget-object v1, v9, Lpw6;->f:Lex6;

    .line 774
    .line 775
    new-instance v2, Ljf;

    .line 776
    .line 777
    const/4 v4, 0x6

    .line 778
    invoke-direct {v2, v4, v0, v10}, Ljf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    new-instance v0, Ls30;

    .line 782
    .line 783
    invoke-direct {v0, v3, v2}, Ls30;-><init>(ILmt3;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v1, v15, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 787
    .line 788
    .line 789
    iget-object v0, v9, Lpw6;->j:Lgj5;

    .line 790
    .line 791
    new-instance v1, Lw20;

    .line 792
    .line 793
    const/16 v2, 0xd

    .line 794
    .line 795
    invoke-direct {v1, v10, v2}, Lw20;-><init>(Ljava/lang/Object;I)V

    .line 796
    .line 797
    .line 798
    new-instance v2, Ls30;

    .line 799
    .line 800
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v15, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 804
    .line 805
    .line 806
    iget-object v0, v9, Lpw6;->c:Lgj5;

    .line 807
    .line 808
    new-instance v1, Lkl;

    .line 809
    .line 810
    const/4 v2, 0x2

    .line 811
    invoke-direct {v1, v10, v14, v9, v2}, Lkl;-><init>(Ljava/lang/Object;Ldy7;Lpw6;I)V

    .line 812
    .line 813
    .line 814
    new-instance v2, Ls30;

    .line 815
    .line 816
    invoke-direct {v2, v3, v1}, Ls30;-><init>(ILmt3;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, v15, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 820
    .line 821
    .line 822
    :goto_e
    return-object v5

    .line 823
    :pswitch_7
    check-cast v0, Lwb6$b;

    .line 824
    .line 825
    check-cast v6, Ljava/lang/String;

    .line 826
    .line 827
    move-object/from16 v1, p1

    .line 828
    .line 829
    check-cast v1, Ljava/lang/Boolean;

    .line 830
    .line 831
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    sget-object v1, Lwb6$b;->PURCHASED:Lwb6$b;

    .line 835
    .line 836
    if-ne v0, v1, :cond_18

    .line 837
    .line 838
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 839
    .line 840
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    const v1, 0x7f130589

    .line 845
    .line 846
    .line 847
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    sget-object v2, Lzn4;->a:Lzn4;

    .line 855
    .line 856
    new-instance v2, Lcv;

    .line 857
    .line 858
    const/16 v3, 0xe

    .line 859
    .line 860
    invoke-direct {v2, v3, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    invoke-static {v2}, Lzn4;->e(Lbt3;)V

    .line 864
    .line 865
    .line 866
    invoke-static {v6}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    goto :goto_f

    .line 870
    :cond_18
    sget-object v0, Lwq0;->a:Lwq0;

    .line 871
    .line 872
    new-instance v0, Ljx;

    .line 873
    .line 874
    const/4 v3, 0x4

    .line 875
    invoke-direct {v0, v3}, Ljx;-><init>(I)V

    .line 876
    .line 877
    .line 878
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 879
    .line 880
    .line 881
    :goto_f
    return-object v5

    .line 882
    nop

    .line 883
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
