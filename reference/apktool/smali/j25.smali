.class public final Lj25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lj25;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj25;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lj25;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lj25;->c:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj25;->a:I

    .line 4
    .line 5
    const/16 v2, 0x6b

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lj25;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ldq0;

    .line 13
    .line 14
    iget-object v3, v0, Lj25;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lw76;

    .line 17
    .line 18
    iget-object v0, v0, Lj25;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljq6;

    .line 21
    .line 22
    invoke-virtual {v1}, Ldq0;->u()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x7

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    sget-object v0, Lle9;->j:Lyq0;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {v1, v2, v7, v0}, Ldq0;->y(IILyq0;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lib;

    .line 39
    .line 40
    sget-object v2, Lma9;->b:Lga9;

    .line 41
    .line 42
    sget-object v2, Lmb9;->e:Lmb9;

    .line 43
    .line 44
    invoke-direct {v1, v5, v2, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v0, v1}, Lw76;->a(Lyq0;Lib;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    move-object/from16 v21, v6

    .line 51
    .line 52
    goto/16 :goto_d

    .line 53
    .line 54
    :cond_0
    iget-boolean v4, v1, Ldq0;->r:Z

    .line 55
    .line 56
    const/16 v8, 0x14

    .line 57
    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    const-string v0, "BillingClient"

    .line 61
    .line 62
    const-string v2, "Querying product details is not supported."

    .line 63
    .line 64
    invoke-static {v0, v2}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lle9;->o:Lyq0;

    .line 68
    .line 69
    invoke-virtual {v1, v8, v7, v0}, Ldq0;->y(IILyq0;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lib;

    .line 73
    .line 74
    sget-object v2, Lma9;->b:Lga9;

    .line 75
    .line 76
    sget-object v2, Lmb9;->e:Lmb9;

    .line 77
    .line 78
    invoke-direct {v1, v5, v2, v2}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v0, v1}, Lw76;->a(Lyq0;Lib;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v7, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v9, v0, Ljq6;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Lma9;

    .line 98
    .line 99
    const/4 v10, 0x0

    .line 100
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Lpc6;

    .line 105
    .line 106
    iget-object v14, v9, Lpc6;->b:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, v0, Ljq6;->b:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lma9;

    .line 111
    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    move v11, v10

    .line 117
    :goto_1
    if-ge v11, v9, :cond_10

    .line 118
    .line 119
    add-int/lit8 v12, v11, 0x14

    .line 120
    .line 121
    if-le v12, v9, :cond_2

    .line 122
    .line 123
    move v13, v9

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    move v13, v12

    .line 126
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-interface {v0, v11, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    new-instance v11, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    move v8, v10

    .line 145
    :goto_3
    if-ge v8, v13, :cond_3

    .line 146
    .line 147
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v16

    .line 151
    move-object/from16 v5, v16

    .line 152
    .line 153
    check-cast v5, Lpc6;

    .line 154
    .line 155
    iget-object v5, v5, Lpc6;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    .line 162
    const/16 v5, 0xa

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    .line 166
    .line 167
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v8, "ITEM_ID_LIST"

    .line 171
    .line 172
    invoke-virtual {v5, v8, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 173
    .line 174
    .line 175
    move-object/from16 v17, v15

    .line 176
    .line 177
    iget-object v15, v1, Ldq0;->c:Ljava/lang/String;

    .line 178
    .line 179
    const-string v8, "playBillingLibraryVersion"

    .line 180
    .line 181
    invoke-virtual {v5, v8, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :try_start_0
    iget-object v11, v1, Ldq0;->a:Ljava/lang/Object;

    .line 185
    .line 186
    monitor-enter v11
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v13, v1, Ldq0;->i:Lw89;

    .line 188
    .line 189
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    if-nez v13, :cond_4

    .line 191
    .line 192
    :try_start_2
    sget-object v0, Lle9;->j:Lyq0;

    .line 193
    .line 194
    const-string v4, "Service has been reset to null."

    .line 195
    .line 196
    invoke-virtual {v1, v0, v2, v4, v6}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto/16 :goto_c

    .line 201
    .line 202
    :catch_0
    move-exception v0

    .line 203
    goto/16 :goto_a

    .line 204
    .line 205
    :catch_1
    move-exception v0

    .line 206
    const/16 v5, 0x2b

    .line 207
    .line 208
    goto/16 :goto_b

    .line 209
    .line 210
    :cond_4
    iget-boolean v11, v1, Ldq0;->s:Z

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    if-eqz v11, :cond_5

    .line 214
    .line 215
    iget-object v11, v1, Ldq0;->x:Lma2;

    .line 216
    .line 217
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    move v11, v2

    .line 221
    goto :goto_4

    .line 222
    :cond_5
    move v11, v10

    .line 223
    :goto_4
    invoke-virtual {v1}, Ldq0;->g()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ldq0;->g()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ldq0;->g()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Ldq0;->g()V

    .line 233
    .line 234
    .line 235
    new-instance v8, Lp39;

    .line 236
    .line 237
    invoke-direct {v8, v11}, Lp39;-><init>(Z)V

    .line 238
    .line 239
    .line 240
    iget-boolean v11, v1, Ldq0;->t:Z

    .line 241
    .line 242
    if-eq v2, v11, :cond_6

    .line 243
    .line 244
    const/16 v2, 0x11

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    const/16 v2, 0x14

    .line 248
    .line 249
    :goto_5
    iget-object v11, v1, Ldq0;->g:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v11

    .line 255
    iget-object v10, v1, Ldq0;->d:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v6, v1, Ldq0;->A:Ljava/lang/Long;

    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 260
    .line 261
    .line 262
    move-result-wide v19

    .line 263
    move-object/from16 v18, v8

    .line 264
    .line 265
    move-object/from16 v16, v10

    .line 266
    .line 267
    invoke-static/range {v15 .. v20}, Lta9;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lp39;J)Landroid/os/Bundle;

    .line 268
    .line 269
    .line 270
    move-result-object v16

    .line 271
    check-cast v13, Lg89;

    .line 272
    .line 273
    move v15, v12

    .line 274
    move v12, v2

    .line 275
    move v2, v15

    .line 276
    move-object v15, v13

    .line 277
    move-object v13, v11

    .line 278
    move-object v11, v15

    .line 279
    move-object v15, v5

    .line 280
    invoke-virtual/range {v11 .. v16}, Lg89;->t(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 281
    .line 282
    .line 283
    move-result-object v5
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    if-nez v5, :cond_7

    .line 285
    .line 286
    sget-object v0, Lle9;->p:Lyq0;

    .line 287
    .line 288
    const/16 v2, 0x2c

    .line 289
    .line 290
    const-string v4, "queryProductDetailsAsync got empty product details response."

    .line 291
    .line 292
    const/4 v5, 0x0

    .line 293
    invoke-virtual {v1, v0, v2, v4, v5}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    goto/16 :goto_c

    .line 298
    .line 299
    :cond_7
    const-string v6, "DETAILS_LIST"

    .line 300
    .line 301
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    const/4 v8, 0x6

    .line 306
    if-nez v6, :cond_9

    .line 307
    .line 308
    const-string v0, "BillingClient"

    .line 309
    .line 310
    invoke-static {v5, v0}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    const-string v2, "BillingClient"

    .line 315
    .line 316
    invoke-static {v5, v2}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    if-eqz v0, :cond_8

    .line 321
    .line 322
    invoke-static {v0, v2}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 327
    .line 328
    invoke-static {v0, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const/16 v4, 0x17

    .line 333
    .line 334
    const/4 v6, 0x0

    .line 335
    invoke-virtual {v1, v2, v4, v0, v6}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    goto/16 :goto_c

    .line 340
    .line 341
    :cond_8
    const/4 v6, 0x0

    .line 342
    invoke-static {v8, v2}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const/16 v2, 0x2d

    .line 347
    .line 348
    const-string v4, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 349
    .line 350
    invoke-virtual {v1, v0, v2, v4, v6}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    goto/16 :goto_c

    .line 355
    .line 356
    :cond_9
    const/4 v6, 0x0

    .line 357
    const-string v10, "DETAILS_LIST"

    .line 358
    .line 359
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    if-nez v10, :cond_a

    .line 364
    .line 365
    sget-object v0, Lle9;->p:Lyq0;

    .line 366
    .line 367
    const/16 v2, 0x2e

    .line 368
    .line 369
    const-string v4, "queryProductDetailsAsync got null response list"

    .line 370
    .line 371
    invoke-virtual {v1, v0, v2, v4, v6}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    goto/16 :goto_c

    .line 376
    .line 377
    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v11

    .line 386
    const/4 v12, 0x0

    .line 387
    :goto_6
    if-ge v12, v11, :cond_b

    .line 388
    .line 389
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v15

    .line 393
    check-cast v15, Ljava/lang/String;

    .line 394
    .line 395
    :try_start_3
    new-instance v13, Lv76;

    .line 396
    .line 397
    invoke-direct {v13, v15}, Lv76;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    .line 399
    .line 400
    invoke-virtual {v13}, Lv76;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v15

    .line 404
    const-string v8, "Got product details: "

    .line 405
    .line 406
    invoke-virtual {v8, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    const-string v15, "BillingClient"

    .line 411
    .line 412
    invoke-static {v15, v8}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    add-int/lit8 v12, v12, 0x1

    .line 419
    .line 420
    const/4 v8, 0x6

    .line 421
    goto :goto_6

    .line 422
    :catch_2
    move-exception v0

    .line 423
    const-string v2, "Error trying to decode SkuDetails."

    .line 424
    .line 425
    const/4 v4, 0x6

    .line 426
    invoke-static {v4, v2}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 431
    .line 432
    const/16 v5, 0x2f

    .line 433
    .line 434
    invoke-virtual {v1, v2, v5, v4, v0}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    goto/16 :goto_c

    .line 439
    .line 440
    :cond_b
    const-string v8, "UNFETCHED_PRODUCT_LIST"

    .line 441
    .line 442
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .line 450
    .line 451
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    .line 452
    .line 453
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .line 455
    .line 456
    if-eqz v5, :cond_c

    .line 457
    .line 458
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v10

    .line 466
    if-eqz v10, :cond_f

    .line 467
    .line 468
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    check-cast v10, Ljava/lang/String;

    .line 473
    .line 474
    new-instance v11, Lxd8;

    .line 475
    .line 476
    invoke-direct {v11, v10}, Lxd8;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    const-string v10, "BillingClient"

    .line 480
    .line 481
    invoke-virtual {v11}, Lxd8;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v12

    .line 485
    const-string v13, "Got unfetchedProduct: "

    .line 486
    .line 487
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v12

    .line 491
    invoke-static {v10, v12}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_7

    .line 498
    :catch_3
    move-exception v0

    .line 499
    goto :goto_9

    .line 500
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    if-eqz v10, :cond_f

    .line 509
    .line 510
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    check-cast v10, Lpc6;

    .line 515
    .line 516
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v11

    .line 520
    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    .line 522
    .line 523
    move-result v12

    .line 524
    if-eqz v12, :cond_e

    .line 525
    .line 526
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v12

    .line 530
    check-cast v12, Lv76;

    .line 531
    .line 532
    iget-object v13, v10, Lpc6;->a:Ljava/lang/String;

    .line 533
    .line 534
    iget-object v15, v12, Lv76;->c:Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v13

    .line 540
    if-eqz v13, :cond_d

    .line 541
    .line 542
    iget-object v13, v10, Lpc6;->b:Ljava/lang/String;

    .line 543
    .line 544
    iget-object v12, v12, Lv76;->d:Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v12

    .line 550
    if-eqz v12, :cond_d

    .line 551
    .line 552
    goto :goto_8

    .line 553
    :cond_e
    new-instance v11, Lorg/json/JSONObject;

    .line 554
    .line 555
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 556
    .line 557
    .line 558
    const-string v12, "productId"

    .line 559
    .line 560
    iget-object v13, v10, Lpc6;->a:Ljava/lang/String;

    .line 561
    .line 562
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    const-string v12, "type"

    .line 567
    .line 568
    iget-object v10, v10, Lpc6;->b:Ljava/lang/String;

    .line 569
    .line 570
    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    const-string v11, "statusCode"

    .line 575
    .line 576
    const/4 v12, 0x0

    .line 577
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 578
    .line 579
    .line 580
    move-result-object v10

    .line 581
    new-instance v11, Lxd8;

    .line 582
    .line 583
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v10

    .line 587
    invoke-direct {v11, v10}, Lxd8;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 591
    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_f
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 598
    .line 599
    .line 600
    move v11, v2

    .line 601
    const/16 v2, 0x6b

    .line 602
    .line 603
    const/16 v5, 0xa

    .line 604
    .line 605
    const/4 v6, 0x0

    .line 606
    const/16 v8, 0x14

    .line 607
    .line 608
    const/4 v10, 0x0

    .line 609
    goto/16 :goto_1

    .line 610
    .line 611
    :goto_9
    const-string v2, "Error trying to decode SkuDetails."

    .line 612
    .line 613
    const/4 v4, 0x6

    .line 614
    invoke-static {v4, v2}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    const-string v4, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: "

    .line 619
    .line 620
    const/16 v5, 0x2f

    .line 621
    .line 622
    invoke-virtual {v1, v2, v5, v4, v0}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    goto :goto_c

    .line 627
    :catchall_0
    move-exception v0

    .line 628
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 629
    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 630
    :goto_a
    sget-object v2, Lle9;->h:Lyq0;

    .line 631
    .line 632
    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 633
    .line 634
    const/16 v5, 0x2b

    .line 635
    .line 636
    invoke-virtual {v1, v2, v5, v4, v0}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    goto :goto_c

    .line 641
    :goto_b
    sget-object v2, Lle9;->j:Lyq0;

    .line 642
    .line 643
    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 644
    .line 645
    invoke-virtual {v1, v2, v5, v4, v0}, Ldq0;->l(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lwb9;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    goto :goto_c

    .line 650
    :cond_10
    const-string v0, ""

    .line 651
    .line 652
    new-instance v1, Lwb9;

    .line 653
    .line 654
    const/4 v12, 0x0

    .line 655
    invoke-direct {v1, v12, v0, v4, v7}, Lwb9;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 656
    .line 657
    .line 658
    move-object v0, v1

    .line 659
    :goto_c
    iget v1, v0, Lwb9;->c:I

    .line 660
    .line 661
    iget-object v2, v0, Lwb9;->d:Ljava/lang/String;

    .line 662
    .line 663
    invoke-static {v1, v2}, Lle9;->a(ILjava/lang/String;)Lyq0;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    new-instance v2, Lib;

    .line 668
    .line 669
    iget-object v4, v0, Lwb9;->a:Ljava/util/ArrayList;

    .line 670
    .line 671
    iget-object v0, v0, Lwb9;->b:Ljava/util/ArrayList;

    .line 672
    .line 673
    const/16 v5, 0xa

    .line 674
    .line 675
    invoke-direct {v2, v5, v4, v0}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    invoke-interface {v3, v1, v2}, Lw76;->a(Lyq0;Lib;)V

    .line 679
    .line 680
    .line 681
    const/16 v21, 0x0

    .line 682
    .line 683
    :goto_d
    return-object v21

    .line 684
    :pswitch_0
    iget-object v1, v0, Lj25;->d:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v1, Ldq0;

    .line 687
    .line 688
    iget-object v2, v0, Lj25;->b:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast v2, Ljava/lang/String;

    .line 691
    .line 692
    iget-object v0, v0, Lj25;->c:Ljava/lang/Object;

    .line 693
    .line 694
    check-cast v0, Ljava/lang/String;

    .line 695
    .line 696
    const/4 v3, 0x5

    .line 697
    :try_start_7
    iget-object v4, v1, Ldq0;->a:Ljava/lang/Object;

    .line 698
    .line 699
    monitor-enter v4
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 700
    :try_start_8
    iget-object v5, v1, Ldq0;->i:Lw89;

    .line 701
    .line 702
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 703
    if-nez v5, :cond_11

    .line 704
    .line 705
    :try_start_9
    sget-object v0, Lle9;->j:Lyq0;

    .line 706
    .line 707
    const/16 v1, 0x6b

    .line 708
    .line 709
    invoke-static {v1, v0}, Lta9;->c(ILyq0;)Landroid/os/Bundle;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    goto :goto_11

    .line 714
    :catch_4
    move-exception v0

    .line 715
    goto :goto_e

    .line 716
    :catch_5
    move-exception v0

    .line 717
    goto :goto_10

    .line 718
    :cond_11
    iget-object v1, v1, Ldq0;->g:Landroid/content/Context;

    .line 719
    .line 720
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    check-cast v5, Lg89;

    .line 725
    .line 726
    invoke-virtual {v5, v1, v2, v0}, Lg89;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 727
    .line 728
    .line 729
    move-result-object v0
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 730
    goto :goto_11

    .line 731
    :catchall_1
    move-exception v0

    .line 732
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 733
    :try_start_b
    throw v0
    :try_end_b
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 734
    :goto_e
    sget-object v1, Lle9;->h:Lyq0;

    .line 735
    .line 736
    invoke-static {v0}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-static {v3, v1}, Lta9;->c(ILyq0;)Landroid/os/Bundle;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    if-eqz v0, :cond_12

    .line 745
    .line 746
    const-string v2, "ADDITIONAL_LOG_DETAILS"

    .line 747
    .line 748
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    :cond_12
    :goto_f
    move-object v0, v1

    .line 752
    goto :goto_11

    .line 753
    :goto_10
    sget-object v1, Lle9;->j:Lyq0;

    .line 754
    .line 755
    invoke-static {v0}, Lzd9;->a(Ljava/lang/Exception;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-static {v3, v1}, Lta9;->c(ILyq0;)Landroid/os/Bundle;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    if-eqz v0, :cond_12

    .line 764
    .line 765
    const-string v2, "ADDITIONAL_LOG_DETAILS"

    .line 766
    .line 767
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    goto :goto_f

    .line 771
    :goto_11
    return-object v0

    .line 772
    :pswitch_1
    iget-object v1, v0, Lj25;->d:Ljava/lang/Object;

    .line 773
    .line 774
    check-cast v1, Landroid/content/Context;

    .line 775
    .line 776
    iget-object v2, v0, Lj25;->b:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v2, Ljava/lang/String;

    .line 779
    .line 780
    iget-object v0, v0, Lj25;->c:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast v0, Ljava/lang/String;

    .line 783
    .line 784
    invoke-static {v1, v2, v0}, Ln25;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lg35;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    return-object v0

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
