.class public final Lvq8;
.super Lmj1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:Ljava/util/Set;


# instance fields
.field public final c:Ldd1;

.field public final d:Lokhttp3/OkHttpClient;

.field public e:Lgq8;

.field public f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x194

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x19a

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lx50;->A0([Ljava/lang/Object;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lvq8;->g:Ljava/util/Set;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ldd1;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lmj1;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lvq8;->c:Ldd1;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Ljq8;->c(Lbz;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-wide/16 v0, 0xa

    .line 15
    .line 16
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Lokhttp3/internal/_UtilJvmKt;->b(JLjava/util/concurrent/TimeUnit;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p1, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 33
    .line 34
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lvq8;->d:Lokhttp3/OkHttpClient;

    .line 40
    .line 41
    return-void
.end method

.method public static x(Lvq8;Lc62;Ljava/lang/String;JLmt3;)V
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const-string v0, "nextcloud_chunk_size"

    .line 8
    .line 9
    const/4 v12, 0x0

    .line 10
    const/16 v2, 0x64

    .line 11
    .line 12
    :try_start_0
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "prefs"

    .line 22
    .line 23
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v12
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :goto_0
    int-to-long v2, v2

    .line 28
    const-wide/32 v4, 0x100000

    .line 29
    .line 30
    .line 31
    mul-long v13, v2, v4

    .line 32
    .line 33
    const-wide/16 v19, 0x0

    .line 34
    .line 35
    cmp-long v0, p3, v19

    .line 36
    .line 37
    if-lez v0, :cond_13

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lvq8;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lsq8;->b(Ljava/lang/String;)Ltq8;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget-object v2, v2, Ltq8;->a:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :try_start_1
    invoke-static {v2}, Lokhttp3/HttpUrl$Companion;->b(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 57
    .line 58
    .line 59
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-object v2, v12

    .line 62
    :goto_1
    if-nez v2, :cond_3

    .line 63
    .line 64
    :cond_2
    :goto_2
    move-object v2, v12

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->c(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iget-object v2, v2, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 89
    .line 90
    :goto_3
    if-eqz v2, :cond_12

    .line 91
    .line 92
    const-string v3, ".tmp"

    .line 93
    .line 94
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v1, v4}, Lvq8;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Ld65;

    .line 103
    .line 104
    invoke-direct {v5}, Ld65;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const-string v7, "OC-Total-Length"

    .line 112
    .line 113
    invoke-virtual {v5, v7, v6}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    const-string v6, "Destination"

    .line 117
    .line 118
    invoke-virtual {v5, v6, v4}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ld65;->b()Ld65;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget-object v15, v1, Lvq8;->e:Lgq8;

    .line 126
    .line 127
    const-string v21, "webDavClient"

    .line 128
    .line 129
    if-eqz v15, :cond_11

    .line 130
    .line 131
    invoke-static {v6, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v4, v2}, Lgq8;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    if-lez v0, :cond_10

    .line 142
    .line 143
    const-wide/32 v15, 0x500000

    .line 144
    .line 145
    .line 146
    const-wide v17, 0x140000000L

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    invoke-static/range {v13 .. v18}, Ll73;->i(JJJ)J

    .line 152
    .line 153
    .line 154
    move-result-wide v13

    .line 155
    new-instance v15, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    move-object/from16 v16, v12

    .line 162
    .line 163
    move-wide/from16 v17, v13

    .line 164
    .line 165
    move-wide/from16 v12, p3

    .line 166
    .line 167
    :goto_4
    cmp-long v4, v12, v19

    .line 168
    .line 169
    if-lez v4, :cond_5

    .line 170
    .line 171
    const/16 v4, 0x2710

    .line 172
    .line 173
    if-gt v0, v4, :cond_4

    .line 174
    .line 175
    move v4, v0

    .line 176
    move-object/from16 v22, v15

    .line 177
    .line 178
    move-wide/from16 v14, v17

    .line 179
    .line 180
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    new-instance v6, Luq8;

    .line 185
    .line 186
    move-object/from16 v17, v3

    .line 187
    .line 188
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    move/from16 v18, v4

    .line 193
    .line 194
    const/4 v4, 0x5

    .line 195
    invoke-static {v4, v3}, Lnq7;->o0(ILjava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-direct {v6, v3, v0, v1}, Luq8;-><init>(Ljava/lang/String;J)V

    .line 200
    .line 201
    .line 202
    move-object/from16 v3, v22

    .line 203
    .line 204
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    sub-long/2addr v12, v0

    .line 208
    add-int/lit8 v0, v18, 0x1

    .line 209
    .line 210
    move-wide/from16 v35, v14

    .line 211
    .line 212
    move-object v15, v3

    .line 213
    move-object/from16 v3, v17

    .line 214
    .line 215
    move-wide/from16 v17, v35

    .line 216
    .line 217
    move-object/from16 v1, p0

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_4
    const-string v0, "Nextcloud chunk upload supports at most 10000 chunks"

    .line 221
    .line 222
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_5
    move-object/from16 v17, v3

    .line 227
    .line 228
    move-object v3, v15

    .line 229
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    const/4 v0, 0x0

    .line 234
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_a

    .line 239
    .line 240
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    add-int/lit8 v4, v0, 0x1

    .line 245
    .line 246
    if-ltz v0, :cond_9

    .line 247
    .line 248
    check-cast v1, Luq8;

    .line 249
    .line 250
    invoke-static {v3, v0}, Lel1;->p1(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    move-wide/from16 v13, v19

    .line 259
    .line 260
    const-wide/16 v24, 0x2710

    .line 261
    .line 262
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_6

    .line 267
    .line 268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    check-cast v6, Luq8;

    .line 273
    .line 274
    move-object v15, v5

    .line 275
    iget-wide v5, v6, Luq8;->b:J

    .line 276
    .line 277
    add-long/2addr v13, v5

    .line 278
    move-object v5, v15

    .line 279
    goto :goto_6

    .line 280
    :cond_6
    move-object v15, v5

    .line 281
    sget-object v26, Lvr6;->INSTANCE:Lvr6;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    sget-object v5, Lp93;->a:Lp93;

    .line 288
    .line 289
    iget-wide v5, v1, Luq8;->b:J

    .line 290
    .line 291
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-static {v5}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    const-string v6, "Uploading Chunk "

    .line 300
    .line 301
    move-object/from16 v22, v3

    .line 302
    .line 303
    const-string v3, " ("

    .line 304
    .line 305
    move-object/from16 v32, v12

    .line 306
    .line 307
    const-string v12, "/"

    .line 308
    .line 309
    invoke-static {v6, v4, v12, v3, v0}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-string v3, ")"

    .line 314
    .line 315
    invoke-static {v0, v5, v3}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v28

    .line 319
    const/16 v30, 0x4

    .line 320
    .line 321
    const/16 v31, 0x0

    .line 322
    .line 323
    const-string v27, "WebDavService"

    .line 324
    .line 325
    const/16 v29, 0x0

    .line 326
    .line 327
    invoke-static/range {v26 .. v31}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    const/4 v6, 0x0

    .line 335
    :goto_7
    :try_start_2
    new-instance v0, Lc62;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 336
    .line 337
    move-object/from16 v26, v3

    .line 338
    .line 339
    :try_start_3
    new-instance v3, Lxt;

    .line 340
    .line 341
    invoke-direct {v3, v8, v13, v14, v1}, Lxt;-><init>(Lc62;JLuq8;)V

    .line 342
    .line 343
    .line 344
    invoke-direct {v0, v3}, Lc62;-><init>(Lbt3;)V

    .line 345
    .line 346
    .line 347
    iget-object v3, v1, Luq8;->a:Ljava/lang/String;

    .line 348
    .line 349
    move-object/from16 v27, v0

    .line 350
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 369
    move/from16 v28, v4

    .line 370
    .line 371
    move/from16 v29, v5

    .line 372
    .line 373
    :try_start_4
    iget-wide v4, v1, Luq8;->b:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 374
    .line 375
    move-object/from16 v30, v7

    .line 376
    .line 377
    :try_start_5
    new-instance v7, Lrq8;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 378
    .line 379
    move-object/from16 v31, v15

    .line 380
    .line 381
    move-object/from16 v15, p5

    .line 382
    .line 383
    :try_start_6
    invoke-direct {v7, v15, v13, v14}, Lrq8;-><init>(Lmt3;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 384
    .line 385
    .line 386
    move v10, v6

    .line 387
    move-wide/from16 v33, v13

    .line 388
    .line 389
    move-object/from16 v11, v17

    .line 390
    .line 391
    move-object/from16 v14, v26

    .line 392
    .line 393
    move/from16 v13, v28

    .line 394
    .line 395
    move/from16 v15, v29

    .line 396
    .line 397
    move-object/from16 v6, v31

    .line 398
    .line 399
    move-object/from16 v17, v1

    .line 400
    .line 401
    move-object/from16 v26, v2

    .line 402
    .line 403
    move-object/from16 v2, v27

    .line 404
    .line 405
    move-object/from16 v1, p0

    .line 406
    .line 407
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Lvq8;->B(Lc62;Ljava/lang/String;JLjava/util/Map;Lmt3;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 408
    .line 409
    .line 410
    move-object/from16 v31, v6

    .line 411
    .line 412
    move-object/from16 v17, v11

    .line 413
    .line 414
    move v0, v13

    .line 415
    move-object/from16 v3, v22

    .line 416
    .line 417
    move-object/from16 v2, v26

    .line 418
    .line 419
    move-object/from16 v7, v30

    .line 420
    .line 421
    move-object/from16 v5, v31

    .line 422
    .line 423
    move-object/from16 v12, v32

    .line 424
    .line 425
    goto/16 :goto_5

    .line 426
    .line 427
    :catch_2
    move-exception v0

    .line 428
    move-object/from16 v31, v6

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :catch_3
    move-exception v0

    .line 432
    move v10, v6

    .line 433
    move-wide/from16 v33, v13

    .line 434
    .line 435
    :goto_8
    move-object/from16 v11, v17

    .line 436
    .line 437
    move-object/from16 v14, v26

    .line 438
    .line 439
    move/from16 v13, v28

    .line 440
    .line 441
    move/from16 v15, v29

    .line 442
    .line 443
    move-object/from16 v17, v1

    .line 444
    .line 445
    move-object/from16 v26, v2

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :catch_4
    move-exception v0

    .line 449
    move v10, v6

    .line 450
    :goto_9
    move-wide/from16 v33, v13

    .line 451
    .line 452
    move-object/from16 v31, v15

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :catch_5
    move-exception v0

    .line 456
    move v10, v6

    .line 457
    move-object/from16 v30, v7

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :catch_6
    move-exception v0

    .line 461
    move v10, v6

    .line 462
    move-object/from16 v30, v7

    .line 463
    .line 464
    move-wide/from16 v33, v13

    .line 465
    .line 466
    move-object/from16 v31, v15

    .line 467
    .line 468
    move-object/from16 v11, v17

    .line 469
    .line 470
    move-object/from16 v14, v26

    .line 471
    .line 472
    move-object/from16 v17, v1

    .line 473
    .line 474
    move-object/from16 v26, v2

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :catch_7
    move-exception v0

    .line 478
    move-object/from16 v26, v2

    .line 479
    .line 480
    move v10, v6

    .line 481
    move-object/from16 v30, v7

    .line 482
    .line 483
    move-wide/from16 v33, v13

    .line 484
    .line 485
    move-object/from16 v31, v15

    .line 486
    .line 487
    move-object/from16 v11, v17

    .line 488
    .line 489
    move-object/from16 v17, v1

    .line 490
    .line 491
    move-object v14, v3

    .line 492
    :goto_a
    move v13, v4

    .line 493
    move v15, v5

    .line 494
    :goto_b
    move-object/from16 v1, p0

    .line 495
    .line 496
    :goto_c
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 497
    .line 498
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    const-string v4, "Error while uploading Chunk "

    .line 503
    .line 504
    const-string v5, ": "

    .line 505
    .line 506
    invoke-static {v4, v13, v12, v5, v15}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    const/4 v6, 0x4

    .line 518
    const/4 v7, 0x0

    .line 519
    const-string v3, "WebDavService"

    .line 520
    .line 521
    const/4 v5, 0x0

    .line 522
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    iget-boolean v3, v8, Lc62;->b:Z

    .line 526
    .line 527
    if-nez v3, :cond_8

    .line 528
    .line 529
    instance-of v3, v0, Lb62;

    .line 530
    .line 531
    if-nez v3, :cond_8

    .line 532
    .line 533
    const/4 v3, 0x5

    .line 534
    if-ge v10, v3, :cond_7

    .line 535
    .line 536
    add-int/lit8 v0, v10, 0x1

    .line 537
    .line 538
    const-string v4, "Waiting for a while before retrying (Retry#"

    .line 539
    .line 540
    invoke-static {v0, v4, v14}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    const/4 v6, 0x4

    .line 545
    const/4 v7, 0x0

    .line 546
    move/from16 v23, v3

    .line 547
    .line 548
    const-string v3, "WebDavService"

    .line 549
    .line 550
    const/4 v5, 0x0

    .line 551
    invoke-static/range {v2 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    :try_start_8
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 555
    .line 556
    .line 557
    :catch_8
    move v6, v0

    .line 558
    move v4, v13

    .line 559
    move-object v3, v14

    .line 560
    move v5, v15

    .line 561
    move-object/from16 v1, v17

    .line 562
    .line 563
    move-object/from16 v2, v26

    .line 564
    .line 565
    move-object/from16 v7, v30

    .line 566
    .line 567
    move-object/from16 v15, v31

    .line 568
    .line 569
    move-wide/from16 v13, v33

    .line 570
    .line 571
    move-object/from16 v17, v11

    .line 572
    .line 573
    goto/16 :goto_7

    .line 574
    .line 575
    :cond_7
    const-string v1, "Retry limit exhausted, cancelling upload"

    .line 576
    .line 577
    invoke-static {v1, v0}, Le6;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :cond_8
    throw v0

    .line 582
    :cond_9
    invoke-static {}, Lfl1;->F0()V

    .line 583
    .line 584
    .line 585
    throw v16

    .line 586
    :cond_a
    move-object/from16 v1, p0

    .line 587
    .line 588
    move-object/from16 v26, v2

    .line 589
    .line 590
    move-object/from16 v30, v7

    .line 591
    .line 592
    move-object/from16 v11, v17

    .line 593
    .line 594
    const-wide/16 v24, 0x2710

    .line 595
    .line 596
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 597
    .line 598
    const/4 v6, 0x4

    .line 599
    const/4 v7, 0x0

    .line 600
    const-string v3, "WebDavService"

    .line 601
    .line 602
    const-string v4, "Assembling chunks"

    .line 603
    .line 604
    const/4 v5, 0x0

    .line 605
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    const-string v3, "WebDavService"

    .line 609
    .line 610
    const-string v4, "Your server may take extremely long time to assemble chunks! Please be patient."

    .line 611
    .line 612
    invoke-static/range {v2 .. v7}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    invoke-virtual {v1, v8}, Lvq8;->r(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_b

    .line 624
    .line 625
    invoke-virtual {v1, v8}, Lvq8;->j(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    :cond_b
    const-string v0, "/.file"

    .line 629
    .line 630
    move-object/from16 v12, v26

    .line 631
    .line 632
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v1, v8}, Lvq8;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    :try_start_9
    iget-object v4, v1, Lvq8;->e:Lgq8;

    .line 641
    .line 642
    if-eqz v4, :cond_c

    .line 643
    .line 644
    new-instance v5, Ld65;

    .line 645
    .line 646
    invoke-direct {v5}, Ld65;-><init>()V

    .line 647
    .line 648
    .line 649
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v6

    .line 653
    move-object/from16 v7, v30

    .line 654
    .line 655
    invoke-virtual {v5, v7, v6}, Ld65;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v5}, Ld65;->b()Ld65;

    .line 659
    .line 660
    .line 661
    move-result-object v5

    .line 662
    invoke-virtual {v4, v0, v3, v5}, Lgq8;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 663
    .line 664
    .line 665
    const-string v3, "WebDavService"

    .line 666
    .line 667
    const-string v4, "Assembled chunks successfully!"

    .line 668
    .line 669
    const/4 v6, 0x4

    .line 670
    const/4 v7, 0x0

    .line 671
    const/4 v5, 0x0

    .line 672
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    goto :goto_f

    .line 676
    :catch_9
    move-exception v0

    .line 677
    move-object v4, v0

    .line 678
    goto :goto_d

    .line 679
    :cond_c
    invoke-static/range {v21 .. v21}, Lpe4;->F(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    throw v16
    :try_end_9
    .catch Lkq8; {:try_start_9 .. :try_end_9} :catch_9

    .line 683
    :goto_d
    iget v0, v4, Lkq8;->a:I

    .line 684
    .line 685
    const/16 v2, 0x1f8

    .line 686
    .line 687
    if-ne v0, v2, :cond_f

    .line 688
    .line 689
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 690
    .line 691
    const/4 v14, 0x4

    .line 692
    const/4 v15, 0x0

    .line 693
    const-string v11, "WebDavService"

    .line 694
    .line 695
    const-string v12, "Server killed connection with Swift Backup before assembly is complete!"

    .line 696
    .line 697
    const/4 v13, 0x0

    .line 698
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    const-string v0, "Swift Backup will attempt to verify assembly success manually for 1hr"

    .line 702
    .line 703
    sget-object v2, Lvr6$a;->YELLOW:Lvr6$a;

    .line 704
    .line 705
    const-string v3, "WebDavService"

    .line 706
    .line 707
    invoke-virtual {v10, v3, v0, v2}, Lvr6;->i(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 708
    .line 709
    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 711
    .line 712
    .line 713
    move-result-wide v2

    .line 714
    :catch_a
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 715
    .line 716
    .line 717
    move-result-wide v4

    .line 718
    sub-long/2addr v4, v2

    .line 719
    const-wide/32 v6, 0x36ee80

    .line 720
    .line 721
    .line 722
    cmp-long v0, v4, v6

    .line 723
    .line 724
    if-gtz v0, :cond_e

    .line 725
    .line 726
    invoke-virtual {v1, v8}, Lvq8;->r(Ljava/lang/String;)Z

    .line 727
    .line 728
    .line 729
    move-result v0

    .line 730
    if-eqz v0, :cond_d

    .line 731
    .line 732
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 733
    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 735
    .line 736
    .line 737
    move-result-wide v4

    .line 738
    invoke-static {v2, v3, v4, v5}, Lorg/swiftapps/swiftbackup/common/Const;->u(JJ)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    const-string v2, "Assembly successful: "

    .line 743
    .line 744
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v12

    .line 748
    const/4 v14, 0x4

    .line 749
    const/4 v15, 0x0

    .line 750
    const-string v11, "WebDavService"

    .line 751
    .line 752
    const/4 v13, 0x0

    .line 753
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    :goto_f
    invoke-virtual {v1, v8, v9}, Lvq8;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    return-void

    .line 760
    :cond_d
    :try_start_a
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 761
    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_e
    const-string v0, "Swift Backup waited but the server couldn\'t assemble the chunks in time!"

    .line 765
    .line 766
    invoke-static {v0}, Lg84;->h(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :cond_f
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 771
    .line 772
    const/16 v6, 0x8

    .line 773
    .line 774
    const/4 v7, 0x0

    .line 775
    const-string v2, "WebDavService"

    .line 776
    .line 777
    const-string v3, "Error when assembling chunks"

    .line 778
    .line 779
    const/4 v5, 0x0

    .line 780
    invoke-static/range {v1 .. v7}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    throw v4

    .line 784
    :cond_10
    const-string v0, "Invalid total size for chunking: "

    .line 785
    .line 786
    move-wide/from16 v10, p3

    .line 787
    .line 788
    invoke-static {v10, v11, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 793
    .line 794
    .line 795
    return-void

    .line 796
    :cond_11
    move-object/from16 v16, v12

    .line 797
    .line 798
    invoke-static/range {v21 .. v21}, Lpe4;->F(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    throw v16

    .line 802
    :cond_12
    const-string v0, "Chunked upload not supported"

    .line 803
    .line 804
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :cond_13
    move-wide/from16 v10, p3

    .line 809
    .line 810
    const-string v0, "Invalid content length for chunking: "

    .line 811
    .line 812
    invoke-static {v10, v11, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-static {v0}, Lg84;->f(Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Invalid path: "

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lf6;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p0, v1, v2, v0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-array v0, v2, [C

    .line 13
    .line 14
    const/16 v2, 0x2f

    .line 15
    .line 16
    aput-char v2, v0, v1

    .line 17
    .line 18
    invoke-static {p0, v0}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "/"

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-static {p0, p1}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    sget-object p1, Ltb1;->a:Ltb1;

    .line 47
    .line 48
    invoke-static {p0}, Lqb1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final B(Lc62;Ljava/lang/String;JLjava/util/Map;Lmt3;)V
    .locals 1

    .line 1
    new-instance v0, Lnk6;

    .line 2
    .line 3
    invoke-direct {v0, p3, p4, p1, p6}, Lnk6;-><init>(JLc62;Lmt3;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p3, Lokhttp3/Request$Builder;

    .line 15
    .line 16
    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    iput-object p4, p3, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 24
    .line 25
    invoke-static {p5}, Lgq8;->m(Ljava/util/Map;)Lokhttp3/Headers;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-virtual {p4}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    iput-object p4, p3, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 34
    .line 35
    const-string p4, "PUT"

    .line 36
    .line 37
    invoke-virtual {p3, p4, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 38
    .line 39
    .line 40
    const-string p5, "100-Continue"

    .line 41
    .line 42
    iget-object p6, p3, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 43
    .line 44
    const-string v0, "Expect"

    .line 45
    .line 46
    invoke-static {p6, v0, p5, p3}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p0, p3, p1}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :try_start_0
    invoke-static {p0, p4, p2}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :catchall_1
    move-exception p2

    .line 64
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p2

    .line 68
    :cond_0
    const-string p0, "webDavClient"

    .line 69
    .line 70
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Lt15;)Ltc4;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lvq8;->z(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    new-instance v0, Lokhttp3/Request$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 21
    .line 22
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->b()V

    .line 23
    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-wide v1, p2, Lt15;->a:J

    .line 28
    .line 29
    iget-wide v3, p2, Lt15;->b:J

    .line 30
    .line 31
    const-string p2, "bytes="

    .line 32
    .line 33
    const-string v5, "-"

    .line 34
    .line 35
    invoke-static {p2, v5, v1, v2}, Ldj7;->t(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object v1, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 47
    .line 48
    const-string v2, "Range"

    .line 49
    .line 50
    invoke-virtual {v1, v2, p2}, Lokhttp3/Headers$Builder;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance p2, Lokhttp3/Request;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lgq8;->a:Lokhttp3/OkHttpClient;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v0, Lokhttp3/internal/connection/RealCall;

    .line 64
    .line 65
    invoke-direct {v0, p0, p2}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-boolean p2, p0, Lokhttp3/Response;->H:Z

    .line 73
    .line 74
    if-eqz p2, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 77
    .line 78
    new-instance p2, Ltc4;

    .line 79
    .line 80
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->a()Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v0, Lus5;

    .line 85
    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    invoke-direct {v0, p0, v1}, Lus5;-><init>(Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x4

    .line 92
    invoke-direct {p2, p1, v0, p0}, Ltc4;-><init>(Ljava/io/InputStream;Lbt3;I)V

    .line 93
    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    :try_start_0
    const-string p2, "GET"

    .line 97
    .line 98
    invoke-static {p0, p2, p1}, Lgq8;->l(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lkq8;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :catchall_1
    move-exception p2

    .line 106
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_2
    const-string p0, "webDavClient"

    .line 111
    .line 112
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    throw p0
.end method

.method public final d(Z)Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult;
    .locals 7

    .line 1
    :try_start_0
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lvq8;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lmj1;->t()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0, p1}, Ljq8;->a(Ljava/lang/String;Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Success;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Failed;

    .line 24
    .line 25
    new-instance p1, Ljava/lang/Exception;

    .line 26
    .line 27
    const-string v0, "Login failed!"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$Failed;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    move-object p0, v0

    .line 38
    const-string p1, "WebDavService"

    .line 39
    .line 40
    const-string v0, "WebDavService.login():"

    .line 41
    .line 42
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 46
    .line 47
    invoke-static {p0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "WebDavService.login(): "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v5, 0x4

    .line 58
    const/4 v6, 0x0

    .line 59
    const-string v2, "WebDavService"

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    instance-of p1, p0, Lmf8;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;

    .line 70
    .line 71
    check-cast p0, Lmf8;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$UntrustedCertificate;-><init>(Lmf8;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance p1, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudOperationsImpl$LoginResult$TempConnectionError;-><init>(Ljava/lang/Exception;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    return-object p1
.end method

.method public final e(Lc62;Ljava/lang/String;JLcz;)V
    .locals 10

    .line 1
    invoke-static {p2}, Lvq8;->z(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [C

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    aput-char v2, v0, v1

    .line 11
    .line 12
    invoke-static {p2, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move v3, v1

    .line 17
    move v4, v3

    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-ge v3, v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ne v5, v2, :cond_0

    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-lez v4, :cond_2

    .line 36
    .line 37
    const-string v0, "/"

    .line 38
    .line 39
    invoke-static {p2, v0, p2}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lvq8;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const-string v0, "nextcloud_force_chunked_uploads"

    .line 47
    .line 48
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const-string v0, "prefs"

    .line 58
    .line 59
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    :goto_1
    if-eqz v1, :cond_5

    .line 65
    .line 66
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 67
    .line 68
    const/4 v6, 0x4

    .line 69
    const/4 v7, 0x0

    .line 70
    const-string v3, "WebDavService"

    .line 71
    .line 72
    const-string v4, "Chunked upload is forced by the user"

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-static/range {v2 .. v7}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lvq8;->v()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-static/range {p0 .. p5}, Lvq8;->x(Lvq8;Lc62;Ljava/lang/String;JLmt3;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    move-object v1, p0

    .line 89
    move-object v3, p1

    .line 90
    move-object v4, p2

    .line 91
    move-wide v5, p3

    .line 92
    move-object v7, p5

    .line 93
    const/4 p4, 0x4

    .line 94
    const/4 p5, 0x0

    .line 95
    const-string p1, "WebDavService"

    .line 96
    .line 97
    const-string p2, "Chunked upload not supported by server"

    .line 98
    .line 99
    const/4 p3, 0x0

    .line 100
    move-object p0, v2

    .line 101
    invoke-static/range {p0 .. p5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object p0, v1

    .line 105
    move-object p3, v3

    .line 106
    move-object p5, v4

    .line 107
    move-wide p1, v5

    .line 108
    move-object p4, v7

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move-wide v8, p3

    .line 111
    move-object p3, p1

    .line 112
    move-object p4, p5

    .line 113
    move-object p5, p2

    .line 114
    move-wide p1, v8

    .line 115
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lvq8;->y(JLc62;Lmt3;Ljava/lang/String;)V
    :try_end_1
    .catch Lkq8; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_1
    move-exception v0

    .line 120
    move-wide v8, p1

    .line 121
    move-object p1, p3

    .line 122
    move-object p2, p5

    .line 123
    move-object p5, p4

    .line 124
    move-wide p3, v8

    .line 125
    move-object v3, v0

    .line 126
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 127
    .line 128
    const/16 v5, 0x8

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    const-string v1, "WebDavService"

    .line 132
    .line 133
    const-string v2, "put"

    .line 134
    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget v0, v3, Lkq8;->a:I

    .line 140
    .line 141
    const/16 v1, 0x19d

    .line 142
    .line 143
    if-ne v0, v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Lvq8;->v()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 152
    .line 153
    const-string v1, "Server rejected the direct upload; attempting chunked upload"

    .line 154
    .line 155
    sget-object v2, Lvr6$a;->YELLOW:Lvr6$a;

    .line 156
    .line 157
    const-string v3, "WebDavService"

    .line 158
    .line 159
    invoke-virtual {v0, v3, v1, v2}, Lvr6;->w(Ljava/lang/String;Ljava/lang/String;Lvr6$a;)V

    .line 160
    .line 161
    .line 162
    invoke-static/range {p0 .. p5}, Lvq8;->x(Lvq8;Lc62;Ljava/lang/String;JLmt3;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    throw v3
.end method

.method public final f(Ljava/lang/String;)Lpg1;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltb1;->a:Ltb1;

    .line 5
    .line 6
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ltb1;->i()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p0, :cond_7

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:resourcetype/>\n    <d:getcontentlength/>\n    <d:creationdate/>\n    <d:getlastmodified/>\n  </d:prop>\n</d:propfind>"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v4, p1, v3}, Lgq8;->i(ILjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3, v1}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :try_start_0
    iget v3, p0, Lokhttp3/Response;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    const/16 v5, 0x194

    .line 37
    .line 38
    if-eq v3, v5, :cond_0

    .line 39
    .line 40
    const/16 v5, 0x19a

    .line 41
    .line 42
    if-ne v3, v5, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v4, 0x1

    .line 45
    :cond_1
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 48
    .line 49
    .line 50
    move-object v3, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :try_start_1
    const-string v3, "PROPFIND"

    .line 53
    .line 54
    invoke-static {p0, v3, p1}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 58
    .line 59
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Ltu0;->s(Ljava/lang/String;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    move-object v4, v3

    .line 85
    check-cast v4, Lqq8;

    .line 86
    .line 87
    iget-object v4, v4, Lqq8;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v4}, Lgq8;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v5}, Lgq8;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    move-object v3, v1

    .line 109
    :goto_0
    check-cast v3, Lqq8;

    .line 110
    .line 111
    if-nez v3, :cond_5

    .line 112
    .line 113
    invoke-static {p1}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    move-object v3, p0

    .line 118
    check-cast v3, Lqq8;

    .line 119
    .line 120
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 121
    .line 122
    invoke-static {v3, v0}, Log1;->i(Lqq8;Ljava/lang/String;)Lpg1;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_6
    return-object v1

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :cond_7
    const-string p0, "webDavClient"

    .line 136
    .line 137
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v1
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lvq8;->c:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [C

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x2f

    .line 10
    .line 11
    aput-char v3, v1, v2

    .line 12
    .line 13
    invoke-static {p1, v1}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-array v0, v0, [C

    .line 18
    .line 19
    aput-char v3, v0, v2

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-static {p1, v0, v1}, Lnq7;->w0(Ljava/lang/CharSequence;[CI)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v2, v1

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v2}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object p1, v0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :cond_2
    :try_start_1
    const-string v1, "/"

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/16 v5, 0x3e

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lvq8;->r(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :cond_3
    :try_start_2
    const-string v1, ""

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_9

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_6

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    move-object v4, v3

    .line 135
    check-cast v4, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_5

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    const-string v3, "/"

    .line 148
    .line 149
    const/4 v6, 0x0

    .line 150
    const/16 v7, 0x3e

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    const/4 v5, 0x0

    .line 154
    invoke-static/range {v2 .. v7}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-nez v2, :cond_7

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Lvq8;->r(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_4

    .line 169
    .line 170
    :cond_7
    iget-object v2, p0, Lvq8;->e:Lgq8;

    .line 171
    .line 172
    if-eqz v2, :cond_8

    .line 173
    .line 174
    sget-object v3, Lpv2;->a:Lpv2;

    .line 175
    .line 176
    invoke-virtual {v2, v3, v1}, Lgq8;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_8
    const-string p1, "webDavClient"

    .line 181
    .line 182
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/4 p1, 0x0

    .line 186
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :cond_9
    monitor-exit p0

    .line 188
    return-void

    .line 189
    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    throw p1
.end method

.method public final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lvq8;->z(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lgq8;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string p0, "webDavClient"

    .line 16
    .line 17
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    instance-of p1, p0, Lkq8;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    move-object p1, p0

    .line 28
    check-cast p1, Lkq8;

    .line 29
    .line 30
    iget p1, p1, Lkq8;->a:I

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lvq8;->g:Ljava/util/Set;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    throw p0
.end method

.method public final l()Lni1;
    .locals 4

    .line 1
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:quota-used-bytes/>\n    <d:quota-available-bytes/>\n  </d:prop>\n</d:propfind>"

    .line 8
    .line 9
    const-string v3, ""

    .line 10
    .line 11
    invoke-virtual {p0, v1, v3, v2}, Lgq8;->i(ILjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v1, v0}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    const-string v0, "PROPFIND"

    .line 20
    .line 21
    invoke-static {p0, v0, v3}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 25
    .line 26
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ltu0;->r(Ljava/lang/String;)Lni1;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    invoke-static {p0, v0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_0
    const-string p0, "webDavClient"

    .line 46
    .line 47
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "WebDavService"

    .line 2
    .line 3
    return-object p0
.end method

.method public final r(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "Exists check for path="

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Lgq8;->e(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 16
    .line 17
    const-string v2, "WebDavService"

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " is "

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lvr6;->d$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    move-object v3, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "webDavClient"

    .line 51
    .line 52
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 57
    .line 58
    const-string p0, "Exists check failed for path: "

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/16 v5, 0x8

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const-string v1, "WebDavService"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v0 .. v6}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    throw v3
.end method

.method public final s(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltb1;->a:Ltb1;

    .line 5
    .line 6
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ltb1;->i()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lvq8;->e:Lgq8;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lgq8;->n(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<d:propfind xmlns:d=\"DAV:\">\n  <d:prop>\n    <d:resourcetype/>\n    <d:getcontentlength/>\n    <d:creationdate/>\n    <d:getlastmodified/>\n  </d:prop>\n</d:propfind>"

    .line 25
    .line 26
    invoke-virtual {p0, v3, p1, v4}, Lgq8;->i(ILjava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3, v1}, Lgq8;->d(Lokhttp3/Request;Ljava/lang/Long;)Lokhttp3/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :try_start_0
    const-string v1, "PROPFIND"

    .line 35
    .line 36
    invoke-static {p0, v1, p1}, Lgq8;->k(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 40
    .line 41
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Ltu0;->s(Ljava/lang/String;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v3, v1

    .line 72
    check-cast v3, Lqq8;

    .line 73
    .line 74
    iget-object v3, v3, Lqq8;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {v3}, Lgq8;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-static {v4}, Lgq8;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-nez v3, :cond_0

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    const/16 v1, 0xa

    .line 101
    .line 102
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lqq8;

    .line 124
    .line 125
    invoke-static {v1, v0}, Log1;->i(Lqq8;Ljava/lang/String;)Lpg1;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    return-object p1

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    invoke-static {p0, p1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_3
    const-string p0, "webDavClient"

    .line 142
    .line 143
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v1
.end method

.method public final u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lmj1;->u(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lvq8;->d:Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->b()Lokhttp3/OkHttpClient$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getValidUsername()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getPassword()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    :cond_0
    invoke-static {v0, v1, v2}, Lmq8;->b(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lgq8;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {p1, v2, v3, v4}, Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;->getBaseUrl$default(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;ZILjava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, v1, p1}, Lgq8;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lvq8;->e:Lgq8;

    .line 46
    .line 47
    iput-object v4, p0, Lvq8;->f:Ljava/lang/Boolean;

    .line 48
    .line 49
    return-void
.end method

.method public final v()Z
    .locals 13

    .line 1
    const-string v1, "webDavClient"

    .line 2
    .line 3
    iget-object v0, p0, Lvq8;->f:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lvq8;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lsq8;->b(Ljava/lang/String;)Ltq8;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    iget-object v3, v0, Ltq8;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v0, Ltq8;->b:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    :try_start_0
    iget-object v0, p0, Lvq8;->e:Lgq8;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v6, "OCS-APIRequest"

    .line 36
    .line 37
    const-string v7, "true"

    .line 38
    .line 39
    new-instance v8, Lpw5;

    .line 40
    .line 41
    invoke-direct {v8, v6, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v6, "Accept"

    .line 45
    .line 46
    const-string v7, "application/json"

    .line 47
    .line 48
    new-instance v9, Lpw5;

    .line 49
    .line 50
    invoke-direct {v9, v6, v7}, Lpw5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    filled-new-array {v8, v9}, [Lpw5;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v6}, Lx65;->r0([Lpw5;)Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v0, v6, v4}, Lgq8;->f(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lsq8;->d(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    new-instance v6, Lbn6;

    .line 81
    .line 82
    invoke-direct {v6, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    move-object v0, v6

    .line 86
    :goto_1
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    sget-object v6, Lvr6;->INSTANCE:Lvr6;

    .line 93
    .line 94
    const-string v7, "Nextcloud chunk capabilities probe failed for "

    .line 95
    .line 96
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const/16 v11, 0x8

    .line 101
    .line 102
    const/4 v12, 0x0

    .line 103
    const-string v7, "WebDavService"

    .line 104
    .line 105
    const/4 v10, 0x0

    .line 106
    invoke-static/range {v6 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    instance-of v4, v0, Lbn6;

    .line 110
    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    move-object v0, v5

    .line 114
    :cond_4
    move-object v4, v0

    .line 115
    check-cast v4, Ljava/lang/Boolean;

    .line 116
    .line 117
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {v4, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_5

    .line 124
    .line 125
    iput-object v0, p0, Lvq8;->f:Ljava/lang/Boolean;

    .line 126
    .line 127
    return v2

    .line 128
    :cond_5
    :try_start_1
    iget-object v0, p0, Lvq8;->e:Lgq8;

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3, v5}, Lgq8;->e(Ljava/lang/String;Ljava/lang/Long;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_3

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :goto_2
    new-instance v1, Lbn6;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    move-object v0, v1

    .line 156
    :goto_3
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    if-eqz v8, :cond_7

    .line 161
    .line 162
    sget-object v5, Lvr6;->INSTANCE:Lvr6;

    .line 163
    .line 164
    const-string v1, "Nextcloud chunk upload probe failed for "

    .line 165
    .line 166
    invoke-static {v1, v3}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    const/16 v10, 0x8

    .line 171
    .line 172
    const/4 v11, 0x0

    .line 173
    const-string v6, "WebDavService"

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    invoke-static/range {v5 .. v11}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 180
    .line 181
    instance-of v2, v0, Lbn6;

    .line 182
    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    move-object v0, v1

    .line 186
    :cond_8
    check-cast v0, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-static {v4, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_9

    .line 199
    .line 200
    if-eqz v1, :cond_a

    .line 201
    .line 202
    :cond_9
    iput-object v0, p0, Lvq8;->f:Ljava/lang/Boolean;

    .line 203
    .line 204
    :cond_a
    return v1
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lvq8;->z(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lvq8;->z(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/16 v2, 0x2f

    .line 12
    .line 13
    aput-char v2, v0, v1

    .line 14
    .line 15
    invoke-static {p2, v0}, Lnq7;->I0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move v3, v1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-ge v1, v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v4, v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-lez v3, :cond_2

    .line 38
    .line 39
    const-string v0, "/"

    .line 40
    .line 41
    invoke-static {p2, v0, p2}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lvq8;->h(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lvq8;->e:Lgq8;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    sget-object v1, Lpv2;->a:Lpv2;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2, v1}, Lgq8;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Lvq8;->r(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    const-string p0, "Moving failed from src="

    .line 65
    .line 66
    const-string v0, " to dest="

    .line 67
    .line 68
    invoke-static {p0, p1, v0, p2}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lg84;->f(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    const-string p0, "webDavClient"

    .line 77
    .line 78
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    throw p0
.end method

.method public final y(JLc62;Lmt3;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    const-string v1, ".tmp"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    :try_start_0
    sget-object v6, Lpv2;->a:Lpv2;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-wide v4, p1

    .line 13
    move-object v2, p3

    .line 14
    move-object v7, p4

    .line 15
    invoke-virtual/range {v1 .. v7}, Lvq8;->B(Lc62;Ljava/lang/String;JLjava/util/Map;Lmt3;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lvq8;->e:Lgq8;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v2, Lgq8;->e:Lokhttp3/HttpUrl;

    .line 23
    .line 24
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "123pan"

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    invoke-static {v2, v4, v5}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lvq8;->r(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 42
    .line 43
    const-string v5, "WebDavService"

    .line 44
    .line 45
    const-string v6, "123pan WebDAV cannot overwrite using MOVE; deleting existing path before MOVE"

    .line 46
    .line 47
    const/4 v8, 0x4

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    invoke-static/range {v4 .. v9}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lvq8;->j(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object v2, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lvq8;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const-string v0, "webDavClient"

    .line 65
    .line 66
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 72
    .line 73
    invoke-static {v2}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v5, "putNormal: "

    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v8, 0x4

    .line 84
    const/4 v9, 0x0

    .line 85
    const-string v5, "WebDavService"

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-static/range {v4 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :try_start_1
    invoke-virtual {p0, v3}, Lvq8;->r(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lvq8;->j(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :goto_2
    sget-object v0, Lbe8;->a:Lbe8;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :goto_3
    new-instance v1, Lbn6;

    .line 107
    .line 108
    invoke-direct {v1, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    move-object v0, v1

    .line 112
    :goto_4
    invoke-static {v0}, Len6;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    if-eqz v7, :cond_3

    .line 117
    .line 118
    sget-object v4, Lvr6;->INSTANCE:Lvr6;

    .line 119
    .line 120
    const-string v0, "putNormal: Error while deleting temporary file at "

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const/16 v9, 0x8

    .line 127
    .line 128
    const/4 v10, 0x0

    .line 129
    const-string v5, "WebDavService"

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    invoke-static/range {v4 .. v10}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    throw v2
.end method
