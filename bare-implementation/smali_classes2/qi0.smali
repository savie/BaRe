.class public final synthetic Lqi0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lpj0;

.field public final synthetic b:Z

.field public final synthetic c:Lcd;

.field public final synthetic d:Lri0;


# direct methods
.method public synthetic constructor <init>(Lxi0;Lpj0;ZLcd;Lri0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lqi0;->a:Lpj0;

    .line 5
    .line 6
    iput-boolean p3, p0, Lqi0;->b:Z

    .line 7
    .line 8
    iput-object p4, p0, Lqi0;->c:Lcd;

    .line 9
    .line 10
    iput-object p5, p0, Lqi0;->d:Lri0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lqi0;->a:Lpj0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lpj0;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v4, v2

    .line 23
    check-cast v4, Ljj0;

    .line 24
    .line 25
    iget-object v4, v4, Ljj0;->a:Ljava/lang/String;

    .line 26
    .line 27
    const-string v5, "system_app_parts"

    .line 28
    .line 29
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v2, v3

    .line 37
    :goto_0
    check-cast v2, Ljj0;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    iget-object v4, v2, Ljj0;->c:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Lli0;

    .line 59
    .line 60
    sget-object v6, Liu;->Companion:Lgu;

    .line 61
    .line 62
    iget-object v7, v5, Lli0;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v7}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v5}, Lli0;->b()Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5}, Lli0;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {v6, v1, v5}, Liu;->setCheckedInExpansion(ZZ)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v2}, Ljj0;->a()Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Lli0;

    .line 111
    .line 112
    sget-object v6, Liu;->Companion:Lgu;

    .line 113
    .line 114
    iget-object v5, v5, Lli0;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v5}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_4

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    move-object v4, v3

    .line 130
    :cond_6
    invoke-virtual {v0}, Lpj0;->a()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_8

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    move-object v6, v5

    .line 149
    check-cast v6, Ljj0;

    .line 150
    .line 151
    iget-object v6, v6, Ljj0;->a:Ljava/lang/String;

    .line 152
    .line 153
    const-string v7, "user_app_parts"

    .line 154
    .line 155
    invoke-static {v6, v7}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    move-object v5, v3

    .line 163
    :goto_3
    check-cast v5, Ljj0;

    .line 164
    .line 165
    if-eqz v5, :cond_c

    .line 166
    .line 167
    iget-object v2, v5, Ljj0;->c:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_a

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    check-cast v6, Lli0;

    .line 184
    .line 185
    sget-object v7, Liu;->Companion:Lgu;

    .line 186
    .line 187
    iget-object v8, v6, Lli0;->a:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v8}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v6}, Lli0;->b()Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_9

    .line 201
    .line 202
    if-eqz v7, :cond_9

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-virtual {v6}, Lli0;->a()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    invoke-virtual {v7, v8, v6}, Liu;->setCheckedInExpansion(ZZ)V

    .line 210
    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_a
    invoke-virtual {v5}, Ljj0;->a()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v5, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_d

    .line 231
    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Lli0;

    .line 237
    .line 238
    sget-object v7, Liu;->Companion:Lgu;

    .line 239
    .line 240
    iget-object v6, v6, Lli0;->a:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v6}, Lgu;->a(Ljava/lang/String;)Liu;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-eqz v6, :cond_b

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_c
    move-object v5, v3

    .line 256
    :cond_d
    invoke-virtual {v0}, Lpj0;->a()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_f

    .line 269
    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    move-object v7, v6

    .line 275
    check-cast v7, Ljj0;

    .line 276
    .line 277
    iget-object v7, v7, Ljj0;->a:Ljava/lang/String;

    .line 278
    .line 279
    const-string v8, "locations"

    .line 280
    .line 281
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-eqz v7, :cond_e

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_f
    move-object v6, v3

    .line 289
    :goto_6
    check-cast v6, Ljj0;

    .line 290
    .line 291
    if-eqz v6, :cond_13

    .line 292
    .line 293
    iget-object v2, v6, Ljj0;->c:Ljava/util/List;

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :cond_10
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_11

    .line 304
    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    check-cast v7, Lli0;

    .line 310
    .line 311
    sget-object v8, Lq05;->Companion:Lo05;

    .line 312
    .line 313
    iget-object v9, v7, Lli0;->a:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-static {v9}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    invoke-virtual {v7}, Lli0;->b()Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-nez v9, :cond_10

    .line 327
    .line 328
    if-eqz v8, :cond_10

    .line 329
    .line 330
    invoke-virtual {v7}, Lli0;->a()Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    invoke-virtual {v8, v1, v7}, Lq05;->setCheckedInExpansion(IZ)V

    .line 335
    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_11
    invoke-virtual {v6}, Ljj0;->a()Ljava/util/ArrayList;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    new-instance v6, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    :cond_12
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_14

    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    check-cast v7, Lli0;

    .line 362
    .line 363
    sget-object v8, Lq05;->Companion:Lo05;

    .line 364
    .line 365
    iget-object v7, v7, Lli0;->a:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    invoke-static {v7}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    if-eqz v7, :cond_12

    .line 375
    .line 376
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_13
    move-object v6, v3

    .line 381
    :cond_14
    instance-of v2, v0, Lmj0;

    .line 382
    .line 383
    iget-object v7, p0, Lqi0;->d:Lri0;

    .line 384
    .line 385
    sget-object v8, Lov2;->a:Lov2;

    .line 386
    .line 387
    if-eqz v2, :cond_18

    .line 388
    .line 389
    if-nez v5, :cond_15

    .line 390
    .line 391
    move-object v5, v8

    .line 392
    :cond_15
    if-nez v4, :cond_16

    .line 393
    .line 394
    move-object v4, v8

    .line 395
    :cond_16
    if-nez v6, :cond_17

    .line 396
    .line 397
    move-object v6, v8

    .line 398
    :cond_17
    check-cast v0, Lmj0;

    .line 399
    .line 400
    iget-boolean p0, v0, Lmj0;->e:Z

    .line 401
    .line 402
    invoke-interface {v7, v5, v4, v6, p0}, Lri0;->g(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 403
    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_18
    instance-of v2, v0, Loj0;

    .line 407
    .line 408
    if-eqz v2, :cond_1b

    .line 409
    .line 410
    if-nez v5, :cond_19

    .line 411
    .line 412
    move-object v5, v8

    .line 413
    :cond_19
    if-nez v4, :cond_1a

    .line 414
    .line 415
    move-object v9, v8

    .line 416
    goto :goto_9

    .line 417
    :cond_1a
    move-object v9, v4

    .line 418
    :goto_9
    check-cast v0, Loj0;

    .line 419
    .line 420
    iget-boolean v10, v0, Loj0;->e:Z

    .line 421
    .line 422
    iget-boolean v0, p0, Lqi0;->b:Z

    .line 423
    .line 424
    xor-int/lit8 v11, v0, 0x1

    .line 425
    .line 426
    iget-object v12, p0, Lqi0;->c:Lcd;

    .line 427
    .line 428
    move-object v8, v5

    .line 429
    invoke-interface/range {v7 .. v12}, Lri0;->d(Ljava/util/List;Ljava/util/List;ZZLcd;)V

    .line 430
    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_1b
    instance-of p0, v0, Lnj0;

    .line 434
    .line 435
    if-eqz p0, :cond_1c

    .line 436
    .line 437
    sget-object p0, Lqy7;->f:Lqy7;

    .line 438
    .line 439
    invoke-interface {v7, p0}, Lri0;->a(Lty7;)V

    .line 440
    .line 441
    .line 442
    :goto_a
    sget-object p0, Lbe8;->a:Lbe8;

    .line 443
    .line 444
    return-object p0

    .line 445
    :cond_1c
    invoke-static {}, Lq;->j()V

    .line 446
    .line 447
    .line 448
    return-object v3
.end method
