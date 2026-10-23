.class public final Luv;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Luv;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Luv;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Luv;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Luv;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Luv;

    .line 9
    .line 10
    check-cast p0, Liu8;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, p0, p2, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Luv;

    .line 18
    .line 19
    check-cast p0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p1, p0, p2, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Luv;

    .line 27
    .line 28
    check-cast p0, Llh6;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, p2, v0}, Luv;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Luv;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Luv;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Luv;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Luv;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Luv;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Luv;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Luv;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Luv;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Luv;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Luv;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Luv;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v1, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Luv;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Liu8;

    .line 17
    .line 18
    iget-object v3, v0, Liu8;->i:Lex6;

    .line 19
    .line 20
    sget-object v4, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 21
    .line 22
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Lai8;->i(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    new-instance v0, Lxt8;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Lxt8;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_b

    .line 41
    .line 42
    :cond_0
    sget-object v2, Ltb1;->a:Ltb1;

    .line 43
    .line 44
    invoke-static {}, Lqb1;->m()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    new-instance v0, Lxt8;

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-direct {v0, v2}, Lxt8;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_b

    .line 60
    .line 61
    :cond_1
    sget-object v2, Lyt8;->a:Lyt8;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Lex6;->k(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Liu8;->j()Lus8;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const-string v2, "WifiHelper"

    .line 74
    .line 75
    const-string v4, "onFailure: "

    .line 76
    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    const/4 v6, 0x0

    .line 90
    if-nez v5, :cond_11

    .line 91
    .line 92
    invoke-static {}, Lus8;->c()Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;->getDriveId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    move-object v9, v7

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move-object v9, v6

    .line 105
    :goto_0
    if-eqz v9, :cond_e

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-nez v7, :cond_3

    .line 112
    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :cond_3
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/model/firebase/WifiCloudDetails;->getFileSize()Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ltb1;->l()Lui1;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    iget-object v13, v5, Lui1;->b:Ljava/lang/Exception;

    .line 135
    .line 136
    if-eqz v13, :cond_5

    .line 137
    .line 138
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 139
    .line 140
    const-string v11, "WifiHelper"

    .line 141
    .line 142
    const-string v12, "getCloudBackup"

    .line 143
    .line 144
    const/16 v15, 0x8

    .line 145
    .line 146
    const/16 v16, 0x0

    .line 147
    .line 148
    const/4 v14, 0x0

    .line 149
    invoke-static/range {v10 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :cond_5
    iget-object v5, v5, Lui1;->a:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_6

    .line 161
    .line 162
    const-string v4, "getCloudBackup: FileList is EMPTY"

    .line 163
    .line 164
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_6
    invoke-static {v5}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Lpg1;

    .line 174
    .line 175
    iget-wide v7, v5, Lpg1;->c:J

    .line 176
    .line 177
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {}, Lnh4;->a()Lq63;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    const-wide/16 v10, 0x0

    .line 186
    .line 187
    cmp-long v7, v7, v10

    .line 188
    .line 189
    if-lez v7, :cond_7

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    move-object v5, v6

    .line 193
    :goto_2
    if-eqz v5, :cond_8

    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 196
    .line 197
    .line 198
    move-result-wide v7

    .line 199
    :goto_3
    move-wide v11, v7

    .line 200
    goto :goto_4

    .line 201
    :cond_8
    const-wide/16 v7, -0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :goto_4
    new-instance v8, Lfo2;

    .line 205
    .line 206
    const/16 v10, 0x17

    .line 207
    .line 208
    invoke-direct/range {v8 .. v13}, Lfo2;-><init>(Ljava/lang/String;IJLq63;)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v5, v8}, Ltb1;->c(Lfo2;)Lno2;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    :try_start_0
    invoke-virtual {v5}, Lno2;->b()Lke;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-static {}, Lnh4;->a()Lq63;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v7}, Lke;->e()Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_d

    .line 232
    .line 233
    invoke-virtual {v8}, Lq63;->j()Z

    .line 234
    .line 235
    .line 236
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    if-nez v2, :cond_a

    .line 238
    .line 239
    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_a
    :try_start_1
    sget-object v2, Lw14;->a:Lgv7;

    .line 244
    .line 245
    const-class v2, Lft8;

    .line 246
    .line 247
    invoke-static {v8, v2}, Lw14;->a(Lq63;Ljava/lang/Class;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    check-cast v2, Lft8;

    .line 252
    .line 253
    if-eqz v2, :cond_9

    .line 254
    .line 255
    invoke-virtual {v2}, Lft8;->getItems()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-eqz v2, :cond_9

    .line 260
    .line 261
    new-instance v4, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    if-eqz v6, :cond_c

    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    move-object v7, v6

    .line 281
    check-cast v7, Let8;

    .line 282
    .line 283
    invoke-virtual {v7}, Let8;->isValid()Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_b

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :catchall_0
    move-exception v0

    .line 294
    move-object v1, v0

    .line 295
    goto :goto_7

    .line 296
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_d
    invoke-virtual {v7}, Lke;->b()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :goto_7
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 315
    :catchall_1
    move-exception v0

    .line 316
    invoke-static {v5, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    throw v0

    .line 320
    :cond_e
    :goto_8
    if-eqz v6, :cond_10

    .line 321
    .line 322
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_f

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_f
    new-instance v0, Lzt8;

    .line 330
    .line 331
    invoke-direct {v0, v6}, Lzt8;-><init>(Ljava/util/ArrayList;)V

    .line 332
    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_10
    :goto_9
    new-instance v2, Lwt8;

    .line 336
    .line 337
    invoke-virtual {v0}, Liu8;->k()Landroid/net/wifi/WifiManager;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    invoke-direct {v2, v0}, Lwt8;-><init>(Z)V

    .line 346
    .line 347
    .line 348
    move-object v0, v2

    .line 349
    :goto_a
    invoke-virtual {v3, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    goto :goto_b

    .line 353
    :cond_11
    invoke-static {}, Ld6;->o()V

    .line 354
    .line 355
    .line 356
    move-object v1, v6

    .line 357
    :goto_b
    return-object v1

    .line 358
    :pswitch_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    iget-object v1, v0, Luv;->b:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 364
    .line 365
    iget-object v1, v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->f:Ljava/lang/Object;

    .line 366
    .line 367
    monitor-enter v1

    .line 368
    monitor-exit v1

    .line 369
    iget-object v0, v0, Luv;->b:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;

    .line 372
    .line 373
    sget-object v1, Ljc2;->TIMEOUT:Ljc2;

    .line 374
    .line 375
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleService;->b(Ljc2;)V

    .line 376
    .line 377
    .line 378
    const-string v0, "ScheduleService timeout"

    .line 379
    .line 380
    invoke-static {v0}, Lqc2;->g(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    sget-object v0, Lbe8;->a:Lbe8;

    .line 384
    .line 385
    return-object v0

    .line 386
    :pswitch_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 387
    .line 388
    .line 389
    const-string v1, "enabled"

    .line 390
    .line 391
    sget-object v3, Lmp6;->a:Lmp6;

    .line 392
    .line 393
    const-string v4, "bmgr enabled"

    .line 394
    .line 395
    filled-new-array {v4}, [Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    sget-object v5, Lip6;->SHIZUKU:Lip6;

    .line 400
    .line 401
    invoke-virtual {v3, v4, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v4}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    check-cast v4, Ljava/lang/String;

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    if-eqz v4, :cond_12

    .line 413
    .line 414
    invoke-static {v4, v1, v6}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-ne v1, v2, :cond_12

    .line 419
    .line 420
    goto :goto_c

    .line 421
    :cond_12
    move v2, v6

    .line 422
    :goto_c
    iget-object v0, v0, Luv;->b:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v0, Llh6;

    .line 425
    .line 426
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    iput-object v1, v0, Llh6;->a:Ljava/lang/Object;

    .line 431
    .line 432
    if-eqz v2, :cond_13

    .line 433
    .line 434
    const-string v0, "enable false"

    .line 435
    .line 436
    const-string v1, "bmgr "

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    filled-new-array {v0}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v3, v0, v5}, Lmp6;->h([Ljava/lang/String;Lip6;)Ljava/util/List;

    .line 447
    .line 448
    .line 449
    :cond_13
    sget-object v0, Lbe8;->a:Lbe8;

    .line 450
    .line 451
    return-object v0

    .line 452
    nop

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
