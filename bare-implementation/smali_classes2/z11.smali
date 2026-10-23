.class public final Lz11;
.super Lpw6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/List;

.field public final o:Ljava/lang/String;

.field public p:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    new-instance v0, Lxy7;

    .line 2
    .line 3
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 4
    .line 5
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, v2}, Lxy7;-><init>(Ljava/util/List;Z)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lw11;

    .line 14
    .line 15
    invoke-direct {v1}, Lw11;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CallsTask"

    .line 22
    .line 23
    iput-object v0, p0, Lz11;->m:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p2, p0, Lz11;->n:Ljava/util/List;

    .line 26
    .line 27
    iput-object p1, p0, Lz11;->o:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lzy7;)V
    .locals 1

    .line 30
    new-instance v0, Lw11;

    invoke-direct {v0}, Lw11;-><init>()V

    invoke-direct {p0, p2, v0}, Lpw6;-><init>(Lcz7;Ldz7;)V

    .line 31
    const-string p2, "CallsTask"

    iput-object p2, p0, Lz11;->m:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lz11;->n:Ljava/util/List;

    return-void
.end method

.method public static final p(Lz11;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x22

    .line 7
    .line 8
    if-lt p0, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/16 v0, 0x1d

    .line 16
    .line 17
    if-lt p0, v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 20
    .line 21
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    array-length p1, p0

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    aget p0, p0, p1

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    if-eqz p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_2
    const/4 p0, -0x1

    .line 59
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lpw6;->a:Lcz7;

    .line 4
    .line 5
    instance-of v3, v2, Lxy7;

    .line 6
    .line 7
    iget-object v4, v1, Lz11;->n:Ljava/util/List;

    .line 8
    .line 9
    iget-object v5, v1, Lpw6;->i:Lex6;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    move-object v0, v2

    .line 16
    check-cast v0, Lzy7;

    .line 17
    .line 18
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 19
    .line 20
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    const v9, 0x7f130086

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v5, v8}, Lzy4;->i(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lxy7;

    .line 35
    .line 36
    iget-boolean v8, v0, Lxy7;->f:Z

    .line 37
    .line 38
    if-eqz v8, :cond_1

    .line 39
    .line 40
    new-instance v0, Lq63;

    .line 41
    .line 42
    iget-object v8, v1, Lz11;->o:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    invoke-direct {v0, v8, v9}, Lq63;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lz11;->s(Lq63;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    move-object/from16 v16, v7

    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :cond_1
    iget-object v0, v0, Lxy7;->e:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {}, Ld01;->h()Lq63;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Lq63;->j()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_2

    .line 69
    .line 70
    invoke-static {v8}, Lq63;->E(Lq63;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {}, Ld01;->h()Lq63;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    const-string v10, "call_logs"

    .line 78
    .line 79
    invoke-virtual {v9, v10}, Lq63;->J(Ljava/lang/String;)Lq63;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v9}, Lq63;->h()Z

    .line 84
    .line 85
    .line 86
    sget-object v10, Lw14;->a:Lgv7;

    .line 87
    .line 88
    sget-object v10, Lsz0;->Companion:Lsz0$a;

    .line 89
    .line 90
    invoke-virtual {v10, v4}, Lsz0$a;->wrapList(Ljava/util/List;)Lsz0;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-static {v10, v9}, Lw14;->f(Ljava/lang/Object;Lq63;)Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    iget-object v11, v1, Lpw6;->b:Ldz7;

    .line 99
    .line 100
    if-nez v10, :cond_3

    .line 101
    .line 102
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 103
    .line 104
    const/16 v16, 0x4

    .line 105
    .line 106
    const/16 v17, 0x0

    .line 107
    .line 108
    iget-object v13, v1, Lz11;->m:Ljava/lang/String;

    .line 109
    .line 110
    const-string v14, "Failed to save call logs!"

    .line 111
    .line 112
    const/4 v15, 0x0

    .line 113
    invoke-static/range {v12 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    check-cast v11, Lw11;

    .line 117
    .line 118
    invoke-virtual {v9}, Lq63;->v()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v11, v0}, Lw11;->a(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-static {v0}, Lji8;->t(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_4

    .line 131
    .line 132
    sget-object v9, Lry5;->u:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v6, v7}, Lqy5;->f(ZLzn7;)Lry5;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    iget-object v9, v9, Lry5;->m:Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    sget-object v9, Lry5;->u:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v6, v7}, Lqy5;->f(ZLzn7;)Lry5;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    iget-object v9, v9, Lry5;->l:Ljava/lang/String;

    .line 148
    .line 149
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 154
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 156
    .line 157
    .line 158
    move-result-wide v13

    .line 159
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    sget-object v14, Ltb1;->a:Ltb1;

    .line 168
    .line 169
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    const-string v15, "cls"

    .line 174
    .line 175
    move-object/from16 v16, v7

    .line 176
    .line 177
    const-string v7, "v3"

    .line 178
    .line 179
    filled-new-array {v7, v13, v10, v14, v15}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    const/4 v10, 0x5

    .line 184
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const-string v10, "%s.%d.%d.%s.%s"

    .line 189
    .line 190
    invoke-static {v12, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    new-instance v10, Lq63;

    .line 195
    .line 196
    const/4 v12, 0x2

    .line 197
    invoke-direct {v10, v9, v7, v12}, Lq63;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    invoke-static {v10}, Lio4;->g(Lq63;)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lyx5;->j()Lux5;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-static {v7}, Lyx5;->g(Lux5;)[C

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    :try_start_0
    sget-object v9, Lmz6;->a:Ljava/util/HashSet;

    .line 212
    .line 213
    const-string v9, "compression_level_calls"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .line 215
    const/4 v13, -0x1

    .line 216
    :try_start_1
    sget-object v14, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 217
    .line 218
    if-eqz v14, :cond_5

    .line 219
    .line 220
    invoke-interface {v14, v9, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    goto :goto_2

    .line 225
    :cond_5
    const-string v9, "prefs"

    .line 226
    .line 227
    invoke-static {v9}, Lpe4;->F(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v16
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :catch_0
    :goto_2
    :try_start_2
    sget-object v9, Lxp1;->Companion:Lwp1;

    .line 232
    .line 233
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lwp1;->a()[Lxp1;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    move v14, v6

    .line 241
    :goto_3
    if-ge v14, v12, :cond_7

    .line 242
    .line 243
    aget-object v15, v9, v14

    .line 244
    .line 245
    invoke-virtual {v15}, Lxp1;->getLevel()I

    .line 246
    .line 247
    .line 248
    move-result v12

    .line 249
    if-ne v12, v13, :cond_6

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 253
    .line 254
    const/4 v12, 0x2

    .line 255
    goto :goto_3

    .line 256
    :cond_7
    move-object/from16 v15, v16

    .line 257
    .line 258
    :goto_4
    if-nez v15, :cond_8

    .line 259
    .line 260
    sget-object v9, Lxp1;->Companion:Lwp1;

    .line 261
    .line 262
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Lxp1;->access$getDEFAULT$cp()Lxp1;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    :cond_8
    const-string v9, "swiftbackup.calls.v3"

    .line 270
    .line 271
    invoke-static {v8, v10, v7, v15, v9}, Lmz6;->e(Lq63;Lq63;[CLxp1;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .line 273
    .line 274
    array-length v8, v7

    .line 275
    invoke-static {v7, v6, v8, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 276
    .line 277
    .line 278
    invoke-static {v6}, Ld01;->c(Z)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lpw6;->i()Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-nez v7, :cond_9

    .line 286
    .line 287
    sget-object v7, Lq05;->CLOUD:Lq05;

    .line 288
    .line 289
    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_9

    .line 294
    .line 295
    invoke-virtual {v1, v10}, Lz11;->s(Lq63;)V

    .line 296
    .line 297
    .line 298
    goto :goto_6

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    goto :goto_5

    .line 301
    :catch_1
    move-exception v0

    .line 302
    move-object/from16 v20, v0

    .line 303
    .line 304
    :try_start_3
    sget-object v17, Lvr6;->INSTANCE:Lvr6;

    .line 305
    .line 306
    iget-object v0, v1, Lz11;->m:Ljava/lang/String;

    .line 307
    .line 308
    const-string v19, "Failed to create SBA calls backup"

    .line 309
    .line 310
    const/16 v22, 0x8

    .line 311
    .line 312
    const/16 v23, 0x0

    .line 313
    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    move-object/from16 v18, v0

    .line 317
    .line 318
    invoke-static/range {v17 .. v23}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    .line 320
    .line 321
    array-length v0, v7

    .line 322
    invoke-static {v7, v6, v0, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 323
    .line 324
    .line 325
    check-cast v11, Lw11;

    .line 326
    .line 327
    invoke-virtual {v10}, Lq63;->v()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v11, v0}, Lw11;->a(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    goto :goto_6

    .line 335
    :goto_5
    array-length v1, v7

    .line 336
    invoke-static {v7, v6, v1, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_9
    :goto_6
    instance-of v0, v2, Lyy7;

    .line 341
    .line 342
    if-eqz v0, :cond_b

    .line 343
    .line 344
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 345
    .line 346
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const v7, 0x7f130491

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v5, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Lxf5;

    .line 361
    .line 362
    invoke-direct {v0}, Lxf5;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    move v7, v6

    .line 370
    :cond_a
    if-ge v7, v5, :cond_b

    .line 371
    .line 372
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    check-cast v8, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 377
    .line 378
    invoke-virtual {v1, v0, v8, v6}, Lz11;->r(Lxf5;Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;I)V

    .line 379
    .line 380
    .line 381
    add-int/lit8 v7, v7, 0x1

    .line 382
    .line 383
    invoke-virtual {v1, v7}, Lpw6;->n(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Lpw6;->i()Z

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    if-eqz v8, :cond_a

    .line 391
    .line 392
    :cond_b
    iget-object v0, v1, Lz11;->m:Ljava/lang/String;

    .line 393
    .line 394
    const-string v1, "Cleaning cloud cache on device"

    .line 395
    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    sget-boolean v0, Lq63;->d:Z

    .line 400
    .line 401
    sget-object v0, Lry5;->u:Ljava/lang/String;

    .line 402
    .line 403
    move-object/from16 v1, v16

    .line 404
    .line 405
    invoke-static {v6, v1}, Lqy5;->f(ZLzn7;)Lry5;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget-object v0, v0, Lry5;->m:Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {v0}, Lcy0;->g(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    if-eqz v3, :cond_e

    .line 415
    .line 416
    check-cast v2, Lzy7;

    .line 417
    .line 418
    check-cast v2, Lxy7;

    .line 419
    .line 420
    iget-object v0, v2, Lxy7;->e:Ljava/util/List;

    .line 421
    .line 422
    sget-object v1, Lq05;->CLOUD:Lq05;

    .line 423
    .line 424
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-nez v0, :cond_d

    .line 429
    .line 430
    iget-boolean v0, v2, Lxy7;->f:Z

    .line 431
    .line 432
    if-eqz v0, :cond_c

    .line 433
    .line 434
    goto :goto_7

    .line 435
    :cond_c
    sget-object v0, Lpz0;->LOCAL:Lpz0;

    .line 436
    .line 437
    goto :goto_8

    .line 438
    :cond_d
    :goto_7
    sget-object v0, Lpz0;->LOCAL_AND_CLOUD:Lpz0;

    .line 439
    .line 440
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    .line 442
    .line 443
    new-instance v1, Lqz0;

    .line 444
    .line 445
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 446
    .line 447
    .line 448
    iput-object v0, v1, Lqz0;->a:Lpz0;

    .line 449
    .line 450
    invoke-static {}, Lny2;->b()Lny2;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0, v1}, Lny2;->e(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_e
    new-instance v0, Lc21;

    .line 458
    .line 459
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-static {}, Lny2;->b()Lny2;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1, v0}, Lny2;->e(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lz11;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lz11;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Lz11;->n:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    const p0, 0x7f1300e3

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ldj7;->g(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lz11;->n:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v1, 0x7f1305c1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final q(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->Companion:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;->getRESTORE_CONTENT_URIS()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v0, 0x0

    .line 12
    move v3, v0

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    add-int/lit8 v5, v3, 0x1

    .line 25
    .line 26
    if-ltz v3, :cond_2

    .line 27
    .line 28
    move-object v4, v0

    .line 29
    check-cast v4, Landroid/net/Uri;

    .line 30
    .line 31
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 32
    .line 33
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/lit8 v6, v6, -0x1

    .line 54
    .line 55
    if-eq v3, v6, :cond_1

    .line 56
    .line 57
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 58
    .line 59
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "insertCallLog: "

    .line 66
    .line 67
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v4, " failed, retrying fallback: "

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const/4 v11, 0x4

    .line 86
    const/4 v12, 0x0

    .line 87
    iget-object v8, p0, Lz11;->m:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    move v3, v5

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    throw v0

    .line 96
    :cond_2
    invoke-static {}, Lfl1;->F0()V

    .line 97
    .line 98
    .line 99
    throw v4

    .line 100
    :cond_3
    return-object v4
.end method

.method public final r(Lxf5;Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;I)V
    .locals 74

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p3

    .line 8
    .line 9
    const-string v11, "restoreItem: Retrying with a different id="

    .line 10
    .line 11
    const-string v12, "restoreItem: created = "

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-lt v10, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    iget-object v13, v2, Lz11;->m:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v9, :cond_3

    .line 22
    .line 23
    const/16 v41, 0x1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :try_start_0
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 27
    .line 28
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    sget-object v0, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->Companion:Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem$a;->getCONTENT_URI()Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object v15

    .line 42
    const-string v0, "_id"

    .line 43
    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v16

    .line 48
    const-string v17, "date = ? AND number = ? AND type = ?"

    .line 49
    .line 50
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getDate()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getNumber()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getType()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v18

    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 77
    .line 78
    .line 79
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-lez v0, :cond_1

    .line 87
    .line 88
    move/from16 v0, v41

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    move v0, v1

    .line 92
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .line 94
    .line 95
    move v1, v0

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    move-object v4, v0

    .line 101
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    :try_start_4
    invoke-static {v3, v4}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :goto_1
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 108
    .line 109
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v3, "isItemOnDevice: "

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    const/16 v18, 0x4

    .line 120
    .line 121
    const/16 v19, 0x0

    .line 122
    .line 123
    iget-object v15, v2, Lz11;->m:Ljava/lang/String;

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    invoke-static/range {v14 .. v19}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    .line 131
    .line 132
    :cond_3
    move-object v3, v13

    .line 133
    goto/16 :goto_7

    .line 134
    .line 135
    :cond_4
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    new-instance v0, Lx11;

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v7, 0x0

    .line 141
    const/4 v1, 0x1

    .line 142
    const-class v3, Lz11;

    .line 143
    .line 144
    const-string v4, "getSubscriptionIdForSlot"

    .line 145
    .line 146
    const-string v5, "getSubscriptionIdForSlot(I)I"

    .line 147
    .line 148
    invoke-direct/range {v0 .. v7}, Lx11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v14, v0}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->withPhoneAccountForRestore(ILmt3;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 152
    .line 153
    .line 154
    move-result-object v42

    .line 155
    const v72, 0xffffff

    .line 156
    .line 157
    .line 158
    const/16 v73, 0x0

    .line 159
    .line 160
    const-wide/16 v43, 0x0

    .line 161
    .line 162
    const/16 v45, 0x0

    .line 163
    .line 164
    const/16 v46, 0x0

    .line 165
    .line 166
    const/16 v47, 0x0

    .line 167
    .line 168
    const/16 v48, 0x0

    .line 169
    .line 170
    const/16 v49, 0x0

    .line 171
    .line 172
    const-wide/16 v50, 0x0

    .line 173
    .line 174
    const-wide/16 v52, 0x0

    .line 175
    .line 176
    const-wide/16 v54, 0x0

    .line 177
    .line 178
    const/16 v56, 0x0

    .line 179
    .line 180
    const/16 v57, 0x0

    .line 181
    .line 182
    const/16 v58, 0x0

    .line 183
    .line 184
    const/16 v59, 0x0

    .line 185
    .line 186
    const/16 v60, 0x0

    .line 187
    .line 188
    const/16 v61, 0x0

    .line 189
    .line 190
    const/16 v62, 0x0

    .line 191
    .line 192
    const/16 v63, 0x0

    .line 193
    .line 194
    const/16 v64, 0x0

    .line 195
    .line 196
    const-wide/16 v65, 0x0

    .line 197
    .line 198
    const/16 v67, 0x0

    .line 199
    .line 200
    const/16 v68, 0x0

    .line 201
    .line 202
    const/16 v69, 0x0

    .line 203
    .line 204
    const/16 v70, 0x0

    .line 205
    .line 206
    const/16 v71, 0x0

    .line 207
    .line 208
    invoke-static/range {v42 .. v73}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v8, v0}, Lxf5;->c(Ljava/lang/Object;)Landroid/content/ContentValues;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    :try_start_5
    invoke-virtual {v2, v0}, Lz11;->q(Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_5

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto/16 :goto_6

    .line 238
    .line 239
    :catch_1
    move-exception v0

    .line 240
    move-object v3, v13

    .line 241
    goto :goto_5

    .line 242
    :cond_5
    iget-object v0, v2, Lz11;->p:Ljava/lang/Long;

    .line 243
    .line 244
    if-eqz v0, :cond_6

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 247
    .line 248
    .line 249
    move-result-wide v0

    .line 250
    const-wide/16 v3, 0x1

    .line 251
    .line 252
    :goto_3
    add-long/2addr v0, v3

    .line 253
    goto :goto_4

    .line 254
    :cond_6
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->getId()J

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    const-wide/16 v3, 0x3e8

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    iput-object v3, v2, Lz11;->p:Ljava/lang/Long;

    .line 266
    .line 267
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 268
    .line 269
    iget-object v15, v2, Lz11;->m:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    const/16 v18, 0x4

    .line 284
    .line 285
    const/16 v19, 0x0

    .line 286
    .line 287
    const/16 v17, 0x0

    .line 288
    .line 289
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 290
    .line 291
    .line 292
    const v39, 0xfffffe

    .line 293
    .line 294
    .line 295
    const/16 v40, 0x0

    .line 296
    .line 297
    const/4 v12, 0x0

    .line 298
    move-object v3, v13

    .line 299
    const/4 v13, 0x0

    .line 300
    const/4 v14, 0x0

    .line 301
    const/4 v15, 0x0

    .line 302
    const/16 v16, 0x0

    .line 303
    .line 304
    const-wide/16 v17, 0x0

    .line 305
    .line 306
    const-wide/16 v19, 0x0

    .line 307
    .line 308
    const-wide/16 v21, 0x0

    .line 309
    .line 310
    const/16 v23, 0x0

    .line 311
    .line 312
    const/16 v24, 0x0

    .line 313
    .line 314
    const/16 v25, 0x0

    .line 315
    .line 316
    const/16 v26, 0x0

    .line 317
    .line 318
    const/16 v27, 0x0

    .line 319
    .line 320
    const/16 v28, 0x0

    .line 321
    .line 322
    const/16 v29, 0x0

    .line 323
    .line 324
    const/16 v30, 0x0

    .line 325
    .line 326
    const/16 v31, 0x0

    .line 327
    .line 328
    const-wide/16 v32, 0x0

    .line 329
    .line 330
    const/16 v34, 0x0

    .line 331
    .line 332
    const/16 v35, 0x0

    .line 333
    .line 334
    const/16 v36, 0x0

    .line 335
    .line 336
    const/16 v37, 0x0

    .line 337
    .line 338
    const/16 v38, 0x0

    .line 339
    .line 340
    move-wide v10, v0

    .line 341
    :try_start_6
    invoke-static/range {v9 .. v40}, Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;->copy$default(Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;JIILjava/lang/String;ILjava/lang/String;JJJILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    add-int/lit8 v1, p3, 0x1

    .line 346
    .line 347
    invoke-virtual {v2, v8, v0, v1}, Lz11;->r(Lxf5;Lorg/swiftapps/swiftbackup/model/provider/CallLogItem;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :catch_2
    move-exception v0

    .line 352
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    const-string v1, "restoreItem: "

    .line 357
    .line 358
    invoke-static {v1, v0, v3}, Lu48;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :goto_6
    return-void

    .line 362
    :goto_7
    const-string v0, "Item already on device"

    .line 363
    .line 364
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final s(Lq63;)V
    .locals 8

    .line 1
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 2
    .line 3
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f13058d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lpw6;->i:Lex6;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lzy4;->i(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lrf8;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/16 v4, 0x15

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    move-object v3, p1

    .line 27
    invoke-direct/range {v2 .. v7}, Lrf8;-><init>(Lq63;IZLjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Ltb1;->a:Ltb1;

    .line 31
    .line 32
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v2}, Ltb1;->d(Lrf8;)Lag8;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lpw6;->k:Lag8;

    .line 41
    .line 42
    new-instance v0, Lbz;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {v0, v1, p0, v2}, Lbz;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Lag8;->g:Lmt3;

    .line 52
    .line 53
    invoke-virtual {p1}, Lag8;->c()Lzf8;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p0, p0, Lpw6;->b:Ldz7;

    .line 58
    .line 59
    check-cast p0, Lw11;

    .line 60
    .line 61
    iput-object p1, p0, Lw11;->b:Lzf8;

    .line 62
    .line 63
    invoke-virtual {p1}, Lzf8;->a()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    invoke-static {v1}, Ld01;->c(Z)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lre3;->d()Lzc2;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ly11;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Ly11;-><init>(Lzc2;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lzc2;->b(Laj8;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method
