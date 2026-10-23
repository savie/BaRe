.class public final synthetic Lpu;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpu;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lpu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lpu;->a:I

    .line 4
    .line 5
    const/16 v1, 0xc

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    sget-object v4, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 16
    .line 17
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_1
    sget-object v0, Lhy7;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lrw6;

    .line 46
    .line 47
    invoke-virtual {v1}, Lrw6;->a()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v4

    .line 52
    :pswitch_2
    sget-object v0, Ltv7;->a:Lgv7;

    .line 53
    .line 54
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/app/WallpaperManager;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_3
    sget-boolean v0, Lj36;->a:Z

    .line 66
    .line 67
    const-string v0, "checkAppVersionLimits:"

    .line 68
    .line 69
    return-object v0

    .line 70
    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lbb9;->p(Ljava/util/List;)[Lp77;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_5
    sget-object v0, Lnq5;->i:Ljq5;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljq5;->c()Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->getCurrentAccount()Lcom/microsoft/identity/client/CurrentAccountResult;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/microsoft/identity/client/CurrentAccountResult;->getCurrentAccount()Lcom/microsoft/identity/client/Account;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :cond_1
    if-eqz v5, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/microsoft/identity/client/SingleAccountPublicClientApplication;->signOut()V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-object v4

    .line 104
    :pswitch_6
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->l()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :pswitch_7
    sget-object v0, Llr4;->a:Llr4;

    .line 110
    .line 111
    invoke-virtual {v0}, Llr4;->a()V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lzn4;->a:Lzn4;

    .line 115
    .line 116
    new-instance v0, Lzk;

    .line 117
    .line 118
    invoke-direct {v0, v1}, Lzk;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 122
    .line 123
    .line 124
    return-object v4

    .line 125
    :pswitch_8
    :try_start_0
    sget-object v0, Lis3;->b:[Ljava/lang/String;

    .line 126
    .line 127
    sget-object v0, Lis3;->c:Los4;

    .line 128
    .line 129
    invoke-interface {v0}, Los4;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/reflect/Method;

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    const-string v1, "beginTransaction"

    .line 144
    .line 145
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    const-class v3, Landroid/database/sqlite/SQLiteTransactionListener;

    .line 148
    .line 149
    const-class v4, Landroid/os/CancellationSignal;

    .line 150
    .line 151
    filled-new-array {v2, v3, v2, v4}, [Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    :cond_3
    return-object v5

    .line 160
    :pswitch_9
    const-string v0, "android.app.AppGlobals"

    .line 161
    .line 162
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "getInitialApplication"

    .line 167
    .line 168
    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    check-cast v0, Landroid/content/Context;

    .line 180
    .line 181
    return-object v0

    .line 182
    :pswitch_a
    sget-boolean v0, Lg42;->a:Z

    .line 183
    .line 184
    const-string v0, "AQJsvgPIWGfAiq5risdnW6vfjgSw4NTELqfQ5wn9X3kc2mqKfSNiYh5E1AGV"

    .line 185
    .line 186
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    return-object v0

    .line 191
    :pswitch_b
    sget-boolean v0, Lg42;->a:Z

    .line 192
    .line 193
    const-string v0, "AQIr8BT+XwlksNjHdo8ZxExnNgb0Bc/rlKapuBzYlvDFlpy6GmP07xplcZWUvkBDoA=="

    .line 194
    .line 195
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    return-object v0

    .line 200
    :pswitch_c
    sget-boolean v0, Lg42;->a:Z

    .line 201
    .line 202
    const-string v0, "AQIViqEPNwjYGy2pzB6SAY7fxNdv3+GiR4IZs0b7f+fwYc6UU7iifzLyKm/j3qOF8RFi+IOewM9qJK+Om1vjbhdKzBmzhC7uxEJiH3CoXQ=="

    .line 203
    .line 204
    invoke-static {v0}, Lg42;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    return-object v0

    .line 209
    :pswitch_d
    new-instance v0, Lgx2;

    .line 210
    .line 211
    sget-object v1, Lgx2;->b:Ljava/nio/charset/Charset;

    .line 212
    .line 213
    const-string v2, "SwiftBackup_Entity"

    .line 214
    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v1, v0, Lgx2;->a:[B

    .line 223
    .line 224
    return-object v0

    .line 225
    :pswitch_e
    sget v0, Lorg/swiftapps/swiftbackup/messagescalls/conversationsview/ConversationsActivity;->O:I

    .line 226
    .line 227
    new-instance v0, Luv1;

    .line 228
    .line 229
    invoke-direct {v0, v5}, Lgm7;-><init>(Lfm7;)V

    .line 230
    .line 231
    .line 232
    return-object v0

    .line 233
    :pswitch_f
    invoke-static {}, Ldd1;->x()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    :pswitch_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v4, Lpw5;

    .line 243
    .line 244
    const-string v2, "android.permission.READ_CALENDAR"

    .line 245
    .line 246
    invoke-direct {v4, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    const/4 v0, 0x1

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v5, Lpw5;

    .line 255
    .line 256
    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 257
    .line 258
    invoke-direct {v5, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    new-instance v6, Lpw5;

    .line 266
    .line 267
    const-string v2, "android.permission.READ_CALL_LOG"

    .line 268
    .line 269
    invoke-direct {v6, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const/4 v0, 0x3

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v7, Lpw5;

    .line 278
    .line 279
    const-string v2, "android.permission.WRITE_CALL_LOG"

    .line 280
    .line 281
    invoke-direct {v7, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    const/4 v0, 0x4

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    new-instance v8, Lpw5;

    .line 290
    .line 291
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 292
    .line 293
    invoke-direct {v8, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    const/4 v0, 0x5

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    new-instance v9, Lpw5;

    .line 302
    .line 303
    const-string v2, "android.permission.CAMERA"

    .line 304
    .line 305
    invoke-direct {v9, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    const/4 v0, 0x6

    .line 309
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    new-instance v10, Lpw5;

    .line 314
    .line 315
    const-string v2, "android.permission.READ_CONTACTS"

    .line 316
    .line 317
    invoke-direct {v10, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    const/4 v0, 0x7

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    new-instance v11, Lpw5;

    .line 326
    .line 327
    const-string v2, "android.permission.WRITE_CONTACTS"

    .line 328
    .line 329
    invoke-direct {v11, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    const/16 v0, 0x8

    .line 333
    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    new-instance v12, Lpw5;

    .line 339
    .line 340
    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 341
    .line 342
    invoke-direct {v12, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    const/16 v0, 0x9

    .line 346
    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    new-instance v13, Lpw5;

    .line 352
    .line 353
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 354
    .line 355
    invoke-direct {v13, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    const/16 v0, 0xa

    .line 359
    .line 360
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    new-instance v14, Lpw5;

    .line 365
    .line 366
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 367
    .line 368
    invoke-direct {v14, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    const/16 v0, 0xb

    .line 372
    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    new-instance v15, Lpw5;

    .line 378
    .line 379
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 380
    .line 381
    invoke-direct {v15, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    new-instance v1, Lpw5;

    .line 389
    .line 390
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 391
    .line 392
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const/16 v0, 0xd

    .line 396
    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    new-instance v2, Lpw5;

    .line 402
    .line 403
    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    .line 404
    .line 405
    invoke-direct {v2, v0, v3}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    const/16 v0, 0xe

    .line 409
    .line 410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    new-instance v3, Lpw5;

    .line 415
    .line 416
    move-object/from16 v16, v1

    .line 417
    .line 418
    const-string v1, "android.permission.CALL_PHONE"

    .line 419
    .line 420
    invoke-direct {v3, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    const/16 v0, 0xf

    .line 424
    .line 425
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    new-instance v1, Lpw5;

    .line 430
    .line 431
    move-object/from16 v17, v2

    .line 432
    .line 433
    const-string v2, "android.permission.ANSWER_PHONE_CALLS"

    .line 434
    .line 435
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    const/16 v0, 0x10

    .line 439
    .line 440
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    new-instance v2, Lpw5;

    .line 445
    .line 446
    move-object/from16 v19, v1

    .line 447
    .line 448
    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 449
    .line 450
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    const/16 v0, 0x11

    .line 454
    .line 455
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    new-instance v1, Lpw5;

    .line 460
    .line 461
    move-object/from16 v20, v2

    .line 462
    .line 463
    const-string v2, "android.permission.USE_SIP"

    .line 464
    .line 465
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    const/16 v0, 0x12

    .line 469
    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    new-instance v2, Lpw5;

    .line 475
    .line 476
    move-object/from16 v21, v1

    .line 477
    .line 478
    const-string v1, "android.permission.BODY_SENSORS"

    .line 479
    .line 480
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    const/16 v0, 0x13

    .line 484
    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    new-instance v1, Lpw5;

    .line 490
    .line 491
    move-object/from16 v22, v2

    .line 492
    .line 493
    const-string v2, "android.permission.SEND_SMS"

    .line 494
    .line 495
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    const/16 v0, 0x14

    .line 499
    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    new-instance v2, Lpw5;

    .line 505
    .line 506
    move-object/from16 v23, v1

    .line 507
    .line 508
    const-string v1, "android.permission.RECEIVE_SMS"

    .line 509
    .line 510
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    const/16 v0, 0x15

    .line 514
    .line 515
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v1, Lpw5;

    .line 520
    .line 521
    move-object/from16 v24, v2

    .line 522
    .line 523
    const-string v2, "android.permission.READ_SMS"

    .line 524
    .line 525
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    const/16 v0, 0x16

    .line 529
    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    new-instance v2, Lpw5;

    .line 535
    .line 536
    move-object/from16 v25, v1

    .line 537
    .line 538
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    .line 539
    .line 540
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    const/16 v0, 0x17

    .line 544
    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    new-instance v1, Lpw5;

    .line 550
    .line 551
    move-object/from16 v26, v2

    .line 552
    .line 553
    const-string v2, "android.permission.RECEIVE_MMS"

    .line 554
    .line 555
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    .line 557
    .line 558
    const/16 v0, 0x18

    .line 559
    .line 560
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    new-instance v2, Lpw5;

    .line 565
    .line 566
    move-object/from16 v27, v1

    .line 567
    .line 568
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 569
    .line 570
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    const/16 v0, 0x19

    .line 574
    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    new-instance v1, Lpw5;

    .line 580
    .line 581
    move-object/from16 v28, v2

    .line 582
    .line 583
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 584
    .line 585
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    const/16 v0, 0x1a

    .line 589
    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-instance v2, Lpw5;

    .line 595
    .line 596
    move-object/from16 v29, v1

    .line 597
    .line 598
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 599
    .line 600
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    const/16 v0, 0x1b

    .line 604
    .line 605
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    new-instance v1, Lpw5;

    .line 610
    .line 611
    move-object/from16 v30, v2

    .line 612
    .line 613
    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    .line 614
    .line 615
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    const/16 v0, 0x1c

    .line 619
    .line 620
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    new-instance v2, Lpw5;

    .line 625
    .line 626
    move-object/from16 v31, v1

    .line 627
    .line 628
    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 629
    .line 630
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    const/16 v0, 0x1d

    .line 634
    .line 635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    new-instance v1, Lpw5;

    .line 640
    .line 641
    move-object/from16 v32, v2

    .line 642
    .line 643
    const-string v2, "android.permission.ACCESS_NOTIFICATION_POLICY"

    .line 644
    .line 645
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    const/16 v0, 0x1e

    .line 649
    .line 650
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    new-instance v2, Lpw5;

    .line 655
    .line 656
    move-object/from16 v33, v1

    .line 657
    .line 658
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 659
    .line 660
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    const/16 v0, 0x1f

    .line 664
    .line 665
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    new-instance v1, Lpw5;

    .line 670
    .line 671
    move-object/from16 v34, v2

    .line 672
    .line 673
    const-string v2, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 674
    .line 675
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    const/16 v0, 0x20

    .line 679
    .line 680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    new-instance v2, Lpw5;

    .line 685
    .line 686
    move-object/from16 v35, v1

    .line 687
    .line 688
    const-string v1, "RESTRICT_BACKGROUND_DATA_WHITELIST"

    .line 689
    .line 690
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    const/16 v0, 0x21

    .line 694
    .line 695
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    new-instance v1, Lpw5;

    .line 700
    .line 701
    move-object/from16 v36, v2

    .line 702
    .line 703
    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 704
    .line 705
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    const/16 v0, 0x22

    .line 709
    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    new-instance v2, Lpw5;

    .line 715
    .line 716
    move-object/from16 v37, v1

    .line 717
    .line 718
    const-string v1, "android.permission.BIND_VPN_SERVICE"

    .line 719
    .line 720
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    const/16 v0, 0x23

    .line 724
    .line 725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    new-instance v1, Lpw5;

    .line 730
    .line 731
    move-object/from16 v38, v2

    .line 732
    .line 733
    const-string v2, "android.permission.BIND_APPWIDGET"

    .line 734
    .line 735
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    const/16 v0, 0x24

    .line 739
    .line 740
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    new-instance v2, Lpw5;

    .line 745
    .line 746
    move-object/from16 v39, v1

    .line 747
    .line 748
    const-string v1, "MAGISK_HIDE"

    .line 749
    .line 750
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    const/16 v0, 0x25

    .line 754
    .line 755
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    new-instance v1, Lpw5;

    .line 760
    .line 761
    move-object/from16 v40, v2

    .line 762
    .line 763
    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 764
    .line 765
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    const/16 v0, 0x26

    .line 769
    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    new-instance v2, Lpw5;

    .line 775
    .line 776
    move-object/from16 v41, v1

    .line 777
    .line 778
    const-string v1, "RESTRICT_BACKGROUND_DATA_BLACKLIST"

    .line 779
    .line 780
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    const/16 v0, 0x27

    .line 784
    .line 785
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    new-instance v1, Lpw5;

    .line 790
    .line 791
    move-object/from16 v42, v2

    .line 792
    .line 793
    const-string v2, "RUN_IN_BACKGROUND_DISABLED"

    .line 794
    .line 795
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    const/16 v0, 0x28

    .line 799
    .line 800
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    new-instance v2, Lpw5;

    .line 805
    .line 806
    move-object/from16 v43, v1

    .line 807
    .line 808
    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    .line 809
    .line 810
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    .line 812
    .line 813
    const/16 v0, 0x29

    .line 814
    .line 815
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    new-instance v1, Lpw5;

    .line 820
    .line 821
    move-object/from16 v44, v2

    .line 822
    .line 823
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 824
    .line 825
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    const/16 v0, 0x2a

    .line 829
    .line 830
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    new-instance v2, Lpw5;

    .line 835
    .line 836
    move-object/from16 v45, v1

    .line 837
    .line 838
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 839
    .line 840
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    const/16 v0, 0x2b

    .line 844
    .line 845
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    new-instance v1, Lpw5;

    .line 850
    .line 851
    move-object/from16 v46, v2

    .line 852
    .line 853
    const-string v2, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 854
    .line 855
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 856
    .line 857
    .line 858
    const/16 v0, 0x2c

    .line 859
    .line 860
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    new-instance v2, Lpw5;

    .line 865
    .line 866
    move-object/from16 v47, v1

    .line 867
    .line 868
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    .line 869
    .line 870
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 871
    .line 872
    .line 873
    const/16 v0, 0x2d

    .line 874
    .line 875
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    new-instance v1, Lpw5;

    .line 880
    .line 881
    move-object/from16 v48, v2

    .line 882
    .line 883
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 884
    .line 885
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    .line 887
    .line 888
    const/16 v0, 0x2e

    .line 889
    .line 890
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    new-instance v2, Lpw5;

    .line 895
    .line 896
    move-object/from16 v49, v1

    .line 897
    .line 898
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 899
    .line 900
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 901
    .line 902
    .line 903
    const/16 v0, 0x2f

    .line 904
    .line 905
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    new-instance v1, Lpw5;

    .line 910
    .line 911
    move-object/from16 v50, v2

    .line 912
    .line 913
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 914
    .line 915
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    const/16 v0, 0x30

    .line 919
    .line 920
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    new-instance v2, Lpw5;

    .line 925
    .line 926
    move-object/from16 v51, v1

    .line 927
    .line 928
    const-string v1, "Wi-Fi Control disabled"

    .line 929
    .line 930
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    const/16 v0, 0x31

    .line 934
    .line 935
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    new-instance v1, Lpw5;

    .line 940
    .line 941
    move-object/from16 v52, v2

    .line 942
    .line 943
    const-string v2, "Picture-in-picture disabled"

    .line 944
    .line 945
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 946
    .line 947
    .line 948
    const/16 v0, 0x32

    .line 949
    .line 950
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    new-instance v2, Lpw5;

    .line 955
    .line 956
    move-object/from16 v53, v1

    .line 957
    .line 958
    const-string v1, "Turn screen on disabled"

    .line 959
    .line 960
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    const/16 v0, 0x33

    .line 964
    .line 965
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    new-instance v1, Lpw5;

    .line 970
    .line 971
    move-object/from16 v54, v2

    .line 972
    .line 973
    const-string v2, "Pause app activity if unused disabled"

    .line 974
    .line 975
    invoke-direct {v1, v0, v2}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 976
    .line 977
    .line 978
    const/16 v0, 0x34

    .line 979
    .line 980
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    new-instance v2, Lpw5;

    .line 985
    .line 986
    move-object/from16 v55, v1

    .line 987
    .line 988
    const-string v1, "android.permission.ACCESS_LOCAL_NETWORK"

    .line 989
    .line 990
    invoke-direct {v2, v0, v1}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 991
    .line 992
    .line 993
    move-object/from16 v56, v2

    .line 994
    .line 995
    move-object/from16 v18, v3

    .line 996
    .line 997
    filled-new-array/range {v4 .. v56}, [Lpw5;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    invoke-static {v0}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    return-object v0

    .line 1006
    nop

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
