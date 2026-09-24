.class public final synthetic Lbz;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lbz;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lbz;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lbz;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lbz;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Llh6;

    .line 12
    .line 13
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Llh6;->a:Ljava/lang/Object;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iput-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 27
    .line 28
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x0

    .line 32
    const-string v3, "WebDavHttp"

    .line 33
    .line 34
    const-string v4, "Certificate found"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    .line 42
    .line 43
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;

    .line 49
    .line 50
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lao8;

    .line 53
    .line 54
    move-object v2, p1

    .line 55
    check-cast v2, Lq63;

    .line 56
    .line 57
    sget-object p1, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->O:Lao8;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p1, p1, Lcom/bumptech/glide/a;->e:Lzk6;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lzk6;->d(Landroidx/fragment/app/u;)Lyk6;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v9, Loy3;

    .line 73
    .line 74
    invoke-virtual {v2}, Lq63;->A()J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v2}, Lq63;->z()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    invoke-virtual {v2}, Lq63;->A()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    new-instance v1, Lyn8;

    .line 95
    .line 96
    const/16 v8, 0x30

    .line 97
    .line 98
    invoke-direct/range {v1 .. v8}, Lyn8;-><init>(Lq63;JJLjava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v9, v1}, Loy3;-><init>(Lyn8;)V

    .line 102
    .line 103
    .line 104
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v9}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 115
    .line 116
    invoke-virtual {v0}, Lzm;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object p0, p0, Lao8;->b:Landroid/graphics/Bitmap;

    .line 121
    .line 122
    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Lmm0;->l(Landroid/graphics/drawable/BitmapDrawable;)Lmm0;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    check-cast p0, Lpk6;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object p1, Lpx3;->b:Liu5;

    .line 135
    .line 136
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {p0, p1, v1}, Lmm0;->p(Liu5;Ljava/lang/Object;)Lmm0;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lpk6;

    .line 143
    .line 144
    new-instance p1, Lzn8;

    .line 145
    .line 146
    invoke-direct {p1, v0}, Lzn8;-><init>(Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lpk6;->C(Lzn8;)Lpk6;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/walls/WallApplyActivity;->N()Lno8;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p1, p1, Lno8;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lpk6;->B(Landroid/widget/ImageView;)V

    .line 160
    .line 161
    .line 162
    sget-object p0, Lbe8;->a:Lbe8;

    .line 163
    .line 164
    return-object p0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lh08;

    .line 168
    .line 169
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p0, Ljava/lang/String;

    .line 172
    .line 173
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v1, Lokhttp3/Request$Builder;

    .line 179
    .line 180
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    const-string v0, "/openapi/api/create"

    .line 195
    .line 196
    invoke-static {v2, v0, p1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iput-object p1, v1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 201
    .line 202
    new-instance p1, Lokhttp3/FormBody$Builder;

    .line 203
    .line 204
    invoke-direct {p1, v3}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const-string v0, "path"

    .line 208
    .line 209
    invoke-virtual {p1, v0, p0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string p0, "size"

    .line 213
    .line 214
    const-string v0, "0"

    .line 215
    .line 216
    invoke-virtual {p1, p0, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string p0, "isdir"

    .line 220
    .line 221
    const-string v0, "1"

    .line 222
    .line 223
    invoke-virtual {p1, p0, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string p0, "rtype"

    .line 227
    .line 228
    const-string v0, "3"

    .line 229
    .line 230
    invoke-virtual {p1, p0, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    const-string p1, "POST"

    .line 238
    .line 239
    invoke-virtual {v1, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 240
    .line 241
    .line 242
    new-instance p0, Lokhttp3/Request;

    .line 243
    .line 244
    invoke-direct {p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 245
    .line 246
    .line 247
    return-object p0

    .line 248
    :pswitch_2
    sget-object v0, Lw63;->b:Lw63;

    .line 249
    .line 250
    sget-object v1, Ls5;->c:Ls5;

    .line 251
    .line 252
    sget-object v4, Ls5;->b:Ls5;

    .line 253
    .line 254
    sget-object v5, Lps6;->b:Lps6;

    .line 255
    .line 256
    iget-object v6, p0, Lbz;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v6, Lji7;

    .line 259
    .line 260
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Ljava/lang/String;

    .line 263
    .line 264
    move-object v7, p1

    .line 265
    check-cast v7, Lwm2;

    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    :try_start_0
    invoke-virtual {v6, p0}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    sget-object v9, Lwm2;->J:Lsl4;

    .line 279
    .line 280
    invoke-virtual {v7, v8, p1, v9}, Lwm2;->h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    if-eqz p1, :cond_1

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_1
    const/16 p1, 0x2f

    .line 289
    .line 290
    const/16 v9, 0x5c

    .line 291
    .line 292
    invoke-virtual {p0, p1, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    new-array p1, v2, [C

    .line 300
    .line 301
    aput-char v9, p1, v3

    .line 302
    .line 303
    const/4 v3, 0x6

    .line 304
    invoke-static {p0, p1, v3}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-le p1, v2, :cond_3

    .line 313
    .line 314
    const-string p1, ""

    .line 315
    .line 316
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_4

    .line 325
    .line 326
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    check-cast v2, Ljava/lang/String;

    .line 331
    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string p1, "\\"

    .line 341
    .line 342
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {v6, p1}, Lji7;->r(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-eqz v2, :cond_2

    .line 357
    .line 358
    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v6, p1}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    invoke-static {v4, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    sget-object v11, Lju6;->e:Ljava/util/Set;

    .line 372
    .line 373
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 374
    .line 375
    .line 376
    move-result-object v13

    .line 377
    const/4 v12, 0x3

    .line 378
    invoke-virtual/range {v7 .. v13}, Lwm2;->r(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lbm2;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v2}, Lmm2;->close()V

    .line 383
    .line 384
    .line 385
    goto :goto_0

    .line 386
    :cond_3
    invoke-static {v4, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    sget-object v11, Lju6;->e:Ljava/util/Set;

    .line 395
    .line 396
    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 397
    .line 398
    .line 399
    move-result-object v13

    .line 400
    const/4 v12, 0x3

    .line 401
    invoke-virtual/range {v7 .. v13}, Lwm2;->r(Ljava/lang/String;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;ILjava/util/EnumSet;)Lbm2;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lmm2;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .line 407
    .line 408
    goto :goto_1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    move-object p0, v0

    .line 411
    const-string p1, "SmbService"

    .line 412
    .line 413
    const-string v0, "createDirectory"

    .line 414
    .line 415
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .line 417
    .line 418
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 419
    .line 420
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    const-string p1, "createDirectory: "

    .line 425
    .line 426
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    const/4 v5, 0x4

    .line 431
    const/4 v6, 0x0

    .line 432
    const-string v2, "SmbService"

    .line 433
    .line 434
    const/4 v4, 0x0

    .line 435
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    :cond_4
    :goto_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 439
    .line 440
    return-object p0

    .line 441
    :pswitch_3
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v0, Lorg/swiftapps/swiftbackup/intro/d;

    .line 444
    .line 445
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast p0, Landroid/content/Intent;

    .line 448
    .line 449
    check-cast p1, Lzn7;

    .line 450
    .line 451
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    sget-object p1, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->INSTANCE:Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;

    .line 455
    .line 456
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/apptasks/AppsWorkingDir;->cleanupAppTasksDir()Lbe8;

    .line 457
    .line 458
    .line 459
    :try_start_1
    sget-object p1, Loi5;->L:Lgv7;

    .line 460
    .line 461
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lq63;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-static {p1}, Lcy0;->e(Lq63;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    .line 472
    .line 473
    :catch_1
    sget-object p1, Lzn4;->a:Lzn4;

    .line 474
    .line 475
    new-instance p1, Ld11;

    .line 476
    .line 477
    const/16 v1, 0xc

    .line 478
    .line 479
    invoke-direct {p1, v1, p0, v0}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 483
    .line 484
    .line 485
    sget-object p0, Lbe8;->a:Lbe8;

    .line 486
    .line 487
    return-object p0

    .line 488
    :pswitch_4
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v0, Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 491
    .line 492
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast p0, Landroid/os/Bundle;

    .line 495
    .line 496
    check-cast p1, Ljava/lang/Boolean;

    .line 497
    .line 498
    sget-object v1, Lorg/swiftapps/swiftbackup/home/HomeActivity;->b0:Ljava/util/Map;

    .line 499
    .line 500
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/HomeActivity;->Z()Lw44;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    iget-object v1, v1, Lw44;->c:Lx44;

    .line 505
    .line 506
    iget-object v1, v1, Lx44;->k:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast v1, Landroid/widget/TextView;

    .line 509
    .line 510
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-static {p1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-eqz v3, :cond_5

    .line 523
    .line 524
    goto :goto_2

    .line 525
    :cond_5
    if-eqz p0, :cond_6

    .line 526
    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    invoke-static {v1, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 535
    .line 536
    .line 537
    goto :goto_2

    .line 538
    :cond_6
    new-instance p0, Lnu2;

    .line 539
    .line 540
    invoke-direct {p0, v2, v0, v1, p1}, Lnu2;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 544
    .line 545
    .line 546
    :goto_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 547
    .line 548
    return-object p0

    .line 549
    :pswitch_5
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast v0, Lqp3;

    .line 552
    .line 553
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast p0, Ltp3;

    .line 556
    .line 557
    check-cast p1, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 558
    .line 559
    sget-object v1, Lbe8;->a:Lbe8;

    .line 560
    .line 561
    invoke-virtual {v0}, Lpw6;->g()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_7

    .line 566
    .line 567
    sget-object v0, Lhy7;->a:Lhy7;

    .line 568
    .line 569
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 570
    .line 571
    sget-object v0, Lorg/swiftapps/swiftbackup/tasks/TaskService;->b:Lgz7;

    .line 572
    .line 573
    invoke-virtual {v0}, Lgz7;->isComplete()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_7

    .line 578
    .line 579
    goto :goto_3

    .line 580
    :cond_7
    iget-object p0, p0, Ltp3;->e:Landroid/widget/TextView;

    .line 581
    .line 582
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    .line 588
    .line 589
    :goto_3
    return-object v1

    .line 590
    :pswitch_6
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v0, Lqj2;

    .line 593
    .line 594
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast p0, Lak2;

    .line 597
    .line 598
    check-cast p1, Lcw7;

    .line 599
    .line 600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    iget-object p1, p1, Lcw7;->a:Ljava/lang/String;

    .line 604
    .line 605
    if-eqz p1, :cond_8

    .line 606
    .line 607
    move-object v1, p1

    .line 608
    :cond_8
    invoke-virtual {v0, p0, v1}, Lqj2;->a(Lak2;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    sget-object p0, Lbe8;->a:Lbe8;

    .line 612
    .line 613
    return-object p0

    .line 614
    :pswitch_7
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v0, Lsd1;

    .line 617
    .line 618
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast p0, Lmt3;

    .line 621
    .line 622
    check-cast p1, Lef1;

    .line 623
    .line 624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    .line 626
    .line 627
    iget-object v1, p1, Lef1;->g:Ljava/util/List;

    .line 628
    .line 629
    new-instance v2, Ljava/util/ArrayList;

    .line 630
    .line 631
    const/16 v4, 0xa

    .line 632
    .line 633
    invoke-static {v1, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    .line 639
    .line 640
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-eqz v4, :cond_a

    .line 649
    .line 650
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    check-cast v4, Lmd1;

    .line 655
    .line 656
    iget-object v5, v4, Lmd1;->a:Lqd1;

    .line 657
    .line 658
    iget-object v5, v5, Lqd1;->a:Lsd1;

    .line 659
    .line 660
    if-ne v5, v0, :cond_9

    .line 661
    .line 662
    invoke-interface {p0, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    check-cast v4, Lmd1;

    .line 667
    .line 668
    :cond_9
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    goto :goto_4

    .line 672
    :cond_a
    const/16 p0, 0x3bf

    .line 673
    .line 674
    invoke-static {p1, v2, v3, v3, p0}, Lef1;->a(Lef1;Ljava/util/ArrayList;ZZI)Lef1;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    return-object p0

    .line 679
    :pswitch_8
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v0, Lz11;

    .line 682
    .line 683
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast p0, Lrf8;

    .line 686
    .line 687
    check-cast p1, Ljava/lang/Long;

    .line 688
    .line 689
    if-nez p1, :cond_b

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Lpw6;->o(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto :goto_5

    .line 695
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 696
    .line 697
    .line 698
    move-result-wide v1

    .line 699
    invoke-virtual {p0}, Lrf8;->a()J

    .line 700
    .line 701
    .line 702
    move-result-wide p0

    .line 703
    invoke-virtual {v0}, Lpw6;->e()Lgz7;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-virtual {v3}, Lgz7;->isComplete()Z

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    if-nez v3, :cond_d

    .line 712
    .line 713
    const-wide/16 v3, 0x0

    .line 714
    .line 715
    cmp-long v3, v1, v3

    .line 716
    .line 717
    if-ltz v3, :cond_d

    .line 718
    .line 719
    cmp-long v3, v1, p0

    .line 720
    .line 721
    if-lez v3, :cond_c

    .line 722
    .line 723
    move-wide v1, p0

    .line 724
    :cond_c
    sget-object v3, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 725
    .line 726
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 727
    .line 728
    .line 729
    move-result-object v3

    .line 730
    const v4, 0x7f13058d

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    sget-object v4, Lp93;->a:Lp93;

    .line 738
    .line 739
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 748
    .line 749
    .line 750
    move-result-object p0

    .line 751
    invoke-static {p0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p0

    .line 755
    filled-new-array {v3, v1, p0}, [Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object p0

    .line 759
    const/4 p1, 0x3

    .line 760
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    const-string p1, "%s: %s / %s"

    .line 765
    .line 766
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object p0

    .line 770
    invoke-virtual {v0, p0}, Lpw6;->o(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    :cond_d
    :goto_5
    sget-object p0, Lbe8;->a:Lbe8;

    .line 774
    .line 775
    return-object p0

    .line 776
    :pswitch_9
    iget-object v0, p0, Lbz;->b:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Llh6;

    .line 779
    .line 780
    iget-object p0, p0, Lbz;->c:Ljava/lang/Object;

    .line 781
    .line 782
    check-cast p0, Lfz;

    .line 783
    .line 784
    iget-object v2, p0, Lfz;->j:Landroid/widget/TextView;

    .line 785
    .line 786
    iget-object v4, p0, Lfz;->i:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 787
    .line 788
    check-cast p1, Lr62;

    .line 789
    .line 790
    if-eqz p1, :cond_e

    .line 791
    .line 792
    iget-object v5, p1, Lr62;->b:Ljava/lang/Integer;

    .line 793
    .line 794
    goto :goto_6

    .line 795
    :cond_e
    move-object v5, v1

    .line 796
    :goto_6
    if-eqz p1, :cond_f

    .line 797
    .line 798
    iget-object v1, p1, Lr62;->a:Ljava/lang/String;

    .line 799
    .line 800
    :cond_f
    iget-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 801
    .line 802
    invoke-static {v1, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 803
    .line 804
    .line 805
    move-result p1

    .line 806
    iput-object v1, v0, Llh6;->a:Ljava/lang/Object;

    .line 807
    .line 808
    if-eqz v5, :cond_11

    .line 809
    .line 810
    invoke-static {v4}, Lsz8;->c0(Landroid/view/View;)V

    .line 811
    .line 812
    .line 813
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 814
    .line 815
    .line 816
    if-nez p1, :cond_10

    .line 817
    .line 818
    invoke-virtual {v4, v3}, Lkm0;->setProgress(I)V

    .line 819
    .line 820
    .line 821
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    invoke-static {v4, v0, p1}, Lsz8;->b0(Lkm0;IZ)V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 829
    .line 830
    .line 831
    move-result p1

    .line 832
    invoke-static {p0, p1}, Lfz;->a(Lfz;I)V

    .line 833
    .line 834
    .line 835
    goto :goto_7

    .line 836
    :cond_11
    invoke-static {v4}, Lsz8;->X(Landroid/view/View;)V

    .line 837
    .line 838
    .line 839
    invoke-static {v2}, Lsz8;->X(Landroid/view/View;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v4, v3}, Lkm0;->setProgress(I)V

    .line 843
    .line 844
    .line 845
    invoke-static {p0, v3}, Lfz;->a(Lfz;I)V

    .line 846
    .line 847
    .line 848
    :goto_7
    sget-object p0, Lbe8;->a:Lbe8;

    .line 849
    .line 850
    return-object p0

    .line 851
    :pswitch_data_0
    .packed-switch 0x0
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
