.class public final Ly99;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Llq0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ldq0;


# direct methods
.method public constructor <init>(Ldq0;Llq0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly99;->a:Llq0;

    .line 5
    .line 6
    iput-object p3, p0, Ly99;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ly99;->c:Ldq0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Ly99;->c:Ldq0;

    .line 4
    .line 5
    invoke-virtual {v2}, Ldq0;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x9

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lle9;->j:Lyq0;

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-virtual {v2, v5, v4, v0}, Ldq0;->y(IILyq0;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v1, Ly99;->a:Llq0;

    .line 21
    .line 22
    sget-object v2, Lma9;->b:Lga9;

    .line 23
    .line 24
    sget-object v2, Lmb9;->e:Lmb9;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :cond_0
    iget-object v8, v1, Ly99;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "BillingClient"

    .line 39
    .line 40
    const-string v5, "Please provide a valid product type."

    .line 41
    .line 42
    invoke-static {v0, v5}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lle9;->e:Lyq0;

    .line 46
    .line 47
    const/16 v5, 0x32

    .line 48
    .line 49
    invoke-virtual {v2, v5, v4, v0}, Ldq0;->y(IILyq0;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Ly99;->a:Llq0;

    .line 53
    .line 54
    sget-object v2, Lma9;->b:Lga9;

    .line 55
    .line 56
    sget-object v2, Lmb9;->e:Lmb9;

    .line 57
    .line 58
    invoke-virtual {v1, v0, v2}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_1
    const-string v0, "Querying owned items, item type: "

    .line 63
    .line 64
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "BillingClient"

    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v6, v0}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-boolean v5, v2, Ldq0;->n:Z

    .line 83
    .line 84
    iget-boolean v6, v2, Ldq0;->s:Z

    .line 85
    .line 86
    iget-object v7, v2, Ldq0;->x:Lma2;

    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v7, v2, Ldq0;->x:Lma2;

    .line 92
    .line 93
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object v7, v2, Ldq0;->A:Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 99
    .line 100
    .line 101
    move-result-wide v9

    .line 102
    new-instance v7, Landroid/os/Bundle;

    .line 103
    .line 104
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v11, v2, Ldq0;->c:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v12, v2, Ldq0;->d:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v7, v11, v12, v9, v10}, Lta9;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    .line 113
    .line 114
    const/4 v11, 0x1

    .line 115
    if-eqz v5, :cond_2

    .line 116
    .line 117
    const-string v5, "enablePendingPurchases"

    .line 118
    .line 119
    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    .line 121
    .line 122
    :cond_2
    if-eqz v6, :cond_3

    .line 123
    .line 124
    const-string v5, "enablePendingPurchaseForSubscriptions"

    .line 125
    .line 126
    invoke-virtual {v7, v5, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    :cond_3
    move-object v9, v3

    .line 130
    :goto_0
    const/16 v12, 0x34

    .line 131
    .line 132
    :try_start_0
    iget-object v5, v2, Ldq0;->a:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v6, v2, Ldq0;->i:Lw89;

    .line 136
    .line 137
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-nez v6, :cond_4

    .line 139
    .line 140
    :try_start_2
    sget-object v0, Lle9;->j:Lyq0;

    .line 141
    .line 142
    const-string v4, "Service has been reset to null"

    .line 143
    .line 144
    const/16 v5, 0x6b

    .line 145
    .line 146
    invoke-virtual {v2, v0, v5, v4, v3}, Ldq0;->x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    :goto_1
    move-object/from16 v16, v3

    .line 151
    .line 152
    goto/16 :goto_c

    .line 153
    .line 154
    :catch_0
    move-exception v0

    .line 155
    move-object/from16 v16, v3

    .line 156
    .line 157
    goto/16 :goto_a

    .line 158
    .line 159
    :catch_1
    move-exception v0

    .line 160
    move-object/from16 v16, v3

    .line 161
    .line 162
    goto/16 :goto_b

    .line 163
    .line 164
    :cond_4
    iget-boolean v5, v2, Ldq0;->n:Z

    .line 165
    .line 166
    if-nez v5, :cond_5

    .line 167
    .line 168
    iget-object v5, v2, Ldq0;->g:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v6, Lg89;

    .line 175
    .line 176
    invoke-virtual {v6, v5, v8, v9}, Lg89;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    move-object v10, v7

    .line 181
    goto :goto_3

    .line 182
    :cond_5
    iget-boolean v5, v2, Ldq0;->w:Z

    .line 183
    .line 184
    if-eqz v5, :cond_6

    .line 185
    .line 186
    const/16 v5, 0x1a

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    iget-boolean v5, v2, Ldq0;->v:Z

    .line 190
    .line 191
    if-eqz v5, :cond_7

    .line 192
    .line 193
    const/16 v5, 0x18

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_7
    iget-boolean v5, v2, Ldq0;->s:Z

    .line 197
    .line 198
    if-eqz v5, :cond_8

    .line 199
    .line 200
    const/16 v5, 0x13

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    move v5, v4

    .line 204
    :goto_2
    iget-object v10, v2, Ldq0;->g:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    check-cast v6, Lg89;

    .line 211
    .line 212
    move-object/from16 v19, v6

    .line 213
    .line 214
    move v6, v5

    .line 215
    move-object/from16 v5, v19

    .line 216
    .line 217
    move-object/from16 v19, v10

    .line 218
    .line 219
    move-object v10, v7

    .line 220
    move-object/from16 v7, v19

    .line 221
    .line 222
    invoke-virtual/range {v5 .. v10}, Lg89;->s(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 223
    .line 224
    .line 225
    move-result-object v5
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    :goto_3
    sget-object v6, Lle9;->h:Lyq0;

    .line 227
    .line 228
    const-string v7, "BillingClient"

    .line 229
    .line 230
    if-nez v5, :cond_9

    .line 231
    .line 232
    const-string v9, "getPurchase() got null owned items list"

    .line 233
    .line 234
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const/16 v7, 0x36

    .line 238
    .line 239
    :goto_4
    move-object v12, v6

    .line 240
    goto/16 :goto_6

    .line 241
    .line 242
    :cond_9
    invoke-static {v5, v7}, Lta9;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v9

    .line 246
    invoke-static {v5, v7}, Lta9;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    invoke-static {}, Lyq0;->a()Lxq0;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    iput v9, v14, Lxq0;->a:I

    .line 255
    .line 256
    iput-object v12, v14, Lxq0;->c:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v14}, Lxq0;->a()Lyq0;

    .line 259
    .line 260
    .line 261
    move-result-object v12

    .line 262
    if-eqz v9, :cond_a

    .line 263
    .line 264
    new-instance v14, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v15, "getPurchase() failed. Response code: "

    .line 267
    .line 268
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const/16 v7, 0x17

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_a
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 285
    .line 286
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    if-eqz v9, :cond_f

    .line 291
    .line 292
    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    .line 293
    .line 294
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    if-eqz v9, :cond_f

    .line 299
    .line 300
    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    .line 301
    .line 302
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v9

    .line 306
    if-nez v9, :cond_b

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_b
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 310
    .line 311
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v9

    .line 315
    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    .line 316
    .line 317
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 318
    .line 319
    .line 320
    move-result-object v12

    .line 321
    const-string v14, "INAPP_DATA_SIGNATURE_LIST"

    .line 322
    .line 323
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    if-nez v9, :cond_c

    .line 328
    .line 329
    const-string v9, "Bundle returned from getPurchase() contains null SKUs list."

    .line 330
    .line 331
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const/16 v7, 0x38

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_c
    if-nez v12, :cond_d

    .line 338
    .line 339
    const-string v9, "Bundle returned from getPurchase() contains null purchases list."

    .line 340
    .line 341
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const/16 v7, 0x39

    .line 345
    .line 346
    goto :goto_4

    .line 347
    :cond_d
    if-nez v14, :cond_e

    .line 348
    .line 349
    const-string v9, "Bundle returned from getPurchase() contains null signatures list."

    .line 350
    .line 351
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const/16 v7, 0x3a

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_e
    sget-object v12, Lle9;->i:Lyq0;

    .line 358
    .line 359
    move v7, v11

    .line 360
    goto :goto_6

    .line 361
    :cond_f
    :goto_5
    const-string v9, "Bundle returned from getPurchase() doesn\'t contain required fields."

    .line 362
    .line 363
    invoke-static {v7, v9}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const/16 v7, 0x37

    .line 367
    .line 368
    goto/16 :goto_4

    .line 369
    .line 370
    :goto_6
    sget-object v9, Lle9;->i:Lyq0;

    .line 371
    .line 372
    if-eq v12, v9, :cond_10

    .line 373
    .line 374
    const-string v0, "Purchase bundle invalid"

    .line 375
    .line 376
    invoke-virtual {v2, v12, v7, v0, v3}, Ldq0;->x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :cond_10
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    .line 383
    .line 384
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object v7

    .line 388
    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    .line 389
    .line 390
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    const-string v12, "INAPP_DATA_SIGNATURE_LIST"

    .line 395
    .line 396
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    const/4 v14, 0x0

    .line 401
    move-object/from16 v16, v3

    .line 402
    .line 403
    move v15, v14

    .line 404
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-ge v14, v3, :cond_12

    .line 409
    .line 410
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    check-cast v3, Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v17

    .line 420
    move-object/from16 v11, v17

    .line 421
    .line 422
    check-cast v11, Ljava/lang/String;

    .line 423
    .line 424
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v17

    .line 428
    check-cast v17, Ljava/lang/String;

    .line 429
    .line 430
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    const-string v13, "Sku is owned: "

    .line 435
    .line 436
    move-object/from16 v18, v7

    .line 437
    .line 438
    const-string v7, "BillingClient"

    .line 439
    .line 440
    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-static {v7, v4}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    :try_start_3
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    .line 448
    .line 449
    invoke-direct {v4, v3, v11}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 450
    .line 451
    .line 452
    iget-object v3, v4, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 453
    .line 454
    const-string v7, "purchaseToken"

    .line 455
    .line 456
    const-string v11, "token"

    .line 457
    .line 458
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_11

    .line 471
    .line 472
    const-string v3, "BillingClient"

    .line 473
    .line 474
    const-string v7, "BUG: empty/null token!"

    .line 475
    .line 476
    invoke-static {v3, v7}, Lta9;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    const/4 v15, 0x1

    .line 480
    :cond_11
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    add-int/lit8 v14, v14, 0x1

    .line 484
    .line 485
    move-object/from16 v7, v18

    .line 486
    .line 487
    const/16 v4, 0x9

    .line 488
    .line 489
    const/4 v11, 0x1

    .line 490
    goto :goto_7

    .line 491
    :catch_2
    move-exception v0

    .line 492
    sget-object v3, Lle9;->h:Lyq0;

    .line 493
    .line 494
    const/16 v4, 0x33

    .line 495
    .line 496
    const-string v5, "Got an exception trying to decode the purchase!"

    .line 497
    .line 498
    invoke-virtual {v2, v3, v4, v5, v0}, Ldq0;->x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    goto :goto_c

    .line 503
    :cond_12
    if-eqz v15, :cond_13

    .line 504
    .line 505
    const/16 v3, 0x1a

    .line 506
    .line 507
    const/16 v4, 0x9

    .line 508
    .line 509
    invoke-virtual {v2, v3, v4, v6}, Ldq0;->y(IILyq0;)V

    .line 510
    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_13
    const/16 v4, 0x9

    .line 514
    .line 515
    :goto_8
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 516
    .line 517
    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    const-string v5, "Continuation token: "

    .line 526
    .line 527
    const-string v6, "BillingClient"

    .line 528
    .line 529
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-static {v6, v3}, Lta9;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    if-eqz v3, :cond_14

    .line 541
    .line 542
    new-instance v2, Lot9;

    .line 543
    .line 544
    sget-object v3, Lle9;->i:Lyq0;

    .line 545
    .line 546
    invoke-direct {v2, v3, v0}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    move-object v0, v2

    .line 550
    goto :goto_c

    .line 551
    :cond_14
    move-object v7, v10

    .line 552
    move-object/from16 v3, v16

    .line 553
    .line 554
    const/4 v11, 0x1

    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :catchall_0
    move-exception v0

    .line 558
    move-object/from16 v16, v3

    .line 559
    .line 560
    :goto_9
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 561
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 562
    :catch_3
    move-exception v0

    .line 563
    goto :goto_a

    .line 564
    :catch_4
    move-exception v0

    .line 565
    goto :goto_b

    .line 566
    :catchall_1
    move-exception v0

    .line 567
    goto :goto_9

    .line 568
    :goto_a
    sget-object v3, Lle9;->h:Lyq0;

    .line 569
    .line 570
    const-string v4, "Got exception trying to get purchases try to reconnect"

    .line 571
    .line 572
    invoke-virtual {v2, v3, v12, v4, v0}, Ldq0;->x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    goto :goto_c

    .line 577
    :goto_b
    sget-object v3, Lle9;->j:Lyq0;

    .line 578
    .line 579
    const-string v4, "Got exception trying to get purchases try to reconnect"

    .line 580
    .line 581
    invoke-virtual {v2, v3, v12, v4, v0}, Ldq0;->x(Lyq0;ILjava/lang/String;Ljava/lang/Exception;)Lot9;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    :goto_c
    iget-object v2, v0, Lot9;->a:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v2, Ljava/util/List;

    .line 588
    .line 589
    iget-object v1, v1, Ly99;->a:Llq0;

    .line 590
    .line 591
    iget-object v0, v0, Lot9;->b:Ljava/lang/Object;

    .line 592
    .line 593
    check-cast v0, Lyq0;

    .line 594
    .line 595
    if-eqz v2, :cond_15

    .line 596
    .line 597
    invoke-virtual {v1, v0, v2}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 598
    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_15
    sget-object v2, Lma9;->b:Lga9;

    .line 602
    .line 603
    sget-object v2, Lmb9;->e:Lmb9;

    .line 604
    .line 605
    invoke-virtual {v1, v0, v2}, Llq0;->b(Lyq0;Ljava/util/List;)V

    .line 606
    .line 607
    .line 608
    :goto_d
    return-object v16
.end method
