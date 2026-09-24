.class public final Ljb5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Lea5;

.field public final b:Lokhttp3/OkHttpClient;

.field public final c:Lmt3;

.field public final d:Ljava/security/SecureRandom;

.field public final e:Lokhttp3/MediaType;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\d+:0\\*([\\w-]+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lea5;Lokhttp3/OkHttpClient;)V
    .locals 2

    .line 1
    new-instance v0, Lou;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lou;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ljb5;->a:Lea5;

    .line 15
    .line 16
    iput-object p2, p0, Ljb5;->b:Lokhttp3/OkHttpClient;

    .line 17
    .line 18
    iput-object v0, p0, Ljb5;->c:Lmt3;

    .line 19
    .line 20
    new-instance p1, Ljava/security/SecureRandom;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Ljb5;->d:Ljava/security/SecureRandom;

    .line 26
    .line 27
    sget-object p1, Lokhttp3/MediaType;->d:Lai6;

    .line 28
    .line 29
    const-string p1, "application/octet-stream"

    .line 30
    .line 31
    invoke-static {p1}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Ljb5;->e:Lokhttp3/MediaType;

    .line 36
    .line 37
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Ljb5;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 42
    .line 43
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Ljb5;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 48
    .line 49
    return-void
.end method

.method public static a(Lfl4;Ljava/lang/String;)Ljava/util/List;
    .locals 11

    .line 1
    const-string v0, "MEGA transfer response is missing \'"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_19

    .line 9
    .line 10
    instance-of v3, v1, Lel4;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v2

    .line 16
    :goto_0
    if-eqz v1, :cond_19

    .line 17
    .line 18
    instance-of v3, v1, Lxi4;

    .line 19
    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    invoke-virtual {v1}, Lqj4;->g()Lxi4;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v1, Lxi4;->a:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_7

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lqj4;

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v4}, Lqj4;->o()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception v4

    .line 55
    new-instance v5, Lbn6;

    .line 56
    .line 57
    invoke-direct {v5, v4}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    move-object v4, v5

    .line 61
    :goto_2
    nop

    .line 62
    instance-of v5, v4, Lbn6;

    .line 63
    .line 64
    if-eqz v5, :cond_2

    .line 65
    .line 66
    move-object v4, v2

    .line 67
    :cond_2
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move-object v4, v2

    .line 79
    :goto_3
    if-eqz v4, :cond_1

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lqj4;->o()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    goto :goto_4

    .line 90
    :catchall_1
    move-exception v1

    .line 91
    new-instance v3, Lbn6;

    .line 92
    .line 93
    invoke-direct {v3, v1}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    move-object v1, v3

    .line 97
    :goto_4
    nop

    .line 98
    instance-of v3, v1, Lbn6;

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    move-object v1, v2

    .line 103
    :cond_5
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_6
    move-object v1, v2

    .line 115
    :goto_5
    invoke-static {v1}, Lfl1;->B0(Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_18

    .line 124
    .line 125
    const-string p1, "ip"

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-eqz p0, :cond_a

    .line 132
    .line 133
    instance-of p1, p0, Lxi4;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    move-object p0, v2

    .line 139
    :goto_6
    if-eqz p0, :cond_a

    .line 140
    .line 141
    invoke-virtual {p0}, Lqj4;->g()Lxi4;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    new-instance p1, Ljava/util/ArrayList;

    .line 146
    .line 147
    const/16 v0, 0xa

    .line 148
    .line 149
    invoke-static {p0, v0}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lxi4;->a:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    check-cast v0, Lqj4;

    .line 173
    .line 174
    :try_start_2
    invoke-virtual {v0}, Lqj4;->o()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    goto :goto_8

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    new-instance v1, Lbn6;

    .line 181
    .line 182
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    move-object v0, v1

    .line 186
    :goto_8
    const-string v1, ""

    .line 187
    .line 188
    instance-of v4, v0, Lbn6;

    .line 189
    .line 190
    if-eqz v4, :cond_9

    .line 191
    .line 192
    move-object v0, v1

    .line 193
    :cond_9
    check-cast v0, Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move-object p1, v2

    .line 200
    :cond_b
    if-nez p1, :cond_c

    .line 201
    .line 202
    sget-object p1, Lov2;->a:Lov2;

    .line 203
    .line 204
    :cond_c
    sget-object p0, Lua5;->a:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_d

    .line 211
    .line 212
    goto/16 :goto_f

    .line 213
    .line 214
    :cond_d
    sget-object p0, Lua5;->a:Ljava/lang/Object;

    .line 215
    .line 216
    monitor-enter p0

    .line 217
    :try_start_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const/4 v1, 0x0

    .line 222
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_17

    .line 227
    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    add-int/lit8 v5, v1, 0x1

    .line 233
    .line 234
    if-ltz v1, :cond_16

    .line 235
    .line 236
    check-cast v4, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 237
    .line 238
    :try_start_4
    new-instance v6, Ljava/net/URI;

    .line 239
    .line 240
    invoke-direct {v6, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 247
    goto :goto_a

    .line 248
    :catchall_3
    move-exception v4

    .line 249
    :try_start_5
    new-instance v6, Lbn6;

    .line 250
    .line 251
    invoke-direct {v6, v4}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    move-object v4, v6

    .line 255
    :goto_a
    nop

    .line 256
    instance-of v6, v4, Lbn6;

    .line 257
    .line 258
    if-eqz v6, :cond_e

    .line 259
    .line 260
    move-object v4, v2

    .line 261
    :cond_e
    check-cast v4, Ljava/lang/String;

    .line 262
    .line 263
    if-eqz v4, :cond_15

    .line 264
    .line 265
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-nez v6, :cond_f

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_f
    move-object v4, v2

    .line 273
    :goto_b
    if-nez v4, :cond_10

    .line 274
    .line 275
    goto/16 :goto_e

    .line 276
    .line 277
    :cond_10
    sget-object v6, Lua5;->a:Ljava/lang/Object;

    .line 278
    .line 279
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    const/4 v8, 0x2

    .line 288
    mul-int/2addr v6, v8

    .line 289
    if-ne v7, v6, :cond_11

    .line 290
    .line 291
    mul-int/lit8 v1, v1, 0x2

    .line 292
    .line 293
    add-int/lit8 v6, v1, 0x2

    .line 294
    .line 295
    invoke-interface {p1, v1, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_c

    .line 300
    :cond_11
    sget-object v1, Lov2;->a:Lov2;

    .line 301
    .line 302
    :goto_c
    invoke-static {v1}, Lua5;->a(Ljava/util/List;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-nez v7, :cond_14

    .line 311
    .line 312
    sget-object v1, Lua5;->b:Lta5;

    .line 313
    .line 314
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 315
    .line 316
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    sget-object v7, Lga5;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    .line 328
    new-instance v7, Lcz3;

    .line 329
    .line 330
    invoke-direct {v7, v8}, Lcz3;-><init>(I)V

    .line 331
    .line 332
    .line 333
    invoke-static {v6, v7}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    new-instance v7, Ljava/util/HashSet;

    .line 338
    .line 339
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 340
    .line 341
    .line 342
    new-instance v8, Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    :cond_12
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    .line 353
    .line 354
    move-result v9

    .line 355
    if-eqz v9, :cond_13

    .line 356
    .line 357
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    move-object v10, v9

    .line 362
    check-cast v10, Ljava/net/InetAddress;

    .line 363
    .line 364
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    if-eqz v10, :cond_12

    .line 373
    .line 374
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_d

    .line 378
    :catchall_4
    move-exception p1

    .line 379
    goto :goto_10

    .line 380
    :cond_13
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-nez v1, :cond_15

    .line 389
    .line 390
    sget-object v1, Lua5;->b:Lta5;

    .line 391
    .line 392
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 393
    .line 394
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v7}, Lta5;->containsKey(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    if-eqz v7, :cond_15

    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    sget-object v6, Lov2;->a:Lov2;

    .line 421
    .line 422
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    :cond_15
    :goto_e
    move v1, v5

    .line 426
    goto/16 :goto_9

    .line 427
    .line 428
    :cond_16
    invoke-static {}, Lfl1;->F0()V

    .line 429
    .line 430
    .line 431
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 432
    :cond_17
    monitor-exit p0

    .line 433
    :goto_f
    return-object v3

    .line 434
    :goto_10
    monitor-exit p0

    .line 435
    throw p1

    .line 436
    :cond_18
    invoke-static {p1, v0}, Lm0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    return-object v2

    .line 440
    :cond_19
    invoke-static {p1, v0}, Lm0;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    return-object v2
.end method

.method public static b(Ljava/util/concurrent/ConcurrentHashMap$KeySetView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lokhttp3/Call;

    .line 16
    .line 17
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static c([B[I[BII)[B
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p3, :cond_a

    .line 3
    .line 4
    if-ltz p4, :cond_a

    .line 5
    .line 6
    add-int v5, p3, p4

    .line 7
    .line 8
    array-length v1, p2

    .line 9
    if-gt v5, v1, :cond_a

    .line 10
    .line 11
    const/16 v7, 0x10

    .line 12
    .line 13
    if-nez p4, :cond_0

    .line 14
    .line 15
    new-array p0, v7, [B

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    array-length v1, p1

    .line 19
    mul-int/lit8 v1, v1, 0x4

    .line 20
    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    array-length v2, p1

    .line 29
    const/4 v8, 0x0

    .line 30
    move v3, v8

    .line 31
    :goto_0
    if-ge v3, v2, :cond_1

    .line 32
    .line 33
    aget v4, p1, v3

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    if-ltz p3, :cond_9

    .line 49
    .line 50
    if-ltz p4, :cond_9

    .line 51
    .line 52
    array-length v1, p2

    .line 53
    if-gt v5, v1, :cond_9

    .line 54
    .line 55
    rem-int/lit8 v9, p4, 0x10

    .line 56
    .line 57
    if-nez v9, :cond_2

    .line 58
    .line 59
    move-object v1, p2

    .line 60
    move v4, p3

    .line 61
    move-object v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    add-int/lit8 v1, p4, 0xf

    .line 64
    .line 65
    div-int/2addr v1, v7

    .line 66
    mul-int/2addr v1, v7

    .line 67
    new-array v2, v1, [B

    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v6, 0x2

    .line 71
    move-object v1, p2

    .line 72
    move v4, p3

    .line 73
    invoke-static/range {v1 .. v6}, Lx50;->j0([B[BIIII)V

    .line 74
    .line 75
    .line 76
    :goto_1
    if-nez v2, :cond_6

    .line 77
    .line 78
    array-length p2, p1

    .line 79
    if-ne p2, v7, :cond_5

    .line 80
    .line 81
    if-ltz v4, :cond_4

    .line 82
    .line 83
    if-ltz p4, :cond_4

    .line 84
    .line 85
    array-length p2, v1

    .line 86
    if-gt v5, p2, :cond_4

    .line 87
    .line 88
    if-nez v9, :cond_3

    .line 89
    .line 90
    const-string p2, "AES/CBC/NoPadding"

    .line 91
    .line 92
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 97
    .line 98
    const-string v0, "AES"

    .line 99
    .line 100
    invoke-direct {p3, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p2, v0, p3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1, v4, p4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const-string p0, "AES-CBC plaintext range must be block aligned"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_4
    const-string p0, "AES-CBC plaintext range is invalid"

    .line 127
    .line 128
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_5
    const-string p0, "AES-CBC IV must be 16 bytes"

    .line 133
    .line 134
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_6
    invoke-static {p0, p1, v2}, Ly13;->a([B[B[B)[B

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :goto_2
    :try_start_0
    array-length p2, p0

    .line 143
    sub-int/2addr p2, v7

    .line 144
    array-length p3, p0

    .line 145
    invoke-static {p0, p2, p3}, Lx50;->k0([BII)[B

    .line 146
    .line 147
    .line 148
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 150
    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-static {p0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 158
    .line 159
    .line 160
    return-object p2

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    move-object p2, v0

    .line 163
    invoke-static {p1, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 164
    .line 165
    .line 166
    if-eqz v2, :cond_8

    .line 167
    .line 168
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 169
    .line 170
    .line 171
    :cond_8
    invoke-static {p0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 172
    .line 173
    .line 174
    throw p2

    .line 175
    :cond_9
    const-string p0, "MEGA padded range is invalid"

    .line 176
    .line 177
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-object v0

    .line 181
    :cond_a
    const-string p0, "MEGA chunk MAC range is invalid"

    .line 182
    .line 183
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v0
.end method

.method public static d(J)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    move-wide v4, v1

    .line 10
    :goto_0
    cmp-long v6, p0, v1

    .line 11
    .line 12
    if-lez v6, :cond_1

    .line 13
    .line 14
    const/16 v6, 0x8

    .line 15
    .line 16
    if-gt v3, v6, :cond_0

    .line 17
    .line 18
    const/high16 v6, 0x20000

    .line 19
    .line 20
    mul-int/2addr v6, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/high16 v6, 0x100000

    .line 23
    .line 24
    :goto_1
    int-to-long v6, v6

    .line 25
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    long-to-int v6, v6

    .line 30
    new-instance v7, Ldb5;

    .line 31
    .line 32
    invoke-direct {v7, v6, v4, v5}, Ldb5;-><init>(IJ)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    int-to-long v6, v6

    .line 39
    add-long/2addr v4, v6

    .line 40
    sub-long/2addr p0, v6

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method

.method public static f([B[IJ[B)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget p1, p1, v2

    .line 6
    .line 7
    const-wide v3, 0x1000000000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    div-long v3, p2, v3

    .line 13
    .line 14
    long-to-int v3, v3

    .line 15
    const-wide/16 v4, 0x10

    .line 16
    .line 17
    div-long/2addr p2, v4

    .line 18
    long-to-int p2, p2

    .line 19
    filled-new-array {v1, p1, v3, p2}, [I

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/16 p2, 0x10

    .line 24
    .line 25
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move v1, v0

    .line 33
    :goto_0
    const/4 v3, 0x4

    .line 34
    if-ge v1, v3, :cond_0

    .line 35
    .line 36
    aget v3, p1, v1

    .line 37
    .line 38
    invoke-virtual {p3, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :try_start_0
    array-length p3, p1

    .line 52
    if-ne p3, p2, :cond_1

    .line 53
    .line 54
    const-string p2, "AES/CTR/NoPadding"

    .line 55
    .line 56
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 61
    .line 62
    const-string v1, "AES"

    .line 63
    .line 64
    invoke-direct {p3, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v2, p3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_1
    :try_start_1
    const-string p0, "AES-CTR IV must be 16 bytes"

    .line 87
    .line 88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public static h(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lov2;->a:Lov2;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v2, 0x0

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    move v9, v2

    .line 28
    move-wide v7, v3

    .line 29
    move v3, v9

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_5

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    add-int/lit8 v11, v3, 0x1

    .line 41
    .line 42
    if-ltz v3, :cond_4

    .line 43
    .line 44
    check-cast v4, Ldb5;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2

    .line 51
    .line 52
    iget v5, v4, Ldb5;->b:I

    .line 53
    .line 54
    add-int/2addr v5, v9

    .line 55
    const/high16 v6, 0x200000

    .line 56
    .line 57
    if-le v5, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v5, Lya5;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-direct/range {v5 .. v10}, Lya5;-><init>(IJILjava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    move v9, v2

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_3

    .line 91
    .line 92
    iget-wide v5, v4, Ldb5;->a:J

    .line 93
    .line 94
    move-wide v7, v5

    .line 95
    :cond_3
    new-instance v5, Lcb5;

    .line 96
    .line 97
    invoke-direct {v5, v3, v4}, Lcb5;-><init>(ILdb5;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget v3, v4, Ldb5;->b:I

    .line 104
    .line 105
    add-int/2addr v9, v3

    .line 106
    move v3, v11

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    invoke-static {}, Lfl1;->F0()V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    throw p0

    .line 113
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_6

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_6
    new-instance v5, Lya5;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-static {v1}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    invoke-direct/range {v5 .. v10}, Lya5;-><init>(IJILjava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 137
    .line 138
    .line 139
    return-object v0
.end method

.method public static i(Ljava/util/concurrent/ExecutorCompletionService;IIZLmt3;)I
    .locals 1

    .line 1
    :goto_0
    if-ge p1, p2, :cond_3

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-interface {p4, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object p0, p1

    .line 42
    :goto_2
    throw p0

    .line 43
    :cond_3
    :goto_3
    return p1
.end method

.method public static j(Ljava/util/concurrent/ExecutorCompletionService;IIZLmt3;)I
    .locals 1

    .line 1
    :cond_0
    if-ge p1, p2, :cond_4

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_2
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-interface {p4, v0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    return p1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    move-object p0, p1

    .line 51
    :goto_1
    throw p0

    .line 52
    :cond_4
    :goto_2
    return p1
.end method

.method public static k(Lq63;J)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :try_start_0
    invoke-static {v1, p1, p2}, Ljb5;->l(Ljava/io/InputStream;J)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lq63;->z()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    cmp-long p0, v1, v3

    .line 20
    .line 21
    if-gez p0, :cond_0

    .line 22
    .line 23
    move-wide v1, v3

    .line 24
    :cond_0
    const-wide/16 v5, 0x3e8

    .line 25
    .line 26
    div-long/2addr v1, v5

    .line 27
    const/16 p0, 0x9

    .line 28
    .line 29
    new-array p0, p0, [B

    .line 30
    .line 31
    move p2, v0

    .line 32
    :goto_0
    cmp-long v5, v1, v3

    .line 33
    .line 34
    if-lez v5, :cond_1

    .line 35
    .line 36
    add-int/lit8 p2, p2, 0x1

    .line 37
    .line 38
    long-to-int v5, v1

    .line 39
    int-to-byte v5, v5

    .line 40
    aput-byte v5, p0, p2

    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    ushr-long/2addr v1, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    int-to-byte v1, p2

    .line 47
    aput-byte v1, p0, v0

    .line 48
    .line 49
    add-int/lit8 p2, p2, 0x1

    .line 50
    .line 51
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p1, p0}, Lx50;->u0([B[B)[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    invoke-static {v1, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public static l(Ljava/io/InputStream;J)[B
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    if-ltz v5, :cond_a

    .line 11
    .line 12
    const-wide/16 v7, 0x10

    .line 13
    .line 14
    cmp-long v5, v1, v7

    .line 15
    .line 16
    const/16 v7, 0x10

    .line 17
    .line 18
    if-gtz v5, :cond_0

    .line 19
    .line 20
    new-array v3, v7, [B

    .line 21
    .line 22
    long-to-int v1, v1

    .line 23
    invoke-static {v0, v3, v1}, Ljb5;->q(Ljava/io/InputStream;[BI)V

    .line 24
    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    new-array v5, v7, [B

    .line 28
    .line 29
    const-wide/16 v7, 0x2000

    .line 30
    .line 31
    cmp-long v7, v1, v7

    .line 32
    .line 33
    const/4 v8, 0x4

    .line 34
    const/4 v9, 0x0

    .line 35
    if-gtz v7, :cond_2

    .line 36
    .line 37
    long-to-int v3, v1

    .line 38
    new-array v4, v3, [B

    .line 39
    .line 40
    invoke-static {v0, v4, v3}, Ljb5;->q(Ljava/io/InputStream;[BI)V

    .line 41
    .line 42
    .line 43
    move v0, v9

    .line 44
    :goto_0
    if-ge v0, v8, :cond_1

    .line 45
    .line 46
    int-to-long v6, v0

    .line 47
    mul-long/2addr v6, v1

    .line 48
    const-wide/16 v10, 0x4

    .line 49
    .line 50
    div-long/2addr v6, v10

    .line 51
    long-to-int v3, v6

    .line 52
    add-int/lit8 v6, v0, 0x1

    .line 53
    .line 54
    int-to-long v12, v6

    .line 55
    mul-long/2addr v12, v1

    .line 56
    div-long/2addr v12, v10

    .line 57
    long-to-int v7, v12

    .line 58
    sub-int/2addr v7, v3

    .line 59
    new-instance v10, Ljava/util/zip/CRC32;

    .line 60
    .line 61
    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v4, v3, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    long-to-int v3, v10

    .line 72
    mul-int/lit8 v0, v0, 0x4

    .line 73
    .line 74
    invoke-static {v5, v0, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 79
    .line 80
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move v0, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 90
    .line 91
    .line 92
    return-object v5

    .line 93
    :cond_2
    const/16 v7, 0x40

    .line 94
    .line 95
    new-array v10, v7, [B

    .line 96
    .line 97
    move-wide v12, v3

    .line 98
    move v11, v9

    .line 99
    :goto_1
    if-ge v11, v8, :cond_9

    .line 100
    .line 101
    new-instance v14, Ljava/util/zip/CRC32;

    .line 102
    .line 103
    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    .line 104
    .line 105
    .line 106
    move-wide/from16 v16, v3

    .line 107
    .line 108
    move v15, v9

    .line 109
    :goto_2
    const/16 v3, 0x20

    .line 110
    .line 111
    if-ge v15, v3, :cond_8

    .line 112
    .line 113
    int-to-long v3, v11

    .line 114
    const-wide/16 v18, 0x20

    .line 115
    .line 116
    mul-long v3, v3, v18

    .line 117
    .line 118
    int-to-long v8, v15

    .line 119
    add-long/2addr v3, v8

    .line 120
    const-wide/16 v8, 0x40

    .line 121
    .line 122
    sub-long v20, v1, v8

    .line 123
    .line 124
    mul-long v3, v3, v20

    .line 125
    .line 126
    const-wide/16 v22, 0x7f

    .line 127
    .line 128
    div-long v3, v3, v22

    .line 129
    .line 130
    cmp-long v22, v3, v20

    .line 131
    .line 132
    if-lez v22, :cond_3

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    move-wide/from16 v20, v3

    .line 136
    .line 137
    :goto_3
    sub-long v3, v20, v12

    .line 138
    .line 139
    cmp-long v12, v3, v16

    .line 140
    .line 141
    if-ltz v12, :cond_7

    .line 142
    .line 143
    :goto_4
    cmp-long v12, v3, v16

    .line 144
    .line 145
    if-lez v12, :cond_6

    .line 146
    .line 147
    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v12

    .line 151
    cmp-long v22, v12, v16

    .line 152
    .line 153
    if-lez v22, :cond_4

    .line 154
    .line 155
    sub-long/2addr v3, v12

    .line 156
    goto :goto_4

    .line 157
    :cond_4
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-ltz v12, :cond_5

    .line 162
    .line 163
    const-wide/16 v12, -0x1

    .line 164
    .line 165
    add-long/2addr v3, v12

    .line 166
    goto :goto_4

    .line 167
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    .line 168
    .line 169
    const-string v1, "MEGA fingerprint source ended early"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_6
    invoke-static {v0, v10, v7}, Ljb5;->q(Ljava/io/InputStream;[BI)V

    .line 176
    .line 177
    .line 178
    add-long v12, v20, v8

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v14, v10, v3, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    const/4 v8, 0x4

    .line 187
    const/4 v9, 0x0

    .line 188
    goto :goto_2

    .line 189
    :cond_7
    const-string v0, "MEGA fingerprint sparse offsets moved backwards"

    .line 190
    .line 191
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object v6

    .line 195
    :cond_8
    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    .line 196
    .line 197
    .line 198
    move-result-wide v3

    .line 199
    long-to-int v3, v3

    .line 200
    mul-int/lit8 v4, v11, 0x4

    .line 201
    .line 202
    const/4 v8, 0x4

    .line 203
    invoke-static {v5, v4, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 208
    .line 209
    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    .line 216
    add-int/lit8 v11, v11, 0x1

    .line 217
    .line 218
    move-wide/from16 v3, v16

    .line 219
    .line 220
    const/4 v9, 0x0

    .line 221
    goto :goto_1

    .line 222
    :cond_9
    move v3, v9

    .line 223
    invoke-static {v10, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 224
    .line 225
    .line 226
    return-object v5

    .line 227
    :cond_a
    const-string v0, "MEGA fingerprint file size is invalid"

    .line 228
    .line 229
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-object v6
.end method

.method public static n(Ljava/io/IOException;Lft7;I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljb5;->t(Lft7;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    instance-of p1, p0, Lfb5;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    instance-of p1, p0, Lkb5;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    instance-of p0, p0, Leb5;

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x10

    .line 19
    .line 20
    if-ge p2, p0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public static o(Ljava/util/ArrayList;[B)[I
    .locals 8

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    new-array v4, v0, [B

    .line 23
    .line 24
    move v5, v2

    .line 25
    :goto_1
    if-ge v5, v0, :cond_0

    .line 26
    .line 27
    aget-byte v6, v3, v5

    .line 28
    .line 29
    aget-byte v7, v1, v5

    .line 30
    .line 31
    xor-int/2addr v6, v7

    .line 32
    int-to-byte v6, v6

    .line 33
    aput-byte v6, v4, v5

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    invoke-static {p1, v4}, Ly13;->c([B[B)[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    array-length p0, v1

    .line 49
    const/4 p1, 0x3

    .line 50
    add-int/2addr p0, p1

    .line 51
    div-int/lit8 p0, p0, 0x4

    .line 52
    .line 53
    mul-int/lit8 p0, p0, 0x4

    .line 54
    .line 55
    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    div-int/lit8 p0, p0, 0x4

    .line 64
    .line 65
    new-array v3, p0, [I

    .line 66
    .line 67
    move v4, v2

    .line 68
    :goto_2
    if-ge v4, p0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    aput v5, v3, v4

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    aget p0, v3, v2

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aget v0, v3, v0

    .line 83
    .line 84
    xor-int/2addr p0, v0

    .line 85
    const/4 v0, 0x2

    .line 86
    aget v0, v3, v0

    .line 87
    .line 88
    aget p1, v3, p1

    .line 89
    .line 90
    xor-int/2addr p1, v0

    .line 91
    filled-new-array {p0, p1}, [I

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :goto_3
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public static p([B)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/16 v1, 0x24

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v1, Lf51;->d:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "0"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 47
    .line 48
    .line 49
    const-string p0, ""

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const/16 v1, 0xa

    .line 53
    .line 54
    invoke-static {v1, v0}, Luq7;->W(ILjava/lang/String;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-gez p0, :cond_4

    .line 68
    .line 69
    const/4 p0, -0x4

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eq v0, p0, :cond_3

    .line 75
    .line 76
    const/16 p0, -0xe

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-ne v0, p0, :cond_2

    .line 83
    .line 84
    new-instance p0, Lpb3;

    .line 85
    .line 86
    const-string v0, "MEGA upload chunk integrity check failed (API_EKEY)"

    .line 87
    .line 88
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_2
    new-instance p0, Lca5;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-direct {p0, v0}, Lca5;-><init>(I)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_3
    new-instance p0, Leb5;

    .line 103
    .line 104
    const-string v0, "MEGA upload server failed chunk (DAEMON_EFAILED)"

    .line 105
    .line 106
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_4
    new-instance p0, Lfb5;

    .line 111
    .line 112
    const/16 v1, 0x40

    .line 113
    .line 114
    invoke-static {v1, v0}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "Unexpected MEGA upload chunk response: "

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public static q(Ljava/io/InputStream;[BI)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p2, :cond_1

    .line 3
    .line 4
    sub-int v1, p2, v0

    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 15
    .line 16
    const-string p1, "MEGA fingerprint source ended early"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    return-void
.end method

.method public static t(Lft7;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lft7;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 11
    .line 12
    const-string v0, "MEGA transfer cancelled"

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static u(Lokhttp3/Response;)Lhb5;
    .locals 7

    .line 1
    iget v0, p0, Lokhttp3/Response;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/Response;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "X-MEGA-Time-Left"

    .line 6
    .line 7
    invoke-static {v2, p0}, Lokhttp3/Response;->b(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    if-lez v3, :cond_0

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    :cond_0
    new-instance p0, Lhb5;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1, v2}, Lhb5;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static w(Lpa5;[BLjava/util/ArrayList;)V
    .locals 3

    .line 1
    const-string v0, "MEGA file MAC mismatch for "

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p2, p1}, Ljb5;->o(Ljava/util/ArrayList;[B)[I

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lx13;->a([I)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p2, p0, Lpa5;->h:[I

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    aget v1, p2, v1

    .line 22
    .line 23
    const/4 v2, 0x7

    .line 24
    aget p2, p2, v2

    .line 25
    .line 26
    filled-new-array {v1, p2}, [I

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Lx13;->a([I)[B

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 v1, 0x0

    .line 35
    :try_start_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 36
    .line 37
    .line 38
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_1
    iget-object p0, p0, Lpa5;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method


# virtual methods
.method public final e(Lgh;Lpa5;Ljava/lang/String;Ljava/lang/String;[I[BLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "n"

    .line 4
    .line 5
    const-string v2, "t"

    .line 6
    .line 7
    const-string v3, "a"

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p7

    .line 12
    .line 13
    invoke-static {v5, v4}, Ljb5;->o(Ljava/util/ArrayList;[B)[I

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x0

    .line 18
    aget v7, p5, v6

    .line 19
    .line 20
    const/4 v8, 0x4

    .line 21
    aget v13, p5, v8

    .line 22
    .line 23
    xor-int v9, v7, v13

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    aget v10, p5, v7

    .line 27
    .line 28
    const/4 v11, 0x5

    .line 29
    aget v14, p5, v11

    .line 30
    .line 31
    xor-int/2addr v10, v14

    .line 32
    const/4 v11, 0x2

    .line 33
    aget v11, p5, v11

    .line 34
    .line 35
    aget v15, v5, v6

    .line 36
    .line 37
    xor-int/2addr v11, v15

    .line 38
    const/4 v12, 0x3

    .line 39
    aget v12, p5, v12

    .line 40
    .line 41
    aget v16, v5, v7

    .line 42
    .line 43
    xor-int v12, v12, v16

    .line 44
    .line 45
    filled-new-array/range {v9 .. v16}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {v4}, Lx13;->e([B)[I

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v9}, Lx13;->a([I)[B

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    :try_start_0
    new-instance v11, Lfl4;

    .line 58
    .line 59
    invoke-direct {v11}, Lfl4;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v12, "p"

    .line 63
    .line 64
    invoke-virtual {v11, v3, v12}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v12, "v"

    .line 68
    .line 69
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v11, v12, v8}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 74
    .line 75
    .line 76
    const-string v8, "sm"

    .line 77
    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v11, v8, v7}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v7, p2

    .line 86
    .line 87
    iget-object v7, v7, Lpa5;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v11, v2, v7}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v7, Lxi4;

    .line 93
    .line 94
    invoke-direct {v7}, Lxi4;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v8, Lfl4;

    .line 98
    .line 99
    invoke-direct {v8}, Lfl4;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v12, "h"

    .line 103
    .line 104
    move-object/from16 v13, p4

    .line 105
    .line 106
    invoke-virtual {v8, v12, v13}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v8, v2, v12}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lqa5;->a:[B

    .line 117
    .line 118
    new-instance v2, Lfl4;

    .line 119
    .line 120
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 121
    .line 122
    .line 123
    move-object/from16 v12, p3

    .line 124
    .line 125
    invoke-virtual {v2, v1, v12}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v12, "c"

    .line 129
    .line 130
    move-object/from16 v13, p8

    .line 131
    .line 132
    invoke-virtual {v2, v12, v13}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, v2}, Lqa5;->b([ILfl4;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v8, v3, v2}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "k"

    .line 143
    .line 144
    iget-object v3, v0, Lgh;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v3, [B

    .line 147
    .line 148
    invoke-static {v3, v10}, Ly13;->c([B[B)[B

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    invoke-virtual {v12}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    invoke-virtual {v12, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v8, v2, v3}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v8}, Lxi4;->p(Lqj4;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v1, v7}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v1, p0

    .line 177
    .line 178
    iget-object v1, v1, Ljb5;->a:Lea5;

    .line 179
    .line 180
    iget-object v0, v0, Lgh;->a:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    sget-object v2, Lda5;->IDEMPOTENT_MUTATION:Lda5;

    .line 185
    .line 186
    invoke-virtual {v1, v11, v0, v2}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lw13;->b(Lqj4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 194
    .line 195
    .line 196
    invoke-static {v9, v6}, Ljava/util/Arrays;->fill([II)V

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 200
    .line 201
    .line 202
    invoke-static {v10, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 208
    .line 209
    .line 210
    invoke-static {v9, v6}, Ljava/util/Arrays;->fill([II)V

    .line 211
    .line 212
    .line 213
    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([II)V

    .line 214
    .line 215
    .line 216
    invoke-static {v10, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 217
    .line 218
    .line 219
    throw v0
.end method

.method public final g(Ljava/lang/String;JILft7;Ljava/util/Set;)[B
    .locals 8

    .line 1
    const-string v0, "download"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    invoke-static {p5}, Ljb5;->t(Lft7;)V

    .line 6
    .line 7
    .line 8
    new-instance v3, Lokhttp3/Request$Builder;

    .line 9
    .line 10
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    int-to-long v4, p4

    .line 14
    add-long/2addr v4, p2

    .line 15
    const-wide/16 v6, 0x1

    .line 16
    .line 17
    sub-long/2addr v4, v6

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v7, "/"

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, "-"

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->b()V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lokhttp3/Request;

    .line 53
    .line 54
    invoke-direct {v4, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Ljb5;->b:Lokhttp3/OkHttpClient;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v5, Lokhttp3/internal/connection/RealCall;

    .line 63
    .line 64
    invoke-direct {v5, v3, v4}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v3, p0, Ljb5;->f:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    if-eqz p6, :cond_0

    .line 76
    .line 77
    invoke-interface {p6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 85
    .line 86
    .line 87
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    iget-boolean v6, v4, Lokhttp3/Response;->H:Z

    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    iget-object v6, v4, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 93
    .line 94
    invoke-static {v6, p4}, Lwx3;->x(Lokhttp3/ResponseBody;I)[B

    .line 95
    .line 96
    .line 97
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :try_start_3
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
    .line 101
    if-eqz p6, :cond_1

    .line 102
    .line 103
    :try_start_4
    invoke-interface {p6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    .line 108
    .line 109
    return-object v6

    .line 110
    :catchall_0
    move-exception v4

    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :catchall_1
    move-exception v6

    .line 114
    goto :goto_5

    .line 115
    :cond_2
    :try_start_5
    invoke-static {v4}, Ljb5;->u(Lokhttp3/Response;)Lhb5;

    .line 116
    .line 117
    .line 118
    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    :try_start_6
    invoke-virtual {v4}, Lokhttp3/Response;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    .line 121
    .line 122
    if-eqz p6, :cond_3

    .line 123
    .line 124
    :try_start_7
    invoke-interface {p6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 128
    .line 129
    .line 130
    iget v3, v6, Lhb5;->b:I

    .line 131
    .line 132
    const/16 v4, 0x1fd

    .line 133
    .line 134
    if-eq v3, v4, :cond_9

    .line 135
    .line 136
    const/16 v4, 0x193

    .line 137
    .line 138
    if-eq v3, v4, :cond_5

    .line 139
    .line 140
    const/16 v4, 0x194

    .line 141
    .line 142
    if-ne v3, v4, :cond_4

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    move v4, v1

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 148
    :goto_3
    if-nez v4, :cond_8

    .line 149
    .line 150
    const/16 v4, 0x1ad

    .line 151
    .line 152
    if-eq v3, v4, :cond_6

    .line 153
    .line 154
    const/16 v4, 0x1f4

    .line 155
    .line 156
    if-eq v3, v4, :cond_6

    .line 157
    .line 158
    const/16 v4, 0x1f6

    .line 159
    .line 160
    if-eq v3, v4, :cond_6

    .line 161
    .line 162
    const/16 v4, 0x1f7

    .line 163
    .line 164
    if-eq v3, v4, :cond_6

    .line 165
    .line 166
    const/16 v4, 0x1f8

    .line 167
    .line 168
    if-ne v3, v4, :cond_7

    .line 169
    .line 170
    :cond_6
    const/16 v4, 0x10

    .line 171
    .line 172
    if-ge v2, v4, :cond_7

    .line 173
    .line 174
    invoke-virtual {p0, p5, v2, v0}, Ljb5;->s(Lft7;ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_7
    iget-object p0, v6, Lhb5;->a:Ljava/lang/String;

    .line 182
    .line 183
    const-string p1, "MEGA download HTTP "

    .line 184
    .line 185
    const-string p2, " "

    .line 186
    .line 187
    invoke-static {v3, p1, p2, p0}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-static {p0}, Ly5;->m(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const/4 p0, 0x0

    .line 195
    return-object p0

    .line 196
    :cond_8
    new-instance p0, Leb5;

    .line 197
    .line 198
    const-string p1, "MEGA download URL expired (HTTP "

    .line 199
    .line 200
    const-string p2, ")"

    .line 201
    .line 202
    invoke-static {v3, p1, p2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_9
    new-instance p0, Lkb5;

    .line 211
    .line 212
    const-string p1, "MEGA transfer quota exceeded (HTTP 509)"

    .line 213
    .line 214
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :goto_5
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 219
    :catchall_2
    move-exception v7

    .line 220
    :try_start_9
    invoke-static {v4, v6}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 224
    :goto_6
    if-eqz p6, :cond_a

    .line 225
    .line 226
    :try_start_a
    invoke-interface {p6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_a
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 233
    :goto_7
    iget-boolean v4, v5, Lokhttp3/internal/connection/RealCall;->G:Z

    .line 234
    .line 235
    if-nez v4, :cond_b

    .line 236
    .line 237
    invoke-static {v3, p5, v2}, Ljb5;->n(Ljava/io/IOException;Lft7;I)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-eqz v4, :cond_b

    .line 242
    .line 243
    invoke-virtual {p0, p5, v2, v0}, Ljb5;->s(Lft7;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_b
    throw v3
.end method

.method public final m(Lgh;Lpa5;)Lgb5;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Ljb5;->r(Lgh;Lpa5;Z)Lab5;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object v4, v3, Lab5;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-ne v4, v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lgb5;

    .line 17
    .line 18
    iget-object v4, v3, Lab5;->a:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {v4}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v5, v3, Lab5;->b:J

    .line 27
    .line 28
    iget-object v3, v3, Lab5;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v2, v4, v3, v5, v6}, Lgb5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Ljb5;->r(Lgh;Lpa5;Z)Lab5;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, v3, Lab5;->a:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ne v4, v2, :cond_1

    .line 45
    .line 46
    new-instance v2, Lgb5;

    .line 47
    .line 48
    iget-object v4, v3, Lab5;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v4}, Lel1;->k1(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    iget-wide v5, v3, Lab5;->b:J

    .line 57
    .line 58
    iget-object v3, v3, Lab5;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-direct {v2, v4, v3, v5, v6}, Lgb5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_1
    iget-object v2, v3, Lab5;->a:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "MEGA transfer response for \'g\' returned "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, " URLs"

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v3
    :try_end_0
    .catch Lca5; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    const/4 v3, -0x3

    .line 104
    iget v4, v2, Lca5;->a:I

    .line 105
    .line 106
    if-eq v4, v3, :cond_2

    .line 107
    .line 108
    const/4 v3, -0x4

    .line 109
    if-eq v4, v3, :cond_2

    .line 110
    .line 111
    const/16 v3, -0x12

    .line 112
    .line 113
    if-eq v4, v3, :cond_2

    .line 114
    .line 115
    const/16 v3, -0x13

    .line 116
    .line 117
    if-ne v4, v3, :cond_3

    .line 118
    .line 119
    :cond_2
    const/16 v3, 0x10

    .line 120
    .line 121
    if-ge v1, v3, :cond_3

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    const-string v3, "download URL"

    .line 125
    .line 126
    invoke-virtual {p0, v2, v1, v3}, Ljb5;->s(Lft7;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_3
    throw v2
.end method

.method public final r(Lgh;Lpa5;Z)Lab5;
    .locals 6

    .line 1
    const-string v0, "MEGA transfer quota exceeded (API_EOVERQUOTA)"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Lfl4;

    .line 9
    .line 10
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "a"

    .line 14
    .line 15
    const-string v4, "g"

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v4, v3}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "n"

    .line 29
    .line 30
    iget-object v5, p2, Lpa5;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3, v5}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    const-string p3, "v"

    .line 38
    .line 39
    invoke-virtual {v2, p3, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-string p3, "ssl"

    .line 43
    .line 44
    invoke-virtual {v2, p3, v1}, Lfl4;->t(Ljava/lang/String;Ljava/lang/Number;)V

    .line 45
    .line 46
    .line 47
    const/16 p3, -0x11

    .line 48
    .line 49
    :try_start_0
    iget-object p0, p0, Ljb5;->a:Lea5;

    .line 50
    .line 51
    iget-object p1, p1, Lgh;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    sget-object v1, Lda5;->READ_SAFE:Lda5;

    .line 56
    .line 57
    invoke-virtual {p0, v2, p1, v1}, Lea5;->b(Lfl4;Ljava/lang/String;Lda5;)Lqj4;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lqj4;->i()Lfl4;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catch Lca5; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const-string p1, "e"

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v1, 0x0

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Lqj4;->f()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-gez v2, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move-object p1, v1

    .line 82
    :goto_0
    if-eqz p1, :cond_5

    .line 83
    .line 84
    invoke-virtual {p1}, Lqj4;->f()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, p3, :cond_4

    .line 89
    .line 90
    const-string p1, "tl"

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    :try_start_1
    invoke-virtual {p0}, Lqj4;->l()J

    .line 99
    .line 100
    .line 101
    move-result-wide p0

    .line 102
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    new-instance p1, Lbn6;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    move-object p0, p1

    .line 114
    :goto_1
    nop

    .line 115
    instance-of p1, p0, Lbn6;

    .line 116
    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    move-object p0, v1

    .line 120
    :cond_2
    check-cast p0, Ljava/lang/Long;

    .line 121
    .line 122
    if-eqz p0, :cond_3

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide p1

    .line 128
    const-wide/16 v2, 0x0

    .line 129
    .line 130
    cmp-long p1, p1, v2

    .line 131
    .line 132
    if-lez p1, :cond_3

    .line 133
    .line 134
    move-object v1, p0

    .line 135
    :cond_3
    new-instance p0, Lkb5;

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_4
    new-instance p0, Lca5;

    .line 142
    .line 143
    invoke-direct {p0, p1}, Lca5;-><init>(I)V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_5
    new-instance p1, Lab5;

    .line 148
    .line 149
    invoke-static {p0, v4}, Ljb5;->a(Lfl4;Ljava/lang/String;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p3

    .line 153
    const-string v0, "s"

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-virtual {v0}, Lqj4;->l()J

    .line 162
    .line 163
    .line 164
    move-result-wide v2

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    iget-wide v2, p2, Lpa5;->d:J

    .line 167
    .line 168
    :goto_2
    const-string p2, "at"

    .line 169
    .line 170
    invoke-virtual {p0, p2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-eqz p0, :cond_9

    .line 175
    .line 176
    instance-of p2, p0, Lel4;

    .line 177
    .line 178
    if-nez p2, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move-object p0, v1

    .line 182
    :goto_3
    if-eqz p0, :cond_9

    .line 183
    .line 184
    invoke-virtual {p0}, Lqj4;->o()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-eqz p0, :cond_9

    .line 189
    .line 190
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-nez p2, :cond_8

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move-object p0, v1

    .line 198
    :goto_4
    if-eqz p0, :cond_9

    .line 199
    .line 200
    invoke-direct {p1, p3, v2, v3, p0}, Lab5;-><init>(Ljava/util/List;JLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_9
    const-string p0, "MEGA transfer response is missing \'at\'"

    .line 205
    .line 206
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1

    .line 210
    :catch_0
    move-exception p0

    .line 211
    iget p1, p0, Lca5;->a:I

    .line 212
    .line 213
    if-ne p1, p3, :cond_a

    .line 214
    .line 215
    new-instance p0, Lkb5;

    .line 216
    .line 217
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0

    .line 221
    :cond_a
    throw p0
.end method

.method public final s(Lft7;ILjava/lang/String;)V
    .locals 5

    .line 1
    add-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    int-to-long v0, p2

    .line 4
    const-wide/16 v2, 0x3e8

    .line 5
    .line 6
    mul-long/2addr v0, v2

    .line 7
    :goto_0
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p2, v0, v2

    .line 10
    .line 11
    if-lez p2, :cond_1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljb5;->t(Lft7;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-wide/16 v2, 0xfa

    .line 19
    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :try_start_0
    iget-object p2, p0, Ljb5;->c:Lmt3;

    .line 25
    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {p2, v4}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 44
    .line 45
    const-string p2, "MEGA "

    .line 46
    .line 47
    const-string v0, " retry interrupted"

    .line 48
    .line 49
    invoke-static {p2, p3, v0}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_1
    return-void
.end method

.method public final v(Ljava/lang/String;J[BLft7;Ljava/util/Set;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    move-object/from16 v3, p5

    .line 6
    .line 7
    move-object/from16 v4, p6

    .line 8
    .line 9
    const-string v5, "upload"

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move v7, v6

    .line 13
    :goto_0
    invoke-static {v3}, Ljb5;->t(Lft7;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lokhttp3/Request$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v8, 0xc

    .line 22
    .line 23
    new-array v9, v8, [B

    .line 24
    .line 25
    array-length v10, v2

    .line 26
    move v11, v6

    .line 27
    move v12, v11

    .line 28
    :goto_1
    if-ge v11, v10, :cond_0

    .line 29
    .line 30
    aget-byte v13, v2, v11

    .line 31
    .line 32
    add-int/lit8 v14, v12, 0x1

    .line 33
    .line 34
    rem-int/2addr v12, v8

    .line 35
    aget-byte v15, v9, v12

    .line 36
    .line 37
    xor-int/2addr v13, v15

    .line 38
    int-to-byte v13, v13

    .line 39
    aput-byte v13, v9, v12

    .line 40
    .line 41
    add-int/lit8 v11, v11, 0x1

    .line 42
    .line 43
    move v12, v14

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-virtual {v8}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8, v9}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    move-object/from16 v10, p1

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v11, "/"

    .line 71
    .line 72
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-wide/from16 v11, p2

    .line 76
    .line 77
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v13, "?d="

    .line 81
    .line 82
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v8, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 96
    .line 97
    iget-object v8, v1, Ljb5;->e:Lokhttp3/MediaType;

    .line 98
    .line 99
    const/4 v9, 0x6

    .line 100
    invoke-static {v2, v9, v8}, Lokhttp3/RequestBody$Companion;->b([BILokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string v9, "POST"

    .line 105
    .line 106
    invoke-virtual {v0, v9, v8}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 107
    .line 108
    .line 109
    new-instance v8, Lokhttp3/Request;

    .line 110
    .line 111
    invoke-direct {v8, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v1, Ljb5;->b:Lokhttp3/OkHttpClient;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v9, Lokhttp3/internal/connection/RealCall;

    .line 120
    .line 121
    invoke-direct {v9, v0, v8}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 122
    .line 123
    .line 124
    :try_start_0
    iget-object v8, v1, Ljb5;->g:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    if-eqz v4, :cond_1

    .line 133
    .line 134
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto/16 :goto_8

    .line 140
    .line 141
    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {v9}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 142
    .line 143
    .line 144
    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-boolean v0, v13, Lokhttp3/Response;->H:Z

    .line 146
    .line 147
    if-eqz v0, :cond_3

    .line 148
    .line 149
    iget-object v0, v13, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 150
    .line 151
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()[B

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljb5;->p([B)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    :try_start_3
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    .line 161
    .line 162
    if-eqz v4, :cond_2

    .line 163
    .line 164
    :try_start_4
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_2
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    goto/16 :goto_7

    .line 173
    .line 174
    :catchall_1
    move-exception v0

    .line 175
    move-object v14, v0

    .line 176
    goto :goto_6

    .line 177
    :cond_3
    :try_start_5
    invoke-static {v13}, Ljb5;->u(Lokhttp3/Response;)Lhb5;

    .line 178
    .line 179
    .line 180
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    :try_start_6
    invoke-virtual {v13}, Lokhttp3/Response;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 182
    .line 183
    .line 184
    if-eqz v4, :cond_4

    .line 185
    .line 186
    :try_start_7
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_4
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 190
    .line 191
    .line 192
    iget v8, v0, Lhb5;->b:I

    .line 193
    .line 194
    const/16 v9, 0x1fd

    .line 195
    .line 196
    if-eq v8, v9, :cond_a

    .line 197
    .line 198
    const/16 v9, 0x193

    .line 199
    .line 200
    if-eq v8, v9, :cond_6

    .line 201
    .line 202
    const/16 v9, 0x194

    .line 203
    .line 204
    if-ne v8, v9, :cond_5

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_5
    move v9, v6

    .line 208
    goto :goto_4

    .line 209
    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 210
    :goto_4
    if-nez v9, :cond_9

    .line 211
    .line 212
    const/16 v9, 0x1ad

    .line 213
    .line 214
    if-eq v8, v9, :cond_7

    .line 215
    .line 216
    const/16 v9, 0x1f4

    .line 217
    .line 218
    if-eq v8, v9, :cond_7

    .line 219
    .line 220
    const/16 v9, 0x1f6

    .line 221
    .line 222
    if-eq v8, v9, :cond_7

    .line 223
    .line 224
    const/16 v9, 0x1f7

    .line 225
    .line 226
    if-eq v8, v9, :cond_7

    .line 227
    .line 228
    const/16 v9, 0x1f8

    .line 229
    .line 230
    if-ne v8, v9, :cond_8

    .line 231
    .line 232
    :cond_7
    const/16 v9, 0x10

    .line 233
    .line 234
    if-ge v7, v9, :cond_8

    .line 235
    .line 236
    invoke-virtual {v1, v3, v7, v5}, Ljb5;->s(Lft7;ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_8
    iget-object v0, v0, Lhb5;->a:Ljava/lang/String;

    .line 244
    .line 245
    const-string v1, "MEGA upload HTTP "

    .line 246
    .line 247
    const-string v2, " "

    .line 248
    .line 249
    invoke-static {v8, v1, v2, v0}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    const/4 v0, 0x0

    .line 257
    return-object v0

    .line 258
    :cond_9
    new-instance v0, Leb5;

    .line 259
    .line 260
    const-string v1, "MEGA upload URL expired (HTTP "

    .line 261
    .line 262
    const-string v2, ")"

    .line 263
    .line 264
    invoke-static {v8, v1, v2}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_a
    new-instance v0, Lkb5;

    .line 273
    .line 274
    const-string v1, "MEGA transfer quota exceeded (HTTP 509)"

    .line 275
    .line 276
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v0

    .line 280
    :goto_6
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 281
    :catchall_2
    move-exception v0

    .line 282
    :try_start_9
    invoke-static {v13, v14}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 286
    :goto_7
    if-eqz v4, :cond_b

    .line 287
    .line 288
    :try_start_a
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    :cond_b
    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 295
    :goto_8
    iget-boolean v8, v9, Lokhttp3/internal/connection/RealCall;->G:Z

    .line 296
    .line 297
    if-nez v8, :cond_c

    .line 298
    .line 299
    invoke-static {v0, v3, v7}, Ljb5;->n(Ljava/io/IOException;Lft7;I)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-eqz v8, :cond_c

    .line 304
    .line 305
    invoke-virtual {v1, v3, v7, v5}, Ljb5;->s(Lft7;ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_c
    throw v0
.end method
