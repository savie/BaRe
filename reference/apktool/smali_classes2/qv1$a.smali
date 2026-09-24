.class public final Lqv1$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqv1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqv1$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getList$default(Lqv1$a;ZLwg5$c;Lmt3;ILjava/lang/Object;)Ljava/util/List;
    .locals 2

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_1

    .line 5
    .line 6
    const-string p1, "messages_backup_mms"

    .line 7
    .line 8
    const/4 p5, 0x1

    .line 9
    :try_start_0
    sget-object v1, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, p1, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "prefs"

    .line 19
    .line 20
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    move p1, p5

    .line 25
    :cond_1
    :goto_0
    and-int/lit8 p4, p4, 0x4

    .line 26
    .line 27
    if-eqz p4, :cond_2

    .line 28
    .line 29
    move-object p3, v0

    .line 30
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lqv1$a;->getList(ZLwg5$c;Lmt3;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lqv1;->access$getLogTag$delegate$cp()Los4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {}, Lqv1;->access$getCONTENT_URI$cp()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getList(ZLwg5$c;Lmt3;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lwg5$c;",
            "Lmt3;",
            ")",
            "Ljava/util/List<",
            "Lqv1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_25

    .line 18
    .line 19
    invoke-static {}, Lud5;->i()Lq63;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lq63;->j()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lq63;->E(Lq63;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Lcy0;->e(Lq63;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lki7;->Companion:Lki7$a;

    .line 42
    .line 43
    invoke-virtual {v2}, Lki7$a;->getList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object v3, Lvr6;->INSTANCE:Lvr6;

    .line 48
    .line 49
    invoke-direct/range {p0 .. p0}, Lqv1$a;->getLogTag()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const-string v6, "getList(): SMS="

    .line 58
    .line 59
    invoke-static {v5, v6}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const/4 v7, 0x4

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual/range {p2 .. p3}, Lwg5$c;->getList(Lmt3;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_1
    move-object v9, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    sget-object v4, Lov2;->a:Lov2;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_2
    invoke-direct/range {p0 .. p0}, Lqv1$a;->getLogTag()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    const-string v5, "Disabled"

    .line 96
    .line 97
    :goto_3
    const-string v6, "getList(): MMS="

    .line 98
    .line 99
    invoke-static {v6, v5}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const/4 v7, 0x4

    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    invoke-static/range {v3 .. v8}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    check-cast v5, Lki7;

    .line 142
    .line 143
    invoke-virtual {v5}, Lki7;->getThreadId()Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_4

    .line 148
    .line 149
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    invoke-static {v3}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_7

    .line 171
    .line 172
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    check-cast v6, Lwg5;

    .line 177
    .line 178
    invoke-virtual {v6}, Lwg5;->getThreadId()Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    if-eqz v6, :cond_6

    .line 183
    .line 184
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    invoke-static {v4}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v3, v4}, Lsz8;->R(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_20

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Ljava/lang/Number;

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 213
    .line 214
    .line 215
    move-result-wide v11

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    :cond_8
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_a

    .line 230
    .line 231
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    move-object v7, v6

    .line 236
    check-cast v7, Lki7;

    .line 237
    .line 238
    invoke-virtual {v7}, Lki7;->getThreadId()Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    if-nez v7, :cond_9

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v7

    .line 249
    cmp-long v7, v7, v11

    .line 250
    .line 251
    if-nez v7, :cond_8

    .line 252
    .line 253
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    :cond_b
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eqz v7, :cond_d

    .line 271
    .line 272
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    move-object v8, v7

    .line 277
    check-cast v8, Lwg5;

    .line 278
    .line 279
    invoke-virtual {v8}, Lwg5;->getThreadId()Ljava/lang/Long;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    if-nez v8, :cond_c

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 287
    .line 288
    .line 289
    move-result-wide v13

    .line 290
    cmp-long v8, v13, v11

    .line 291
    .line 292
    if-nez v8, :cond_b

    .line 293
    .line 294
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    const-wide/16 v7, 0x0

    .line 303
    .line 304
    move-object v10, v1

    .line 305
    :cond_e
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    if-eqz v13, :cond_12

    .line 310
    .line 311
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v13

    .line 315
    check-cast v13, Lki7;

    .line 316
    .line 317
    invoke-virtual {v13}, Lki7;->getDate()Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    if-eqz v14, :cond_f

    .line 322
    .line 323
    :goto_a
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 324
    .line 325
    .line 326
    move-result-wide v14

    .line 327
    goto :goto_b

    .line 328
    :cond_f
    invoke-virtual {v13}, Lki7;->getDateSent()Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    if-eqz v14, :cond_e

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :goto_b
    cmp-long v16, v14, v7

    .line 336
    .line 337
    if-lez v16, :cond_e

    .line 338
    .line 339
    invoke-virtual {v13}, Lki7;->getBody()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    if-eqz v7, :cond_11

    .line 344
    .line 345
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 346
    .line 347
    .line 348
    move-result v7

    .line 349
    if-nez v7, :cond_10

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_10
    invoke-virtual {v13}, Lki7;->getBody()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    :cond_11
    :goto_c
    move-wide v7, v14

    .line 357
    goto :goto_9

    .line 358
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    move-wide v15, v7

    .line 363
    move-object/from16 v18, v10

    .line 364
    .line 365
    :cond_13
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v7

    .line 369
    if-eqz v7, :cond_16

    .line 370
    .line 371
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    check-cast v7, Lwg5;

    .line 376
    .line 377
    invoke-virtual {v7}, Lwg5;->getDateInMillis()Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    if-eqz v8, :cond_13

    .line 382
    .line 383
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 384
    .line 385
    .line 386
    move-result-wide v13

    .line 387
    cmp-long v8, v13, v15

    .line 388
    .line 389
    if-ltz v8, :cond_13

    .line 390
    .line 391
    invoke-virtual {v7}, Lwg5;->getText()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v10

    .line 395
    if-eqz v10, :cond_15

    .line 396
    .line 397
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-nez v7, :cond_14

    .line 402
    .line 403
    goto :goto_e

    .line 404
    :cond_14
    move-object/from16 v18, v10

    .line 405
    .line 406
    :cond_15
    :goto_e
    move-wide v15, v13

    .line 407
    goto :goto_d

    .line 408
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    :cond_17
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    if-eqz v7, :cond_18

    .line 417
    .line 418
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    move-object v8, v7

    .line 423
    check-cast v8, Lki7;

    .line 424
    .line 425
    invoke-virtual {v8}, Lki7;->getAddress()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    if-eqz v8, :cond_17

    .line 430
    .line 431
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v8

    .line 435
    if-nez v8, :cond_19

    .line 436
    .line 437
    goto :goto_f

    .line 438
    :cond_18
    move-object v7, v1

    .line 439
    :cond_19
    check-cast v7, Lki7;

    .line 440
    .line 441
    if-eqz v7, :cond_1b

    .line 442
    .line 443
    invoke-virtual {v7}, Lki7;->getAddress()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    if-nez v6, :cond_1a

    .line 448
    .line 449
    goto :goto_11

    .line 450
    :cond_1a
    :goto_10
    move-object/from16 v19, v6

    .line 451
    .line 452
    goto :goto_13

    .line 453
    :cond_1b
    :goto_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 454
    .line 455
    .line 456
    move-result-object v6

    .line 457
    :cond_1c
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    if-eqz v7, :cond_1d

    .line 462
    .line 463
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    move-object v8, v7

    .line 468
    check-cast v8, Lwg5;

    .line 469
    .line 470
    invoke-virtual {v8}, Lwg5;->getAddress()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    if-eqz v8, :cond_1c

    .line 475
    .line 476
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    if-nez v8, :cond_1e

    .line 481
    .line 482
    goto :goto_12

    .line 483
    :cond_1d
    move-object v7, v1

    .line 484
    :cond_1e
    check-cast v7, Lwg5;

    .line 485
    .line 486
    if-eqz v7, :cond_1f

    .line 487
    .line 488
    invoke-virtual {v7}, Lwg5;->getAddress()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    goto :goto_10

    .line 493
    :cond_1f
    move-object/from16 v19, v1

    .line 494
    .line 495
    :goto_13
    new-instance v10, Lqv1;

    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    add-int v17, v7, v6

    .line 506
    .line 507
    new-instance v6, Lqv1$a$b;

    .line 508
    .line 509
    invoke-direct {v6}, Lqv1$a$b;-><init>()V

    .line 510
    .line 511
    .line 512
    invoke-static {v4, v6}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v4

    .line 516
    new-instance v6, Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    .line 520
    .line 521
    new-instance v4, Lqv1$a$c;

    .line 522
    .line 523
    invoke-direct {v4}, Lqv1$a$c;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-static {v5, v4}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    new-instance v5, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 533
    .line 534
    .line 535
    const/16 v26, 0x600

    .line 536
    .line 537
    const/16 v27, 0x0

    .line 538
    .line 539
    const/16 v24, 0x0

    .line 540
    .line 541
    const/16 v25, 0x0

    .line 542
    .line 543
    move-wide v13, v11

    .line 544
    move-wide/from16 v22, v15

    .line 545
    .line 546
    move-object/from16 v21, v5

    .line 547
    .line 548
    move-object/from16 v20, v6

    .line 549
    .line 550
    invoke-direct/range {v10 .. v27}, Lqv1;-><init>(JJJILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto/16 :goto_6

    .line 557
    .line 558
    :cond_20
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    const-class v2, Lzt1;

    .line 564
    .line 565
    invoke-static {v1, v2}, Lr92;->a(Landroid/net/Uri;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    :cond_21
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-eqz v3, :cond_24

    .line 578
    .line 579
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Lqv1;

    .line 584
    .line 585
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    :cond_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-eqz v5, :cond_21

    .line 594
    .line 595
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    check-cast v5, Lzt1;

    .line 600
    .line 601
    invoke-virtual {v3}, Lqv1;->getAddress()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v6

    .line 605
    invoke-virtual {v5}, Lzt1;->getAddress()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v7

    .line 609
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v6

    .line 613
    if-nez v6, :cond_23

    .line 614
    .line 615
    invoke-virtual {v3}, Lqv1;->getAddress()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {v5}, Lzt1;->getNormalizedNumber()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v6

    .line 627
    if-eqz v6, :cond_22

    .line 628
    .line 629
    :cond_23
    invoke-virtual {v5}, Lzt1;->getDisplayName()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v3, v4}, Lqv1;->setDisplayName(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v5}, Lzt1;->getPhotoUri()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-virtual {v3, v4}, Lqv1;->setPhotoUri(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_14

    .line 644
    :cond_24
    new-instance v1, Lqv1$a$a;

    .line 645
    .line 646
    invoke-direct {v1}, Lqv1$a$a;-><init>()V

    .line 647
    .line 648
    .line 649
    invoke-static {v0, v1}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    new-instance v1, Ljava/util/ArrayList;

    .line 654
    .line 655
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 656
    .line 657
    .line 658
    return-object v1

    .line 659
    :cond_25
    invoke-static {}, Ld6;->o()V

    .line 660
    .line 661
    .line 662
    return-object v1
.end method
