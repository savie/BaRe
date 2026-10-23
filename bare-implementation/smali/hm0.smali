.class public final Lhm0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lhm0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhm0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lhm0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lar8;

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Lar8;->d()Ljava/net/Socket;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter p0
    :try_end_0
    .catch Lbr8; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iput-object v0, p0, Lar8;->b:Ljava/net/Socket;

    .line 18
    .line 19
    iget v3, p0, Lar8;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    :try_start_2
    iget-object v0, p0, Lar8;->b:Ljava/net/Socket;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :try_start_3
    iput-object v0, p0, Lar8;->b:Ljava/net/Socket;

    .line 31
    .line 32
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lar8;->a()V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_7

    .line 37
    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    :try_start_5
    new-instance v3, Ljava/io/DataInputStream;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v4, p0, Lar8;->h:Ldr;

    .line 63
    .line 64
    invoke-virtual {v4}, Ldr;->d()[B

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 69
    .line 70
    .line 71
    const/16 v4, 0x3e8

    .line 72
    .line 73
    new-array v5, v4, [B

    .line 74
    .line 75
    new-instance v6, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    move v7, v1

    .line 81
    move v8, v7

    .line 82
    :goto_1
    if-nez v7, :cond_5

    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const/4 v10, -0x1

    .line 89
    if-eq v9, v10, :cond_4

    .line 90
    .line 91
    int-to-byte v9, v9

    .line 92
    aput-byte v9, v5, v8

    .line 93
    .line 94
    add-int/lit8 v10, v8, 0x1

    .line 95
    .line 96
    const/16 v11, 0xa

    .line 97
    .line 98
    if-ne v9, v11, :cond_2

    .line 99
    .line 100
    add-int/lit8 v8, v8, -0x1

    .line 101
    .line 102
    aget-byte v8, v5, v8

    .line 103
    .line 104
    const/16 v9, 0xd

    .line 105
    .line 106
    if-ne v8, v9, :cond_2

    .line 107
    .line 108
    new-instance v8, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v9, Lar8;->m:Ljava/nio/charset/Charset;

    .line 111
    .line 112
    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v9, ""

    .line 120
    .line 121
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_1

    .line 126
    .line 127
    move v7, v2

    .line 128
    goto :goto_2

    .line 129
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :goto_2
    new-array v5, v4, [B

    .line 137
    .line 138
    move v8, v1

    .line 139
    goto :goto_1

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    goto/16 :goto_5

    .line 142
    .line 143
    :catch_1
    move-exception v0

    .line 144
    goto/16 :goto_6

    .line 145
    .line 146
    :cond_2
    if-eq v10, v4, :cond_3

    .line 147
    .line 148
    move v8, v10

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 151
    .line 152
    sget-object v1, Lar8;->m:Ljava/nio/charset/Charset;

    .line 153
    .line 154
    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lbr8;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "Unexpected long line in handshake: "

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw v1

    .line 180
    :cond_4
    new-instance v0, Lbr8;

    .line 181
    .line 182
    const-string v1, "Connection closed before handshake was complete"

    .line 183
    .line 184
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v0

    .line 188
    :cond_5
    iget-object v4, p0, Lar8;->h:Ldr;

    .line 189
    .line 190
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    check-cast v5, Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Ldr;->h(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    new-instance v4, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_6

    .line 219
    .line 220
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    check-cast v6, Ljava/lang/String;

    .line 225
    .line 226
    const-string v7, ": "

    .line 227
    .line 228
    const/4 v8, 0x2

    .line 229
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    aget-object v7, v6, v1

    .line 234
    .line 235
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 236
    .line 237
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    aget-object v6, v6, v2

    .line 242
    .line 243
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_6
    iget-object v1, p0, Lar8;->h:Ldr;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    invoke-static {v4}, Ldr;->g(Ljava/util/HashMap;)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lar8;->g:Ldr8;

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iput-object v0, v1, Ldr8;->f:Ljava/nio/channels/WritableByteChannel;

    .line 269
    .line 270
    iget-object v0, p0, Lar8;->f:Lcr8;

    .line 271
    .line 272
    iput-object v3, v0, Lcr8;->a:Ljava/io/DataInputStream;

    .line 273
    .line 274
    const/4 v0, 0x3

    .line 275
    iput v0, p0, Lar8;->a:I

    .line 276
    .line 277
    iget-object v1, p0, Lar8;->g:Ldr8;

    .line 278
    .line 279
    iget-object v1, v1, Ldr8;->g:Ljava/lang/Thread;

    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lar8;->c:Lc00;

    .line 285
    .line 286
    iget-object v2, v1, Lc00;->c:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v2, Lnr8;

    .line 289
    .line 290
    iget-object v2, v2, Lnr8;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 291
    .line 292
    new-instance v3, Lhu0;

    .line 293
    .line 294
    invoke-direct {v3, v1, v0}, Lhu0;-><init>(Ljava/lang/Object;I)V

    .line 295
    .line 296
    .line 297
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lar8;->f:Lcr8;

    .line 301
    .line 302
    invoke-virtual {v0}, Lcr8;->c()V
    :try_end_5
    .catch Lbr8; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 308
    :try_start_7
    throw v0
    :try_end_7
    .catch Lbr8; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 309
    :goto_5
    :try_start_8
    iget-object v1, p0, Lar8;->c:Lc00;

    .line 310
    .line 311
    new-instance v2, Lbr8;

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .line 317
    .line 318
    const-string v4, "error while connecting: "

    .line 319
    .line 320
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lc00;->n(Lbr8;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :catchall_2
    move-exception v0

    .line 343
    goto :goto_8

    .line 344
    :goto_6
    iget-object v1, p0, Lar8;->c:Lc00;

    .line 345
    .line 346
    invoke-virtual {v1, v0}, Lc00;->n(Lbr8;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :goto_7
    return-void

    .line 352
    :goto_8
    invoke-virtual {p0}, Lar8;->a()V

    .line 353
    .line 354
    .line 355
    throw v0

    .line 356
    :pswitch_0
    iget-object v0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Lzy4;

    .line 359
    .line 360
    iget-object v0, v0, Lzy4;->a:Ljava/lang/Object;

    .line 361
    .line 362
    monitor-enter v0

    .line 363
    :try_start_9
    iget-object v1, p0, Lhm0;->b:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v1, Lzy4;

    .line 366
    .line 367
    iget-object v1, v1, Lzy4;->f:Ljava/lang/Object;

    .line 368
    .line 369
    iget-object v2, p0, Lhm0;->b:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v2, Lzy4;

    .line 372
    .line 373
    sget-object v3, Lzy4;->k:Ljava/lang/Object;

    .line 374
    .line 375
    iput-object v3, v2, Lzy4;->f:Ljava/lang/Object;

    .line 376
    .line 377
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 378
    iget-object p0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast p0, Lzy4;

    .line 381
    .line 382
    invoke-virtual {p0, v1}, Lzy4;->k(Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :catchall_3
    move-exception p0

    .line 387
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 388
    throw p0

    .line 389
    :pswitch_1
    iget-object p0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast p0, Lky4;

    .line 392
    .line 393
    iget-object p0, p0, Lky4;->c:Lbq2;

    .line 394
    .line 395
    if-eqz p0, :cond_7

    .line 396
    .line 397
    invoke-virtual {p0, v2}, Lbq2;->setListSelectionHidden(Z)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 401
    .line 402
    .line 403
    :cond_7
    return-void

    .line 404
    :pswitch_2
    iget-object p0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast p0, Lfo0;

    .line 407
    .line 408
    invoke-virtual {p0}, Lfo0;->d()V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_3
    iget-object p0, p0, Lhm0;->b:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast p0, Lkm0;

    .line 415
    .line 416
    iget v0, p0, Lkm0;->e:I

    .line 417
    .line 418
    if-lez v0, :cond_8

    .line 419
    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 421
    .line 422
    .line 423
    move-result-wide v2

    .line 424
    iput-wide v2, p0, Lkm0;->f:J

    .line 425
    .line 426
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
