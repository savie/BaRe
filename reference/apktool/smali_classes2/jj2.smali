.class public final synthetic Ljj2;
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
    iput p1, p0, Ljj2;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ljj2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ljj2;->c:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Ljj2;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v4, p0, Ljj2;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Ljj2;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lh08;

    .line 15
    .line 16
    check-cast v4, Ljava/lang/String;

    .line 17
    .line 18
    check-cast p1, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lokhttp3/Request$Builder;

    .line 24
    .line 25
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getApiDomain()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/terabox/TeraBoxTokenCredentials;->getAccessToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const-string p0, "/openapi/api/filemanager"

    .line 40
    .line 41
    invoke-static {v2, p0, p1}, Lh08;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "opera"

    .line 50
    .line 51
    const-string v2, "delete"

    .line 52
    .line 53
    invoke-virtual {p0, p1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "async"

    .line 57
    .line 58
    const-string v2, "0"

    .line 59
    .line 60
    invoke-virtual {p0, p1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iput-object p0, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 68
    .line 69
    new-instance p0, Lokhttp3/FormBody$Builder;

    .line 70
    .line 71
    invoke-direct {p0, v1}, Lokhttp3/FormBody$Builder;-><init>(I)V

    .line 72
    .line 73
    .line 74
    const-string p1, "filelist"

    .line 75
    .line 76
    invoke-virtual {p0, p1, v4}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->c()Lokhttp3/FormBody;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "POST"

    .line 84
    .line 85
    invoke-virtual {v0, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 86
    .line 87
    .line 88
    new-instance p0, Lokhttp3/Request;

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :pswitch_0
    check-cast p0, Lyo7;

    .line 95
    .line 96
    check-cast v4, Luo7;

    .line 97
    .line 98
    check-cast p1, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iget-object p0, p0, Lyo7;->f:Lix6;

    .line 105
    .line 106
    iget-boolean v0, v4, Luo7;->a:Z

    .line 107
    .line 108
    new-instance v2, Luo7;

    .line 109
    .line 110
    invoke-direct {v2, p1, v0, v1}, Luo7;-><init>(IZZ)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Lix6;->k(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object v3

    .line 117
    :pswitch_1
    check-cast p0, Lji7;

    .line 118
    .line 119
    check-cast v4, Ljava/lang/String;

    .line 120
    .line 121
    check-cast p1, Lwm2;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    :try_start_0
    invoke-virtual {p0, v4}, Lji7;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object v0, Lps6;->c:Lps6;

    .line 131
    .line 132
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    sget-object v2, Lwm2;->I:Lb05;

    .line 137
    .line 138
    invoke-virtual {p1, p0, v0, v2}, Lwm2;->h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    .line 144
    sget-object v0, Lps6;->b:Lps6;

    .line 145
    .line 146
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sget-object v2, Lwm2;->J:Lsl4;

    .line 151
    .line 152
    invoke-virtual {p1, p0, v0, v2}, Lwm2;->h(Ljava/lang/String;Ljava/util/EnumSet;Lzm7;)Z

    .line 153
    .line 154
    .line 155
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    if-eqz p0, :cond_1

    .line 157
    .line 158
    :cond_0
    const/4 v1, 0x1

    .line 159
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    move-object p0, v0

    .line 162
    const-string p1, "SmbService"

    .line 163
    .line 164
    const-string v0, "exists"

    .line 165
    .line 166
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .line 168
    .line 169
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 170
    .line 171
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    const-string p1, "exists: "

    .line 176
    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    const/4 v6, 0x4

    .line 182
    const/4 v7, 0x0

    .line 183
    const-string v3, "SmbService"

    .line 184
    .line 185
    const/4 v5, 0x0

    .line 186
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_2
    check-cast p0, Lj57;

    .line 195
    .line 196
    check-cast v4, Ljava/lang/String;

    .line 197
    .line 198
    check-cast p1, Ljava/lang/Boolean;

    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_2

    .line 205
    .line 206
    iget-object p0, p0, Lj57;->l:Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 207
    .line 208
    const p1, 0x7f1301c0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    const-string v0, "id \'"

    .line 216
    .line 217
    const-string v1, "\' "

    .line 218
    .line 219
    invoke-static {v0, v4, v1, p1}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    sget-object v0, Lzn4;->a:Lzn4;

    .line 224
    .line 225
    new-instance v0, Lcv;

    .line 226
    .line 227
    const/16 v1, 0xe

    .line 228
    .line 229
    invoke-direct {v0, v1, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 233
    .line 234
    .line 235
    :cond_2
    return-object v3

    .line 236
    :pswitch_3
    check-cast p0, Ls07;

    .line 237
    .line 238
    check-cast v4, Loz6;

    .line 239
    .line 240
    iget-wide v0, v4, Loz6;->e:J

    .line 241
    .line 242
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    iget-object p0, p0, Ls07;->e:Lcy0;

    .line 248
    .line 249
    sget-object v3, Loy6;->j:Loy6;

    .line 250
    .line 251
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_3

    .line 256
    .line 257
    sget-object p0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {p0, v0, v1}, Lcom/swiftapps/sba/SbaSwiftTarNative;->d(Ljava/io/FileDescriptor;J)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    goto :goto_1

    .line 271
    :cond_3
    instance-of p0, p0, Lpy6;

    .line 272
    .line 273
    if-eqz p0, :cond_4

    .line 274
    .line 275
    sget-object p0, Lcom/swiftapps/sba/SbaSwiftTarNative;->a:Lcom/swiftapps/sba/SbaSwiftTarNative;

    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    iget-wide v2, v4, Loz6;->f:J

    .line 285
    .line 286
    invoke-static {p0, v0, v1, v2, v3}, Lcom/swiftapps/sba/SbaSwiftTarNative;->e(Ljava/io/FileDescriptor;JJ)[Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    :goto_1
    invoke-static {p0}, Lx50;->z0([Ljava/lang/Object;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    goto :goto_2

    .line 295
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 296
    .line 297
    .line 298
    :goto_2
    return-object v2

    .line 299
    :pswitch_4
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 300
    .line 301
    check-cast v4, Lt22;

    .line 302
    .line 303
    check-cast p1, Lwv3;

    .line 304
    .line 305
    invoke-static {p0, v4, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->$r8$lambda$Y1y08ow1t71qyW_X-seA_tVzVBA(Ljava/util/concurrent/Executor;Lt22;Lwv3;)Lbe8;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    return-object p0

    .line 310
    :pswitch_5
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 311
    .line 312
    move-object v0, v4

    .line 313
    check-cast v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;

    .line 314
    .line 315
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 316
    .line 317
    sget v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->T:I

    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 323
    .line 324
    .line 325
    move-result p1

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    const/4 v8, 0x3

    .line 331
    const/4 v9, 0x0

    .line 332
    const/4 v5, 0x0

    .line 333
    const/4 v6, 0x0

    .line 334
    move-object v4, p0

    .line 335
    invoke-static/range {v4 .. v9}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->copy$default(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupsActivity;->P()Lorg/swiftapps/swiftbackup/settings/k;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, p0}, Lorg/swiftapps/swiftbackup/settings/k;->k(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)V

    .line 344
    .line 345
    .line 346
    return-object v3

    .line 347
    :pswitch_6
    check-cast p0, Lff5;

    .line 348
    .line 349
    check-cast v4, Lrf8;

    .line 350
    .line 351
    check-cast p1, Ljava/lang/Long;

    .line 352
    .line 353
    if-nez p1, :cond_5

    .line 354
    .line 355
    invoke-virtual {p0, v2}, Lpw6;->o(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v0

    .line 363
    invoke-virtual {v4}, Lrf8;->a()J

    .line 364
    .line 365
    .line 366
    move-result-wide v4

    .line 367
    invoke-virtual {p0}, Lpw6;->e()Lgz7;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p1}, Lgz7;->isComplete()Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-nez p1, :cond_7

    .line 376
    .line 377
    const-wide/16 v6, 0x0

    .line 378
    .line 379
    cmp-long p1, v0, v6

    .line 380
    .line 381
    if-ltz p1, :cond_7

    .line 382
    .line 383
    cmp-long p1, v0, v4

    .line 384
    .line 385
    if-lez p1, :cond_6

    .line 386
    .line 387
    move-wide v0, v4

    .line 388
    :cond_6
    sget-object p1, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 389
    .line 390
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    const v2, 0x7f13058d

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    sget-object v2, Lp93;->a:Lp93;

    .line 402
    .line 403
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    const/4 v0, 0x3

    .line 424
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    const-string v0, "%s: %s / %s"

    .line 429
    .line 430
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p0, p1}, Lpw6;->o(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    :cond_7
    :goto_3
    return-object v3

    .line 438
    :pswitch_7
    check-cast p0, Ljava/util/TreeMap;

    .line 439
    .line 440
    check-cast v4, Ljava/util/ArrayList;

    .line 441
    .line 442
    check-cast p1, Lza5;

    .line 443
    .line 444
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    iget-object v0, p1, Lza5;->c:Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    if-eqz v1, :cond_8

    .line 458
    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Lbb5;

    .line 464
    .line 465
    iget v2, v1, Lbb5;->a:I

    .line 466
    .line 467
    iget-object v1, v1, Lbb5;->b:[B

    .line 468
    .line 469
    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    goto :goto_4

    .line 473
    :cond_8
    iget v0, p1, Lza5;->a:I

    .line 474
    .line 475
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    iget-object p1, p1, Lza5;->b:[B

    .line 480
    .line 481
    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    return-object v3

    .line 485
    :pswitch_8
    check-cast p0, Lpj2;

    .line 486
    .line 487
    check-cast v4, Lwj2;

    .line 488
    .line 489
    move-object v6, p1

    .line 490
    check-cast v6, Landroid/view/View;

    .line 491
    .line 492
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    iget-object v5, p0, Lpj2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 496
    .line 497
    sget-object v7, Liu;->EXTDATA:Liu;

    .line 498
    .line 499
    iget-object v9, v4, Lwj2;->a:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 500
    .line 501
    iget-boolean p0, v4, Lwj2;->i:Z

    .line 502
    .line 503
    iget-object p1, v4, Lwj2;->j:Ljava/lang/String;

    .line 504
    .line 505
    if-eqz p0, :cond_9

    .line 506
    .line 507
    move-object v10, p1

    .line 508
    goto :goto_5

    .line 509
    :cond_9
    move-object v10, v2

    .line 510
    :goto_5
    const/4 v8, 0x0

    .line 511
    invoke-virtual/range {v5 .. v10}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->c0(Landroid/view/View;Liu;Lhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    return-object v3

    .line 515
    :pswitch_9
    check-cast p0, Lpj2;

    .line 516
    .line 517
    check-cast v4, Lyj2;

    .line 518
    .line 519
    check-cast p1, Lcw7;

    .line 520
    .line 521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 522
    .line 523
    .line 524
    iget-object p1, p1, Lcw7;->a:Ljava/lang/String;

    .line 525
    .line 526
    if-eqz p1, :cond_a

    .line 527
    .line 528
    move-object v2, p1

    .line 529
    :cond_a
    invoke-virtual {p0, v4, v2}, Lpj2;->a(Lyj2;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    return-object v3

    .line 533
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
