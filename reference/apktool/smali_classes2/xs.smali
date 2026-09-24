.class public final synthetic Lxs;
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

    .line 12
    iput p1, p0, Lxs;->a:I

    iput-object p2, p0, Lxs;->b:Ljava/lang/Object;

    iput-object p3, p0, Lxs;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lyn3;Ljava/util/LinkedHashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lxs;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lxs;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lxs;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lxs;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lxs;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lxs;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lji7;

    .line 16
    .line 17
    check-cast v5, Ljava/lang/String;

    .line 18
    .line 19
    check-cast p1, Lwm2;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0, v5}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, p0}, Lwm2;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Lel1;->N0(ILjava/util/List;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lp73;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p0}, Log1;->h(Lp73;Ljava/lang/String;)Lpg1;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    new-instance p0, Lgh1;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lgh1;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :goto_1
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "STATUS_OBJECT_NAME_NOT_FOUND"

    .line 82
    .line 83
    invoke-static {p1, v0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    const-string v0, "STATUS_OBJECT_PATH_NOT_FOUND"

    .line 90
    .line 91
    invoke-static {p1, v0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    const-string v0, "STATUS_NO_SUCH_FILE"

    .line 98
    .line 99
    invoke-static {p1, v0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    const-string v0, "does not exist"

    .line 106
    .line 107
    invoke-static {p1, v0, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    const-string p1, "SmbService"

    .line 115
    .line 116
    const-string v0, "listMetadataDirectory"

    .line 117
    .line 118
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 122
    .line 123
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string p1, "listMetadataDirectory: "

    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const/4 v5, 0x4

    .line 134
    const/4 v6, 0x0

    .line 135
    const-string v2, "SmbService"

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object p0, Lfh1;->a:Lfh1;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_2
    :goto_2
    new-instance p0, Lgh1;

    .line 145
    .line 146
    sget-object p1, Lov2;->a:Lov2;

    .line 147
    .line 148
    invoke-direct {p0, p1}, Lgh1;-><init>(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    :goto_3
    return-object p0

    .line 152
    :pswitch_0
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 153
    .line 154
    check-cast v5, Ljava/util/ArrayList;

    .line 155
    .line 156
    check-cast p1, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    const-string v0, "F\t"

    .line 162
    .line 163
    invoke-static {p1, v0, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/16 v0, 0x9

    .line 174
    .line 175
    const/4 v1, 0x6

    .line 176
    invoke-static {v0, v2, v1, p1}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    const/4 v6, 0x0

    .line 181
    if-gtz v5, :cond_3

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_3
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v0, v2, v1, v7}, Lnq7;->k0(CIILjava/lang/CharSequence;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-gtz v0, :cond_4

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_4
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    add-int/2addr v0, v4

    .line 200
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const-wide/16 v7, 0x0

    .line 209
    .line 210
    if-eqz v0, :cond_5

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 213
    .line 214
    .line 215
    move-result-wide v9

    .line 216
    goto :goto_4

    .line 217
    :cond_5
    move-wide v9, v7

    .line 218
    :goto_4
    add-int/2addr v5, v4

    .line 219
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    :try_start_1
    invoke-static {p1}, Ltq7;->N(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 234
    .line 235
    .line 236
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :catch_1
    :cond_6
    if-eqz v6, :cond_7

    .line 238
    .line 239
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 240
    .line 241
    .line 242
    move-result-wide v4

    .line 243
    double-to-long v7, v4

    .line 244
    :cond_7
    const-wide/16 v4, 0x3e8

    .line 245
    .line 246
    mul-long/2addr v7, v4

    .line 247
    new-instance p1, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 248
    .line 249
    invoke-direct {p1, v9, v10, v7, v8}, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;-><init>(JJ)V

    .line 250
    .line 251
    .line 252
    new-instance v6, Lpw5;

    .line 253
    .line 254
    invoke-direct {v6, v1, p1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :goto_5
    if-eqz v6, :cond_9

    .line 258
    .line 259
    iget-object p1, v6, Lpw5;->a:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast p1, Ljava/lang/String;

    .line 262
    .line 263
    iget-object v0, v6, Lpw5;->b:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/data/FileEntry;

    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-lez v1, :cond_9

    .line 272
    .line 273
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_8
    const-string p0, "D\t"

    .line 278
    .line 279
    invoke-static {p1, p0, v2}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    if-eqz p0, :cond_9

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-lez p1, :cond_9

    .line 294
    .line 295
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :cond_9
    :goto_6
    return-object v3

    .line 299
    :pswitch_1
    check-cast p0, Lqj2;

    .line 300
    .line 301
    check-cast v5, Lzj2;

    .line 302
    .line 303
    check-cast p1, Ljava/lang/String;

    .line 304
    .line 305
    iget-object p0, p0, Lqj2;->b:Lmk2;

    .line 306
    .line 307
    iget-object v0, v5, Lzj2;->a:Liz4;

    .line 308
    .line 309
    invoke-virtual {v0}, Liz4;->getBackup()Lgm;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p0, v0, p1}, Lmk2;->o(Lgm;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    return-object v3

    .line 317
    :pswitch_2
    check-cast p0, Ljava/util/ArrayList;

    .line 318
    .line 319
    check-cast v5, Ljava/util/ArrayList;

    .line 320
    .line 321
    check-cast p1, Lji;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Lji;->getLabels()Ljava/util/Set;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-eqz v1, :cond_a

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_c

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 354
    .line 355
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v5, v1}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_b

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_c
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_d

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_f

    .line 382
    .line 383
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Ljava/lang/String;

    .line 388
    .line 389
    sget-object v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 390
    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    invoke-static {p1, v0}, Lhr4;->b(Lji;Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-eqz v0, :cond_e

    .line 399
    .line 400
    :goto_8
    move v2, v4

    .line 401
    :cond_f
    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    return-object p0

    .line 406
    :pswitch_3
    check-cast p0, Lmv;

    .line 407
    .line 408
    check-cast v5, Lkh6;

    .line 409
    .line 410
    check-cast p1, Lvg;

    .line 411
    .line 412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 413
    .line 414
    .line 415
    iget-wide v0, v5, Lkh6;->a:J

    .line 416
    .line 417
    iget-wide v4, p1, Lvg;->b:J

    .line 418
    .line 419
    add-long/2addr v0, v4

    .line 420
    invoke-virtual {p0, v0, v1}, Lmv;->d(J)V

    .line 421
    .line 422
    .line 423
    return-object v3

    .line 424
    :pswitch_4
    check-cast p0, Ldt;

    .line 425
    .line 426
    check-cast v5, Landroid/view/ViewGroup;

    .line 427
    .line 428
    move-object v7, p1

    .line 429
    check-cast v7, Ljava/util/List;

    .line 430
    .line 431
    new-instance p1, Lt35;

    .line 432
    .line 433
    invoke-direct {p1}, Lt35;-><init>()V

    .line 434
    .line 435
    .line 436
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 437
    .line 438
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v5, p1, v0}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 443
    .line 444
    .line 445
    if-eqz v7, :cond_11

    .line 446
    .line 447
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-eqz p1, :cond_10

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_10
    iget-boolean p1, p0, Ldt;->Y:Z

    .line 455
    .line 456
    if-nez p1, :cond_11

    .line 457
    .line 458
    goto :goto_b

    .line 459
    :cond_11
    :goto_a
    move v4, v2

    .line 460
    :goto_b
    iget-object p1, p0, Ldt;->a0:Lgv7;

    .line 461
    .line 462
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 470
    .line 471
    invoke-static {p1, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 472
    .line 473
    .line 474
    if-eqz v7, :cond_12

    .line 475
    .line 476
    iget-object p0, p0, Ldt;->b0:Lgv7;

    .line 477
    .line 478
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    check-cast p0, Lk10;

    .line 483
    .line 484
    new-instance v6, Lfm7;

    .line 485
    .line 486
    const/4 v10, 0x0

    .line 487
    const/16 v11, 0x1e

    .line 488
    .line 489
    const/4 v8, 0x0

    .line 490
    const/4 v9, 0x0

    .line 491
    invoke-direct/range {v6 .. v11}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0, v6, v2}, Lgm7;->w(Lfm7;Z)V

    .line 495
    .line 496
    .line 497
    :cond_12
    return-object v3

    .line 498
    nop

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
