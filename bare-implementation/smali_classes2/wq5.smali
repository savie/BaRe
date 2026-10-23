.class public final Lwq5;
.super Lag8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lmq5;

.field public final j:Lst5;

.field public final k:J

.field public final l:Ljava/lang/String;

.field public final m:J

.field public n:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lmq5;Lst5;Lrf8;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lag8;-><init>(Lrf8;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lwq5;->i:Lmq5;

    .line 11
    .line 12
    iput-object p2, p0, Lwq5;->j:Lst5;

    .line 13
    .line 14
    const-wide/16 p1, 0x7d0

    .line 15
    .line 16
    iput-wide p1, p0, Lwq5;->k:J

    .line 17
    .line 18
    const-string p1, "OUploadSession"

    .line 19
    .line 20
    iput-object p1, p0, Lwq5;->l:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "onedrive_chunk_size"

    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    :try_start_0
    sget-object p3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    if-eqz p3, :cond_0

    .line 28
    .line 29
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p1, "prefs"

    .line 35
    .line 36
    invoke-static {p1}, Lpe4;->F(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    move p1, p2

    .line 42
    :goto_0
    const/16 p3, 0x3c

    .line 43
    .line 44
    invoke-static {p1, p2, p3}, Ll73;->h(III)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-long p1, p1

    .line 49
    const-wide/32 v0, 0x100000

    .line 50
    .line 51
    .line 52
    mul-long v2, p1, v0

    .line 53
    .line 54
    const-wide/32 v4, 0x500000

    .line 55
    .line 56
    .line 57
    const-wide/32 v6, 0x3c00000

    .line 58
    .line 59
    .line 60
    invoke-static/range {v2 .. v7}, Ll73;->i(JJJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    const-wide/32 v0, 0x50000

    .line 65
    .line 66
    .line 67
    div-long/2addr p1, v0

    .line 68
    const-wide/16 v2, 0x1

    .line 69
    .line 70
    cmp-long p3, p1, v2

    .line 71
    .line 72
    if-gez p3, :cond_1

    .line 73
    .line 74
    move-wide p1, v2

    .line 75
    :cond_1
    mul-long/2addr p1, v0

    .line 76
    iput-wide p1, p0, Lwq5;->m:J

    .line 77
    .line 78
    return-void
.end method

.method public static final l(Lwq5;Lkh6;Lg30;JJZ)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-nez p7, :cond_0

    .line 6
    .line 7
    iget-wide v2, p0, Lwq5;->k:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long p0, v2, v4

    .line 12
    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    iget-wide v6, p1, Lkh6;->a:J

    .line 16
    .line 17
    cmp-long p0, v6, v4

    .line 18
    .line 19
    if-lez p0, :cond_0

    .line 20
    .line 21
    sub-long v4, v0, v6

    .line 22
    .line 23
    cmp-long p0, v4, v2

    .line 24
    .line 25
    if-gez p0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iput-wide v0, p1, Lkh6;->a:J

    .line 29
    .line 30
    cmp-long p0, p5, p3

    .line 31
    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    move-wide p5, p3

    .line 35
    :cond_1
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p0, p1}, Lg30;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final m(Lwq5;Lkh6;Lxt5;JLlh6;Lkh6;Lg30;Ljava/lang/Exception;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p8

    .line 6
    .line 7
    sget-object v3, Lnf1;->a:Lai6;

    .line 8
    .line 9
    invoke-static {v2}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    :cond_0
    const-string v5, "retry if necessary"

    .line 25
    .line 26
    invoke-static {v3, v5, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    instance-of v3, v2, Lmt5;

    .line 33
    .line 34
    if-eqz v3, :cond_6

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Lmt5;

    .line 38
    .line 39
    iget v3, v3, Lmt5;->a:I

    .line 40
    .line 41
    const/16 v5, 0x198

    .line 42
    .line 43
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    const/16 v5, 0x1ad

    .line 46
    .line 47
    if-eq v3, v5, :cond_2

    .line 48
    .line 49
    const/16 v5, 0x1f4

    .line 50
    .line 51
    if-gt v5, v3, :cond_1

    .line 52
    .line 53
    const/16 v5, 0x258

    .line 54
    .line 55
    if-ge v3, v5, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v5, 0x194

    .line 59
    .line 60
    if-ne v3, v5, :cond_6

    .line 61
    .line 62
    :cond_2
    :goto_0
    iget v3, v0, Lag8;->f:I

    .line 63
    .line 64
    iget v8, v0, Lag8;->e:I

    .line 65
    .line 66
    if-lt v3, v8, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    instance-of v3, v2, Lmt5;

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    check-cast v2, Lmt5;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v2, v5

    .line 78
    :goto_1
    if-eqz v2, :cond_5

    .line 79
    .line 80
    iget-object v2, v2, Lmt5;->c:Ljava/lang/Long;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    move-object v2, v5

    .line 84
    :goto_2
    invoke-virtual {v0, v2}, Lag8;->h(Ljava/lang/Long;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_7

    .line 89
    .line 90
    :cond_6
    :goto_3
    return v4

    .line 91
    :cond_7
    iget v2, v0, Lag8;->f:I

    .line 92
    .line 93
    const/4 v9, 0x1

    .line 94
    add-int/2addr v2, v9

    .line 95
    iput v2, v0, Lag8;->f:I

    .line 96
    .line 97
    iget-object v2, v0, Lwq5;->j:Lst5;

    .line 98
    .line 99
    move-object/from16 v3, p2

    .line 100
    .line 101
    iget-object v3, v3, Lxt5;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v4, Lokhttp3/Request$Builder;

    .line 107
    .line 108
    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Lokhttp3/Request$Builder;->b()V

    .line 115
    .line 116
    .line 117
    new-instance v6, Lokhttp3/Request;

    .line 118
    .line 119
    invoke-direct {v6, v4}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, v2, Lst5;->c:Lokhttp3/OkHttpClient;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v4, Lokhttp3/internal/connection/RealCall;

    .line 128
    .line 129
    invoke-direct {v4, v2, v6}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :try_start_0
    iget-object v4, v2, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 137
    .line 138
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->n()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-boolean v6, v2, Lokhttp3/Response;->H:Z

    .line 143
    .line 144
    if-eqz v6, :cond_10

    .line 145
    .line 146
    invoke-static {v4}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_8

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    move-object v4, v5

    .line 154
    :goto_4
    if-eqz v4, :cond_9

    .line 155
    .line 156
    invoke-static {v4}, Lyc9;->K(Ljava/lang/String;)Lqj4;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lqj4;->i()Lfl4;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    goto :goto_5

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    move-object v1, v0

    .line 167
    goto/16 :goto_a

    .line 168
    .line 169
    :cond_9
    new-instance v3, Lfl4;

    .line 170
    .line 171
    invoke-direct {v3}, Lfl4;-><init>()V

    .line 172
    .line 173
    .line 174
    :goto_5
    const-string v4, "nextExpectedRanges"

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    if-eqz v3, :cond_f

    .line 181
    .line 182
    instance-of v4, v3, Lxi4;

    .line 183
    .line 184
    if-nez v4, :cond_a

    .line 185
    .line 186
    move-object v3, v5

    .line 187
    goto :goto_6

    .line 188
    :cond_a
    invoke-virtual {v3}, Lqj4;->g()Lxi4;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    :goto_6
    if-eqz v3, :cond_f

    .line 193
    .line 194
    new-instance v4, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v3, v3, Lxi4;->a:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    :cond_b
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_e

    .line 210
    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Lqj4;

    .line 216
    .line 217
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v6}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    if-eqz v6, :cond_d

    .line 225
    .line 226
    invoke-static {v6}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_c

    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_c
    const/16 v7, 0x2d

    .line 234
    .line 235
    invoke-static {v6, v7}, Lnq7;->D0(Ljava/lang/String;C)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v6}, Luq7;->Y(Ljava/lang/String;)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    goto :goto_9

    .line 244
    :cond_d
    :goto_8
    move-object v6, v5

    .line 245
    :goto_9
    if-eqz v6, :cond_b

    .line 246
    .line 247
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :cond_e
    invoke-static {v4}, Lel1;->d1(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Ljava/lang/Long;

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 260
    .line 261
    .line 262
    move-result-wide v10

    .line 263
    const-wide/16 v12, 0x0

    .line 264
    .line 265
    move-wide/from16 v14, p3

    .line 266
    .line 267
    invoke-static/range {v10 .. v15}, Ll73;->i(JJJ)J

    .line 268
    .line 269
    .line 270
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v2}, Lokhttp3/Response;->close()V

    .line 272
    .line 273
    .line 274
    iput-wide v3, v1, Lkh6;->a:J

    .line 275
    .line 276
    invoke-virtual {v0}, Lwq5;->i()V

    .line 277
    .line 278
    .line 279
    iget-wide v2, v1, Lkh6;->a:J

    .line 280
    .line 281
    invoke-virtual {v0}, Lwq5;->i()V

    .line 282
    .line 283
    .line 284
    iget-object v4, v0, Lag8;->a:Lrf8;

    .line 285
    .line 286
    iget-object v4, v4, Lrf8;->a:Lq63;

    .line 287
    .line 288
    sget-boolean v5, Lq63;->d:Z

    .line 289
    .line 290
    invoke-virtual {v4, v9}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    :try_start_1
    invoke-static {v4, v2, v3}, Ll73;->C(Ljava/io/InputStream;J)V

    .line 295
    .line 296
    .line 297
    iput-object v4, v0, Lwq5;->n:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .line 299
    move-object/from16 v2, p5

    .line 300
    .line 301
    iput-object v4, v2, Llh6;->a:Ljava/lang/Object;

    .line 302
    .line 303
    iget-wide v5, v1, Lkh6;->a:J

    .line 304
    .line 305
    const/4 v7, 0x1

    .line 306
    move-wide/from16 v3, p3

    .line 307
    .line 308
    move-object/from16 v1, p6

    .line 309
    .line 310
    move-object/from16 v2, p7

    .line 311
    .line 312
    invoke-static/range {v0 .. v7}, Lwq5;->l(Lwq5;Lkh6;Lg30;JJZ)V

    .line 313
    .line 314
    .line 315
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 316
    .line 317
    iget-object v2, v0, Lwq5;->l:Ljava/lang/String;

    .line 318
    .line 319
    iget v0, v0, Lag8;->f:I

    .line 320
    .line 321
    const-string v3, "/"

    .line 322
    .line 323
    const-string v4, ")"

    .line 324
    .line 325
    const-string v5, "Retrying upload session ("

    .line 326
    .line 327
    invoke-static {v5, v0, v3, v4, v8}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    const/4 v3, 0x4

    .line 332
    const/4 v4, 0x0

    .line 333
    const/4 v5, 0x0

    .line 334
    move-object/from16 p2, v0

    .line 335
    .line 336
    move-object/from16 p0, v1

    .line 337
    .line 338
    move-object/from16 p1, v2

    .line 339
    .line 340
    move/from16 p4, v3

    .line 341
    .line 342
    move-object/from16 p5, v4

    .line 343
    .line 344
    move-object/from16 p3, v5

    .line 345
    .line 346
    invoke-static/range {p0 .. p5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    return v9

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-static {v4}, Lf13;->a(Ljava/io/Closeable;)V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :cond_f
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 356
    .line 357
    const-string v1, "OneDrive upload session status did not contain nextExpectedRanges"

    .line 358
    .line 359
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_10
    new-instance v0, Lmt5;

    .line 364
    .line 365
    const-string v1, "GET"

    .line 366
    .line 367
    iget v5, v2, Lokhttp3/Response;->d:I

    .line 368
    .line 369
    invoke-static {v2}, Lst5;->o(Lokhttp3/Response;)Ljava/lang/Long;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    move-object/from16 p0, v0

    .line 374
    .line 375
    move-object/from16 p1, v1

    .line 376
    .line 377
    move-object/from16 p2, v3

    .line 378
    .line 379
    move-object/from16 p4, v4

    .line 380
    .line 381
    move/from16 p3, v5

    .line 382
    .line 383
    move-object/from16 p5, v6

    .line 384
    .line 385
    invoke-direct/range {p0 .. p5}, Lmt5;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    .line 386
    .line 387
    .line 388
    move-object/from16 v0, p0

    .line 389
    .line 390
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :goto_a
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    :catchall_1
    move-exception v0

    .line 393
    invoke-static {v2, v1}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 394
    .line 395
    .line 396
    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 7

    .line 1
    sget-object v0, Ltb1;->a:Ltb1;

    .line 2
    .line 3
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ldd1;->getDisplayNameEn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvr6;->INSTANCE:Lvr6;

    .line 12
    .line 13
    const-string v2, "Closing connection with "

    .line 14
    .line 15
    const-string v3, ", may result in unknown errors"

    .line 16
    .line 17
    invoke-static {v2, v0, v3}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    iget-object v2, p0, Lwq5;->l:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lwq5;->i()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lwq5;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ltb1;->a:Ltb1;

    .line 7
    .line 8
    invoke-static {}, Lqb1;->c()Ltb1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ltb1;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lag8;->a:Lrf8;

    .line 20
    .line 21
    iget-boolean v2, v1, Lrf8;->c:Z

    .line 22
    .line 23
    const-string v3, "/"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lqb1;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lrf8;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lg30;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-direct {v1, p0, v2}, Lg30;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lwq5;->j(Ljava/lang/String;Lg30;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwq5;->n:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lwq5;->n:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method public final j(Ljava/lang/String;Lg30;)V
    .locals 13

    .line 1
    iget-object v1, p0, Lwq5;->i:Lmq5;

    .line 2
    .line 3
    const-string v2, "executeUpload: Retrying upload ("

    .line 4
    .line 5
    const-string v5, "executeUpload:"

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v1}, Lmq5;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lwq5;->k(Ljava/lang/String;Lg30;)Lpt5;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lag8;->d:Lzf8;

    .line 17
    .line 18
    iput-object p1, v0, Lzf8;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    move-object p1, v0

    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object v6, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lwq5;->i()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    sget-object v7, Lvr6;->INSTANCE:Lvr6;

    .line 33
    .line 34
    iget-object v4, p0, Lwq5;->l:Ljava/lang/String;

    .line 35
    .line 36
    const/16 v8, 0x8

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    move-object v3, v7

    .line 40
    const/4 v7, 0x0

    .line 41
    invoke-static/range {v3 .. v9}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    move-object v7, v3

    .line 45
    instance-of v0, v6, Lmt5;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v8, p0, Lwq5;->l:Ljava/lang/String;

    .line 50
    .line 51
    move-object v0, v6

    .line 52
    check-cast v0, Lmt5;

    .line 53
    .line 54
    invoke-static {v0}, Ll73;->E(Lmt5;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const/4 v11, 0x4

    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    invoke-static/range {v7 .. v12}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lag8;->e()Z

    .line 65
    .line 66
    .line 67
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lwq5;->i()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :try_start_2
    iget v0, p0, Lag8;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    iget v3, p0, Lag8;->e:I

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    const/4 v5, 0x1

    .line 80
    if-ge v0, v3, :cond_3

    .line 81
    .line 82
    move v0, v5

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move v0, v4

    .line 85
    :goto_2
    :try_start_3
    sget-object v8, Lnf1;->a:Lai6;

    .line 86
    .line 87
    invoke-static {v6}, Lx13;->H(Ljava/lang/Exception;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_8

    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    const-string v8, ""

    .line 100
    .line 101
    :cond_4
    const-string v9, "retry if necessary"

    .line 102
    .line 103
    invoke-static {v8, v9, v4}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_8

    .line 108
    .line 109
    invoke-static {v6}, Lx13;->B(Ljava/lang/Exception;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v8, :cond_8

    .line 114
    .line 115
    instance-of v8, v6, Lmt5;

    .line 116
    .line 117
    if-eqz v8, :cond_7

    .line 118
    .line 119
    move-object v8, v6

    .line 120
    check-cast v8, Lmt5;

    .line 121
    .line 122
    iget v8, v8, Lmt5;->a:I

    .line 123
    .line 124
    const/16 v9, 0x198

    .line 125
    .line 126
    if-eq v8, v9, :cond_6

    .line 127
    .line 128
    const/16 v9, 0x1ad

    .line 129
    .line 130
    if-eq v8, v9, :cond_6

    .line 131
    .line 132
    const/16 v9, 0x1f4

    .line 133
    .line 134
    if-gt v9, v8, :cond_5

    .line 135
    .line 136
    const/16 v9, 0x258

    .line 137
    .line 138
    if-ge v8, v9, :cond_5

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    move v8, v4

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    :goto_3
    move v8, v5

    .line 144
    :goto_4
    if-nez v8, :cond_8

    .line 145
    .line 146
    move-object v8, v6

    .line 147
    check-cast v8, Lmt5;

    .line 148
    .line 149
    iget v8, v8, Lmt5;->a:I

    .line 150
    .line 151
    const/16 v9, 0x194

    .line 152
    .line 153
    if-ne v8, v9, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    move v8, v4

    .line 157
    goto :goto_6

    .line 158
    :cond_8
    :goto_5
    move v8, v5

    .line 159
    :goto_6
    if-eqz v0, :cond_d

    .line 160
    .line 161
    if-eqz v8, :cond_d

    .line 162
    .line 163
    invoke-static {v6}, Lx13;->B(Ljava/lang/Exception;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-virtual {v1}, Lmq5;->invoke()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_9

    .line 180
    .line 181
    iget-object v8, p0, Lwq5;->l:Ljava/lang/String;

    .line 182
    .line 183
    const-string v9, "Authentication failed with cloud, disabled retrying!"

    .line 184
    .line 185
    const/4 v11, 0x4

    .line 186
    const/4 v12, 0x0

    .line 187
    const/4 v10, 0x0

    .line 188
    invoke-static/range {v7 .. v12}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_9
    instance-of v0, v6, Lmt5;

    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    if-eqz v0, :cond_a

    .line 196
    .line 197
    check-cast v6, Lmt5;

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_a
    move-object v6, v1

    .line 201
    :goto_7
    if-eqz v6, :cond_b

    .line 202
    .line 203
    iget-object v1, v6, Lmt5;->c:Ljava/lang/Long;

    .line 204
    .line 205
    :cond_b
    invoke-virtual {p0, v1}, Lag8;->h(Ljava/lang/Long;)Z

    .line 206
    .line 207
    .line 208
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    if-nez v0, :cond_c

    .line 210
    .line 211
    invoke-virtual {p0}, Lwq5;->i()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_c
    :try_start_4
    iget v0, p0, Lag8;->f:I

    .line 216
    .line 217
    add-int/2addr v0, v5

    .line 218
    iput v0, p0, Lag8;->f:I

    .line 219
    .line 220
    iget-object v8, p0, Lwq5;->l:Ljava/lang/String;

    .line 221
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v0, "/"

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v0, ")"

    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    const/4 v11, 0x4

    .line 248
    const/4 v12, 0x0

    .line 249
    const/4 v10, 0x0

    .line 250
    invoke-static/range {v7 .. v12}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, p1, p2}, Lwq5;->j(Ljava/lang/String;Lg30;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Lwq5;->i()V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :cond_d
    :goto_8
    :try_start_5
    invoke-virtual {p0, v6, v4}, Lag8;->a(Ljava/lang/Exception;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lwq5;->i()V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :goto_9
    invoke-virtual {p0}, Lwq5;->i()V

    .line 268
    .line 269
    .line 270
    throw p1
.end method

.method public final k(Ljava/lang/String;Lg30;)Lpt5;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lwq5;->j:Lst5;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v2, Lfl4;

    .line 9
    .line 10
    invoke-direct {v2}, Lfl4;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lfl4;

    .line 14
    .line 15
    invoke-direct {v3}, Lfl4;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "@microsoft.graph.conflictBehavior"

    .line 19
    .line 20
    const-string v5, "replace"

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Lfl4;->u(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v4, "item"

    .line 26
    .line 27
    invoke-virtual {v2, v4, v3}, Lfl4;->p(Ljava/lang/String;Lqj4;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lokhttp3/Request$Builder;

    .line 31
    .line 32
    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lst5;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "/me/drive/root:/"

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v4, ":/createUploadSession"

    .line 50
    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v0, v4}, Lst5;->r(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iput-object v4, v3, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 63
    .line 64
    sget-object v4, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    .line 65
    .line 66
    invoke-virtual {v2}, Lqj4;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v4, Lst5;->f:Lokhttp3/MediaType;

    .line 71
    .line 72
    invoke-static {v2, v4}, Lokhttp3/RequestBody$Companion;->a(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v4, "POST"

    .line 77
    .line 78
    invoke-virtual {v3, v4, v2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lokhttp3/Request;

    .line 82
    .line 83
    invoke-direct {v2, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lst5;->f(Lokhttp3/Request;)Lfl4;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "uploadUrl"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lfl4;->x(Ljava/lang/String;)Lqj4;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    .line 98
    invoke-static {v0}, Lst5;->a(Lqj4;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    if-eqz v0, :cond_6

    .line 105
    .line 106
    new-instance v9, Lxt5;

    .line 107
    .line 108
    invoke-direct {v9, v0}, Lxt5;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :try_start_0
    new-instance v2, Ljava/net/URI;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    new-instance v2, Lbn6;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    move-object v0, v2

    .line 128
    :goto_1
    nop

    .line 129
    instance-of v2, v0, Lbn6;

    .line 130
    .line 131
    if-eqz v2, :cond_1

    .line 132
    .line 133
    const/4 v0, 0x0

    .line 134
    :cond_1
    move-object v11, v0

    .line 135
    check-cast v11, Ljava/lang/String;

    .line 136
    .line 137
    iget-object v0, v1, Lag8;->a:Lrf8;

    .line 138
    .line 139
    iget-object v2, v0, Lrf8;->a:Lq63;

    .line 140
    .line 141
    invoke-virtual {v2}, Lq63;->A()J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    new-instance v12, Llh6;

    .line 146
    .line 147
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lwq5;->i()V

    .line 151
    .line 152
    .line 153
    iget-object v0, v0, Lrf8;->a:Lq63;

    .line 154
    .line 155
    sget-boolean v2, Lq63;->d:Z

    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    invoke-virtual {v0, v2}, Lq63;->w(Z)Ljava/io/InputStream;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    const-wide/16 v6, 0x0

    .line 163
    .line 164
    :try_start_1
    invoke-static {v2, v6, v7}, Ll73;->C(Ljava/io/InputStream;J)V

    .line 165
    .line 166
    .line 167
    iput-object v2, v1, Lwq5;->n:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 168
    .line 169
    iput-object v2, v12, Llh6;->a:Ljava/lang/Object;

    .line 170
    .line 171
    new-instance v13, Lkh6;

    .line 172
    .line 173
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    new-instance v2, Lkh6;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    :goto_2
    :try_start_2
    iget-wide v6, v13, Lkh6;->a:J

    .line 182
    .line 183
    cmp-long v0, v6, v4

    .line 184
    .line 185
    if-gez v0, :cond_2

    .line 186
    .line 187
    invoke-virtual {v1}, Lag8;->e()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    :cond_2
    const/16 p1, 0x0

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :cond_3
    move-object v7, v2

    .line 198
    iget-wide v2, v13, Lkh6;->a:J

    .line 199
    .line 200
    iget-wide v14, v1, Lwq5;->m:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 201
    .line 202
    move-object/from16 v22, v11

    .line 203
    .line 204
    const/16 p1, 0x0

    .line 205
    .line 206
    sub-long v10, v4, v2

    .line 207
    .line 208
    :try_start_3
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 209
    .line 210
    .line 211
    move-result-wide v17

    .line 212
    new-instance v0, Lkh6;

    .line 213
    .line 214
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 215
    .line 216
    .line 217
    :try_start_4
    iget-object v10, v1, Lwq5;->j:Lst5;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 218
    .line 219
    move-object v11, v13

    .line 220
    :try_start_5
    iget-object v13, v9, Lxt5;->a:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v6, v12, Llh6;->a:Ljava/lang/Object;

    .line 223
    .line 224
    move-object v14, v6

    .line 225
    check-cast v14, Ljava/io/InputStream;

    .line 226
    .line 227
    new-instance v21, Lvq5;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 228
    .line 229
    move-wide/from16 v23, v4

    .line 230
    .line 231
    move-object v5, v7

    .line 232
    move-wide/from16 v7, v23

    .line 233
    .line 234
    move-object/from16 v6, p2

    .line 235
    .line 236
    move-object v4, v1

    .line 237
    move-object v1, v0

    .line 238
    move-object/from16 v0, v21

    .line 239
    .line 240
    :try_start_6
    invoke-direct/range {v0 .. v8}, Lvq5;-><init>(Lkh6;JLwq5;Lkh6;Lg30;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 241
    .line 242
    .line 243
    move-wide/from16 v23, v7

    .line 244
    .line 245
    move-object v7, v5

    .line 246
    move-wide/from16 v4, v23

    .line 247
    .line 248
    move-object v15, v12

    .line 249
    move-object v12, v10

    .line 250
    move-object v10, v15

    .line 251
    move-object/from16 v21, v0

    .line 252
    .line 253
    move-wide v15, v2

    .line 254
    move-wide/from16 v19, v4

    .line 255
    .line 256
    :try_start_7
    invoke-virtual/range {v12 .. v21}, Lst5;->n(Ljava/lang/String;Ljava/io/InputStream;JJJLvq5;)Lwt5;

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 260
    move-wide/from16 v4, v19

    .line 261
    .line 262
    :try_start_8
    iget-wide v1, v11, Lkh6;->a:J

    .line 263
    .line 264
    add-long v1, v1, v17

    .line 265
    .line 266
    iput-wide v1, v11, Lkh6;->a:J

    .line 267
    .line 268
    const/4 v8, 0x1

    .line 269
    move-wide/from16 v23, v1

    .line 270
    .line 271
    move-object v2, v7

    .line 272
    move-wide/from16 v6, v23

    .line 273
    .line 274
    move-object/from16 v1, p0

    .line 275
    .line 276
    move-object/from16 v3, p2

    .line 277
    .line 278
    invoke-static/range {v1 .. v8}, Lwq5;->l(Lwq5;Lkh6;Lg30;JJZ)V

    .line 279
    .line 280
    .line 281
    move-object v7, v2

    .line 282
    iget-boolean v1, v0, Lwt5;->a:Z

    .line 283
    .line 284
    if-eqz v1, :cond_4

    .line 285
    .line 286
    iget-object v10, v0, Lwt5;->b:Lpt5;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :catch_0
    move-exception v0

    .line 290
    move-object/from16 v1, p0

    .line 291
    .line 292
    goto :goto_9

    .line 293
    :cond_4
    move-object/from16 v1, p0

    .line 294
    .line 295
    move-object v2, v7

    .line 296
    move-object v12, v10

    .line 297
    :goto_3
    move-object v13, v11

    .line 298
    move-object/from16 v11, v22

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :catch_1
    move-exception v0

    .line 302
    move-wide/from16 v4, v19

    .line 303
    .line 304
    :goto_4
    move-object/from16 v1, p0

    .line 305
    .line 306
    move-object/from16 v8, p2

    .line 307
    .line 308
    move-object v3, v9

    .line 309
    move-object v6, v10

    .line 310
    move-object v2, v11

    .line 311
    move-object v9, v0

    .line 312
    goto :goto_6

    .line 313
    :catch_2
    move-exception v0

    .line 314
    move-wide/from16 v23, v7

    .line 315
    .line 316
    move-object v7, v5

    .line 317
    move-wide/from16 v4, v23

    .line 318
    .line 319
    :goto_5
    move-object v10, v12

    .line 320
    goto :goto_4

    .line 321
    :catch_3
    move-exception v0

    .line 322
    goto :goto_5

    .line 323
    :catch_4
    move-exception v0

    .line 324
    move-object v10, v12

    .line 325
    move-object v11, v13

    .line 326
    goto :goto_4

    .line 327
    :goto_6
    :try_start_9
    invoke-static/range {v1 .. v9}, Lwq5;->m(Lwq5;Lkh6;Lxt5;JLlh6;Lkh6;Lg30;Ljava/lang/Exception;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    move-object v11, v2

    .line 332
    move-object v2, v9

    .line 333
    if-eqz v0, :cond_5

    .line 334
    .line 335
    move-object v9, v3

    .line 336
    move-object v12, v6

    .line 337
    move-object v2, v7

    .line 338
    goto :goto_3

    .line 339
    :cond_5
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 340
    :catch_5
    move-exception v0

    .line 341
    goto :goto_9

    .line 342
    :catch_6
    move-exception v0

    .line 343
    move-object/from16 v22, v11

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :goto_7
    move-object/from16 v10, p1

    .line 347
    .line 348
    :goto_8
    return-object v10

    .line 349
    :goto_9
    sget-object v2, Lvr6;->INSTANCE:Lvr6;

    .line 350
    .line 351
    const-string v3, "Upload session host="

    .line 352
    .line 353
    move-object/from16 v4, v22

    .line 354
    .line 355
    invoke-static {v3, v4}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    const/4 v5, 0x4

    .line 360
    const/4 v6, 0x0

    .line 361
    iget-object v1, v1, Lwq5;->l:Ljava/lang/String;

    .line 362
    .line 363
    const/4 v4, 0x0

    .line 364
    move-object/from16 v23, v2

    .line 365
    .line 366
    move-object v2, v1

    .line 367
    move-object/from16 v1, v23

    .line 368
    .line 369
    invoke-static/range {v1 .. v6}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :catch_7
    move-exception v0

    .line 374
    invoke-static {v2}, Lf13;->a(Ljava/io/Closeable;)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_6
    const/16 p1, 0x0

    .line 379
    .line 380
    const-string v0, "OneDrive upload session response did not contain uploadUrl"

    .line 381
    .line 382
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-object p1
.end method
