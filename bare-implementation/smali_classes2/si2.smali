.class public final synthetic Lsi2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

.field public final synthetic b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final synthetic c:Liu;

.field public final synthetic d:Lhk;

.field public final synthetic e:Lji;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liu;Lhk;Lji;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsi2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 5
    .line 6
    iput-object p2, p0, Lsi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lsi2;->c:Liu;

    .line 9
    .line 10
    iput-object p4, p0, Lsi2;->d:Lhk;

    .line 11
    .line 12
    iput-object p5, p0, Lsi2;->e:Lji;

    .line 13
    .line 14
    iput-object p6, p0, Lsi2;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 2
    .line 3
    iget-object v8, p0, Lsi2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 4
    .line 5
    iget-object v0, p0, Lsi2;->b:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v8, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_7

    .line 17
    .line 18
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const v1, 0x7f0a007b

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lsi2;->c:Liu;

    .line 26
    .line 27
    iget-object v3, p0, Lsi2;->d:Lhk;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    if-ne p1, v1, :cond_7

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "prefs"

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const-string v0, "app"

    .line 43
    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    new-instance v3, Lhk;

    .line 47
    .line 48
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v6, p0, Lmk2;->e:Lji;

    .line 53
    .line 54
    if-eqz v6, :cond_1

    .line 55
    .line 56
    invoke-virtual {v6}, Lji;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-direct {v3, v1, v6, v9}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    :goto_0
    move-object v7, v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v5

    .line 69
    :cond_2
    if-eqz v3, :cond_6

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :goto_1
    new-instance v1, Ljz;

    .line 73
    .line 74
    move-object v6, v2

    .line 75
    iget-object v2, p0, Lmk2;->e:Lji;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    invoke-static {v6}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v0, Lyu;->Companion:Lwu;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move v10, v4

    .line 89
    invoke-static {}, Lwu;->a()Lyu;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v0, "restore_special_permissions"

    .line 94
    .line 95
    :try_start_0
    sget-object v6, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 96
    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    invoke-interface {v6, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move v0, v9

    .line 109
    :goto_2
    const-string v6, "restore_ssaids"

    .line 110
    .line 111
    :try_start_1
    sget-object v11, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 112
    .line 113
    if-eqz v11, :cond_4

    .line 114
    .line 115
    invoke-interface {v11, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    move v6, p1

    .line 120
    :goto_3
    move v5, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :catch_1
    move v6, v10

    .line 127
    goto :goto_3

    .line 128
    :goto_4
    invoke-direct/range {v1 .. v8}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Lry7;

    .line 132
    .line 133
    invoke-direct {p1, v9}, Lry7;-><init>(Z)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1, p1}, Lmk2;->l(Lkz;Lty7;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_5
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v5

    .line 145
    :cond_6
    move v10, v4

    .line 146
    const-string p0, "localBackup null!"

    .line 147
    .line 148
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v10

    .line 152
    :cond_7
    move-object v6, v2

    .line 153
    move v10, v4

    .line 154
    const v1, 0x7f0a0083

    .line 155
    .line 156
    .line 157
    if-ne p1, v1, :cond_b

    .line 158
    .line 159
    iget-object p0, p0, Lsi2;->e:Lji;

    .line 160
    .line 161
    if-eqz v3, :cond_8

    .line 162
    .line 163
    new-instance p1, Lyh;

    .line 164
    .line 165
    invoke-direct {p1, p0, v3}, Lyh;-><init>(Lji;Lhk;)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_8
    if-eqz v8, :cond_9

    .line 170
    .line 171
    new-instance p1, Lwh;

    .line 172
    .line 173
    invoke-direct {p1, p0, v8}, Lwh;-><init>(Lji;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    move-object p1, v5

    .line 178
    :goto_5
    instance-of p0, p1, Lwh;

    .line 179
    .line 180
    if-eqz p0, :cond_a

    .line 181
    .line 182
    new-instance p0, Ly2;

    .line 183
    .line 184
    check-cast p1, Lwh;

    .line 185
    .line 186
    const/16 v1, 0x9

    .line 187
    .line 188
    invoke-direct {p0, v1, v0, p1}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v5, p0, v9}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_7

    .line 195
    .line 196
    :cond_a
    if-eqz p1, :cond_12

    .line 197
    .line 198
    new-instance p0, Lnh;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, v0}, Lnh;-><init>(Lzm;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lnh;->n(Lk55;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :cond_b
    const v1, 0x7f0a008c

    .line 212
    .line 213
    .line 214
    if-ne p1, v1, :cond_e

    .line 215
    .line 216
    sget-object p0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 217
    .line 218
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    if-eqz p0, :cond_d

    .line 223
    .line 224
    if-eqz v3, :cond_c

    .line 225
    .line 226
    new-instance p0, Lcd;

    .line 227
    .line 228
    invoke-direct {p0, v6, v3}, Lcd;-><init>(Liu;Lhk;)V

    .line 229
    .line 230
    .line 231
    new-instance p1, Lo20;

    .line 232
    .line 233
    const/4 v1, 0x7

    .line 234
    invoke-direct {p1, v1, v0, p0}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v5, p1, v9}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_c
    const-string p0, "Null localBackup, cannot sync!"

    .line 243
    .line 244
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return v10

    .line 248
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    sget-object p0, Lzn4;->a:Lzn4;

    .line 252
    .line 253
    new-instance p0, Lb56;

    .line 254
    .line 255
    invoke-direct {p0, v0, v10}, Lb56;-><init>(Lk28;I)V

    .line 256
    .line 257
    .line 258
    invoke-static {p0}, Lzn4;->e(Lbt3;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_e
    const v1, 0x7f0a0054

    .line 264
    .line 265
    .line 266
    const v2, 0x7f140160

    .line 267
    .line 268
    .line 269
    if-ne p1, v1, :cond_f

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance p0, Lhv1;

    .line 275
    .line 276
    invoke-direct {p0, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 277
    .line 278
    .line 279
    new-instance p1, Ls35;

    .line 280
    .line 281
    invoke-direct {p1, v0, v2, p0, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 282
    .line 283
    .line 284
    const p0, 0x7f1301e5

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, p0}, Lv75;->v(I)V

    .line 288
    .line 289
    .line 290
    const p0, 0x7f13054e

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p0}, Lv75;->n(I)V

    .line 294
    .line 295
    .line 296
    new-instance p0, Lui2;

    .line 297
    .line 298
    invoke-direct {p0, v0, v6, v3, v8}, Lui2;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 299
    .line 300
    .line 301
    const v0, 0x7f1305d0

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1, v0, p0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    const p0, 0x7f1303ba

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p0, v5}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Ls35;->m()Lwa;

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_f
    const v1, 0x7f0a0060

    .line 318
    .line 319
    .line 320
    if-ne p1, v1, :cond_12

    .line 321
    .line 322
    iget-object p0, p0, Lsi2;->f:Ljava/lang/String;

    .line 323
    .line 324
    if-eqz p0, :cond_12

    .line 325
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-nez p1, :cond_10

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_10
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .line 334
    .line 335
    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const v1, 0x7f13021e

    .line 339
    .line 340
    .line 341
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const/4 v3, 0x6

    .line 353
    invoke-static {v1, p0, v10, v10, v3}, Lnq7;->h0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-ltz v3, :cond_11

    .line 358
    .line 359
    invoke-virtual {v1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 364
    .line 365
    .line 366
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 367
    .line 368
    invoke-direct {v4, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    const/16 v8, 0x11

    .line 383
    .line 384
    invoke-virtual {p1, v4, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    add-int/2addr p0, v3

    .line 392
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_11
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 401
    .line 402
    .line 403
    :goto_6
    new-instance p0, Landroid/text/SpannedString;

    .line 404
    .line 405
    invoke-direct {p0, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    new-instance p1, Lhv1;

    .line 409
    .line 410
    invoke-direct {p1, v0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 411
    .line 412
    .line 413
    new-instance v1, Ls35;

    .line 414
    .line 415
    invoke-direct {v1, v0, v2, p1, v5}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 416
    .line 417
    .line 418
    iget-object p1, v1, Lva;->b:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast p1, Lra;

    .line 421
    .line 422
    iput-object p0, p1, Lra;->f:Ljava/lang/CharSequence;

    .line 423
    .line 424
    const p0, 0x7f1303e6

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, p0, v5}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 431
    .line 432
    .line 433
    :cond_12
    :goto_7
    return v9
.end method
