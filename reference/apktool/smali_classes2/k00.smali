.class public final synthetic Lk00;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lk00;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lk00;->a:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lbe8;->a:Lbe8;

    .line 9
    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lls8;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    move-object v0, v3

    .line 38
    :cond_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move-object v6, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    const-string v0, "Unknown"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_2
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 51
    .line 52
    invoke-static {v5, v0}, Lx50;->q0(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move-object v0, v3

    .line 60
    :goto_3
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v5}, Lls8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-nez v5, :cond_4

    .line 67
    .line 68
    invoke-static {v0}, Lls8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :cond_4
    move-object v7, v5

    .line 73
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 74
    .line 75
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 76
    .line 77
    const/4 v8, 0x2

    .line 78
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_9

    .line 83
    .line 84
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 85
    .line 86
    const/4 v8, 0x3

    .line 87
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_9

    .line 92
    .line 93
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 94
    .line 95
    const/16 v8, 0xa

    .line 96
    .line 97
    invoke-virtual {v5, v8}, Ljava/util/BitSet;->get(I)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-gez v5, :cond_9

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-gtz v5, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_9

    .line 130
    .line 131
    :cond_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-eqz v5, :cond_7

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_9

    .line 142
    .line 143
    :cond_7
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-eqz v5, :cond_8

    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_9

    .line 154
    .line 155
    :cond_8
    move v2, v4

    .line 156
    :cond_9
    :goto_4
    if-nez v7, :cond_b

    .line 157
    .line 158
    if-eqz v2, :cond_a

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    move-object v13, v3

    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_b
    :goto_5
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-eqz v2, :cond_c

    .line 173
    .line 174
    if-ltz v4, :cond_c

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_c
    move-object v5, v3

    .line 178
    :goto_6
    if-eqz v5, :cond_d

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move-object v8, v4

    .line 189
    goto :goto_7

    .line 190
    :cond_d
    move-object v8, v3

    .line 191
    :goto_7
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    if-eqz v2, :cond_e

    .line 200
    .line 201
    if-ltz v4, :cond_e

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_e
    move-object v5, v3

    .line 205
    :goto_8
    if-eqz v5, :cond_f

    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    move-object v9, v2

    .line 216
    goto :goto_9

    .line 217
    :cond_f
    move-object v9, v3

    .line 218
    :goto_9
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    if-eqz v2, :cond_11

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_10

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_10
    move-object v10, v2

    .line 232
    goto :goto_b

    .line 233
    :cond_11
    :goto_a
    move-object v10, v3

    .line 234
    :goto_b
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    if-eqz v2, :cond_13

    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_12

    .line 245
    .line 246
    goto :goto_c

    .line 247
    :cond_12
    move-object v11, v2

    .line 248
    goto :goto_d

    .line 249
    :cond_13
    :goto_c
    move-object v11, v3

    .line 250
    :goto_d
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0}, Lls8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v12

    .line 258
    new-instance v5, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 259
    .line 260
    const/4 v13, 0x0

    .line 261
    const/4 v14, 0x0

    .line 262
    const/16 v15, 0x180

    .line 263
    .line 264
    const/16 v16, 0x0

    .line 265
    .line 266
    invoke-direct/range {v5 .. v16}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 267
    .line 268
    .line 269
    move-object v13, v5

    .line 270
    :goto_e
    new-instance v5, Let8;

    .line 271
    .line 272
    iget-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 273
    .line 274
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    move-object v9, v0

    .line 291
    check-cast v9, Ljava/util/BitSet;

    .line 292
    .line 293
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    move-object v10, v0

    .line 306
    check-cast v10, Ljava/util/BitSet;

    .line 307
    .line 308
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    move-object v11, v0

    .line 321
    check-cast v11, Ljava/util/BitSet;

    .line 322
    .line 323
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-object v12, v0

    .line 336
    check-cast v12, Ljava/util/BitSet;

    .line 337
    .line 338
    invoke-direct/range {v5 .. v13}, Let8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/BitSet;Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;)V

    .line 339
    .line 340
    .line 341
    return-object v5

    .line 342
    :pswitch_0
    move-object/from16 v1, p1

    .line 343
    .line 344
    check-cast v1, Lux5;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v0, Lby5;

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Lby5;->j(Lux5;)V

    .line 354
    .line 355
    .line 356
    return-object v5

    .line 357
    :pswitch_1
    move-object/from16 v1, p1

    .line 358
    .line 359
    check-cast v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 360
    .line 361
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/k;

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lorg/swiftapps/swiftbackup/settings/k;->j(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 369
    .line 370
    .line 371
    return-object v5

    .line 372
    :pswitch_2
    move-object/from16 v1, p1

    .line 373
    .line 374
    check-cast v1, Lmf4;

    .line 375
    .line 376
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    sget-object v2, Lmf4;->IDLE:Lmf4;

    .line 387
    .line 388
    if-ne v1, v2, :cond_14

    .line 389
    .line 390
    invoke-static {}, Lorg/swiftapps/swiftbackup/intro/d;->j()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_15

    .line 395
    .line 396
    invoke-virtual {v0}, Lqo0;->f()V

    .line 397
    .line 398
    .line 399
    goto :goto_f

    .line 400
    :cond_14
    const v1, 0x7f13042d

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v1}, Lqo0;->h(I)V

    .line 404
    .line 405
    .line 406
    :cond_15
    :goto_f
    return-object v5

    .line 407
    :pswitch_3
    move-object/from16 v1, p1

    .line 408
    .line 409
    check-cast v1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;

    .line 417
    .line 418
    iput-object v1, v0, Lorg/swiftapps/swiftbackup/folders/ui/FolderDetailActivity;->V:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 419
    .line 420
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    if-eqz v2, :cond_16

    .line 425
    .line 426
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v2, v1}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    :cond_16
    invoke-virtual {v0}, Lzm;->getSupportActionBar()Lnc8;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-eqz v1, :cond_17

    .line 438
    .line 439
    const v2, 0x7f130093

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v1, v0}, Lnc8;->d0(Ljava/lang/CharSequence;)V

    .line 447
    .line 448
    .line 449
    :cond_17
    return-object v5

    .line 450
    :pswitch_4
    move-object/from16 v1, p1

    .line 451
    .line 452
    check-cast v1, Ln00;

    .line 453
    .line 454
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 460
    .line 461
    sget v6, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O:I

    .line 462
    .line 463
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    iget-object v6, v6, Lm00;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 468
    .line 469
    invoke-virtual {v6}, Llo;->getText()Landroid/text/Editable;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    if-eqz v6, :cond_18

    .line 474
    .line 475
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    goto :goto_10

    .line 480
    :cond_18
    move-object v6, v3

    .line 481
    :goto_10
    iget-object v7, v1, Ln00;->b:Ljava/lang/String;

    .line 482
    .line 483
    iget-object v8, v1, Ln00;->a:Lv00;

    .line 484
    .line 485
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    if-nez v6, :cond_19

    .line 490
    .line 491
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 492
    .line 493
    .line 494
    move-result-object v6

    .line 495
    iget-object v6, v6, Lm00;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 496
    .line 497
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    iget-object v6, v6, Lm00;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 505
    .line 506
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 511
    .line 512
    .line 513
    :cond_19
    iget-boolean v6, v1, Ln00;->c:Z

    .line 514
    .line 515
    const/16 v9, 0x8

    .line 516
    .line 517
    if-eqz v6, :cond_1a

    .line 518
    .line 519
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-object v1, v1, Lm00;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 524
    .line 525
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    iget-object v1, v1, Lm00;->t:Landroid/widget/TextView;

    .line 533
    .line 534
    const v3, 0x7f13006c

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    iget-object v1, v1, Lm00;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 545
    .line 546
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    iget-object v1, v1, Lm00;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 554
    .line 555
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    iget-object v1, v1, Lm00;->r:Landroid/widget/TextView;

    .line 563
    .line 564
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v4, v2}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->P(ZZ)V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_14

    .line 571
    .line 572
    :cond_1a
    if-eqz v8, :cond_21

    .line 573
    .line 574
    iget v1, v8, Lv00;->a:I

    .line 575
    .line 576
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 577
    .line 578
    .line 579
    move-result-object v6

    .line 580
    iget-object v6, v6, Lm00;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 581
    .line 582
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    iget-object v6, v6, Lm00;->x:Landroid/widget/TextView;

    .line 590
    .line 591
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 592
    .line 593
    .line 594
    move-result-object v10

    .line 595
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    const v11, 0x7f13006d

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v10

    .line 606
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    iget-object v6, v6, Lm00;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 614
    .line 615
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v2, v4}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->P(ZZ)V

    .line 619
    .line 620
    .line 621
    iget-object v6, v8, Lv00;->c:Ljava/util/List;

    .line 622
    .line 623
    invoke-static {v7}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    if-nez v7, :cond_1b

    .line 632
    .line 633
    const-string v7, ""

    .line 634
    .line 635
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 636
    .line 637
    .line 638
    move-result v8

    .line 639
    if-nez v8, :cond_1c

    .line 640
    .line 641
    move-object v12, v6

    .line 642
    goto :goto_12

    .line 643
    :cond_1c
    new-instance v8, Ljava/util/ArrayList;

    .line 644
    .line 645
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .line 647
    .line 648
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    :cond_1d
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 653
    .line 654
    .line 655
    move-result v9

    .line 656
    if-eqz v9, :cond_1f

    .line 657
    .line 658
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v9

    .line 662
    move-object v10, v9

    .line 663
    check-cast v10, Lr00;

    .line 664
    .line 665
    iget-object v11, v10, Lr00;->a:Ljava/lang/String;

    .line 666
    .line 667
    invoke-static {v11, v7, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 668
    .line 669
    .line 670
    move-result v11

    .line 671
    if-nez v11, :cond_1e

    .line 672
    .line 673
    iget-object v10, v10, Lr00;->b:Ljava/lang/String;

    .line 674
    .line 675
    invoke-static {v10, v7, v2}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 676
    .line 677
    .line 678
    move-result v10

    .line 679
    if-eqz v10, :cond_1d

    .line 680
    .line 681
    :cond_1e
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    goto :goto_11

    .line 685
    :cond_1f
    move-object v12, v8

    .line 686
    :goto_12
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->M:Lgv7;

    .line 687
    .line 688
    invoke-virtual {v6}, Lgv7;->getValue()Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v6

    .line 692
    check-cast v6, Lt00;

    .line 693
    .line 694
    new-instance v11, Lfm7;

    .line 695
    .line 696
    const/4 v15, 0x0

    .line 697
    const/16 v16, 0x1e

    .line 698
    .line 699
    const/4 v13, 0x0

    .line 700
    const/4 v14, 0x0

    .line 701
    invoke-direct/range {v11 .. v16}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v6, v11, v4}, Lgm7;->w(Lfm7;Z)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 708
    .line 709
    .line 710
    move-result-object v6

    .line 711
    iget-object v6, v6, Lm00;->t:Landroid/widget/TextView;

    .line 712
    .line 713
    invoke-virtual {v0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 714
    .line 715
    .line 716
    move-result-object v7

    .line 717
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 718
    .line 719
    .line 720
    move-result v8

    .line 721
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object v8

    .line 725
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v8

    .line 733
    const/high16 v9, 0x7f110000

    .line 734
    .line 735
    invoke-virtual {v7, v9, v1, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 743
    .line 744
    .line 745
    move-result-object v6

    .line 746
    iget-object v6, v6, Lm00;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 747
    .line 748
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    xor-int/2addr v2, v7

    .line 753
    invoke-static {v6, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    iget-object v2, v2, Lm00;->r:Landroid/widget/TextView;

    .line 761
    .line 762
    if-nez v1, :cond_20

    .line 763
    .line 764
    const v1, 0x7f130069

    .line 765
    .line 766
    .line 767
    goto :goto_13

    .line 768
    :cond_20
    const v1, 0x7f13006a

    .line 769
    .line 770
    .line 771
    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 772
    .line 773
    .line 774
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    invoke-static {v2, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 779
    .line 780
    .line 781
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N:Ljava/lang/Integer;

    .line 782
    .line 783
    if-eqz v1, :cond_22

    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    iput-object v3, v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N:Ljava/lang/Integer;

    .line 790
    .line 791
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 792
    .line 793
    .line 794
    move-result-object v2

    .line 795
    iget-object v2, v2, Lm00;->p:Landroidx/core/widget/NestedScrollView;

    .line 796
    .line 797
    new-instance v3, Lj00;

    .line 798
    .line 799
    invoke-direct {v3, v0, v1, v4}, Lj00;-><init>(Ljava/lang/Object;II)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 803
    .line 804
    .line 805
    goto :goto_14

    .line 806
    :cond_21
    iget-object v1, v1, Ln00;->d:Ljava/lang/String;

    .line 807
    .line 808
    if-eqz v1, :cond_22

    .line 809
    .line 810
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    iget-object v2, v2, Lm00;->k:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 815
    .line 816
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    iget-object v2, v2, Lm00;->q:Lcom/google/android/material/card/MaterialCardView;

    .line 824
    .line 825
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    iget-object v2, v2, Lm00;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 833
    .line 834
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 838
    .line 839
    .line 840
    move-result-object v2

    .line 841
    iget-object v2, v2, Lm00;->r:Landroid/widget/TextView;

    .line 842
    .line 843
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 847
    .line 848
    .line 849
    move-result-object v2

    .line 850
    iget-object v2, v2, Lm00;->t:Landroid/widget/TextView;

    .line 851
    .line 852
    const v6, 0x7f13006b

    .line 853
    .line 854
    .line 855
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v4, v4}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->P(ZZ)V

    .line 867
    .line 868
    .line 869
    iget-object v1, v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N:Ljava/lang/Integer;

    .line 870
    .line 871
    if-eqz v1, :cond_22

    .line 872
    .line 873
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    iput-object v3, v0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N:Ljava/lang/Integer;

    .line 878
    .line 879
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->N()Lm00;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    iget-object v2, v2, Lm00;->p:Landroidx/core/widget/NestedScrollView;

    .line 884
    .line 885
    new-instance v3, Lj00;

    .line 886
    .line 887
    invoke-direct {v3, v0, v1, v4}, Lj00;-><init>(Ljava/lang/Object;II)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 891
    .line 892
    .line 893
    :cond_22
    :goto_14
    return-object v5

    .line 894
    nop

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
