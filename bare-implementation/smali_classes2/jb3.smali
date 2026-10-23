.class public final synthetic Ljb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lkb3;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lkb3;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljb3;->a:Lkb3;

    .line 5
    .line 6
    iput-wide p2, p0, Ljb3;->b:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ljb3;->a:Lkb3;

    .line 4
    .line 5
    iget-wide v2, v0, Ljb3;->b:J

    .line 6
    .line 7
    const-wide/32 v4, 0x100000

    .line 8
    .line 9
    .line 10
    mul-long v6, v2, v4

    .line 11
    .line 12
    iget-object v0, v1, Lkb3;->a:Lnb3;

    .line 13
    .line 14
    iget-wide v8, v0, Lnb3;->d:J

    .line 15
    .line 16
    sub-long/2addr v8, v6

    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    cmp-long v0, v8, v6

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    if-lez v0, :cond_b

    .line 23
    .line 24
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    long-to-int v4, v4

    .line 29
    iget v5, v1, Lkb3;->d:I

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    move v9, v8

    .line 33
    move-object v0, v10

    .line 34
    :goto_0
    if-ge v9, v5, :cond_9

    .line 35
    .line 36
    iget-boolean v0, v1, Lkb3;->H:Z

    .line 37
    .line 38
    const-string v11, "Filen download cancelled"

    .line 39
    .line 40
    if-nez v0, :cond_8

    .line 41
    .line 42
    int-to-long v12, v9

    .line 43
    add-long/2addr v12, v2

    .line 44
    iget-object v0, v1, Lkb3;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v14, v0

    .line 51
    rem-long/2addr v12, v14

    .line 52
    long-to-int v0, v12

    .line 53
    new-instance v12, Lokhttp3/Request$Builder;

    .line 54
    .line 55
    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v13, v1, Lkb3;->b:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    new-array v14, v13, [C

    .line 68
    .line 69
    const/16 v15, 0x2f

    .line 70
    .line 71
    aput-char v15, v14, v8

    .line 72
    .line 73
    invoke-static {v0, v14}, Lnq7;->K0(Ljava/lang/String;[C)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v14, v1, Lkb3;->a:Lnb3;

    .line 78
    .line 79
    iget-object v15, v14, Lnb3;->k:Ljava/lang/String;

    .line 80
    .line 81
    move-wide/from16 v16, v6

    .line 82
    .line 83
    iget-object v6, v14, Lnb3;->j:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v7, v14, Lnb3;->a:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v14, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, "/"

    .line 96
    .line 97
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v12, v0}, Lokhttp3/Request$Builder;->d(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lokhttp3/Request;

    .line 129
    .line 130
    invoke-direct {v0, v12}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 131
    .line 132
    .line 133
    iget-object v6, v1, Lkb3;->k:Lokhttp3/OkHttpClient;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v7, Lokhttp3/internal/connection/RealCall;

    .line 139
    .line 140
    invoke-direct {v7, v6, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 141
    .line 142
    .line 143
    iget-object v6, v1, Lkb3;->f:Lbt3;

    .line 144
    .line 145
    invoke-interface {v6}, Lbt3;->invoke()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    iget-object v6, v1, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :try_start_0
    iget-boolean v6, v1, Lkb3;->H:Z

    .line 157
    .line 158
    if-eqz v6, :cond_0

    .line 159
    .line 160
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall;->cancel()V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_6

    .line 166
    .line 167
    :catch_0
    move-exception v0

    .line 168
    goto :goto_3

    .line 169
    :cond_0
    :goto_1
    iget-boolean v6, v1, Lkb3;->H:Z

    .line 170
    .line 171
    if-nez v6, :cond_3

    .line 172
    .line 173
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealCall;->g()Lokhttp3/Response;

    .line 174
    .line 175
    .line 176
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    iget-boolean v11, v6, Lokhttp3/Response;->H:Z

    .line 178
    .line 179
    if-eqz v11, :cond_2

    .line 180
    .line 181
    iget-object v0, v6, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 182
    .line 183
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->b()[B

    .line 184
    .line 185
    .line 186
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/Response;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .line 189
    .line 190
    :try_start_3
    sget-object v6, Lhb3;->a:[B

    .line 191
    .line 192
    iget-object v6, v1, Lkb3;->a:Lnb3;

    .line 193
    .line 194
    iget-object v6, v6, Lnb3;->f:[B

    .line 195
    .line 196
    invoke-static {v0, v6}, Lhb3;->b([B[B)[B

    .line 197
    .line 198
    .line 199
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    :try_start_4
    array-length v6, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 201
    if-ne v6, v4, :cond_1

    .line 202
    .line 203
    iget-object v1, v1, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :cond_1
    :try_start_5
    new-instance v6, Lfb3;

    .line 213
    .line 214
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    array-length v0, v0

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v14, "Expected "

    .line 223
    .line 224
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v14, " plaintext bytes, received "

    .line 231
    .line 232
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v6, v2, v3, v11}, Lfb3;-><init>(JLjava/lang/RuntimeException;)V

    .line 246
    .line 247
    .line 248
    throw v6

    .line 249
    :catch_1
    move-exception v0

    .line 250
    new-instance v6, Lfb3;

    .line 251
    .line 252
    invoke-direct {v6, v2, v3, v0}, Lfb3;-><init>(JLjava/lang/RuntimeException;)V

    .line 253
    .line 254
    .line 255
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    move-object v11, v0

    .line 258
    goto :goto_2

    .line 259
    :cond_2
    :try_start_6
    new-instance v11, Llb3;

    .line 260
    .line 261
    iget v12, v6, Lokhttp3/Response;->d:I

    .line 262
    .line 263
    iget-object v0, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 264
    .line 265
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v11, v12, v0}, Llb3;-><init>(ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 273
    :goto_2
    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 274
    :catchall_2
    move-exception v0

    .line 275
    :try_start_8
    invoke-static {v6, v11}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 285
    :goto_3
    :try_start_9
    instance-of v6, v0, Llb3;

    .line 286
    .line 287
    if-eqz v6, :cond_5

    .line 288
    .line 289
    move-object v6, v0

    .line 290
    check-cast v6, Llb3;

    .line 291
    .line 292
    iget v6, v6, Llb3;->a:I

    .line 293
    .line 294
    const/16 v11, 0x198

    .line 295
    .line 296
    if-eq v6, v11, :cond_5

    .line 297
    .line 298
    const/16 v11, 0x1ad

    .line 299
    .line 300
    if-eq v6, v11, :cond_5

    .line 301
    .line 302
    const/16 v11, 0x1f4

    .line 303
    .line 304
    if-lt v6, v11, :cond_4

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_4
    move v6, v8

    .line 308
    goto :goto_5

    .line 309
    :cond_5
    :goto_4
    move v6, v13

    .line 310
    :goto_5
    iget-boolean v11, v1, Lkb3;->H:Z

    .line 311
    .line 312
    if-nez v11, :cond_7

    .line 313
    .line 314
    if-eqz v6, :cond_7

    .line 315
    .line 316
    iget v6, v1, Lkb3;->d:I

    .line 317
    .line 318
    sub-int/2addr v6, v13

    .line 319
    if-eq v9, v6, :cond_7

    .line 320
    .line 321
    iget-wide v11, v1, Lkb3;->e:J

    .line 322
    .line 323
    cmp-long v6, v11, v16

    .line 324
    .line 325
    if-lez v6, :cond_6

    .line 326
    .line 327
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 328
    .line 329
    .line 330
    :cond_6
    iget-object v6, v1, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    add-int/lit8 v9, v9, 0x1

    .line 339
    .line 340
    move-wide/from16 v6, v16

    .line 341
    .line 342
    goto/16 :goto_0

    .line 343
    .line 344
    :cond_7
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 345
    :goto_6
    iget-object v1, v1, Lkb3;->K:Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 346
    .line 347
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->remove(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    throw v0

    .line 354
    :cond_8
    invoke-static {v11}, Ll0;->e(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-object v10

    .line 358
    :cond_9
    if-nez v0, :cond_a

    .line 359
    .line 360
    const-string v0, "Required value was null."

    .line 361
    .line 362
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    return-object v10

    .line 366
    :cond_a
    throw v0

    .line 367
    :cond_b
    const-string v0, "Filen file metadata contains an unexpected chunk"

    .line 368
    .line 369
    invoke-static {v0}, Ly5;->m(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-object v10
.end method
