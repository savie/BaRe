.class public final synthetic Lkn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkn3;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkn3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkn3;->a:I

    .line 4
    .line 5
    sget-object v2, Lov2;->a:Lov2;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    sget-object v5, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    iget-object v0, v0, Lkn3;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Lgt8;

    .line 19
    .line 20
    iget-object v1, v0, Lgt8;->b:Lq63;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v6}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    invoke-interface {v2, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v5, v7

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eq v8, v6, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-ne v8, v4, :cond_0

    .line 52
    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v2, v0

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 65
    .line 66
    .line 67
    const-string v1, "WifiConfigStoreData"

    .line 68
    .line 69
    invoke-static {v5, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_c

    .line 74
    .line 75
    iget-object v0, v0, Lgt8;->b:Lq63;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lq63;->a()Ljava/io/BufferedReader;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :try_start_1
    invoke-static {v2}, Lrs9;->p(Ljava/io/BufferedReader;)Lf77;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v4, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v5, "<Network>"

    .line 99
    .line 100
    const-string v8, "</Network>"

    .line 101
    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    check-cast v0, Lws1;

    .line 108
    .line 109
    invoke-virtual {v0}, Lws1;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    move v10, v3

    .line 114
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    if-eqz v11, :cond_5

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    check-cast v11, Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v11, v5, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_3

    .line 131
    .line 132
    move v10, v6

    .line 133
    :cond_3
    if-eqz v10, :cond_4

    .line 134
    .line 135
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v12, "\n"

    .line 139
    .line 140
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    move-object v1, v0

    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_4
    :goto_2
    invoke-static {v11, v8, v3}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_2

    .line 153
    .line 154
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 166
    .line 167
    .line 168
    sget-object v8, Lvr6;->INSTANCE:Lvr6;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v0, " network items found"

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    const/4 v12, 0x4

    .line 192
    const/4 v13, 0x0

    .line 193
    const-string v9, "WifiPasswordParser"

    .line 194
    .line 195
    const/4 v11, 0x0

    .line 196
    invoke-static/range {v8 .. v13}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_b

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/String;

    .line 214
    .line 215
    sget-object v3, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->Companion:Lsx5;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    const-string v3, "SSID"

    .line 224
    .line 225
    const-string v4, "WifiConfiguration"

    .line 226
    .line 227
    invoke-static {v2, v4, v3}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    if-eqz v3, :cond_9

    .line 232
    .line 233
    const-string v5, "&quot;"

    .line 234
    .line 235
    const-string v6, ""

    .line 236
    .line 237
    invoke-static {v3, v5, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const-string v8, "PreSharedKey"

    .line 242
    .line 243
    invoke-static {v2, v4, v8}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    if-eqz v4, :cond_7

    .line 248
    .line 249
    invoke-static {v4, v5, v6}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    goto :goto_4

    .line 254
    :cond_7
    move-object v4, v7

    .line 255
    :goto_4
    const-string v5, "EapMethod"

    .line 256
    .line 257
    const-string v6, "WifiEnterpriseConfiguration"

    .line 258
    .line 259
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    const-string v5, "Phase2Method"

    .line 264
    .line 265
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    const-string v5, "Identity"

    .line 270
    .line 271
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    const-string v5, "AnonIdentity"

    .line 276
    .line 277
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v14

    .line 281
    const-string v5, "Password"

    .line 282
    .line 283
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    const-string v5, "CaCert"

    .line 288
    .line 289
    invoke-static {v2, v6, v5}, Lz85;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v16

    .line 293
    new-instance v8, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;

    .line 294
    .line 295
    invoke-static {v3}, Lsx5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    if-eqz v9, :cond_8

    .line 300
    .line 301
    invoke-static {v4}, Lsx5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v10

    .line 305
    move-object/from16 v17, v2

    .line 306
    .line 307
    invoke-direct/range {v8 .. v17}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_8
    const-string v0, "Required value was null."

    .line 312
    .line 313
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    move-object v8, v7

    .line 318
    :goto_5
    if-nez v8, :cond_a

    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_a
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/wifi/PasswordInfo;->isValid()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_6

    .line 326
    .line 327
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_b
    sget-object v9, Lvr6;->INSTANCE:Lvr6;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v0, " valid network items that require backup"

    .line 346
    .line 347
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    const/4 v13, 0x4

    .line 355
    const/4 v14, 0x0

    .line 356
    const-string v10, "WifiPasswordParser"

    .line 357
    .line 358
    const/4 v12, 0x0

    .line 359
    invoke-static/range {v9 .. v14}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    move-object v7, v1

    .line 363
    goto :goto_7

    .line 364
    :goto_6
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 365
    :catchall_2
    move-exception v0

    .line 366
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :cond_c
    const-string v0, "Unexpected Wi-Fi config XML root"

    .line 371
    .line 372
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :goto_7
    return-object v7

    .line 376
    :goto_8
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 377
    :catchall_3
    move-exception v0

    .line 378
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;

    .line 383
    .line 384
    sget-object v1, Lorg/swiftapps/swiftbackup/wifi/WifiActivity;->Y:Let8;

    .line 385
    .line 386
    new-instance v1, Lw45;

    .line 387
    .line 388
    invoke-direct {v1, v0}, Lw45;-><init>(Lio1;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 392
    .line 393
    .line 394
    iput v6, v1, Lw45;->r:I

    .line 395
    .line 396
    invoke-virtual {v1, v7}, Lw45;->n(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-object v1

    .line 400
    :pswitch_1
    check-cast v0, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;

    .line 401
    .line 402
    sget v1, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->c0:I

    .line 403
    .line 404
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/tasks/ui/TaskActivity;->N()Lay7;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    iget-object v0, v0, Lay7;->b:Lcom/google/android/material/button/MaterialButton;

    .line 409
    .line 410
    return-object v0

    .line 411
    :pswitch_2
    check-cast v0, Lzn7;

    .line 412
    .line 413
    iget-boolean v1, v0, Lzn7;->c:Z

    .line 414
    .line 415
    if-eqz v1, :cond_d

    .line 416
    .line 417
    const v0, 0x7f0801fa

    .line 418
    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_d
    iget-boolean v0, v0, Lzn7;->b:Z

    .line 422
    .line 423
    if-eqz v0, :cond_e

    .line 424
    .line 425
    const v0, 0x7f0801f9

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_e
    const v0, 0x7f0801f8

    .line 430
    .line 431
    .line 432
    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    return-object v0

    .line 437
    :pswitch_3
    check-cast v0, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;

    .line 438
    .line 439
    sget v1, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->X:I

    .line 440
    .line 441
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/schedule/ScheduleLabelsSelectActivity;->O()Lv37;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iput-object v2, v0, Lv37;->g:Ljava/util/List;

    .line 446
    .line 447
    new-instance v1, Las4;

    .line 448
    .line 449
    const/16 v2, 0xd

    .line 450
    .line 451
    invoke-direct {v1, v0, v2}, Las4;-><init>(Ljava/lang/Object;I)V

    .line 452
    .line 453
    .line 454
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 455
    .line 456
    .line 457
    return-object v5

    .line 458
    :pswitch_4
    check-cast v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 459
    .line 460
    sget v1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->R:I

    .line 461
    .line 462
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/slog/SLogActivity;->L:Lgv7;

    .line 463
    .line 464
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Lth7;

    .line 469
    .line 470
    iget-object v0, v0, Lth7;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 471
    .line 472
    return-object v0

    .line 473
    :pswitch_5
    check-cast v0, Lqx5;

    .line 474
    .line 475
    iget-object v1, v0, Lqx5;->a:Lgw6;

    .line 476
    .line 477
    iget-object v0, v0, Lqx5;->b:Ljava/lang/String;

    .line 478
    .line 479
    invoke-interface {v1, v0}, Lgw6;->open(Ljava/lang/String;)Lfw6;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    return-object v0

    .line 484
    :pswitch_6
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 485
    .line 486
    sget v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 487
    .line 488
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    if-eqz v0, :cond_f

    .line 493
    .line 494
    const-string v1, "extra_mbs_strategy"

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 501
    .line 502
    if-nez v0, :cond_10

    .line 503
    .line 504
    :cond_f
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 505
    .line 506
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 507
    .line 508
    .line 509
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->a()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    :cond_10
    return-object v0

    .line 514
    :pswitch_7
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;

    .line 515
    .line 516
    sget v1, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->c0:I

    .line 517
    .line 518
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/messagescalls/backuprestore/MessagesBackupRestoreActivity;->a0()Lli7;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iget-object v0, v0, Lli7;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 523
    .line 524
    return-object v0

    .line 525
    :pswitch_8
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;

    .line 526
    .line 527
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 528
    .line 529
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->N()Lub5;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    iget-object v0, v0, Lub5;->k:Lx00;

    .line 534
    .line 535
    iget-object v0, v0, Lx00;->c:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 538
    .line 539
    return-object v0

    .line 540
    :pswitch_9
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 541
    .line 542
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 543
    .line 544
    const/4 v10, 0x4

    .line 545
    const/4 v11, 0x0

    .line 546
    const-string v7, "LoginHelper"

    .line 547
    .line 548
    const-string v8, "Sign out initiated by user"

    .line 549
    .line 550
    const/4 v9, 0x0

    .line 551
    invoke-static/range {v6 .. v11}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    const/16 v1, 0xbbd

    .line 555
    .line 556
    invoke-static {v0, v1}, Lhz3;->c(Landroid/app/Activity;I)V

    .line 557
    .line 558
    .line 559
    return-object v5

    .line 560
    :pswitch_a
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;

    .line 561
    .line 562
    sget v1, Lorg/swiftapps/swiftbackup/settings/LicensesActivity;->L:I

    .line 563
    .line 564
    invoke-virtual {v0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    const v2, 0x7f12000f

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    invoke-static {v1}, Lcy0;->E(Ljava/io/InputStream;)[B

    .line 579
    .line 580
    .line 581
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 582
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const v1, 0x7f12000e

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    sget-object v1, Lf51;->a:Ljava/nio/charset/Charset;

    .line 600
    .line 601
    new-instance v3, Ljava/io/InputStreamReader;

    .line 602
    .line 603
    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 604
    .line 605
    .line 606
    new-instance v0, Ljava/io/BufferedReader;

    .line 607
    .line 608
    const/16 v1, 0x2000

    .line 609
    .line 610
    invoke-direct {v0, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 611
    .line 612
    .line 613
    invoke-static {v0}, Lrs9;->q(Ljava/io/BufferedReader;)Ljava/util/ArrayList;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v1, "^(\\d+):(\\d+)\\s+(.+)$"

    .line 618
    .line 619
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    new-instance v3, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    :cond_11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    const/4 v8, 0x3

    .line 640
    if-eqz v5, :cond_1b

    .line 641
    .line 642
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    check-cast v5, Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {v5}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 657
    .line 658
    .line 659
    move-result v9

    .line 660
    if-nez v9, :cond_13

    .line 661
    .line 662
    :cond_12
    :goto_b
    move-object v9, v7

    .line 663
    goto/16 :goto_f

    .line 664
    .line 665
    :cond_13
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 666
    .line 667
    .line 668
    move-result-object v9

    .line 669
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 673
    .line 674
    .line 675
    move-result v10

    .line 676
    if-nez v10, :cond_14

    .line 677
    .line 678
    move-object v10, v7

    .line 679
    goto :goto_c

    .line 680
    :cond_14
    new-instance v10, Lu75;

    .line 681
    .line 682
    invoke-direct {v10, v9, v5}, Lu75;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 683
    .line 684
    .line 685
    :goto_c
    if-nez v10, :cond_15

    .line 686
    .line 687
    goto :goto_b

    .line 688
    :cond_15
    invoke-virtual {v10}, Lu75;->a()Ljava/util/List;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    check-cast v5, Ls75;

    .line 693
    .line 694
    invoke-virtual {v5, v6}, Ls75;->get(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    check-cast v5, Ljava/lang/String;

    .line 699
    .line 700
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 701
    .line 702
    .line 703
    move-result v5

    .line 704
    invoke-virtual {v10}, Lu75;->a()Ljava/util/List;

    .line 705
    .line 706
    .line 707
    move-result-object v9

    .line 708
    check-cast v9, Ls75;

    .line 709
    .line 710
    invoke-virtual {v9, v4}, Ls75;->get(I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v9

    .line 714
    check-cast v9, Ljava/lang/String;

    .line 715
    .line 716
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    move-result v9

    .line 720
    invoke-virtual {v10}, Lu75;->a()Ljava/util/List;

    .line 721
    .line 722
    .line 723
    move-result-object v10

    .line 724
    check-cast v10, Ls75;

    .line 725
    .line 726
    invoke-virtual {v10, v8}, Ls75;->get(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    check-cast v8, Ljava/lang/String;

    .line 731
    .line 732
    invoke-static {v8}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 733
    .line 734
    .line 735
    move-result-object v8

    .line 736
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 741
    .line 742
    .line 743
    move-result v10

    .line 744
    if-lez v10, :cond_16

    .line 745
    .line 746
    goto :goto_d

    .line 747
    :cond_16
    move-object v8, v7

    .line 748
    :goto_d
    if-nez v8, :cond_17

    .line 749
    .line 750
    goto :goto_b

    .line 751
    :cond_17
    if-ltz v5, :cond_12

    .line 752
    .line 753
    add-int/2addr v9, v5

    .line 754
    array-length v10, v2

    .line 755
    if-le v9, v10, :cond_18

    .line 756
    .line 757
    goto :goto_b

    .line 758
    :cond_18
    new-instance v10, Ljava/lang/String;

    .line 759
    .line 760
    invoke-static {v2, v5, v9}, Lx50;->k0([BII)[B

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    sget-object v9, Lf51;->a:Ljava/nio/charset/Charset;

    .line 765
    .line 766
    invoke-direct {v10, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 767
    .line 768
    .line 769
    invoke-static {v10}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 770
    .line 771
    .line 772
    move-result-object v5

    .line 773
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 778
    .line 779
    .line 780
    move-result v9

    .line 781
    if-lez v9, :cond_19

    .line 782
    .line 783
    goto :goto_e

    .line 784
    :cond_19
    move-object v5, v7

    .line 785
    :goto_e
    if-nez v5, :cond_1a

    .line 786
    .line 787
    goto :goto_b

    .line 788
    :cond_1a
    new-instance v9, Lnt4;

    .line 789
    .line 790
    invoke-direct {v9, v8, v5}, Lnt4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    :goto_f
    if-eqz v9, :cond_11

    .line 794
    .line 795
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    goto/16 :goto_a

    .line 799
    .line 800
    :cond_1b
    new-instance v0, Ljava/util/HashSet;

    .line 801
    .line 802
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 803
    .line 804
    .line 805
    new-instance v1, Ljava/util/ArrayList;

    .line 806
    .line 807
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    :cond_1c
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-eqz v3, :cond_1d

    .line 819
    .line 820
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    move-object v4, v3

    .line 825
    check-cast v4, Lnt4;

    .line 826
    .line 827
    iget-object v4, v4, Lnt4;->a:Ljava/lang/String;

    .line 828
    .line 829
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 830
    .line 831
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v4

    .line 835
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    if-eqz v4, :cond_1c

    .line 843
    .line 844
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    goto :goto_10

    .line 848
    :cond_1d
    new-instance v0, Ljc1;

    .line 849
    .line 850
    invoke-direct {v0, v8}, Ljc1;-><init>(I)V

    .line 851
    .line 852
    .line 853
    invoke-static {v1, v0}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    return-object v0

    .line 858
    :catchall_4
    move-exception v0

    .line 859
    move-object v2, v0

    .line 860
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 861
    :catchall_5
    move-exception v0

    .line 862
    invoke-static {v1, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 863
    .line 864
    .line 865
    throw v0

    .line 866
    :pswitch_b
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;

    .line 867
    .line 868
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->Z:I

    .line 869
    .line 870
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    if-eqz v1, :cond_22

    .line 875
    .line 876
    if-eq v1, v6, :cond_1f

    .line 877
    .line 878
    if-ne v1, v4, :cond_1e

    .line 879
    .line 880
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    const-string v1, "labels_extra_filtered_ids"

    .line 885
    .line 886
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    goto :goto_12

    .line 891
    :cond_1e
    new-instance v1, Lio5;

    .line 892
    .line 893
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->O()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    const-string v2, "Can\'t get selected label ids for mode "

    .line 898
    .line 899
    invoke-static {v0, v2}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 904
    .line 905
    .line 906
    throw v1

    .line 907
    :cond_1f
    iget-object v0, v0, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelsActivity;->N:Lgv7;

    .line 908
    .line 909
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v0, Lji;

    .line 914
    .line 915
    if-eqz v0, :cond_22

    .line 916
    .line 917
    invoke-virtual {v0}, Lji;->getLabels()Ljava/util/Set;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    if-eqz v0, :cond_22

    .line 922
    .line 923
    new-instance v1, Ljava/util/ArrayList;

    .line 924
    .line 925
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .line 927
    .line 928
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    :cond_20
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 933
    .line 934
    .line 935
    move-result v2

    .line 936
    if-eqz v2, :cond_21

    .line 937
    .line 938
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 943
    .line 944
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v2

    .line 948
    if-eqz v2, :cond_20

    .line 949
    .line 950
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    goto :goto_11

    .line 954
    :cond_21
    new-array v0, v3, [Ljava/lang/String;

    .line 955
    .line 956
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    check-cast v0, [Ljava/lang/String;

    .line 961
    .line 962
    goto :goto_12

    .line 963
    :cond_22
    move-object v0, v7

    .line 964
    :goto_12
    if-eqz v0, :cond_23

    .line 965
    .line 966
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 967
    .line 968
    .line 969
    move-result-object v7

    .line 970
    :cond_23
    return-object v7

    .line 971
    :pswitch_c
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 972
    .line 973
    sget v1, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 974
    .line 975
    const-class v1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 976
    .line 977
    invoke-static {v0, v1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    .line 979
    .line 980
    return-object v5

    .line 981
    :pswitch_d
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 982
    .line 983
    sget-object v1, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->X:Landroid/view/animation/PathInterpolator;

    .line 984
    .line 985
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->U()V

    .line 986
    .line 987
    .line 988
    return-object v5

    .line 989
    :pswitch_e
    check-cast v0, Lbt3;

    .line 990
    .line 991
    :try_start_6
    invoke-interface {v0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    check-cast v0, Ljava/util/List;
    :try_end_6
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 996
    .line 997
    move-object v2, v0

    .line 998
    :catch_0
    return-object v2

    .line 999
    :pswitch_f
    check-cast v0, La14;

    .line 1000
    .line 1001
    iget-object v0, v0, La14;->p:Lgv7;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    check-cast v0, Lb14;

    .line 1008
    .line 1009
    iget-object v0, v0, Lb14;->e:Landroid/widget/LinearLayout;

    .line 1010
    .line 1011
    return-object v0

    .line 1012
    :pswitch_10
    check-cast v0, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;

    .line 1013
    .line 1014
    sget v1, Lorg/swiftapps/swiftbackup/cloud/connect/GmsSignInActivity;->N:I

    .line 1015
    .line 1016
    new-instance v1, Lu22;

    .line 1017
    .line 1018
    invoke-direct {v1, v0}, Lu22;-><init>(Landroid/content/Context;)V

    .line 1019
    .line 1020
    .line 1021
    return-object v1

    .line 1022
    :pswitch_11
    check-cast v0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 1023
    .line 1024
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 1025
    .line 1026
    sget-object v1, Lzn4;->a:Lzn4;

    .line 1027
    .line 1028
    new-instance v1, Lmo3;

    .line 1029
    .line 1030
    invoke-direct {v1, v0, v6}, Lmo3;-><init>(Ljava/lang/Object;I)V

    .line 1031
    .line 1032
    .line 1033
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 1034
    .line 1035
    .line 1036
    return-object v5

    .line 1037
    :pswitch_12
    check-cast v0, Lln3;

    .line 1038
    .line 1039
    new-instance v1, Lao3;

    .line 1040
    .line 1041
    iget-object v0, v0, Lu35;->K:Ljk8;

    .line 1042
    .line 1043
    check-cast v0, Lmn3;

    .line 1044
    .line 1045
    iget-object v0, v0, Lmn3;->d:Lcp1;

    .line 1046
    .line 1047
    invoke-direct {v1, v0}, Lao3;-><init>(Lcp1;)V

    .line 1048
    .line 1049
    .line 1050
    return-object v1

    .line 1051
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
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
