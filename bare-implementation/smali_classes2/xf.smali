.class public final synthetic Lxf;
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
    iput p7, p0, Lxf;->a:I

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
    .locals 12

    .line 1
    iget v0, p0, Lxf;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    sget-object v5, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/k;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/settings/k;->j(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 23
    .line 24
    .line 25
    return-object v5

    .line 26
    :pswitch_0
    check-cast p1, Lbm3;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 34
    .line 35
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->W()Lil3;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lil3;->e:Lnl3;

    .line 42
    .line 43
    iget-object v6, v0, Lnl3;->e:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    iget-object v7, v0, Lnl3;->f:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iget-object v8, v0, Lnl3;->k:Lcom/google/android/material/card/MaterialCardView;

    .line 48
    .line 49
    iget-object v9, v0, Lnl3;->p:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    iget-object v10, v0, Lnl3;->q:Landroid/widget/TextView;

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    invoke-virtual {v11}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object v10, v0, Lnl3;->r:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->X()Ldm3;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {v11}, Ldm3;->k()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v11}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    sget-object v10, Lzl3;->a:Lzl3;

    .line 86
    .line 87
    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_0

    .line 92
    .line 93
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {p0, v4}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Y(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    sget-object v4, Lam3;->a:Lam3;

    .line 101
    .line 102
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Y(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    instance-of v4, p1, Lyl3;

    .line 125
    .line 126
    if-eqz v4, :cond_2

    .line 127
    .line 128
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0, v1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Y(Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-object p0, v0, Lnl3;->x:Landroid/widget/TextView;

    .line 141
    .line 142
    check-cast p1, Lyl3;

    .line 143
    .line 144
    iget-object v2, p1, Lyl3;->g:Lgv7;

    .line 145
    .line 146
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast v2, Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, v0, Lnl3;->t:Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object p1, p1, Lyl3;->h:Lgv7;

    .line 161
    .line 162
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :goto_0
    move-object v2, v5

    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-object v2

    .line 180
    :pswitch_1
    check-cast p1, Lak2;

    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lqj2;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object v0, p1, Lak2;->b:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v6, p0, Lqj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 204
    .line 205
    const v7, 0x7f1301fc

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    if-lez v1, :cond_3

    .line 216
    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v7, " ("

    .line 220
    .line 221
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, ")"

    .line 228
    .line 229
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iget-object v2, p0, Lqj2;->c:Landroid/widget/TextView;

    .line 244
    .line 245
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-boolean v1, p1, Lak2;->a:Z

    .line 249
    .line 250
    iget-object v2, p0, Lqj2;->h:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 251
    .line 252
    if-eqz v1, :cond_4

    .line 253
    .line 254
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lqj2;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 258
    .line 259
    invoke-static {p1}, Lsz8;->W(Landroid/view/View;)V

    .line 260
    .line 261
    .line 262
    iget-object p0, p0, Lqj2;->g:Lzx2;

    .line 263
    .line 264
    iget-object p0, p0, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 265
    .line 266
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_4
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lqj2;->f:Lgm1;

    .line 274
    .line 275
    new-instance v2, Ljava/util/ArrayList;

    .line 276
    .line 277
    const/16 v3, 0xa

    .line 278
    .line 279
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .line 285
    .line 286
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_7

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    check-cast v3, Lzj2;

    .line 301
    .line 302
    iget-object v6, v3, Lzj2;->a:Liz4;

    .line 303
    .line 304
    invoke-virtual {v6}, Liz4;->getDateBackup()J

    .line 305
    .line 306
    .line 307
    move-result-wide v7

    .line 308
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/common/Const;->h(J)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v6}, Liz4;->getBackupTag()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    if-eqz v8, :cond_6

    .line 317
    .line 318
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-nez v9, :cond_5

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_5
    const-string v9, " "

    .line 326
    .line 327
    invoke-static {v7, v9, v8}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    :cond_6
    :goto_3
    new-instance v8, Lgk2;

    .line 332
    .line 333
    iget-object v9, v3, Lzj2;->p:Ljava/lang/String;

    .line 334
    .line 335
    iget-boolean v3, v3, Lzj2;->r:Z

    .line 336
    .line 337
    invoke-virtual {v6}, Liz4;->getBackupId()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    invoke-direct {v8, v7, v9, v3, v6}, Lgk2;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_7
    new-instance v0, Lbz;

    .line 349
    .line 350
    const/4 v3, 0x3

    .line 351
    invoke-direct {v0, v3, p0, p1}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    new-instance v3, Lqs;

    .line 355
    .line 356
    invoke-direct {v3, v4, p1, p0}, Lqs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    new-instance v4, Lw01;

    .line 360
    .line 361
    const/4 v6, 0x7

    .line 362
    invoke-direct {v4, v6, p0, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v2, v0, v3, v4}, Lgm1;->b(Ljava/util/ArrayList;Lmt3;Lqt3;Lbt3;)V

    .line 366
    .line 367
    .line 368
    :goto_4
    return-object v5

    .line 369
    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p0, Ln92;

    .line 378
    .line 379
    invoke-virtual {p0}, Ln92;->i()V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lag8;->a:Lrf8;

    .line 383
    .line 384
    iget-object p1, p1, Lrf8;->a:Lq63;

    .line 385
    .line 386
    sget-boolean v2, Lq63;->d:Z

    .line 387
    .line 388
    invoke-virtual {p1, v4}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    :try_start_0
    invoke-static {p1, v0, v1}, Ll73;->C(Ljava/io/InputStream;J)V

    .line 393
    .line 394
    .line 395
    iput-object p1, p0, Ln92;->o:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .line 397
    return-object p1

    .line 398
    :catch_0
    move-exception p0

    .line 399
    invoke-static {p1}, Lf13;->a(Ljava/io/Closeable;)V

    .line 400
    .line 401
    .line 402
    throw p0

    .line 403
    :pswitch_3
    check-cast p1, Lbc1;

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;

    .line 411
    .line 412
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->Q:I

    .line 413
    .line 414
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    iget-object p1, p1, Lbc1;->a:Ldd1;

    .line 418
    .line 419
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/common/CloudConnectActivity;->P(Ldd1;)V

    .line 420
    .line 421
    .line 422
    return-object v5

    .line 423
    :pswitch_4
    check-cast p1, Lig;

    .line 424
    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;

    .line 431
    .line 432
    sget v0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->Q:I

    .line 433
    .line 434
    instance-of v0, p1, Lfg;

    .line 435
    .line 436
    if-eqz v0, :cond_a

    .line 437
    .line 438
    check-cast p1, Lfg;

    .line 439
    .line 440
    iget-object v0, p1, Lfg;->b:Lbg;

    .line 441
    .line 442
    iget p1, p1, Lfg;->a:I

    .line 443
    .line 444
    if-eqz v0, :cond_8

    .line 445
    .line 446
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->S(Lbg;)V

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    iget-object v0, v0, Lyf;->n:Lcom/google/android/material/card/MaterialCardView;

    .line 455
    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    iget-object v0, v0, Lyf;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 464
    .line 465
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    iget-object v0, v0, Lyf;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 473
    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->P(Z)V

    .line 478
    .line 479
    .line 480
    :goto_5
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 481
    .line 482
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object v0, v0, Lyf;->G:Landroid/widget/ImageView;

    .line 487
    .line 488
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    iget-object v0, v0, Lyf;->t:Landroid/widget/ImageView;

    .line 496
    .line 497
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    iget-object v0, v0, Lyf;->H:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0, v1, v1, v1, v1}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->U(ZZZZ)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iget-object v0, v0, Lyf;->N:Landroid/widget/TextView;

    .line 517
    .line 518
    const v1, 0x7f13004e

    .line 519
    .line 520
    .line 521
    if-ne p1, v1, :cond_9

    .line 522
    .line 523
    const v1, 0x7f130052

    .line 524
    .line 525
    .line 526
    goto :goto_6

    .line 527
    :cond_9
    const v1, 0x7f130048

    .line 528
    .line 529
    .line 530
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    iget-object p0, p0, Lyf;->M:Landroid/widget/TextView;

    .line 538
    .line 539
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_b

    .line 543
    .line 544
    :cond_a
    instance-of v0, p1, Lgg;

    .line 545
    .line 546
    if-eqz v0, :cond_b

    .line 547
    .line 548
    check-cast p1, Lgg;

    .line 549
    .line 550
    iget-object v0, p1, Lgg;->a:Lbg;

    .line 551
    .line 552
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->S(Lbg;)V

    .line 553
    .line 554
    .line 555
    iget-object p1, p1, Lgg;->b:Lzf;

    .line 556
    .line 557
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->M:Lzf;

    .line 558
    .line 559
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 560
    .line 561
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    iget-object p1, p1, Lyf;->G:Landroid/widget/ImageView;

    .line 566
    .line 567
    const v0, 0x7f0801ce

    .line 568
    .line 569
    .line 570
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    iget-object p1, p1, Lyf;->G:Landroid/widget/ImageView;

    .line 578
    .line 579
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    iget-object p1, p1, Lyf;->t:Landroid/widget/ImageView;

    .line 587
    .line 588
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    iget-object p1, p1, Lyf;->H:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 596
    .line 597
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    iget-object p1, p1, Lyf;->N:Landroid/widget/TextView;

    .line 605
    .line 606
    const v0, 0x7f13004b

    .line 607
    .line 608
    .line 609
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    iget-object p1, p1, Lyf;->M:Landroid/widget/TextView;

    .line 617
    .line 618
    const v0, 0x7f13004a

    .line 619
    .line 620
    .line 621
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0, v4, v1, v1, v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->U(ZZZZ)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_b

    .line 628
    .line 629
    :cond_b
    instance-of v0, p1, Leg;

    .line 630
    .line 631
    if-eqz v0, :cond_c

    .line 632
    .line 633
    check-cast p1, Leg;

    .line 634
    .line 635
    iget-object v0, p1, Leg;->a:Lbg;

    .line 636
    .line 637
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->T(Lbg;)V

    .line 638
    .line 639
    .line 640
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 641
    .line 642
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iget-object v0, v0, Lyf;->G:Landroid/widget/ImageView;

    .line 647
    .line 648
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    iget-object v0, v0, Lyf;->t:Landroid/widget/ImageView;

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    iget-object v0, v0, Lyf;->H:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 665
    .line 666
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {p0, v1, v1, v1, v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->U(ZZZZ)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    iget-object v0, v0, Lyf;->N:Landroid/widget/TextView;

    .line 677
    .line 678
    iget-object p1, p1, Leg;->b:Lcw5;

    .line 679
    .line 680
    iget-object v1, p1, Lcw5;->a:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 686
    .line 687
    .line 688
    move-result-object p0

    .line 689
    iget-object p0, p0, Lyf;->M:Landroid/widget/TextView;

    .line 690
    .line 691
    iget-object p1, p1, Lcw5;->b:Ljava/lang/String;

    .line 692
    .line 693
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_b

    .line 697
    .line 698
    :cond_c
    instance-of v0, p1, Lhg;

    .line 699
    .line 700
    if-eqz v0, :cond_13

    .line 701
    .line 702
    check-cast p1, Lhg;

    .line 703
    .line 704
    iget-object v0, p1, Lhg;->a:Lbg;

    .line 705
    .line 706
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->T(Lbg;)V

    .line 707
    .line 708
    .line 709
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->M:Lzf;

    .line 710
    .line 711
    new-instance v0, Lag;

    .line 712
    .line 713
    iget-object p1, p1, Lhg;->b:Ljava/lang/String;

    .line 714
    .line 715
    invoke-direct {v0, p1}, Lag;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N:Lag;

    .line 719
    .line 720
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    iget-object v0, v0, Lyf;->G:Landroid/widget/ImageView;

    .line 725
    .line 726
    const v6, 0x7f080104

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iget-object v0, v0, Lyf;->G:Landroid/widget/ImageView;

    .line 737
    .line 738
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    iget-object v0, v0, Lyf;->t:Landroid/widget/ImageView;

    .line 746
    .line 747
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    iget-object v0, v0, Lyf;->H:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 755
    .line 756
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    .line 758
    .line 759
    if-eqz p1, :cond_e

    .line 760
    .line 761
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    if-eqz v0, :cond_d

    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_d
    move v0, v1

    .line 769
    goto :goto_8

    .line 770
    :cond_e
    :goto_7
    move v0, v4

    .line 771
    :goto_8
    xor-int/2addr v0, v4

    .line 772
    if-eqz p1, :cond_10

    .line 773
    .line 774
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-eqz v3, :cond_f

    .line 779
    .line 780
    goto :goto_9

    .line 781
    :cond_f
    move v3, v1

    .line 782
    goto :goto_a

    .line 783
    :cond_10
    :goto_9
    move v3, v4

    .line 784
    :goto_a
    xor-int/2addr v3, v4

    .line 785
    invoke-virtual {p0, v1, v0, v3, v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->U(ZZZZ)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    iget-object v0, v0, Lyf;->f:Lcom/google/android/material/button/MaterialButton;

    .line 793
    .line 794
    if-eqz p1, :cond_11

    .line 795
    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 797
    .line 798
    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    :cond_11
    if-eqz v2, :cond_12

    .line 805
    .line 806
    move v1, v4

    .line 807
    :cond_12
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 811
    .line 812
    .line 813
    move-result-object p1

    .line 814
    iget-object p1, p1, Lyf;->N:Landroid/widget/TextView;

    .line 815
    .line 816
    const v0, 0x7f130490

    .line 817
    .line 818
    .line 819
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/apkshare/ApkImportActivity;->N()Lyf;

    .line 823
    .line 824
    .line 825
    move-result-object p0

    .line 826
    iget-object p0, p0, Lyf;->M:Landroid/widget/TextView;

    .line 827
    .line 828
    const p1, 0x7f130051

    .line 829
    .line 830
    .line 831
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 832
    .line 833
    .line 834
    :goto_b
    move-object v2, v5

    .line 835
    goto :goto_c

    .line 836
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    invoke-static {}, Lq;->j()V

    .line 840
    .line 841
    .line 842
    :goto_c
    return-object v2

    .line 843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
