.class public final synthetic Lnk;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 8
    iput p1, p0, Lnk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/orphans/a;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lnk;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget p0, p0, Lnk;->a:I

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const-string v5, "%02x"

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Ltn2;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lzn4;->a:Lzn4;

    .line 21
    .line 22
    new-instance p0, Lbt7;

    .line 23
    .line 24
    invoke-direct {p0, p1, v3}, Lbt7;-><init>(Ltn2;Ljv1;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 28
    .line 29
    .line 30
    sget-object p0, Lbe8;->a:Lbe8;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_1
    check-cast p1, Lhz6;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p0, p1, Lhz6;->a:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p1, Lhz6;->b:Lq63;

    .line 51
    .line 52
    invoke-virtual {p1}, Lq63;->v()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, v2, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_2
    check-cast p1, Ljava/lang/Byte;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 64
    .line 65
    .line 66
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_3
    check-cast p1, Ljava/lang/Byte;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 82
    .line 83
    .line 84
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_4
    check-cast p1, Ljh1;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Luz4;->b(Ljh1;)Lzz4;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :pswitch_5
    check-cast p1, Ljava/util/Locale;

    .line 108
    .line 109
    sget p0, Lorg/swiftapps/swiftbackup/contributor/ContributorRegActivity;->S:I

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    const-string v0, "zh"

    .line 119
    .line 120
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_1

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "CN"

    .line 131
    .line 132
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_0

    .line 137
    .line 138
    const-string p0, "Chinese Simplified"

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_0
    const-string p0, "Chinese Traditional"

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_1
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "pt"

    .line 151
    .line 152
    invoke-static {v1}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_2

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string p1, " ("

    .line 171
    .line 172
    const-string v1, ")"

    .line 173
    .line 174
    invoke-static {p1, p0, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    goto :goto_0

    .line 179
    :cond_2
    const-string p0, ""

    .line 180
    .line 181
    :goto_0
    invoke-static {v0, p0}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    :goto_1
    return-object p0

    .line 186
    :pswitch_6
    move-object v0, p1

    .line 187
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    sget-object v1, Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;->ERROR:Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;

    .line 193
    .line 194
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 195
    .line 196
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const p1, 0x7f130188

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const/4 v6, 0x0

    .line 208
    const/16 v7, 0x187f

    .line 209
    .line 210
    sget-object v2, Lov2;->a:Lov2;

    .line 211
    .line 212
    sget-object v3, Lsv2;->a:Lsv2;

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    invoke-static/range {v0 .. v7}, Lorg/swiftapps/swiftbackup/cloud/orphans/b;->a(Lorg/swiftapps/swiftbackup/cloud/orphans/b;Lorg/swiftapps/swiftbackup/cloud/orphans/a$a;Ljava/util/List;Ljava/util/Set;Ljava/lang/String;III)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    return-object p0

    .line 220
    :pswitch_7
    check-cast p1, Lef1;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    iget-object p0, p1, Lef1;->g:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_4

    .line 232
    .line 233
    :cond_3
    move v8, v4

    .line 234
    goto :goto_2

    .line 235
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_3

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Lmd1;

    .line 250
    .line 251
    invoke-virtual {v1}, Lmd1;->b()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_5

    .line 256
    .line 257
    iget-boolean v1, v1, Lmd1;->b:Z

    .line 258
    .line 259
    if-nez v1, :cond_5

    .line 260
    .line 261
    move v8, v6

    .line 262
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 263
    .line 264
    const/16 v1, 0xa

    .line 265
    .line 266
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_7

    .line 282
    .line 283
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    move-object v7, v1

    .line 288
    check-cast v7, Lmd1;

    .line 289
    .line 290
    invoke-virtual {v7}, Lmd1;->b()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_6

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_6
    sget-object v9, Lrd1;->NOT_RUN:Lrd1;

    .line 298
    .line 299
    const/4 v12, 0x0

    .line 300
    const/4 v13, 0x1

    .line 301
    const/4 v10, 0x0

    .line 302
    const/4 v11, 0x0

    .line 303
    invoke-static/range {v7 .. v13}, Lmd1;->a(Lmd1;ZLrd1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Lmd1;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    :goto_4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_7
    const/16 p0, 0x3bf

    .line 312
    .line 313
    invoke-static {p1, v0, v4, v4, p0}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0

    .line 318
    :pswitch_8
    check-cast p1, Ljava/lang/Byte;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 321
    .line 322
    .line 323
    move-result p0

    .line 324
    and-int/lit16 p0, p0, 0xff

    .line 325
    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    invoke-static {p0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :pswitch_9
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 344
    .line 345
    sget-object p0, Lji;->Companion:Lji$a;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, p1}, Lji$a;->fromPackageInfo(Landroid/content/pm/PackageInfo;)Lji;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    return-object p0

    .line 355
    :pswitch_a
    check-cast p1, Lji;

    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    sget-object p0, Liy;->d:Ljava/util/LinkedHashMap;

    .line 361
    .line 362
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    check-cast p0, Ljava/lang/Long;

    .line 371
    .line 372
    if-eqz p0, :cond_8

    .line 373
    .line 374
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 375
    .line 376
    .line 377
    move-result-wide p0

    .line 378
    cmp-long p0, p0, v0

    .line 379
    .line 380
    if-lez p0, :cond_8

    .line 381
    .line 382
    move p0, v6

    .line 383
    goto :goto_5

    .line 384
    :cond_8
    move p0, v4

    .line 385
    :goto_5
    sget-object p1, Liy;->a:Liy;

    .line 386
    .line 387
    invoke-static {}, Liy;->c()Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-eqz p1, :cond_9

    .line 392
    .line 393
    if-nez p0, :cond_a

    .line 394
    .line 395
    move v4, v6

    .line 396
    goto :goto_6

    .line 397
    :cond_9
    move v4, p0

    .line 398
    :cond_a
    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :pswitch_b
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getAppPart()Liu;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-static {v5, v4, v6, v3}, Liu;->toDisplayString$default(Liu;ZILjava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getLocalLimitMBs()Ljava/lang/Long;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    if-eqz v2, :cond_b

    .line 444
    .line 445
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getLocalLimitMBs()Ljava/lang/Long;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 450
    .line 451
    .line 452
    move-result-wide v2

    .line 453
    cmp-long v2, v2, v0

    .line 454
    .line 455
    if-lez v2, :cond_b

    .line 456
    .line 457
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getLocalLimitMBs()Ljava/lang/Long;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 462
    .line 463
    .line 464
    move-result-wide v2

    .line 465
    const-string v4, "\ud83d\udcf1"

    .line 466
    .line 467
    invoke-static {v2, v3, v4, p0}, Lok;->a(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 468
    .line 469
    .line 470
    :cond_b
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitMBs()Ljava/lang/Long;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    if-eqz v2, :cond_c

    .line 475
    .line 476
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitMBs()Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 481
    .line 482
    .line 483
    move-result-wide v2

    .line 484
    cmp-long v0, v2, v0

    .line 485
    .line 486
    if-lez v0, :cond_c

    .line 487
    .line 488
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/appbackuplimits/AppBackupLimitItem;->getCloudLimitMBs()Ljava/lang/Long;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 493
    .line 494
    .line 495
    move-result-wide v0

    .line 496
    const-string p1, "\u2601"

    .line 497
    .line 498
    invoke-static {v0, v1, p1, p0}, Lok;->a(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 499
    .line 500
    .line 501
    :cond_c
    return-object p0

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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
