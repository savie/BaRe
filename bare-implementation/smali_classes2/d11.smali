.class public final synthetic Ld11;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld11;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ld11;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ld11;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Ld11;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcs8;

    .line 12
    .line 13
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Let8;

    .line 16
    .line 17
    iget-object v0, v0, Lcs8;->b:Liu8;

    .line 18
    .line 19
    new-instance v1, Lbz7;

    .line 20
    .line 21
    invoke-static {p0}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v2, Lq05;->CLOUD:Lq05;

    .line 26
    .line 27
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, p0, v2, v3}, Lbz7;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lut8;

    .line 38
    .line 39
    const v2, 0x7f13058d

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v1, v2, v0, v3}, Lut8;-><init>(Lbz7;ILiu8;Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lzn4;->c(Lbt3;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lbe8;->a:Lbe8;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_0
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Landroid/content/Context;

    .line 54
    .line 55
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lbe8;->a:Lbe8;

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_1
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;

    .line 68
    .line 69
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lorg/swiftapps/swiftbackup/notice/NoticeItem;

    .line 72
    .line 73
    sget v1, Lorg/swiftapps/swiftbackup/notice/NoticeListActivity;->N:I

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/notice/NoticeItem;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Lorg/swiftapps/swiftbackup/common/Const;->B(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :pswitch_2
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/content/Intent;

    .line 91
    .line 92
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 95
    .line 96
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 97
    .line 98
    const-string v1, "detail_launched_from_shortcut"

    .line 99
    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v2, p0, La55;->b:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v1, :cond_0

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "Launching detail screen for package "

    .line 115
    .line 116
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Lmo0;

    .line 141
    .line 142
    invoke-direct {v2, v0}, Lmo0;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "Signed in and storage granted! Starting HomeActivity"

    .line 150
    .line 151
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lqo0;->e()Lix6;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Lio0;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :goto_0
    invoke-virtual {p0}, Lqo0;->d()V

    .line 167
    .line 168
    .line 169
    sget-object p0, Lbe8;->a:Lbe8;

    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_3
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Lzn7;

    .line 175
    .line 176
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Lin3;

    .line 179
    .line 180
    sget-object v1, Lbe8;->a:Lbe8;

    .line 181
    .line 182
    invoke-virtual {p0}, Lin3;->k()Lhn3;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v2, v2, Lhn3;->a:Lzn7;

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Lzn7;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    iget-object v2, p0, Lin3;->m:Ljava/util/LinkedHashMap;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lzn7;->n()Lq63;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    new-instance v3, Lg52;

    .line 205
    .line 206
    const/4 v4, 0x4

    .line 207
    invoke-direct {v3, v4, v0, p0}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v2, v3}, Lin3;->m(Lq63;Lbt3;)V

    .line 211
    .line 212
    .line 213
    :goto_1
    return-object v1

    .line 214
    :pswitch_4
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v0, Lkk3;

    .line 217
    .line 218
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 221
    .line 222
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 223
    .line 224
    iget-object v5, v0, La55;->b:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v6, "Deleting local folder setup for: "

    .line 229
    .line 230
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    const/4 v8, 0x4

    .line 241
    const/4 v9, 0x0

    .line 242
    const/4 v7, 0x0

    .line 243
    invoke-static/range {v4 .. v9}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-static {p0, v2, v2}, Lorg/swiftapps/swiftbackup/folders/data/a;->a(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;ZZ)Lkj3;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lkj3;->f()Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_2

    .line 255
    .line 256
    invoke-static {p0, v3}, Lal3;->b(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    .line 257
    .line 258
    .line 259
    sget-object v1, Lbe8;->a:Lbe8;

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_2
    invoke-virtual {v0}, Lkj3;->b()Lq63;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    const-string v0, "Unable to delete folder setup. Folder is backed up at "

    .line 267
    .line 268
    const-string v2, "!"

    .line 269
    .line 270
    invoke-static {p0, v2, v0}, Lf6;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_2
    return-object v1

    .line 274
    :pswitch_5
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 275
    .line 276
    move-object v1, v0

    .line 277
    check-cast v1, Lo23;

    .line 278
    .line 279
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p0, Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p0}, Lo23;->F(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v0, "getInputStream: InputStream null at path="

    .line 287
    .line 288
    monitor-enter v1

    .line 289
    :try_start_0
    invoke-virtual {v1, v2}, Lo23;->z(Z)Ld23;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {p0}, Lo23;->F(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, p0}, Lo23;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {v3, p0}, Ld23;->w(Ljava/lang/String;)Lzi7;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    if-eqz v4, :cond_3

    .line 305
    .line 306
    new-instance v0, Ltc4;

    .line 307
    .line 308
    new-instance v5, Lj32;

    .line 309
    .line 310
    const/4 v6, 0x2

    .line 311
    invoke-direct {v5, v6, v3, v1, p0}, Lj32;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-direct {v0, v4, v5, v2}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .line 316
    .line 317
    monitor-exit v1

    .line 318
    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    move-object p0, v0

    .line 321
    goto :goto_3

    .line 322
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lz13;->i()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string p0, ". Reply="

    .line 335
    .line 336
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 347
    .line 348
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    throw p0

    .line 358
    :pswitch_6
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 361
    .line 362
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast p0, Lh80;

    .line 365
    .line 366
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 367
    .line 368
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0, p0}, Lmk2;->j(Lh80;)V

    .line 373
    .line 374
    .line 375
    sget-object p0, Lbe8;->a:Lbe8;

    .line 376
    .line 377
    return-object p0

    .line 378
    :pswitch_7
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 381
    .line 382
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast p0, Lkk;

    .line 385
    .line 386
    sget v2, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 387
    .line 388
    const/high16 v2, 0x41580000    # 13.5f

    .line 389
    .line 390
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    new-instance v4, Lhv1;

    .line 395
    .line 396
    const v5, 0x7f140160

    .line 397
    .line 398
    .line 399
    invoke-direct {v4, v0, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 400
    .line 401
    .line 402
    new-instance v6, Ls35;

    .line 403
    .line 404
    invoke-direct {v6, v0, v5, v4, v2}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 405
    .line 406
    .line 407
    const v2, 0x7f13009b

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v2}, Lv75;->v(I)V

    .line 411
    .line 412
    .line 413
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 414
    .line 415
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    iget-object v4, p0, Lkk;->a:Ljava/lang/Long;

    .line 419
    .line 420
    iget-object v5, p0, Lkk;->c:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 423
    .line 424
    .line 425
    move-result-wide v7

    .line 426
    const-wide/16 v9, 0x0

    .line 427
    .line 428
    cmp-long v7, v7, v9

    .line 429
    .line 430
    if-lez v7, :cond_4

    .line 431
    .line 432
    move-object v7, v4

    .line 433
    goto :goto_4

    .line 434
    :cond_4
    move-object v7, v1

    .line 435
    :goto_4
    if-eqz v7, :cond_5

    .line 436
    .line 437
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 438
    .line 439
    .line 440
    move-result-wide v7

    .line 441
    const v11, 0x7f1301cf

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->W(J)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    invoke-static {v2, v11, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 456
    .line 457
    .line 458
    :cond_5
    iget-object v7, p0, Lkk;->b:Ljava/lang/Long;

    .line 459
    .line 460
    if-eqz v7, :cond_7

    .line 461
    .line 462
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 463
    .line 464
    .line 465
    move-result-wide v11

    .line 466
    cmp-long v8, v11, v9

    .line 467
    .line 468
    if-lez v8, :cond_6

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 471
    .line 472
    .line 473
    move-result-wide v13

    .line 474
    cmp-long v4, v11, v13

    .line 475
    .line 476
    if-eqz v4, :cond_6

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_6
    move-object v7, v1

    .line 480
    :goto_5
    if-eqz v7, :cond_7

    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v7

    .line 486
    const v4, 0x7f130588

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    .line 495
    .line 496
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->W(J)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    invoke-static {v2, v4, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 501
    .line 502
    .line 503
    :cond_7
    if-eqz v5, :cond_9

    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    if-nez v4, :cond_8

    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_8
    const v4, 0x7f1300b6

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    invoke-static {v2, v4, v5}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 523
    .line 524
    .line 525
    :cond_9
    :goto_6
    iget-boolean v4, p0, Lkk;->d:Z

    .line 526
    .line 527
    const v5, 0x7f1305d0

    .line 528
    .line 529
    .line 530
    if-eqz v4, :cond_a

    .line 531
    .line 532
    const v4, 0x7f130431

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-static {v2, v4, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 550
    .line 551
    .line 552
    :cond_a
    iget-object p0, p0, Lkk;->e:Ljava/util/List;

    .line 553
    .line 554
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object p0

    .line 558
    :cond_b
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v4

    .line 562
    if-eqz v4, :cond_19

    .line 563
    .line 564
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    check-cast v4, Lgk0;

    .line 569
    .line 570
    iget-object v7, v4, Lgk0;->a:Lhk0;

    .line 571
    .line 572
    iget-object v8, v4, Lgk0;->b:Ljava/lang/Long;

    .line 573
    .line 574
    iget-object v11, v4, Lgk0;->c:Ljava/lang/Long;

    .line 575
    .line 576
    sget-object v12, Lzi2;->c:[I

    .line 577
    .line 578
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 579
    .line 580
    .line 581
    move-result v7

    .line 582
    aget v7, v12, v7

    .line 583
    .line 584
    packed-switch v7, :pswitch_data_1

    .line 585
    .line 586
    .line 587
    invoke-static {}, Lq;->j()V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_e

    .line 591
    .line 592
    :pswitch_8
    const v7, 0x7f13053c

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    goto :goto_8

    .line 603
    :pswitch_9
    const v7, 0x7f13022a

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v7

    .line 610
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    goto :goto_8

    .line 614
    :pswitch_a
    const v7, 0x7f130346

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    .line 623
    .line 624
    goto :goto_8

    .line 625
    :pswitch_b
    const v7, 0x7f13022f

    .line 626
    .line 627
    .line 628
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    .line 634
    .line 635
    goto :goto_8

    .line 636
    :pswitch_c
    const v7, 0x7f1301d8

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v7

    .line 643
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 644
    .line 645
    .line 646
    goto :goto_8

    .line 647
    :pswitch_d
    const v7, 0x7f1304fd

    .line 648
    .line 649
    .line 650
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    goto :goto_8

    .line 658
    :pswitch_e
    const v7, 0x7f13053d

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    goto :goto_8

    .line 669
    :pswitch_f
    const-string v7, "APK"

    .line 670
    .line 671
    :goto_8
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    if-lez v12, :cond_c

    .line 676
    .line 677
    const/16 v12, 0xa

    .line 678
    .line 679
    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v12}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 683
    .line 684
    .line 685
    :cond_c
    new-instance v12, Landroid/text/style/StyleSpan;

    .line 686
    .line 687
    invoke-direct {v12, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 691
    .line 692
    .line 693
    move-result v13

    .line 694
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 698
    .line 699
    .line 700
    move-result v7

    .line 701
    const/16 v14, 0x11

    .line 702
    .line 703
    invoke-virtual {v2, v12, v13, v7, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 704
    .line 705
    .line 706
    iget-object v7, v4, Lgk0;->f:Ljava/lang/String;

    .line 707
    .line 708
    if-eqz v7, :cond_d

    .line 709
    .line 710
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 711
    .line 712
    .line 713
    move-result v12

    .line 714
    if-nez v12, :cond_d

    .line 715
    .line 716
    goto :goto_9

    .line 717
    :cond_d
    move-object v7, v1

    .line 718
    :goto_9
    iget-object v12, v4, Lgk0;->g:Ljava/lang/Long;

    .line 719
    .line 720
    if-eqz v12, :cond_e

    .line 721
    .line 722
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    .line 723
    .line 724
    .line 725
    move-result-wide v13

    .line 726
    cmp-long v13, v13, v9

    .line 727
    .line 728
    if-lez v13, :cond_e

    .line 729
    .line 730
    goto :goto_a

    .line 731
    :cond_e
    move-object v12, v1

    .line 732
    :goto_a
    if-eqz v7, :cond_f

    .line 733
    .line 734
    if-eqz v12, :cond_f

    .line 735
    .line 736
    new-instance v13, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    const-string v7, " ("

    .line 745
    .line 746
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    const-string v7, ")"

    .line 753
    .line 754
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v7

    .line 761
    goto :goto_b

    .line 762
    :cond_f
    if-nez v7, :cond_11

    .line 763
    .line 764
    if-eqz v12, :cond_10

    .line 765
    .line 766
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 767
    .line 768
    .line 769
    move-result-wide v12

    .line 770
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    goto :goto_b

    .line 775
    :cond_10
    move-object v7, v1

    .line 776
    :cond_11
    :goto_b
    if-eqz v7, :cond_12

    .line 777
    .line 778
    const v12, 0x7f13059f

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v12

    .line 785
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 786
    .line 787
    .line 788
    invoke-static {v2, v12, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 789
    .line 790
    .line 791
    :cond_12
    if-eqz v11, :cond_13

    .line 792
    .line 793
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    .line 794
    .line 795
    .line 796
    move-result-wide v12

    .line 797
    const v7, 0x7f1303f1

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v7

    .line 804
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 805
    .line 806
    .line 807
    sget-object v14, Lp93;->a:Lp93;

    .line 808
    .line 809
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 810
    .line 811
    .line 812
    move-result-object v12

    .line 813
    invoke-static {v12}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v12

    .line 817
    invoke-static {v2, v7, v12}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 818
    .line 819
    .line 820
    :cond_13
    const v7, 0x7f1300a6

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v7

    .line 827
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 828
    .line 829
    .line 830
    sget-object v12, Lp93;->a:Lp93;

    .line 831
    .line 832
    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v12

    .line 836
    invoke-static {v2, v7, v12}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v11, v8}, Lp93;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Double;

    .line 840
    .line 841
    .line 842
    move-result-object v7

    .line 843
    if-eqz v7, :cond_14

    .line 844
    .line 845
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    .line 846
    .line 847
    .line 848
    move-result-wide v7

    .line 849
    const v11, 0x7f1301a9

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v11

    .line 856
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    invoke-static {v7, v8}, Lp93;->b(D)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v7

    .line 863
    invoke-static {v2, v11, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 864
    .line 865
    .line 866
    :cond_14
    iget-object v7, v4, Lgk0;->h:Ljava/lang/Long;

    .line 867
    .line 868
    if-eqz v7, :cond_15

    .line 869
    .line 870
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 871
    .line 872
    .line 873
    move-result-wide v7

    .line 874
    const v11, 0x7f13023d

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v11

    .line 881
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 882
    .line 883
    .line 884
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->V(J)Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v7

    .line 888
    invoke-static {v2, v11, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 889
    .line 890
    .line 891
    :cond_15
    iget-object v7, v4, Lgk0;->i:Ljava/lang/Long;

    .line 892
    .line 893
    if-eqz v7, :cond_16

    .line 894
    .line 895
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 896
    .line 897
    .line 898
    move-result-wide v7

    .line 899
    const v11, 0x7f130281

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v11

    .line 906
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    .line 908
    .line 909
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->V(J)Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v7

    .line 913
    invoke-static {v2, v11, v7}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 914
    .line 915
    .line 916
    :cond_16
    iget-boolean v7, v4, Lgk0;->d:Z

    .line 917
    .line 918
    if-eqz v7, :cond_b

    .line 919
    .line 920
    iget-object v4, v4, Lgk0;->e:Ljava/lang/String;

    .line 921
    .line 922
    if-eqz v4, :cond_18

    .line 923
    .line 924
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 925
    .line 926
    .line 927
    move-result v7

    .line 928
    if-nez v7, :cond_17

    .line 929
    .line 930
    goto :goto_c

    .line 931
    :cond_17
    move-object v4, v1

    .line 932
    :goto_c
    if-eqz v4, :cond_18

    .line 933
    .line 934
    const v7, 0x7f13021e

    .line 935
    .line 936
    .line 937
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v4

    .line 945
    if-eqz v4, :cond_18

    .line 946
    .line 947
    goto :goto_d

    .line 948
    :cond_18
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v4

    .line 952
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    .line 954
    .line 955
    :goto_d
    const v7, 0x7f13021d

    .line 956
    .line 957
    .line 958
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v7

    .line 962
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    .line 964
    .line 965
    invoke-static {v2, v7, v4}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 966
    .line 967
    .line 968
    goto/16 :goto_7

    .line 969
    .line 970
    :cond_19
    new-instance p0, Landroid/text/SpannedString;

    .line 971
    .line 972
    invoke-direct {p0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 973
    .line 974
    .line 975
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 976
    .line 977
    .line 978
    move-result-object p0

    .line 979
    iget-object v0, v6, Lva;->b:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v0, Lra;

    .line 982
    .line 983
    iput-object p0, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 984
    .line 985
    const p0, 0x7f130299

    .line 986
    .line 987
    .line 988
    invoke-virtual {v6, p0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 992
    .line 993
    .line 994
    sget-object v1, Lbe8;->a:Lbe8;

    .line 995
    .line 996
    :goto_e
    return-object v1

    .line 997
    :pswitch_10
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 1000
    .line 1001
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast p0, Ldw3;

    .line 1004
    .line 1005
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$9XcfrpIuJxZmXvgaPPKqXQliVj0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Ldw3;)Lbe8;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p0

    .line 1009
    return-object p0

    .line 1010
    :pswitch_11
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;

    .line 1013
    .line 1014
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast p0, Lc12;

    .line 1017
    .line 1018
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;->$r8$lambda$7i9HaVX2YtwwpdV3dLNEkUu8Gsg(Landroidx/credentials/playservices/controllers/identitycredentials/createpasswordcredential/CreatePasswordCredentialController;Lc12;)Lbe8;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p0

    .line 1022
    return-object p0

    .line 1023
    :pswitch_12
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1024
    .line 1025
    check-cast v0, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;

    .line 1026
    .line 1027
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1028
    .line 1029
    check-cast p0, Lc12;

    .line 1030
    .line 1031
    invoke-static {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$tXDxXNPBCuBi_ksiC9MZKMgirus(Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;Lc12;)Lbe8;

    .line 1032
    .line 1033
    .line 1034
    move-result-object p0

    .line 1035
    return-object p0

    .line 1036
    :pswitch_13
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1037
    .line 1038
    check-cast v0, Leu1;

    .line 1039
    .line 1040
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast p0, Landroid/content/Intent;

    .line 1043
    .line 1044
    sget-object v1, Lbe8;->a:Lbe8;

    .line 1045
    .line 1046
    invoke-virtual {v0}, Landroidx/fragment/app/o;->isDetached()Z

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    if-eqz v2, :cond_1a

    .line 1051
    .line 1052
    goto :goto_f

    .line 1053
    :cond_1a
    invoke-virtual {v0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/SettingsDetailActivity;

    .line 1061
    .line 1062
    const-string v2, "Send email"

    .line 1063
    .line 1064
    invoke-static {p0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1065
    .line 1066
    .line 1067
    move-result-object p0

    .line 1068
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1069
    .line 1070
    .line 1071
    :goto_f
    return-object v1

    .line 1072
    :pswitch_14
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1073
    .line 1074
    check-cast v0, Lcd;

    .line 1075
    .line 1076
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1077
    .line 1078
    check-cast p0, Ljava/lang/String;

    .line 1079
    .line 1080
    invoke-virtual {v0, p0}, Lcd;->open(Ljava/lang/String;)Lfw6;

    .line 1081
    .line 1082
    .line 1083
    move-result-object p0

    .line 1084
    const-string v0, "PRAGMA query_only = 1"

    .line 1085
    .line 1086
    invoke-static {v0, p0}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 1087
    .line 1088
    .line 1089
    return-object p0

    .line 1090
    :pswitch_15
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v0, Lb82;

    .line 1093
    .line 1094
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast p0, Ljava/lang/String;

    .line 1097
    .line 1098
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1099
    .line 1100
    .line 1101
    iget-object v0, v0, Lb82;->h:Lbr2;

    .line 1102
    .line 1103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v0, p0}, Lbr2;->g(Ljava/lang/String;)Lokhttp3/Response;

    .line 1107
    .line 1108
    .line 1109
    move-result-object p0

    .line 1110
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 1111
    .line 1112
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    new-instance v1, Lve1;

    .line 1117
    .line 1118
    invoke-direct {v1, p0, v0}, Lve1;-><init>(Lokhttp3/Response;Ljava/io/InputStream;)V

    .line 1119
    .line 1120
    .line 1121
    return-object v1

    .line 1122
    :pswitch_16
    iget-object v0, p0, Ld11;->b:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;

    .line 1125
    .line 1126
    iget-object p0, p0, Ld11;->c:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast p0, Ljava/util/ArrayList;

    .line 1129
    .line 1130
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->T:I

    .line 1131
    .line 1132
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/dash/CallsDashActivity;->Z()Ls11;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    invoke-virtual {v0, p0, v3}, Lb11;->j(Ljava/util/List;Z)V

    .line 1137
    .line 1138
    .line 1139
    sget-object p0, Lbe8;->a:Lbe8;

    .line 1140
    .line 1141
    return-object p0

    .line 1142
    nop

    .line 1143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
