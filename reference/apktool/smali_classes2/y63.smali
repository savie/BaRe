.class public final synthetic Ly63;
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
    iput p7, p0, Ly63;->a:I

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
    .locals 10

    .line 1
    iget v0, p0, Ly63;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lorg/swiftapps/swiftbackup/common/Const;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    return-object v1

    .line 26
    :pswitch_0
    check-cast p1, Ltl3;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->S:Lgv7;

    .line 36
    .line 37
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lkl3;

    .line 42
    .line 43
    iget-object v0, p0, Lkl3;->b:Ljl3;

    .line 44
    .line 45
    iget-object v3, v0, Ljl3;->e:Lzx2;

    .line 46
    .line 47
    iget-object v4, v0, Ljl3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    iget-object v5, v0, Ljl3;->n:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 50
    .line 51
    sget-object v6, Lql3;->a:Lql3;

    .line 52
    .line 53
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/16 v7, 0x8

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p0, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_0
    sget-object v6, Lpl3;->a:Lpl3;

    .line 75
    .line 76
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/4 v8, 0x5

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    iget-object v0, v3, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, v3, Lzx2;->d:Landroid/widget/ImageView;

    .line 97
    .line 98
    const v4, 0x7f080117

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, v3, Lzx2;->e:Landroid/widget/TextView;

    .line 105
    .line 106
    const v3, 0x7f13016d

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f1301b4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lof;

    .line 122
    .line 123
    invoke-direct {p1, p0, v8}, Lof;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_1
    sget-object v6, Lrl3;->a:Lrl3;

    .line 132
    .line 133
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_2

    .line 138
    .line 139
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    iget-object p1, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    iget-object v0, v3, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v3, Lzx2;->d:Landroid/widget/ImageView;

    .line 153
    .line 154
    const v4, 0x7f080213

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, v3, Lzx2;->e:Landroid/widget/TextView;

    .line 161
    .line 162
    const v3, 0x7f1303c8

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    const p1, 0x7f13049a

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .line 176
    .line 177
    new-instance p1, Lzf1;

    .line 178
    .line 179
    const/4 v2, 0x2

    .line 180
    invoke-direct {p1, p0, v2}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_2
    sget-object v6, Lsl3;->a:Lsl3;

    .line 189
    .line 190
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_3

    .line 195
    .line 196
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    iget-object p0, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 203
    .line 204
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    iget-object p0, v3, Lzx2;->d:Landroid/widget/ImageView;

    .line 208
    .line 209
    const p1, 0x7f080114

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    .line 214
    .line 215
    iget-object p0, v3, Lzx2;->e:Landroid/widget/TextView;

    .line 216
    .line 217
    const p1, 0x7f1303bd

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    .line 222
    .line 223
    iget-object p0, v3, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 224
    .line 225
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_3
    instance-of v6, p1, Lol3;

    .line 231
    .line 232
    if-eqz v6, :cond_5

    .line 233
    .line 234
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v3, Lzx2;->a:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    check-cast p1, Lol3;

    .line 246
    .line 247
    iget-object v2, v0, Ljl3;->p:Landroid/widget/TextView;

    .line 248
    .line 249
    iget-object v3, p1, Lol3;->h:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    iget-object v2, v0, Ljl3;->c:Llj3;

    .line 255
    .line 256
    iget-object v3, v2, Llj3;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v3, Landroid/widget/ImageView;

    .line 259
    .line 260
    const v4, 0x7f08014a

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    .line 265
    .line 266
    iget-object v3, v2, Llj3;->d:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v3, Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v4, p0, Lkl3;->a:Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 271
    .line 272
    const v5, 0x7f1300c0

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v2, v2, Llj3;->c:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v2, Landroid/widget/TextView;

    .line 285
    .line 286
    iget-object v3, p1, Lol3;->f:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v0, Ljl3;->d:Llj3;

    .line 292
    .line 293
    iget-object v3, v2, Llj3;->a:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 296
    .line 297
    iget-boolean v5, p1, Lol3;->d:Z

    .line 298
    .line 299
    invoke-static {v3, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_4

    .line 307
    .line 308
    iget-object v3, v2, Llj3;->b:Ljava/lang/Object;

    .line 309
    .line 310
    check-cast v3, Landroid/widget/ImageView;

    .line 311
    .line 312
    const v5, 0x7f0801f5

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    .line 317
    .line 318
    iget-object v3, v2, Llj3;->d:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v3, Landroid/widget/TextView;

    .line 321
    .line 322
    const v5, 0x7f1302ba

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iget v5, p1, Lol3;->e:I

    .line 330
    .line 331
    new-instance v6, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v4, " ("

    .line 340
    .line 341
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v4, ")"

    .line 348
    .line 349
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    .line 358
    .line 359
    iget-object v2, v2, Llj3;->c:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v2, Landroid/widget/TextView;

    .line 362
    .line 363
    iget-object v3, p1, Lol3;->g:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    :cond_4
    iget-object v2, v0, Ljl3;->b:Lcom/google/android/material/button/MaterialButton;

    .line 369
    .line 370
    new-instance v3, Lh10;

    .line 371
    .line 372
    invoke-direct {v3, v8, p0, p1}, Lh10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, v0, Ljl3;->f:Landroid/widget/ImageView;

    .line 379
    .line 380
    new-instance v2, Li10;

    .line 381
    .line 382
    const/4 v3, 0x4

    .line 383
    invoke-direct {v2, v3, p0, p1}, Li10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    goto :goto_0

    .line 390
    :cond_5
    invoke-static {}, Lq;->j()V

    .line 391
    .line 392
    .line 393
    const/4 v1, 0x0

    .line 394
    :goto_0
    return-object v1

    .line 395
    :pswitch_1
    check-cast p1, Ljava/io/File;

    .line 396
    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast p0, Lp63;

    .line 403
    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, p1}, Lp63;->e(Ljava/io/File;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    const/4 v1, 0x1

    .line 412
    if-eqz v0, :cond_6

    .line 413
    .line 414
    :goto_1
    move v2, v1

    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    const-string v3, "SwiftBackup"

    .line 425
    .line 426
    invoke-static {v0, v3, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-eqz v0, :cond_8

    .line 431
    .line 432
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-static {v0, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_7

    .line 441
    .line 442
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_7

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Lp63;->b(Ljava/io/File;)V

    .line 449
    .line 450
    .line 451
    goto :goto_1

    .line 452
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    new-array v4, v1, [C

    .line 460
    .line 461
    const/16 v5, 0x2f

    .line 462
    .line 463
    aput-char v5, v4, v2

    .line 464
    .line 465
    const/4 v5, 0x6

    .line 466
    invoke-static {v0, v4, v5}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    add-int/2addr v3, v1

    .line 475
    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    const/4 v8, 0x0

    .line 480
    const/16 v9, 0x3e

    .line 481
    .line 482
    const-string v5, "/"

    .line 483
    .line 484
    const/4 v6, 0x0

    .line 485
    const/4 v7, 0x0

    .line 486
    invoke-static/range {v4 .. v9}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-instance v3, Ljava/io/File;

    .line 491
    .line 492
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-eqz v0, :cond_8

    .line 500
    .line 501
    invoke-virtual {p0, v3}, Lp63;->b(Ljava/io/File;)V

    .line 502
    .line 503
    .line 504
    goto :goto_1

    .line 505
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_a

    .line 510
    .line 511
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_9

    .line 516
    .line 517
    invoke-virtual {p0, p1}, Lp63;->b(Ljava/io/File;)V

    .line 518
    .line 519
    .line 520
    goto :goto_1

    .line 521
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Lp63;->b(Ljava/io/File;)V

    .line 526
    .line 527
    .line 528
    goto :goto_1

    .line 529
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    if-nez p1, :cond_b

    .line 534
    .line 535
    goto :goto_2

    .line 536
    :cond_b
    iget-object p0, p0, Lp63;->b:Ljava/util/LinkedHashSet;

    .line 537
    .line 538
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    return-object p0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
