.class public final synthetic Ldw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Ldw;->a:I

    iput-object p2, p0, Ldw;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldw;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldw;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lax;Lex;Llw;Lxw;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    iput p4, p0, Ldw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ldw;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ldw;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Ldw;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ldw;->a:I

    .line 6
    .line 7
    sget-object v3, Lbe8;->a:Lbe8;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/16 v5, 0x8

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x1

    .line 14
    iget-object v8, v0, Ldw;->d:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Ldw;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Ldw;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    check-cast v9, Ljava/lang/String;

    .line 27
    .line 28
    check-cast v8, Lfu3;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Luz3;->a:Ljava/util/Set;

    .line 34
    .line 35
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Luz3;->a(Ljava/util/LinkedHashSet;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lll1;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Lll1;-><init>(Ljava/lang/Iterable;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lsh;

    .line 53
    .line 54
    invoke-direct {v0, v5}, Lsh;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lq98;

    .line 58
    .line 59
    invoke-direct {v3, v1, v0}, Lq98;-><init>(Lf77;Lmt3;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lzi1;

    .line 63
    .line 64
    const/4 v1, 0x4

    .line 65
    invoke-direct {v0, v1}, Lzi1;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lme3;

    .line 69
    .line 70
    invoke-direct {v1, v3, v7, v0}, Lme3;-><init>(Lf77;ZLmt3;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lh77;->x0(Lf77;)Lmn2;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lh77;->C0(Lf77;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 88
    .line 89
    const/4 v14, 0x4

    .line 90
    const/4 v15, 0x0

    .line 91
    const-string v11, "GClient"

    .line 92
    .line 93
    const-string v12, "Google Drive metadata migration skipped: no file ids found"

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    invoke-static/range {v10 .. v15}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    :goto_0
    move v0, v6

    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    sget-object v3, Ltb1;->a:Ltb1;

    .line 126
    .line 127
    invoke-static {}, Lqb1;->j()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    if-nez v3, :cond_4

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    :try_start_0
    iget-object v5, v8, Lfu3;->h:Ld04;

    .line 135
    .line 136
    const-string v10, "id, parents, trashed"

    .line 137
    .line 138
    invoke-virtual {v5, v0, v10}, Ld04;->i(Ljava/lang/String;Ljava/lang/String;)Lyz3;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    sget-object v10, Luz3;->a:Ljava/util/Set;

    .line 143
    .line 144
    iget-object v10, v5, Lyz3;->a:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v10, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_3

    .line 151
    .line 152
    iget-boolean v0, v5, Lyz3;->h:Z

    .line 153
    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    iget-object v0, v5, Lyz3;->g:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    .line 164
    move v0, v7

    .line 165
    goto :goto_4

    .line 166
    :goto_2
    move-object v13, v0

    .line 167
    goto :goto_3

    .line 168
    :catch_0
    move-exception v0

    .line 169
    goto :goto_2

    .line 170
    :goto_3
    instance-of v0, v13, Lvz3;

    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    move-object v0, v13

    .line 175
    check-cast v0, Lvz3;

    .line 176
    .line 177
    iget v3, v0, Lvz3;->b:I

    .line 178
    .line 179
    const/16 v5, 0x194

    .line 180
    .line 181
    if-eq v3, v5, :cond_3

    .line 182
    .line 183
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 184
    .line 185
    const/16 v15, 0x8

    .line 186
    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    const-string v11, "GClient"

    .line 190
    .line 191
    const-string v12, "Google Drive metadata migration file check failed"

    .line 192
    .line 193
    move-object v10, v14

    .line 194
    const/4 v14, 0x0

    .line 195
    invoke-static/range {v10 .. v16}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lrs9;->w(Lvz3;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v16

    .line 202
    const/16 v18, 0x4

    .line 203
    .line 204
    const/16 v19, 0x0

    .line 205
    .line 206
    const-string v15, "GClient"

    .line 207
    .line 208
    const/16 v17, 0x0

    .line 209
    .line 210
    move-object v14, v10

    .line 211
    invoke-static/range {v14 .. v19}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-lez v2, :cond_5

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_5
    move-object v1, v4

    .line 236
    :goto_5
    if-nez v1, :cond_6

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_6
    invoke-static {v9}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-lez v3, :cond_7

    .line 252
    .line 253
    move-object v4, v2

    .line 254
    :cond_7
    if-nez v4, :cond_8

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_9

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_9
    if-eqz v0, :cond_a

    .line 265
    .line 266
    move v6, v7

    .line 267
    :cond_a
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 273
    .line 274
    check-cast v9, Laf4;

    .line 275
    .line 276
    iget-object v2, v9, Laf4;->b:Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 277
    .line 278
    check-cast v8, Luf3;

    .line 279
    .line 280
    iget-object v4, v8, Luf3;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 281
    .line 282
    check-cast v1, Lxf3;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v9, "IntroActivity.Observer:"

    .line 290
    .line 291
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    const-string v9, "FCW"

    .line 302
    .line 303
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    sget-object v8, Lgg3;->a:Lgg3;

    .line 307
    .line 308
    invoke-static {}, Lgg3;->f()Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    if-eqz v8, :cond_f

    .line 313
    .line 314
    sget-object v8, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 315
    .line 316
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-static {v8}, Lai8;->i(Landroid/content/Context;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-nez v8, :cond_b

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_b
    sget-object v5, Lxf3;->CONNECTED:Lxf3;

    .line 328
    .line 329
    if-ne v1, v5, :cond_c

    .line 330
    .line 331
    iget-object v2, v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->S:Lwa;

    .line 332
    .line 333
    invoke-static {v2}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 334
    .line 335
    .line 336
    :cond_c
    sget-object v2, Lxf3;->DISCONNECTED:Lxf3;

    .line 337
    .line 338
    if-ne v1, v2, :cond_d

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_d
    move v7, v6

    .line 342
    :goto_7
    invoke-static {v4}, Lsz8;->I(Landroid/view/View;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-ne v7, v1, :cond_e

    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_e
    invoke-static {v0}, Lio4;->a(Landroid/app/Activity;)Landroid/view/ViewGroup;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    new-instance v1, Lt35;

    .line 354
    .line 355
    invoke-direct {v1}, Lt35;-><init>()V

    .line 356
    .line 357
    .line 358
    new-array v2, v6, [Ljava/lang/Class;

    .line 359
    .line 360
    invoke-static {v0, v1, v2}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v4, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 364
    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_f
    :goto_8
    const-string v0, "Firebase backend warning not applicable"

    .line 368
    .line 369
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    iget-object v0, v2, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->S:Lwa;

    .line 373
    .line 374
    invoke-static {v0}, Lsz8;->m(Landroid/app/Dialog;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :goto_9
    return-object v3

    .line 381
    :pswitch_1
    check-cast v0, Lax;

    .line 382
    .line 383
    check-cast v9, Lex;

    .line 384
    .line 385
    check-cast v8, Llw;

    .line 386
    .line 387
    check-cast v1, Ldz6;

    .line 388
    .line 389
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    iget-object v2, v1, Ldz6;->b:Ljava/lang/Long;

    .line 393
    .line 394
    const-wide/16 v5, 0x0

    .line 395
    .line 396
    if-eqz v2, :cond_11

    .line 397
    .line 398
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 399
    .line 400
    .line 401
    move-result-wide v10

    .line 402
    cmp-long v7, v10, v5

    .line 403
    .line 404
    if-lez v7, :cond_10

    .line 405
    .line 406
    move-object v4, v2

    .line 407
    :cond_10
    if-eqz v4, :cond_11

    .line 408
    .line 409
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 410
    .line 411
    .line 412
    move-result-wide v10

    .line 413
    goto :goto_a

    .line 414
    :cond_11
    iget-wide v10, v0, Lax;->h:J

    .line 415
    .line 416
    const-wide/16 v12, 0x1

    .line 417
    .line 418
    cmp-long v2, v10, v12

    .line 419
    .line 420
    if-gez v2, :cond_12

    .line 421
    .line 422
    move-wide v10, v12

    .line 423
    :cond_12
    :goto_a
    iget-wide v1, v1, Ldz6;->a:J

    .line 424
    .line 425
    cmp-long v4, v1, v5

    .line 426
    .line 427
    if-gez v4, :cond_13

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_13
    move-wide v5, v1

    .line 431
    :goto_b
    cmp-long v1, v5, v10

    .line 432
    .line 433
    if-lez v1, :cond_14

    .line 434
    .line 435
    move-wide v5, v10

    .line 436
    :cond_14
    invoke-virtual {v0, v9}, Lax;->c(Lex;)J

    .line 437
    .line 438
    .line 439
    move-result-wide v1

    .line 440
    long-to-float v4, v5

    .line 441
    long-to-float v5, v10

    .line 442
    div-float/2addr v4, v5

    .line 443
    long-to-float v1, v1

    .line 444
    mul-float/2addr v4, v1

    .line 445
    float-to-double v1, v4

    .line 446
    invoke-static {v1, v2}, Ltu0;->w(D)J

    .line 447
    .line 448
    .line 449
    move-result-wide v1

    .line 450
    invoke-virtual {v0}, Lax;->b()J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    add-long/2addr v4, v1

    .line 455
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v8, v0}, Llw;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    return-object v3

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
