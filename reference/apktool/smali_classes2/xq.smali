.class public final synthetic Lxq;
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

    .line 13
    iput p1, p0, Lxq;->a:I

    iput-object p2, p0, Lxq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lxq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;Ljava/util/List;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Lxq;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lxq;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lxq;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lxq;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Lxq;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lxq;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;

    .line 15
    .line 16
    check-cast v4, Ljava/util/List;

    .line 17
    .line 18
    sget v0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->S:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lzn4;->a:Lzn4;

    .line 25
    .line 26
    new-instance v0, Lig1;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, p0, v4, v2, v1}, Lig1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :pswitch_0
    check-cast v4, Lj57;

    .line 37
    .line 38
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;

    .line 39
    .line 40
    iget-object v0, v4, Lj57;->p:Lv10;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem;->getItemId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Lv10;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object v3

    .line 52
    :pswitch_1
    check-cast v4, Lnp3;

    .line 53
    .line 54
    check-cast p0, Lik6;

    .line 55
    .line 56
    iget-object v0, v4, La55;->b:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lik6;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Lhk6;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "RepositoryListener.onResult: "

    .line 65
    .line 66
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    sget-object v0, Lzn4;->a:Lzn4;

    .line 80
    .line 81
    new-instance v0, Lo20;

    .line 82
    .line 83
    const/16 v1, 0xb

    .line 84
    .line 85
    invoke-direct {v0, v1, v4, p0}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :pswitch_2
    check-cast v4, Lq63;

    .line 93
    .line 94
    check-cast p0, Lin3;

    .line 95
    .line 96
    iget-object v0, p0, Lin3;->f:Lgv7;

    .line 97
    .line 98
    if-nez v4, :cond_1

    .line 99
    .line 100
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Lhn3;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0, v4}, Lin3;->j(Lq63;)Lzn7;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v3, :cond_2

    .line 112
    .line 113
    new-instance v5, Lcv;

    .line 114
    .line 115
    const/16 v6, 0x9

    .line 116
    .line 117
    invoke-direct {v5, v6, v4, v3}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const/16 v6, 0xe

    .line 121
    .line 122
    const-string v7, "FolderPickerHelper"

    .line 123
    .line 124
    invoke-static {v7, v2, v1, v5, v6}, Lio4;->j(Ljava/lang/String;Ljava/lang/String;ZLbt3;I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-static {v1, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_2

    .line 135
    .line 136
    new-instance v0, Lhn3;

    .line 137
    .line 138
    invoke-virtual {p0}, Lin3;->l()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-direct {v0, v3, p0, v4}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 143
    .line 144
    .line 145
    move-object p0, v0

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lhn3;

    .line 152
    .line 153
    :goto_0
    return-object p0

    .line 154
    :pswitch_3
    check-cast v4, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 155
    .line 156
    check-cast p0, Lmj3;

    .line 157
    .line 158
    sget v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->Z:I

    .line 159
    .line 160
    const/high16 v0, 0x41580000    # 13.5f

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Lhv1;

    .line 167
    .line 168
    const v5, 0x7f140160

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v4, v5}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    new-instance v6, Ls35;

    .line 175
    .line 176
    invoke-direct {v6, v4, v5, v1, v0}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 177
    .line 178
    .line 179
    const v0, 0x7f13009b

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v0}, Lv75;->v(I)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v1, p0, Lmj3;->a:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v5, p0, Lmj3;->b:Ljava/lang/Long;

    .line 193
    .line 194
    if-eqz v1, :cond_4

    .line 195
    .line 196
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-nez v7, :cond_3

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_3
    move-object v1, v2

    .line 204
    :goto_1
    if-eqz v1, :cond_4

    .line 205
    .line 206
    const v7, 0x7f130271

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v7, v1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    const-wide/16 v7, 0x0

    .line 220
    .line 221
    if-eqz v5, :cond_6

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v9

    .line 227
    cmp-long v1, v9, v7

    .line 228
    .line 229
    if-lez v1, :cond_5

    .line 230
    .line 231
    move-object v1, v5

    .line 232
    goto :goto_2

    .line 233
    :cond_5
    move-object v1, v2

    .line 234
    :goto_2
    if-eqz v1, :cond_6

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v9

    .line 240
    const v1, 0x7f1301cf

    .line 241
    .line 242
    .line 243
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    invoke-static {v9, v10}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V(J)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v0, v1, v9}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_6
    iget-object v1, p0, Lmj3;->c:Ljava/lang/Long;

    .line 258
    .line 259
    if-eqz v1, :cond_9

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 262
    .line 263
    .line 264
    move-result-wide v9

    .line 265
    cmp-long v7, v9, v7

    .line 266
    .line 267
    if-lez v7, :cond_8

    .line 268
    .line 269
    if-nez v5, :cond_7

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v7

    .line 276
    cmp-long v5, v9, v7

    .line 277
    .line 278
    if-eqz v5, :cond_8

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    move-object v1, v2

    .line 282
    :goto_3
    if-eqz v1, :cond_9

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 285
    .line 286
    .line 287
    move-result-wide v7

    .line 288
    const v1, 0x7f130588

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-static {v7, v8}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V(J)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-static {v0, v1, v5}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    :cond_9
    iget-object p0, p0, Lmj3;->d:Ljava/util/List;

    .line 306
    .line 307
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_15

    .line 316
    .line 317
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    check-cast v1, Loj3;

    .line 322
    .line 323
    iget-object v5, v1, Loj3;->a:Lpj3;

    .line 324
    .line 325
    iget-object v7, v1, Loj3;->c:Ljava/lang/Long;

    .line 326
    .line 327
    iget-object v8, v1, Loj3;->b:Ljava/lang/Long;

    .line 328
    .line 329
    iget-object v9, v1, Loj3;->e:Ljava/lang/Integer;

    .line 330
    .line 331
    sget-object v10, Lgl3;->a:[I

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    aget v5, v10, v5

    .line 338
    .line 339
    const/4 v10, 0x1

    .line 340
    if-eq v5, v10, :cond_10

    .line 341
    .line 342
    const/4 v11, 0x2

    .line 343
    if-ne v5, v11, :cond_f

    .line 344
    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const v11, 0x7f1302ba

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    if-eqz v9, :cond_e

    .line 361
    .line 362
    const-string v11, " ("

    .line 363
    .line 364
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v11, "app_locale"

    .line 368
    .line 369
    :try_start_0
    sget-object v12, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 370
    .line 371
    if-eqz v12, :cond_b

    .line 372
    .line 373
    invoke-interface {v12, v11, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    goto :goto_5

    .line 378
    :cond_b
    const-string v11, "prefs"

    .line 379
    .line 380
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :catch_0
    move-object v11, v2

    .line 385
    :goto_5
    if-eqz v11, :cond_d

    .line 386
    .line 387
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    if-nez v12, :cond_c

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_c
    invoke-static {v11}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 395
    .line 396
    .line 397
    move-result-object v11

    .line 398
    invoke-virtual {v11}, Lis4;->a()Ljava/util/Locale;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    goto :goto_7

    .line 403
    :cond_d
    :goto_6
    invoke-static {}, Lxx3;->h()Lis4;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-virtual {v11}, Lis4;->a()Ljava/util/Locale;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    :goto_7
    invoke-static {v11}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-virtual {v11, v9}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v9, ")"

    .line 423
    .line 424
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    goto :goto_8

    .line 432
    :cond_f
    invoke-static {}, Lq;->j()V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_9

    .line 436
    .line 437
    :cond_10
    const v5, 0x7f1300c0

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    :goto_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    if-lez v9, :cond_11

    .line 452
    .line 453
    const/16 v9, 0xa

    .line 454
    .line 455
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(C)Ljava/lang/Appendable;

    .line 459
    .line 460
    .line 461
    :cond_11
    new-instance v9, Landroid/text/style/StyleSpan;

    .line 462
    .line 463
    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    const/16 v11, 0x11

    .line 478
    .line 479
    invoke-virtual {v0, v9, v10, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 480
    .line 481
    .line 482
    if-eqz v8, :cond_12

    .line 483
    .line 484
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    .line 485
    .line 486
    .line 487
    move-result-wide v9

    .line 488
    const v5, 0x7f1303f1

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    sget-object v11, Lp93;->a:Lp93;

    .line 499
    .line 500
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-static {v9}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    invoke-static {v0, v5, v9}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    :cond_12
    if-eqz v7, :cond_13

    .line 512
    .line 513
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    .line 514
    .line 515
    .line 516
    move-result-wide v9

    .line 517
    const v5, 0x7f1300a6

    .line 518
    .line 519
    .line 520
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    sget-object v11, Lp93;->a:Lp93;

    .line 528
    .line 529
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    invoke-static {v9}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v9

    .line 537
    invoke-static {v0, v5, v9}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_13
    sget-object v5, Lp93;->a:Lp93;

    .line 541
    .line 542
    invoke-static {v8, v7}, Lp93;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Double;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    if-eqz v5, :cond_14

    .line 547
    .line 548
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    .line 549
    .line 550
    .line 551
    move-result-wide v7

    .line 552
    const v5, 0x7f1301a9

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-static {v7, v8}, Lp93;->b(D)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-static {v0, v5, v7}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    :cond_14
    iget-object v1, v1, Loj3;->d:Ljava/lang/Long;

    .line 570
    .line 571
    if-eqz v1, :cond_a

    .line 572
    .line 573
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 574
    .line 575
    .line 576
    move-result-wide v7

    .line 577
    const v1, 0x7f130323

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-static {v0, v1, v5}, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->U(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_4

    .line 599
    .line 600
    :cond_15
    new-instance p0, Landroid/text/SpannedString;

    .line 601
    .line 602
    invoke-direct {p0, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 603
    .line 604
    .line 605
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    iget-object v0, v6, Lva;->b:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v0, Lra;

    .line 612
    .line 613
    iput-object p0, v0, Lra;->f:Ljava/lang/CharSequence;

    .line 614
    .line 615
    const p0, 0x7f130299

    .line 616
    .line 617
    .line 618
    invoke-virtual {v6, p0, v2}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 622
    .line 623
    .line 624
    move-object v2, v3

    .line 625
    :goto_9
    return-object v2

    .line 626
    :pswitch_4
    check-cast v4, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    .line 627
    .line 628
    check-cast p0, Lcw3;

    .line 629
    .line 630
    invoke-static {v4, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->$r8$lambda$-5-l1Ep-bOqnbMrFOX5fEkkTmLA(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lcw3;)Lbe8;

    .line 631
    .line 632
    .line 633
    move-result-object p0

    .line 634
    return-object p0

    .line 635
    :pswitch_5
    check-cast v4, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    .line 636
    .line 637
    check-cast p0, Ljava/lang/Throwable;

    .line 638
    .line 639
    invoke-static {v4, p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->$r8$lambda$EHEMpmxLLDuRrBEOfqAj5NAw998(Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;Ljava/lang/Throwable;)Lbe8;

    .line 640
    .line 641
    .line 642
    move-result-object p0

    .line 643
    return-object p0

    .line 644
    :pswitch_6
    check-cast v4, Lmt3;

    .line 645
    .line 646
    check-cast p0, Llh6;

    .line 647
    .line 648
    invoke-static {v4, p0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->$r8$lambda$gJXSR3NACyPlTRlP79kwjKj4Ji4(Lmt3;Llh6;)Lbe8;

    .line 649
    .line 650
    .line 651
    move-result-object p0

    .line 652
    return-object p0

    .line 653
    :pswitch_7
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 654
    .line 655
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 656
    .line 657
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 662
    .line 663
    .line 664
    move-result-wide v0

    .line 665
    invoke-static {v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->h(J)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 674
    .line 675
    .line 676
    move-result-wide v1

    .line 677
    invoke-static {v1, v2}, Lorg/swiftapps/swiftbackup/common/Const;->h(J)Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v1

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    const-string v0, " - "

    .line 690
    .line 691
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 702
    .line 703
    .line 704
    move-result-object p0

    .line 705
    return-object p0

    .line 706
    :pswitch_8
    check-cast v4, Lws;

    .line 707
    .line 708
    check-cast p0, Lji;

    .line 709
    .line 710
    iget-object v0, v4, Lgm7;->e:Lfm7;

    .line 711
    .line 712
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 713
    .line 714
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-eqz v2, :cond_17

    .line 723
    .line 724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    check-cast v2, Lji;

    .line 729
    .line 730
    invoke-virtual {v2}, Lji;->getPackageName()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v5

    .line 738
    invoke-static {v2, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    if-eqz v2, :cond_16

    .line 743
    .line 744
    goto :goto_b

    .line 745
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 746
    .line 747
    goto :goto_a

    .line 748
    :cond_17
    const/4 v1, -0x1

    .line 749
    :goto_b
    if-ltz v1, :cond_18

    .line 750
    .line 751
    invoke-virtual {v4, v1}, Lhg6;->f(I)V

    .line 752
    .line 753
    .line 754
    :cond_18
    return-object v3

    .line 755
    :pswitch_9
    check-cast v4, Ljava/util/List;

    .line 756
    .line 757
    check-cast p0, Lil0;

    .line 758
    .line 759
    :try_start_1
    new-instance v0, Lud4;

    .line 760
    .line 761
    sget-object v2, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 762
    .line 763
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    invoke-direct {v0, v2, v4}, Lud4;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 768
    .line 769
    .line 770
    invoke-static {v0}, Lg67;->u(Lud4;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 771
    .line 772
    .line 773
    goto :goto_c

    .line 774
    :catch_1
    move-exception v0

    .line 775
    move-object v8, v0

    .line 776
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 777
    .line 778
    const-string v0, "Error when trying to install APKs="

    .line 779
    .line 780
    invoke-static {v0, v4}, Lxs1;->l(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v11

    .line 784
    const/4 v13, 0x4

    .line 785
    const/4 v14, 0x0

    .line 786
    const-string v10, "AppInstallHelper"

    .line 787
    .line 788
    const/4 v12, 0x0

    .line 789
    move-object v9, v5

    .line 790
    invoke-static/range {v9 .. v14}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    const/16 v10, 0x8

    .line 794
    .line 795
    const/4 v11, 0x0

    .line 796
    const-string v6, "AppInstallHelper"

    .line 797
    .line 798
    const-string v7, "install"

    .line 799
    .line 800
    const/4 v9, 0x0

    .line 801
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    sget-object v0, Lzn4;->a:Lzn4;

    .line 805
    .line 806
    new-instance v0, Lyq;

    .line 807
    .line 808
    invoke-direct {v0, v1, p0, v8}, Lyq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 812
    .line 813
    .line 814
    :goto_c
    return-object v3

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
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
