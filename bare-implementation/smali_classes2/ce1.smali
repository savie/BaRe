.class public final synthetic Lce1;
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
    iput p1, p0, Lce1;->a:I

    iput-object p2, p0, Lce1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lce1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;Lml3;Llj3;)V
    .locals 0

    .line 1
    const/4 p3, 0x2

    .line 2
    iput p3, p0, Lce1;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lce1;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lce1;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lce1;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lce1;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, v0, Lce1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 15
    .line 16
    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    .line 17
    .line 18
    sget-object v1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 19
    .line 20
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    const-string v2, "user_acknowledge_no_batch_restore_on_q"

    .line 25
    .line 26
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Class;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lil0;->y([Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const/16 v0, 0x8

    .line 40
    .line 41
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const-string v0, "editor"

    .line 46
    .line 47
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v2

    .line 51
    :pswitch_0
    check-cast v0, Lj95;

    .line 52
    .line 53
    check-cast v4, Lm37;

    .line 54
    .line 55
    iget-object v0, v0, Lj95;->d0:Lj38;

    .line 56
    .line 57
    iget v1, v0, Lj38;->b:I

    .line 58
    .line 59
    rem-int/lit8 v1, v1, 0x18

    .line 60
    .line 61
    iget v0, v0, Lj38;->c:I

    .line 62
    .line 63
    invoke-virtual {v4}, Lm37;->p()Lq47;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v3, Lzn4;->a:Lzn4;

    .line 68
    .line 69
    new-instance v3, Li47;

    .line 70
    .line 71
    invoke-direct {v3, v1, v0, v2}, Li47;-><init>(IILq47;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lzn4;->c(Lbt3;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 79
    .line 80
    check-cast v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;->T:I

    .line 83
    .line 84
    new-instance v1, Lg52;

    .line 85
    .line 86
    const/16 v3, 0x9

    .line 87
    .line 88
    invoke-direct {v1, v3, v0, v4}, Lg52;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const v3, 0x7f1301e2

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3, v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_2
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$IncrementalBackup;

    .line 99
    .line 100
    check-cast v4, Lml3;

    .line 101
    .line 102
    if-nez v0, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, v4, Lml3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 106
    .line 107
    const v2, 0x7f1302b9

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/folders/data/FolderBackup$FolderLocalSnapshot;->getBackupFile()Lq63;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void

    .line 125
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 126
    .line 127
    check-cast v4, Ljava/util/List;

    .line 128
    .line 129
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    const/high16 v1, 0x41580000    # 13.5f

    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const/4 v6, 0x2

    .line 145
    const v7, 0x7f140160

    .line 146
    .line 147
    .line 148
    const v8, 0x7f1300f1

    .line 149
    .line 150
    .line 151
    const v9, 0x7f130302

    .line 152
    .line 153
    .line 154
    const v10, 0x7f1302fc

    .line 155
    .line 156
    .line 157
    const v11, 0x7f130401

    .line 158
    .line 159
    .line 160
    if-ne v5, v3, :cond_2

    .line 161
    .line 162
    invoke-static {v4}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lvi1;

    .line 167
    .line 168
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const v5, 0x7f130433

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iget-object v12, v3, Lvi1;->b:Lfd1;

    .line 184
    .line 185
    invoke-virtual {v12}, Lfd1;->getDisplayName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    invoke-static {v4, v5, v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const v5, 0x7f1302fb

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Lvi1;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-static {v4, v5, v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const v5, 0x7f1304e9

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v12, v3, Lvi1;->c:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v4, v5, v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const v5, 0x7f130412

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget v12, v3, Lvi1;->d:I

    .line 235
    .line 236
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-static {v4, v5, v12}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iget-object v11, v3, Lvi1;->e:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v4, v5, v11}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-static {v3}, Lzh8;->x(Lvi1;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-static {v4, v5, v10}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->r0(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance v5, Landroid/text/SpannedString;

    .line 270
    .line 271
    invoke-direct {v5, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    new-instance v4, Lhv1;

    .line 275
    .line 276
    invoke-direct {v4, v0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 277
    .line 278
    .line 279
    new-instance v10, Ls35;

    .line 280
    .line 281
    invoke-direct {v10, v0, v7, v4, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 282
    .line 283
    .line 284
    const v1, 0x7f1302fd

    .line 285
    .line 286
    .line 287
    invoke-virtual {v10, v1}, Lv75;->v(I)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v10, Lva;->b:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v1, Lra;

    .line 293
    .line 294
    iput-object v5, v1, Lra;->f:Ljava/lang/CharSequence;

    .line 295
    .line 296
    new-instance v1, Llu;

    .line 297
    .line 298
    invoke-direct {v1, v6, v0, v3}, Llu;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v9, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v10, v8, v2}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v10}, Ls35;->m()Lwa;

    .line 308
    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :cond_2
    new-instance v5, Ljh6;

    .line 313
    .line 314
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    new-instance v12, Ljava/util/ArrayList;

    .line 318
    .line 319
    const/16 v13, 0xa

    .line 320
    .line 321
    invoke-static {v4, v13}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    .line 327
    .line 328
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 329
    .line 330
    .line 331
    move-result-object v13

    .line 332
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 333
    .line 334
    .line 335
    move-result v14

    .line 336
    if-eqz v14, :cond_6

    .line 337
    .line 338
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    check-cast v14, Lvi1;

    .line 343
    .line 344
    new-instance v15, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    iget-object v2, v14, Lvi1;->b:Lfd1;

    .line 350
    .line 351
    invoke-virtual {v2}, Lfd1;->getDisplayName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v2, " - "

    .line 359
    .line 360
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14}, Lvi1;->a()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v2, v14, Lvi1;->e:Ljava/lang/String;

    .line 371
    .line 372
    const-string v8, ": "

    .line 373
    .line 374
    const-string v9, "\n"

    .line 375
    .line 376
    if-eqz v2, :cond_4

    .line 377
    .line 378
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v16

    .line 382
    if-nez v16, :cond_3

    .line 383
    .line 384
    goto :goto_2

    .line 385
    :cond_3
    const/4 v2, 0x0

    .line 386
    :goto_2
    if-eqz v2, :cond_4

    .line 387
    .line 388
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    :cond_4
    invoke-static {v14}, Lzh8;->x(Lvi1;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    if-eqz v2, :cond_5

    .line 409
    .line 410
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    const/4 v2, 0x0

    .line 434
    const/4 v6, 0x2

    .line 435
    const v8, 0x7f1300f1

    .line 436
    .line 437
    .line 438
    const v9, 0x7f130302

    .line 439
    .line 440
    .line 441
    goto :goto_1

    .line 442
    :cond_6
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 443
    .line 444
    const v6, 0x7f0d00e1

    .line 445
    .line 446
    .line 447
    invoke-direct {v2, v0, v6, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 448
    .line 449
    .line 450
    new-instance v6, Lhv1;

    .line 451
    .line 452
    invoke-direct {v6, v0, v7}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 453
    .line 454
    .line 455
    new-instance v8, Ls35;

    .line 456
    .line 457
    invoke-direct {v8, v0, v7, v6, v1}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 458
    .line 459
    .line 460
    const v1, 0x7f130303

    .line 461
    .line 462
    .line 463
    invoke-virtual {v8, v1}, Lv75;->v(I)V

    .line 464
    .line 465
    .line 466
    iget v1, v5, Ljh6;->a:I

    .line 467
    .line 468
    new-instance v6, Lqj1;

    .line 469
    .line 470
    invoke-direct {v6, v5, v3}, Lqj1;-><init>(Ljh6;I)V

    .line 471
    .line 472
    .line 473
    iget-object v7, v8, Lva;->b:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v7, Lra;

    .line 476
    .line 477
    iput-object v2, v7, Lra;->q:Landroid/widget/ListAdapter;

    .line 478
    .line 479
    iput-object v6, v7, Lra;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 480
    .line 481
    iput v1, v7, Lra;->w:I

    .line 482
    .line 483
    iput-boolean v3, v7, Lra;->v:Z

    .line 484
    .line 485
    new-instance v1, Lrj1;

    .line 486
    .line 487
    const/4 v2, 0x2

    .line 488
    invoke-direct {v1, v2, v0, v4, v5}, Lrj1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    const v0, 0x7f130302

    .line 492
    .line 493
    .line 494
    invoke-virtual {v8, v0, v1}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 495
    .line 496
    .line 497
    const/4 v0, 0x0

    .line 498
    const v1, 0x7f1300f1

    .line 499
    .line 500
    .line 501
    invoke-virtual {v8, v1, v0}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v8}, Ls35;->m()Lwa;

    .line 505
    .line 506
    .line 507
    :goto_3
    return-void

    .line 508
    :pswitch_4
    check-cast v0, Ljf;

    .line 509
    .line 510
    check-cast v4, Lmd1;

    .line 511
    .line 512
    invoke-virtual {v0, v4}, Ljf;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    nop

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
