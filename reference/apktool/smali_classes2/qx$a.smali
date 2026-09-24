.class public final Lqx$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqx;
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
    invoke-direct {p0}, Lqx$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static final create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/Long;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long p1, v1, v3

    .line 19
    .line 20
    if-ltz p1, :cond_0

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    :cond_0
    invoke-static {v0}, Lio4;->h(Ljava/lang/Long;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    return-wide p0
.end method

.method private static final create$shouldUseRootSize(Liu;)Z
    .locals 1

    .line 1
    sget-object v0, Lmp6;->a:Lmp6;

    .line 2
    .line 3
    sget-boolean v0, Lmp6;->g:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Liu;->getBackupReq()Lsk0;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lsk0;->ROOT_OR_SHIZUKU:Lsk0;

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method


# virtual methods
.method public final create(Lji;ZZZZ)Lqx;
    .locals 35

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lp93;->a:Lp93;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lji;->getSourceDir()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1, v2}, Lp93;->f(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Lji;->getSplitSourceDirs()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-wide/16 v8, 0x0

    .line 41
    .line 42
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-nez v10, :cond_2

    .line 59
    .line 60
    new-instance v10, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v10}, Lp93;->e(Ljava/io/File;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    add-long/2addr v8, v10

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lji;->getSharedLibsInfos()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-eqz v10, :cond_7

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    check-cast v10, Lyc7;

    .line 103
    .line 104
    sget-object v11, Lp93;->a:Lp93;

    .line 105
    .line 106
    invoke-virtual {v10}, Lyc7;->getApkPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v11, v10}, Lp93;->f(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    add-long/2addr v2, v10

    .line 115
    goto :goto_2

    .line 116
    :cond_6
    :goto_3
    const-wide/16 v2, 0x0

    .line 117
    .line 118
    :cond_7
    if-eqz p2, :cond_8

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Lji;->getDataDir()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-static {v0, v10}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    const/4 v10, 0x0

    .line 130
    :goto_4
    if-eqz p2, :cond_9

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lji;->hasDeData()Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    if-eqz v11, :cond_9

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v11

    .line 142
    invoke-static {v0, v11}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    goto :goto_5

    .line 147
    :cond_9
    const/4 v11, 0x0

    .line 148
    :goto_5
    const-string v12, "cache"

    .line 149
    .line 150
    if-eqz p2, :cond_a

    .line 151
    .line 152
    new-instance v13, Ljr7;

    .line 153
    .line 154
    invoke-virtual/range {p1 .. p1}, Lji;->getDataDir()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    invoke-direct {v13, v14, v12}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    invoke-static {v0, v13}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    goto :goto_6

    .line 170
    :cond_a
    const/4 v13, 0x0

    .line 171
    :goto_6
    if-eqz p2, :cond_b

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Lji;->hasDeData()Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_b

    .line 178
    .line 179
    new-instance v14, Ljr7;

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lji;->getDeDataDir()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    invoke-direct {v14, v15, v12}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    invoke-static {v0, v14}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v14

    .line 196
    goto :goto_7

    .line 197
    :cond_b
    const/4 v14, 0x0

    .line 198
    :goto_7
    if-eqz p3, :cond_c

    .line 199
    .line 200
    sget-object v15, Liu;->EXTDATA:Liu;

    .line 201
    .line 202
    invoke-static {v15}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    if-eqz v15, :cond_c

    .line 207
    .line 208
    invoke-virtual/range {p1 .. p1}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    invoke-static {v0, v15}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    goto :goto_8

    .line 217
    :cond_c
    const/4 v15, 0x0

    .line 218
    :goto_8
    if-eqz p3, :cond_d

    .line 219
    .line 220
    sget-object v16, Liu;->EXTDATA:Liu;

    .line 221
    .line 222
    invoke-static/range {v16 .. v16}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 223
    .line 224
    .line 225
    move-result v16

    .line 226
    if-eqz v16, :cond_d

    .line 227
    .line 228
    new-instance v1, Ljr7;

    .line 229
    .line 230
    invoke-virtual/range {p1 .. p1}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-direct {v1, v6, v12}, Ljr7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    goto :goto_9

    .line 246
    :cond_d
    const/4 v1, 0x0

    .line 247
    :goto_9
    if-eqz p4, :cond_e

    .line 248
    .line 249
    invoke-virtual/range {p1 .. p1}, Lji;->getMediaDir()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-static {v0, v6}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    goto :goto_a

    .line 258
    :cond_e
    const/4 v6, 0x0

    .line 259
    :goto_a
    if-eqz p5, :cond_f

    .line 260
    .line 261
    sget-object v7, Liu;->EXPANSION:Liu;

    .line 262
    .line 263
    invoke-static {v7}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-eqz v7, :cond_f

    .line 268
    .line 269
    invoke-virtual/range {p1 .. p1}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-static {v0, v7}, Lqx$a;->create$addRootSizePath(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    goto :goto_b

    .line 278
    :cond_f
    const/4 v7, 0x0

    .line 279
    :goto_b
    sget-object v18, Lp93;->a:Lp93;

    .line 280
    .line 281
    move-object/from16 v18, v0

    .line 282
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object v18

    .line 292
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v19

    .line 296
    if-eqz v19, :cond_11

    .line 297
    .line 298
    move-wide/from16 v19, v2

    .line 299
    .line 300
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    move-object v3, v2

    .line 305
    check-cast v3, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v3

    .line 311
    if-nez v3, :cond_10

    .line 312
    .line 313
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_10
    move-wide/from16 v2, v19

    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_11
    move-wide/from16 v19, v2

    .line 320
    .line 321
    invoke-static {v0}, Leq3;->p(Ljava/util/ArrayList;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 326
    .line 327
    const/16 v3, 0xa

    .line 328
    .line 329
    invoke-static {v0, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 330
    .line 331
    .line 332
    move-result v18

    .line 333
    invoke-static/range {v18 .. v18}, Lx65;->q0(I)I

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    move-object/from16 v18, v0

    .line 338
    .line 339
    const/16 v0, 0x10

    .line 340
    .line 341
    if-ge v3, v0, :cond_12

    .line 342
    .line 343
    move v3, v0

    .line 344
    :cond_12
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 345
    .line 346
    .line 347
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_14

    .line 356
    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    move-object/from16 v18, v0

    .line 362
    .line 363
    move-object v0, v3

    .line 364
    check-cast v0, Ljava/lang/String;

    .line 365
    .line 366
    sget-object v21, Lg00;->a:Lg00;

    .line 367
    .line 368
    invoke-static {}, Lg00;->x()Z

    .line 369
    .line 370
    .line 371
    move-result v21

    .line 372
    if-eqz v21, :cond_13

    .line 373
    .line 374
    sget-boolean v21, Lg42;->a:Z

    .line 375
    .line 376
    const-string v21, "AQLtx28gNYXpyMRmKyV9Yo5p9AR04Uvnp5UkmkR5i39N5ky9ky6+MqOz0sCqR1c="

    .line 377
    .line 378
    move-wide/from16 v22, v4

    .line 379
    .line 380
    invoke-static/range {v21 .. v21}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const-string v5, "AQI+UbXNmLang25NUR5B3MdXRksgwAYEcSFFo6ICdtsZiBszQUNh5rw="

    .line 385
    .line 386
    invoke-static {v5}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-static {v0, v4, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    goto :goto_e

    .line 395
    :cond_13
    move-wide/from16 v22, v4

    .line 396
    .line 397
    :goto_e
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-object/from16 v0, v18

    .line 401
    .line 402
    move-wide/from16 v4, v22

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_14
    move-wide/from16 v22, v4

    .line 406
    .line 407
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_15

    .line 412
    .line 413
    sget-object v0, Lpv2;->a:Lpv2;

    .line 414
    .line 415
    move-wide/from16 v25, v8

    .line 416
    .line 417
    goto/16 :goto_18

    .line 418
    .line 419
    :cond_15
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 420
    .line 421
    .line 422
    move-result-object v24

    .line 423
    new-instance v0, Ldq;

    .line 424
    .line 425
    const/4 v4, 0x5

    .line 426
    invoke-direct {v0, v4}, Ldq;-><init>(I)V

    .line 427
    .line 428
    .line 429
    const/16 v29, 0x1e

    .line 430
    .line 431
    const-string v25, " "

    .line 432
    .line 433
    const/16 v26, 0x0

    .line 434
    .line 435
    const/16 v27, 0x0

    .line 436
    .line 437
    move-object/from16 v28, v0

    .line 438
    .line 439
    invoke-static/range {v24 .. v29}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    const-string v4, "toybox du -sk "

    .line 444
    .line 445
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    sget-object v4, Lmp6;->a:Lmp6;

    .line 450
    .line 451
    invoke-static {}, Lmp6;->f()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_16

    .line 456
    .line 457
    filled-new-array {v0}, [Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 462
    .line 463
    invoke-virtual {v4, v0, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    goto :goto_f

    .line 468
    :cond_16
    filled-new-array {v0}, [Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v0}, Lmp6;->l([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    :goto_f
    new-instance v4, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .line 480
    .line 481
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-eqz v5, :cond_1c

    .line 490
    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    check-cast v5, Ljava/lang/String;

    .line 496
    .line 497
    if-eqz v5, :cond_19

    .line 498
    .line 499
    sget-object v3, Lp93;->b:Lai6;

    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    iget-object v3, v3, Lai6;->a:Ljava/util/regex/Pattern;

    .line 505
    .line 506
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    move-object/from16 v24, v0

    .line 514
    .line 515
    const/4 v0, 0x0

    .line 516
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-nez v0, :cond_17

    .line 521
    .line 522
    const/4 v0, 0x0

    .line 523
    goto :goto_11

    .line 524
    :cond_17
    new-instance v0, Lu75;

    .line 525
    .line 526
    invoke-direct {v0, v3, v5}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 527
    .line 528
    .line 529
    :goto_11
    if-nez v0, :cond_18

    .line 530
    .line 531
    goto :goto_12

    .line 532
    :cond_18
    invoke-virtual {v0}, Lu75;->a()Ljava/util/List;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Ls75;

    .line 537
    .line 538
    const/4 v5, 0x1

    .line 539
    invoke-virtual {v3, v5}, Ls75;->get(I)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    check-cast v3, Ljava/lang/String;

    .line 544
    .line 545
    invoke-static {v3}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    if-eqz v3, :cond_1a

    .line 550
    .line 551
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 552
    .line 553
    .line 554
    move-result-wide v25

    .line 555
    invoke-virtual {v0}, Lu75;->a()Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    check-cast v0, Ls75;

    .line 560
    .line 561
    const/4 v3, 0x2

    .line 562
    invoke-virtual {v0, v3}, Ls75;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Ljava/lang/String;

    .line 567
    .line 568
    invoke-static {v0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const-wide/16 v27, 0x400

    .line 577
    .line 578
    mul-long v25, v25, v27

    .line 579
    .line 580
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    new-instance v5, Lpw5;

    .line 585
    .line 586
    invoke-direct {v5, v0, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    goto :goto_13

    .line 590
    :cond_19
    move-object/from16 v24, v0

    .line 591
    .line 592
    :cond_1a
    :goto_12
    const/4 v5, 0x0

    .line 593
    :goto_13
    if-eqz v5, :cond_1b

    .line 594
    .line 595
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    :cond_1b
    move-object/from16 v0, v24

    .line 599
    .line 600
    goto :goto_10

    .line 601
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    .line 602
    .line 603
    const/16 v3, 0xa

    .line 604
    .line 605
    invoke-static {v4, v3}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_1e

    .line 621
    .line 622
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Lpw5;

    .line 627
    .line 628
    const/16 p2, 0x2f

    .line 629
    .line 630
    iget-object v5, v4, Lpw5;->a:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v5, Ljava/lang/String;

    .line 633
    .line 634
    iget-object v4, v4, Lpw5;->b:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v4, Ljava/lang/Number;

    .line 637
    .line 638
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 639
    .line 640
    .line 641
    move-result-wide v24

    .line 642
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 643
    .line 644
    .line 645
    move-result v4

    .line 646
    move-object/from16 v26, v2

    .line 647
    .line 648
    const/4 v2, 0x1

    .line 649
    if-le v4, v2, :cond_1d

    .line 650
    .line 651
    new-array v4, v2, [C

    .line 652
    .line 653
    const/16 v21, 0x0

    .line 654
    .line 655
    aput-char p2, v4, v21

    .line 656
    .line 657
    invoke-static {v5, v4}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    :cond_1d
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    new-instance v4, Lpw5;

    .line 666
    .line 667
    invoke-direct {v4, v5, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-object/from16 v2, v26

    .line 674
    .line 675
    goto :goto_14

    .line 676
    :cond_1e
    move-object/from16 v26, v2

    .line 677
    .line 678
    const/16 p2, 0x2f

    .line 679
    .line 680
    invoke-static {v0}, Lx65;->t0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    new-instance v2, Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 698
    .line 699
    .line 700
    move-result v4

    .line 701
    if-eqz v4, :cond_22

    .line 702
    .line 703
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    check-cast v4, Ljava/util/Map$Entry;

    .line 708
    .line 709
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    check-cast v5, Ljava/lang/String;

    .line 714
    .line 715
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v4

    .line 719
    check-cast v4, Ljava/lang/String;

    .line 720
    .line 721
    move-object/from16 v24, v3

    .line 722
    .line 723
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    move-wide/from16 v25, v8

    .line 728
    .line 729
    const/4 v8, 0x1

    .line 730
    if-le v3, v8, :cond_1f

    .line 731
    .line 732
    new-array v3, v8, [C

    .line 733
    .line 734
    const/16 v21, 0x0

    .line 735
    .line 736
    aput-char p2, v3, v21

    .line 737
    .line 738
    invoke-static {v4, v3}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v4

    .line 742
    goto :goto_16

    .line 743
    :cond_1f
    const/16 v21, 0x0

    .line 744
    .line 745
    :goto_16
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    check-cast v3, Ljava/lang/Long;

    .line 750
    .line 751
    if-eqz v3, :cond_20

    .line 752
    .line 753
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 754
    .line 755
    .line 756
    move-result-wide v3

    .line 757
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 758
    .line 759
    .line 760
    move-result-object v3

    .line 761
    new-instance v4, Lpw5;

    .line 762
    .line 763
    invoke-direct {v4, v5, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    goto :goto_17

    .line 767
    :cond_20
    const/4 v4, 0x0

    .line 768
    :goto_17
    if-eqz v4, :cond_21

    .line 769
    .line 770
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    :cond_21
    move-object/from16 v3, v24

    .line 774
    .line 775
    move-wide/from16 v8, v25

    .line 776
    .line 777
    goto :goto_15

    .line 778
    :cond_22
    move-wide/from16 v25, v8

    .line 779
    .line 780
    invoke-static {v2}, Lx65;->t0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    :goto_18
    invoke-static {v0, v10}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 785
    .line 786
    .line 787
    move-result-wide v2

    .line 788
    invoke-static {v0, v11}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 789
    .line 790
    .line 791
    move-result-wide v4

    .line 792
    invoke-static {v0, v13}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 793
    .line 794
    .line 795
    move-result-wide v8

    .line 796
    invoke-static {v0, v14}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 797
    .line 798
    .line 799
    move-result-wide v10

    .line 800
    if-nez p3, :cond_23

    .line 801
    .line 802
    const-wide/16 v13, 0x0

    .line 803
    .line 804
    const-wide/16 v27, -0x1

    .line 805
    .line 806
    goto :goto_1a

    .line 807
    :cond_23
    sget-object v21, Liu;->EXTDATA:Liu;

    .line 808
    .line 809
    invoke-static/range {v21 .. v21}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 810
    .line 811
    .line 812
    move-result v21

    .line 813
    if-eqz v21, :cond_24

    .line 814
    .line 815
    invoke-static {v0, v15}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 816
    .line 817
    .line 818
    move-result-wide v27

    .line 819
    move-wide/from16 v13, v27

    .line 820
    .line 821
    const-wide/16 v27, -0x1

    .line 822
    .line 823
    goto :goto_19

    .line 824
    :cond_24
    sget-object v15, Lp93;->a:Lp93;

    .line 825
    .line 826
    const-wide/16 v27, -0x1

    .line 827
    .line 828
    invoke-virtual/range {p1 .. p1}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v13

    .line 832
    invoke-virtual {v15, v13}, Lp93;->f(Ljava/lang/String;)J

    .line 833
    .line 834
    .line 835
    move-result-wide v13

    .line 836
    :goto_19
    cmp-long v15, v13, v27

    .line 837
    .line 838
    if-eqz v15, :cond_25

    .line 839
    .line 840
    goto :goto_1a

    .line 841
    :cond_25
    const-wide/16 v13, 0x0

    .line 842
    .line 843
    :goto_1a
    if-nez p3, :cond_27

    .line 844
    .line 845
    move-wide/from16 v29, v2

    .line 846
    .line 847
    :cond_26
    const-wide/16 v1, 0x0

    .line 848
    .line 849
    goto :goto_1c

    .line 850
    :cond_27
    sget-object v15, Liu;->EXTDATA:Liu;

    .line 851
    .line 852
    invoke-static {v15}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 853
    .line 854
    .line 855
    move-result v15

    .line 856
    if-eqz v15, :cond_28

    .line 857
    .line 858
    invoke-static {v0, v1}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 859
    .line 860
    .line 861
    move-result-wide v29

    .line 862
    move-wide/from16 v33, v29

    .line 863
    .line 864
    move-wide/from16 v29, v2

    .line 865
    .line 866
    move-wide/from16 v1, v33

    .line 867
    .line 868
    goto :goto_1b

    .line 869
    :cond_28
    sget-object v1, Lp93;->a:Lp93;

    .line 870
    .line 871
    new-instance v15, Lq63;

    .line 872
    .line 873
    move-wide/from16 v29, v2

    .line 874
    .line 875
    invoke-virtual/range {p1 .. p1}, Lji;->getExternalDataDir()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v2

    .line 879
    const/4 v3, 0x1

    .line 880
    invoke-direct {v15, v2, v12, v3}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v15}, Lq63;->v()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    invoke-virtual {v1, v2}, Lp93;->f(Ljava/lang/String;)J

    .line 888
    .line 889
    .line 890
    move-result-wide v1

    .line 891
    :goto_1b
    cmp-long v3, v1, v27

    .line 892
    .line 893
    if-eqz v3, :cond_26

    .line 894
    .line 895
    :goto_1c
    if-nez p4, :cond_2a

    .line 896
    .line 897
    :cond_29
    const-wide/16 v31, 0x0

    .line 898
    .line 899
    goto :goto_1d

    .line 900
    :cond_2a
    invoke-static {v0, v6}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 901
    .line 902
    .line 903
    move-result-wide v31

    .line 904
    cmp-long v3, v31, v27

    .line 905
    .line 906
    if-eqz v3, :cond_29

    .line 907
    .line 908
    :goto_1d
    if-nez p5, :cond_2c

    .line 909
    .line 910
    :cond_2b
    const-wide/16 v6, 0x0

    .line 911
    .line 912
    goto :goto_1f

    .line 913
    :cond_2c
    sget-object v3, Liu;->EXPANSION:Liu;

    .line 914
    .line 915
    invoke-static {v3}, Lqx$a;->create$shouldUseRootSize(Liu;)Z

    .line 916
    .line 917
    .line 918
    move-result v3

    .line 919
    if-eqz v3, :cond_2d

    .line 920
    .line 921
    invoke-static {v0, v7}, Lqx$a;->create$getRootSize(Ljava/util/Map;Ljava/lang/String;)J

    .line 922
    .line 923
    .line 924
    move-result-wide v6

    .line 925
    goto :goto_1e

    .line 926
    :cond_2d
    sget-object v0, Lp93;->a:Lp93;

    .line 927
    .line 928
    invoke-virtual/range {p1 .. p1}, Lji;->getExpansionDir()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    invoke-virtual {v0, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 933
    .line 934
    .line 935
    move-result-wide v6

    .line 936
    :goto_1e
    cmp-long v0, v6, v27

    .line 937
    .line 938
    if-eqz v0, :cond_2b

    .line 939
    .line 940
    :goto_1f
    new-instance v3, Lqx;

    .line 941
    .line 942
    move-wide v15, v13

    .line 943
    move-wide v12, v8

    .line 944
    move-wide/from16 v8, v19

    .line 945
    .line 946
    move-wide/from16 v18, v15

    .line 947
    .line 948
    move-wide/from16 v15, v25

    .line 949
    .line 950
    move-wide/from16 v24, v6

    .line 951
    .line 952
    move-wide v6, v15

    .line 953
    move-wide/from16 v20, v1

    .line 954
    .line 955
    move-wide v14, v4

    .line 956
    move-wide/from16 v16, v10

    .line 957
    .line 958
    move-wide/from16 v4, v22

    .line 959
    .line 960
    move-wide/from16 v10, v29

    .line 961
    .line 962
    move-wide/from16 v22, v31

    .line 963
    .line 964
    invoke-direct/range {v3 .. v25}, Lqx;-><init>(JJJJJJJJJJJ)V

    .line 965
    .line 966
    .line 967
    return-object v3
.end method
