.class public final Lbo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ln81;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Le40;

.field public g:Le40;

.field public final h:Lco6;

.field public final i:J

.field public final j:Ltr9;

.field public final k:Ljava/util/LinkedHashSet;

.field public final l:Ljava/util/LinkedHashSet;

.field public final m:Ljava/util/ArrayList;

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lbo6;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lbo6;->e:Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v0, Lco6;->a:Lco6;

    .line 19
    .line 20
    iput-object v0, p0, Lbo6;->h:Lco6;

    .line 21
    .line 22
    const-wide/16 v0, -0x1

    .line 23
    .line 24
    iput-wide v0, p0, Lbo6;->i:J

    .line 25
    .line 26
    new-instance v0, Ltr9;

    .line 27
    .line 28
    const/16 v1, 0xe

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ltr9;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lbo6;->j:Ltr9;

    .line 34
    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lbo6;->k:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lbo6;->l:Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    new-instance v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lbo6;->m:Ljava/util/ArrayList;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lbo6;->n:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lbo6;->q:Z

    .line 60
    .line 61
    const-class v0, Lorg/swiftapps/swiftbackup/database/MDatabase;

    .line 62
    .line 63
    invoke-static {v0}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lbo6;->a:Ln81;

    .line 68
    .line 69
    iput-object p1, p0, Lbo6;->b:Landroid/content/Context;

    .line 70
    .line 71
    const-string p1, "swiftbackup-db"

    .line 72
    .line 73
    iput-object p1, p0, Lbo6;->c:Ljava/lang/String;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final a()Leo6;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lbo6;->f:Le40;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lbo6;->g:Le40;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v1, Lf40;->f:Le40;

    .line 12
    .line 13
    iput-object v1, v0, Lbo6;->g:Le40;

    .line 14
    .line 15
    iput-object v1, v0, Lbo6;->f:Le40;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Lbo6;->g:Le40;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iput-object v1, v0, Lbo6;->g:Le40;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Lbo6;->g:Le40;

    .line 30
    .line 31
    iput-object v1, v0, Lbo6;->f:Le40;

    .line 32
    .line 33
    :cond_2
    :goto_0
    iget-object v1, v0, Lbo6;->l:Ljava/util/LinkedHashSet;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object v15, v0, Lbo6;->k:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/Number;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 82
    .line 83
    invoke-static {v2, v0}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_4
    new-instance v5, Llv1;

    .line 92
    .line 93
    const/16 v1, 0x10

    .line 94
    .line 95
    invoke-direct {v5, v1}, Llv1;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iget-wide v1, v0, Lbo6;->i:J

    .line 99
    .line 100
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    cmp-long v1, v1, v6

    .line 103
    .line 104
    const-string v2, "Required value was null."

    .line 105
    .line 106
    if-lez v1, :cond_6

    .line 107
    .line 108
    iget-object v0, v0, Lbo6;->c:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    invoke-static {v2}, Lc6;->f(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :cond_5
    const-string v0, "Cannot create auto-closing database for an in-memory database."

    .line 117
    .line 118
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :cond_6
    move-object v1, v2

    .line 123
    new-instance v2, Lvc2;

    .line 124
    .line 125
    iget-object v4, v0, Lbo6;->h:Lco6;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-object v6, v3

    .line 131
    iget-object v3, v0, Lbo6;->b:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    sget-object v7, Lco6;->a:Lco6;

    .line 137
    .line 138
    sget-object v8, Lco6;->c:Lco6;

    .line 139
    .line 140
    if-eq v4, v7, :cond_7

    .line 141
    .line 142
    :goto_2
    move-object v9, v4

    .line 143
    goto :goto_4

    .line 144
    :cond_7
    const-string v4, "activity"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    instance-of v7, v4, Landroid/app/ActivityManager;

    .line 151
    .line 152
    if-eqz v7, :cond_8

    .line 153
    .line 154
    check-cast v4, Landroid/app/ActivityManager;

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    move-object v4, v6

    .line 158
    :goto_3
    if-eqz v4, :cond_9

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_9

    .line 165
    .line 166
    move-object v9, v8

    .line 167
    goto :goto_4

    .line 168
    :cond_9
    sget-object v4, Lco6;->b:Lco6;

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :goto_4
    iget-object v10, v0, Lbo6;->f:Le40;

    .line 172
    .line 173
    if-eqz v10, :cond_3b

    .line 174
    .line 175
    iget-object v11, v0, Lbo6;->g:Le40;

    .line 176
    .line 177
    if-eqz v11, :cond_3a

    .line 178
    .line 179
    iget-boolean v13, v0, Lbo6;->n:Z

    .line 180
    .line 181
    iget-boolean v14, v0, Lbo6;->o:Z

    .line 182
    .line 183
    iget-boolean v1, v0, Lbo6;->p:Z

    .line 184
    .line 185
    const/16 v22, 0x0

    .line 186
    .line 187
    const/16 v23, 0x0

    .line 188
    .line 189
    iget-object v4, v0, Lbo6;->c:Ljava/lang/String;

    .line 190
    .line 191
    move-object v7, v6

    .line 192
    iget-object v6, v0, Lbo6;->j:Ltr9;

    .line 193
    .line 194
    move-object v12, v7

    .line 195
    iget-object v7, v0, Lbo6;->d:Ljava/util/ArrayList;

    .line 196
    .line 197
    move-object/from16 v16, v8

    .line 198
    .line 199
    move-object/from16 v17, v12

    .line 200
    .line 201
    move-object/from16 v18, v16

    .line 202
    .line 203
    const/16 v16, 0x0

    .line 204
    .line 205
    move-object/from16 v19, v17

    .line 206
    .line 207
    const/16 v17, 0x0

    .line 208
    .line 209
    move-object/from16 v20, v18

    .line 210
    .line 211
    const/16 v18, 0x0

    .line 212
    .line 213
    iget-object v8, v0, Lbo6;->e:Ljava/util/ArrayList;

    .line 214
    .line 215
    iget-object v12, v0, Lbo6;->m:Ljava/util/ArrayList;

    .line 216
    .line 217
    move/from16 v21, v1

    .line 218
    .line 219
    move-object/from16 v1, v19

    .line 220
    .line 221
    move-object/from16 v24, v20

    .line 222
    .line 223
    move-object/from16 v19, v8

    .line 224
    .line 225
    move-object/from16 v20, v12

    .line 226
    .line 227
    const/4 v8, 0x0

    .line 228
    const/4 v12, 0x0

    .line 229
    invoke-direct/range {v2 .. v23}, Lvc2;-><init>(Landroid/content/Context;Ljava/lang/String;Llv1;Ltr9;Ljava/util/List;ZLco6;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLgw6;Lox1;)V

    .line 230
    .line 231
    .line 232
    iget-boolean v3, v0, Lbo6;->q:Z

    .line 233
    .line 234
    iput-boolean v3, v2, Lvc2;->q:Z

    .line 235
    .line 236
    iget-object v0, v0, Lbo6;->a:Ln81;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ln81;->a()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v4, ""

    .line 253
    .line 254
    if-eqz v0, :cond_a

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-nez v0, :cond_b

    .line 261
    .line 262
    :cond_a
    move-object v0, v4

    .line 263
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    const/4 v7, 0x1

    .line 275
    if-nez v6, :cond_c

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    add-int/2addr v6, v7

    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    :goto_5
    const/16 v6, 0x5f

    .line 288
    .line 289
    const/16 v8, 0x2e

    .line 290
    .line 291
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    const-string v6, "_Impl"

    .line 299
    .line 300
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-nez v6, :cond_d

    .line 309
    .line 310
    move-object v0, v5

    .line 311
    goto :goto_6

    .line 312
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-static {v0, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 349
    move-object v10, v0

    .line 350
    check-cast v10, Leo6;

    .line 351
    .line 352
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    iget-boolean v0, v2, Lvc2;->q:Z

    .line 356
    .line 357
    iput-boolean v0, v10, Leo6;->j:Z

    .line 358
    .line 359
    :try_start_1
    invoke-virtual {v10}, Leo6;->c()Lgu2;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lio5; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catch_0
    move-object v3, v1

    .line 368
    :goto_7
    sget-object v5, Lov2;->a:Lov2;

    .line 369
    .line 370
    const/4 v6, -0x1

    .line 371
    iget-object v15, v2, Lvc2;->i:Ljava/util/concurrent/Executor;

    .line 372
    .line 373
    iget-object v8, v2, Lvc2;->h:Ljava/util/concurrent/Executor;

    .line 374
    .line 375
    iget-object v9, v2, Lvc2;->m:Ljava/util/List;

    .line 376
    .line 377
    iget-object v11, v2, Lvc2;->n:Ljava/util/List;

    .line 378
    .line 379
    iget-object v12, v2, Lvc2;->a:Landroid/content/Context;

    .line 380
    .line 381
    iget-object v13, v2, Lvc2;->e:Ljava/util/List;

    .line 382
    .line 383
    if-eqz v3, :cond_37

    .line 384
    .line 385
    new-instance v4, Lmi2;

    .line 386
    .line 387
    move-object v14, v8

    .line 388
    new-instance v8, Ldo6;

    .line 389
    .line 390
    move-object/from16 v16, v13

    .line 391
    .line 392
    const-string v13, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 393
    .line 394
    move-object/from16 v17, v14

    .line 395
    .line 396
    const/4 v14, 0x1

    .line 397
    move-object/from16 v18, v9

    .line 398
    .line 399
    const/4 v9, 0x2

    .line 400
    move-object/from16 v19, v11

    .line 401
    .line 402
    const-class v11, Lho6;

    .line 403
    .line 404
    move-object/from16 v20, v12

    .line 405
    .line 406
    const-string v12, "compatTransactionCoroutineExecute"

    .line 407
    .line 408
    move-object/from16 v0, v17

    .line 409
    .line 410
    invoke-direct/range {v8 .. v14}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    .line 412
    .line 413
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 414
    .line 415
    .line 416
    iput-object v2, v4, Lmi2;->c:Ljava/lang/Object;

    .line 417
    .line 418
    iput-object v3, v4, Lmi2;->d:Ljava/lang/Object;

    .line 419
    .line 420
    if-nez v16, :cond_e

    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_e
    move-object/from16 v5, v16

    .line 424
    .line 425
    :goto_8
    iput-object v5, v4, Lmi2;->e:Ljava/util/List;

    .line 426
    .line 427
    const-string v5, ":memory:"

    .line 428
    .line 429
    iget-object v9, v2, Lvc2;->g:Lco6;

    .line 430
    .line 431
    iget-object v11, v2, Lvc2;->p:Lgw6;

    .line 432
    .line 433
    iget-object v12, v2, Lvc2;->b:Ljava/lang/String;

    .line 434
    .line 435
    if-nez v11, :cond_11

    .line 436
    .line 437
    iget-object v11, v2, Lvc2;->c:Llv1;

    .line 438
    .line 439
    if-eqz v11, :cond_10

    .line 440
    .line 441
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    .line 443
    .line 444
    new-instance v11, Lkh5;

    .line 445
    .line 446
    iget v3, v3, Lgu2;->a:I

    .line 447
    .line 448
    invoke-direct {v11, v4, v3}, Lkh5;-><init>(Lmi2;I)V

    .line 449
    .line 450
    .line 451
    new-instance v3, Lns3;

    .line 452
    .line 453
    move-object/from16 v13, v20

    .line 454
    .line 455
    invoke-direct {v3, v13, v12, v11}, Lns3;-><init>(Landroid/content/Context;Ljava/lang/String;Lkh5;)V

    .line 456
    .line 457
    .line 458
    iput-object v3, v4, Lmi2;->g:Ljava/lang/Object;

    .line 459
    .line 460
    new-instance v11, Lqx5;

    .line 461
    .line 462
    new-instance v13, Lln5;

    .line 463
    .line 464
    invoke-direct {v13, v3}, Lln5;-><init>(Lns7;)V

    .line 465
    .line 466
    .line 467
    if-nez v12, :cond_f

    .line 468
    .line 469
    goto :goto_9

    .line 470
    :cond_f
    move-object v5, v12

    .line 471
    :goto_9
    invoke-direct {v11, v13, v5, v8}, Lqx5;-><init>(Lgw6;Ljava/lang/String;Lqt3;)V

    .line 472
    .line 473
    .line 474
    iput-object v11, v4, Lmi2;->f:Ljava/lang/Object;

    .line 475
    .line 476
    :goto_a
    move-object/from16 v3, v24

    .line 477
    .line 478
    goto/16 :goto_f

    .line 479
    .line 480
    :cond_10
    const-string v0, "SQLiteManager was constructed with both null driver and open helper factory!"

    .line 481
    .line 482
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v1

    .line 486
    :cond_11
    iput-object v1, v4, Lmi2;->g:Ljava/lang/Object;

    .line 487
    .line 488
    invoke-interface {v11}, Lgw6;->k()Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    if-eqz v3, :cond_13

    .line 493
    .line 494
    new-instance v3, Lqx5;

    .line 495
    .line 496
    new-instance v13, Lcd;

    .line 497
    .line 498
    invoke-direct {v13, v4, v11}, Lcd;-><init>(Lmi2;Lgw6;)V

    .line 499
    .line 500
    .line 501
    if-nez v12, :cond_12

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_12
    move-object v5, v12

    .line 505
    :goto_b
    invoke-direct {v3, v13, v5, v8}, Lqx5;-><init>(Lgw6;Ljava/lang/String;Lqt3;)V

    .line 506
    .line 507
    .line 508
    goto :goto_e

    .line 509
    :cond_13
    if-nez v12, :cond_14

    .line 510
    .line 511
    new-instance v3, Lcd;

    .line 512
    .line 513
    invoke-direct {v3, v4, v11}, Lcd;-><init>(Lmi2;Lgw6;)V

    .line 514
    .line 515
    .line 516
    new-instance v5, Lgs1;

    .line 517
    .line 518
    invoke-direct {v5, v3}, Lgs1;-><init>(Lcd;)V

    .line 519
    .line 520
    .line 521
    move-object v3, v5

    .line 522
    goto :goto_e

    .line 523
    :cond_14
    new-instance v3, Lcd;

    .line 524
    .line 525
    invoke-direct {v3, v4, v11}, Lcd;-><init>(Lmi2;Lgw6;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    const/16 v8, 0x27

    .line 533
    .line 534
    const/4 v11, 0x2

    .line 535
    if-eq v5, v7, :cond_16

    .line 536
    .line 537
    if-ne v5, v11, :cond_15

    .line 538
    .line 539
    const/4 v5, 0x4

    .line 540
    goto :goto_c

    .line 541
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 542
    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    const-string v2, "Can\'t get max number of reader for journal mode \'"

    .line 546
    .line 547
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    throw v0

    .line 568
    :cond_16
    move v5, v7

    .line 569
    :goto_c
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 570
    .line 571
    .line 572
    move-result v13

    .line 573
    if-eq v13, v7, :cond_18

    .line 574
    .line 575
    if-ne v13, v11, :cond_17

    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 579
    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v2, "Can\'t get max number of writers for journal mode \'"

    .line 583
    .line 584
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :cond_18
    :goto_d
    new-instance v8, Lgs1;

    .line 606
    .line 607
    invoke-direct {v8, v3, v12, v5}, Lgs1;-><init>(Lcd;Ljava/lang/String;I)V

    .line 608
    .line 609
    .line 610
    move-object v3, v8

    .line 611
    :goto_e
    iput-object v3, v4, Lmi2;->f:Ljava/lang/Object;

    .line 612
    .line 613
    goto/16 :goto_a

    .line 614
    .line 615
    :goto_f
    if-ne v9, v3, :cond_19

    .line 616
    .line 617
    move v3, v7

    .line 618
    goto :goto_10

    .line 619
    :cond_19
    const/4 v3, 0x0

    .line 620
    :goto_10
    iget-object v5, v4, Lmi2;->g:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v5, Lns7;

    .line 623
    .line 624
    if-eqz v5, :cond_1a

    .line 625
    .line 626
    invoke-interface {v5, v3}, Lns7;->setWriteAheadLoggingEnabled(Z)V

    .line 627
    .line 628
    .line 629
    :cond_1a
    iput-object v4, v10, Leo6;->d:Lmi2;

    .line 630
    .line 631
    invoke-virtual {v10}, Leo6;->b()Lkg4;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    iput-object v3, v10, Leo6;->e:Lkg4;

    .line 636
    .line 637
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 638
    .line 639
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v10}, Leo6;->f()Ljava/util/Set;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    new-array v8, v5, [Z

    .line 651
    .line 652
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 657
    .line 658
    .line 659
    move-result v9

    .line 660
    if-eqz v9, :cond_1f

    .line 661
    .line 662
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    check-cast v9, Ln81;

    .line 667
    .line 668
    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->size()I

    .line 669
    .line 670
    .line 671
    move-result v11

    .line 672
    add-int/2addr v11, v6

    .line 673
    if-ltz v11, :cond_1d

    .line 674
    .line 675
    :goto_12
    add-int/lit8 v12, v11, -0x1

    .line 676
    .line 677
    move-object/from16 v14, v19

    .line 678
    .line 679
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v13

    .line 683
    invoke-virtual {v9, v13}, Ln81;->d(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v13

    .line 687
    if-eqz v13, :cond_1b

    .line 688
    .line 689
    aput-boolean v7, v8, v11

    .line 690
    .line 691
    goto :goto_14

    .line 692
    :cond_1b
    if-gez v12, :cond_1c

    .line 693
    .line 694
    goto :goto_13

    .line 695
    :cond_1c
    move v11, v12

    .line 696
    move-object/from16 v19, v14

    .line 697
    .line 698
    goto :goto_12

    .line 699
    :cond_1d
    move-object/from16 v14, v19

    .line 700
    .line 701
    :goto_13
    move v11, v6

    .line 702
    :goto_14
    if-ltz v11, :cond_1e

    .line 703
    .line 704
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v11

    .line 708
    invoke-interface {v3, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-object/from16 v19, v14

    .line 712
    .line 713
    goto :goto_11

    .line 714
    :cond_1e
    invoke-virtual {v9}, Ln81;->b()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    const-string v2, ") is missing in the database configuration."

    .line 719
    .line 720
    const-string v3, "A required auto migration spec ("

    .line 721
    .line 722
    invoke-static {v0, v2, v3}, Lc6;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    return-object v1

    .line 726
    :cond_1f
    move-object/from16 v14, v19

    .line 727
    .line 728
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 729
    .line 730
    .line 731
    move-result v4

    .line 732
    add-int/2addr v4, v6

    .line 733
    if-ltz v4, :cond_22

    .line 734
    .line 735
    :goto_15
    add-int/lit8 v9, v4, -0x1

    .line 736
    .line 737
    if-ge v4, v5, :cond_21

    .line 738
    .line 739
    aget-boolean v4, v8, v4

    .line 740
    .line 741
    if-eqz v4, :cond_21

    .line 742
    .line 743
    if-gez v9, :cond_20

    .line 744
    .line 745
    goto :goto_16

    .line 746
    :cond_20
    move v4, v9

    .line 747
    goto :goto_15

    .line 748
    :cond_21
    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 749
    .line 750
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    return-object v1

    .line 754
    :cond_22
    :goto_16
    invoke-virtual {v10, v3}, Leo6;->a(Ljava/util/LinkedHashMap;)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v3

    .line 758
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    if-nez v4, :cond_36

    .line 767
    .line 768
    invoke-virtual {v10}, Leo6;->g()Ljava/util/LinkedHashMap;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    new-array v4, v4, [Z

    .line 777
    .line 778
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 787
    .line 788
    .line 789
    move-result v5

    .line 790
    if-eqz v5, :cond_28

    .line 791
    .line 792
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    check-cast v5, Ljava/util/Map$Entry;

    .line 797
    .line 798
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v8

    .line 802
    check-cast v8, Ln81;

    .line 803
    .line 804
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    check-cast v5, Ljava/util/List;

    .line 809
    .line 810
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v9

    .line 818
    if-eqz v9, :cond_23

    .line 819
    .line 820
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v9

    .line 824
    check-cast v9, Ln81;

    .line 825
    .line 826
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    .line 827
    .line 828
    .line 829
    move-result v11

    .line 830
    add-int/2addr v11, v6

    .line 831
    if-ltz v11, :cond_26

    .line 832
    .line 833
    :goto_18
    add-int/lit8 v12, v11, -0x1

    .line 834
    .line 835
    move-object/from16 v13, v18

    .line 836
    .line 837
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v14

    .line 841
    invoke-virtual {v9, v14}, Ln81;->d(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v14

    .line 845
    if-eqz v14, :cond_24

    .line 846
    .line 847
    aput-boolean v7, v4, v11

    .line 848
    .line 849
    goto :goto_1a

    .line 850
    :cond_24
    if-gez v12, :cond_25

    .line 851
    .line 852
    goto :goto_19

    .line 853
    :cond_25
    move v11, v12

    .line 854
    move-object/from16 v18, v13

    .line 855
    .line 856
    goto :goto_18

    .line 857
    :cond_26
    move-object/from16 v13, v18

    .line 858
    .line 859
    :goto_19
    move v11, v6

    .line 860
    :goto_1a
    if-ltz v11, :cond_27

    .line 861
    .line 862
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v11

    .line 866
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    .line 871
    .line 872
    iget-object v12, v10, Leo6;->i:Ljava/util/LinkedHashMap;

    .line 873
    .line 874
    invoke-interface {v12, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-object/from16 v18, v13

    .line 878
    .line 879
    goto :goto_17

    .line 880
    :cond_27
    invoke-virtual {v9}, Ln81;->b()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {v8}, Ln81;->b()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    .line 889
    .line 890
    const-string v3, "A required type converter ("

    .line 891
    .line 892
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    const-string v0, ") for "

    .line 899
    .line 900
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    const-string v0, " is missing in the database configuration."

    .line 907
    .line 908
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    throw v1

    .line 925
    :cond_28
    move-object/from16 v13, v18

    .line 926
    .line 927
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    add-int/2addr v3, v6

    .line 932
    if-ltz v3, :cond_2b

    .line 933
    .line 934
    :goto_1b
    add-int/lit8 v5, v3, -0x1

    .line 935
    .line 936
    aget-boolean v6, v4, v3

    .line 937
    .line 938
    if-eqz v6, :cond_2a

    .line 939
    .line 940
    if-gez v5, :cond_29

    .line 941
    .line 942
    goto :goto_1c

    .line 943
    :cond_29
    move v3, v5

    .line 944
    goto :goto_1b

    .line 945
    :cond_2a
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    const-string v2, "Unexpected type converter "

    .line 950
    .line 951
    const-string v3, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 952
    .line 953
    invoke-static {v0, v3, v2}, Ld6;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 954
    .line 955
    .line 956
    return-object v1

    .line 957
    :cond_2b
    :goto_1c
    iput-object v0, v10, Leo6;->b:Ljava/util/concurrent/Executor;

    .line 958
    .line 959
    new-instance v0, Ld98;

    .line 960
    .line 961
    invoke-direct {v0, v15}, Ld98;-><init>(Ljava/util/concurrent/Executor;)V

    .line 962
    .line 963
    .line 964
    iput-object v0, v10, Leo6;->c:Ld98;

    .line 965
    .line 966
    iget-object v0, v10, Leo6;->b:Ljava/util/concurrent/Executor;

    .line 967
    .line 968
    if-eqz v0, :cond_35

    .line 969
    .line 970
    invoke-static {v0}, Lrs9;->e(Ljava/util/concurrent/Executor;)Lrx1;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    invoke-static {}, Lzm5;->a()Lfs7;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    invoke-static {v0, v3}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    invoke-static {v0}, Ll73;->c(Lox1;)Ldv1;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    iput-object v0, v10, Leo6;->a:Ldv1;

    .line 987
    .line 988
    iget-object v0, v0, Ldv1;->a:Lox1;

    .line 989
    .line 990
    iget-object v3, v10, Leo6;->c:Ld98;

    .line 991
    .line 992
    if-eqz v3, :cond_34

    .line 993
    .line 994
    invoke-static {v3}, Lrs9;->e(Ljava/util/concurrent/Executor;)Lrx1;

    .line 995
    .line 996
    .line 997
    move-result-object v3

    .line 998
    invoke-interface {v0, v3}, Lox1;->plus(Lox1;)Lox1;

    .line 999
    .line 1000
    .line 1001
    iget-boolean v0, v2, Lvc2;->f:Z

    .line 1002
    .line 1003
    iput-boolean v0, v10, Leo6;->g:Z

    .line 1004
    .line 1005
    iget-object v0, v10, Leo6;->d:Lmi2;

    .line 1006
    .line 1007
    const-string v2, "connectionManager"

    .line 1008
    .line 1009
    if-eqz v0, :cond_33

    .line 1010
    .line 1011
    iget-object v0, v0, Lmi2;->g:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v0, Lns7;

    .line 1014
    .line 1015
    if-nez v0, :cond_2d

    .line 1016
    .line 1017
    :cond_2c
    move-object v3, v1

    .line 1018
    goto :goto_1e

    .line 1019
    :cond_2d
    move-object v3, v0

    .line 1020
    :goto_1d
    nop

    .line 1021
    instance-of v0, v3, Ll36;

    .line 1022
    .line 1023
    if-eqz v0, :cond_2e

    .line 1024
    .line 1025
    goto :goto_1e

    .line 1026
    :cond_2e
    instance-of v0, v3, Lsg2;

    .line 1027
    .line 1028
    if-eqz v0, :cond_2c

    .line 1029
    .line 1030
    check-cast v3, Lsg2;

    .line 1031
    .line 1032
    invoke-interface {v3}, Lsg2;->a()Lns7;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v3

    .line 1036
    goto :goto_1d

    .line 1037
    :goto_1e
    check-cast v3, Ll36;

    .line 1038
    .line 1039
    iget-object v0, v10, Leo6;->d:Lmi2;

    .line 1040
    .line 1041
    if-eqz v0, :cond_32

    .line 1042
    .line 1043
    iget-object v0, v0, Lmi2;->g:Ljava/lang/Object;

    .line 1044
    .line 1045
    check-cast v0, Lns7;

    .line 1046
    .line 1047
    if-nez v0, :cond_30

    .line 1048
    .line 1049
    :cond_2f
    move-object v3, v1

    .line 1050
    goto :goto_20

    .line 1051
    :cond_30
    move-object v3, v0

    .line 1052
    :goto_1f
    nop

    .line 1053
    instance-of v0, v3, Ly90;

    .line 1054
    .line 1055
    if-eqz v0, :cond_31

    .line 1056
    .line 1057
    goto :goto_20

    .line 1058
    :cond_31
    instance-of v0, v3, Lsg2;

    .line 1059
    .line 1060
    if-eqz v0, :cond_2f

    .line 1061
    .line 1062
    check-cast v3, Lsg2;

    .line 1063
    .line 1064
    invoke-interface {v3}, Lsg2;->a()Lns7;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    goto :goto_1f

    .line 1069
    :goto_20
    check-cast v3, Ly90;

    .line 1070
    .line 1071
    return-object v10

    .line 1072
    :cond_32
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    throw v1

    .line 1076
    :cond_33
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    throw v1

    .line 1080
    :cond_34
    const-string v0, "internalTransactionExecutor"

    .line 1081
    .line 1082
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    throw v1

    .line 1086
    :cond_35
    const-string v0, "internalQueryExecutor"

    .line 1087
    .line 1088
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    throw v1

    .line 1092
    :cond_36
    invoke-static {v3}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    throw v0

    .line 1097
    :cond_37
    move-object v0, v8

    .line 1098
    move-object/from16 v18, v9

    .line 1099
    .line 1100
    move-object v14, v11

    .line 1101
    move-object/from16 v16, v13

    .line 1102
    .line 1103
    move-object v13, v12

    .line 1104
    new-instance v1, Lmi2;

    .line 1105
    .line 1106
    new-instance v3, Ldq;

    .line 1107
    .line 1108
    invoke-direct {v3, v10}, Ldq;-><init>(Leo6;)V

    .line 1109
    .line 1110
    .line 1111
    new-instance v8, Lh11;

    .line 1112
    .line 1113
    move-object/from16 v19, v14

    .line 1114
    .line 1115
    const/4 v14, 0x1

    .line 1116
    move-object v3, v15

    .line 1117
    const/4 v15, 0x2

    .line 1118
    const/4 v9, 0x2

    .line 1119
    const-class v11, Lho6;

    .line 1120
    .line 1121
    const-string v12, "compatTransactionCoroutineExecute"

    .line 1122
    .line 1123
    move-object/from16 v20, v13

    .line 1124
    .line 1125
    const-string v13, "compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    .line 1126
    .line 1127
    invoke-direct/range {v8 .. v15}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1128
    .line 1129
    .line 1130
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1131
    .line 1132
    .line 1133
    iput-object v2, v1, Lmi2;->c:Ljava/lang/Object;

    .line 1134
    .line 1135
    new-instance v7, Lzn6;

    .line 1136
    .line 1137
    invoke-direct {v7, v6, v4, v4}, Lgu2;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    .line 1138
    .line 1139
    .line 1140
    iput-object v7, v1, Lmi2;->d:Ljava/lang/Object;

    .line 1141
    .line 1142
    if-nez v16, :cond_38

    .line 1143
    .line 1144
    move-object v13, v5

    .line 1145
    goto :goto_21

    .line 1146
    :cond_38
    move-object/from16 v13, v16

    .line 1147
    .line 1148
    :goto_21
    iput-object v13, v1, Lmi2;->e:Ljava/util/List;

    .line 1149
    .line 1150
    new-instance v4, Llm;

    .line 1151
    .line 1152
    const/16 v6, 0x11

    .line 1153
    .line 1154
    invoke-direct {v4, v1, v6}, Llm;-><init>(Ljava/lang/Object;I)V

    .line 1155
    .line 1156
    .line 1157
    if-nez v16, :cond_39

    .line 1158
    .line 1159
    goto :goto_22

    .line 1160
    :cond_39
    move-object/from16 v5, v16

    .line 1161
    .line 1162
    :goto_22
    new-instance v1, Lao6;

    .line 1163
    .line 1164
    invoke-direct {v1, v4}, Lao6;-><init>(Llm;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-static {v1, v5}, Lel1;->f1(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1171
    .line 1172
    .line 1173
    iget-object v1, v2, Lvc2;->d:Ltr9;

    .line 1174
    .line 1175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1188
    .line 1189
    .line 1190
    new-instance v0, Lio5;

    .line 1191
    .line 1192
    const/4 v1, 0x0

    .line 1193
    invoke-direct {v0, v1}, Lio5;-><init>(I)V

    .line 1194
    .line 1195
    .line 1196
    throw v0

    .line 1197
    :catch_1
    move-exception v0

    .line 1198
    goto :goto_23

    .line 1199
    :catch_2
    move-exception v0

    .line 1200
    goto :goto_24

    .line 1201
    :catch_3
    move-exception v0

    .line 1202
    goto :goto_25

    .line 1203
    :goto_23
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1204
    .line 1205
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v2

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    const-string v4, "Failed to create an instance of "

    .line 1212
    .line 1213
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v2

    .line 1223
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1224
    .line 1225
    .line 1226
    throw v1

    .line 1227
    :goto_24
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1228
    .line 1229
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    const-string v4, "Cannot access the constructor "

    .line 1236
    .line 1237
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1248
    .line 1249
    .line 1250
    throw v1

    .line 1251
    :goto_25
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1252
    .line 1253
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v2

    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    const-string v4, "Cannot find implementation for "

    .line 1260
    .line 1261
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    const-string v2, ". "

    .line 1268
    .line 1269
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    const-string v2, " does not exist. Is Room annotation processor correctly configured?"

    .line 1276
    .line 1277
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1285
    .line 1286
    .line 1287
    throw v1

    .line 1288
    :cond_3a
    move-object/from16 v17, v6

    .line 1289
    .line 1290
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 1291
    .line 1292
    .line 1293
    return-object v17

    .line 1294
    :cond_3b
    move-object/from16 v17, v6

    .line 1295
    .line 1296
    invoke-static {v1}, Lc6;->f(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    return-object v17
.end method
