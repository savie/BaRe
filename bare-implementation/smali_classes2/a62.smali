.class public final La62;
.super Lno2;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final n:Ljh1;

.field public final p:Lfo2;

.field public final q:Ljava/lang/String;

.field public r:Ljava/io/OutputStream;

.field public t:Loi5;

.field public final x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljh1;Lfo2;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Lfo2;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p2, Lfo2;->d:Lq63;

    .line 10
    .line 11
    iget-wide v2, p2, Lfo2;->c:J

    .line 12
    .line 13
    invoke-direct {p0, v2, v3, v1, v0}, Lno2;-><init>(JLq63;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, La62;->n:Ljh1;

    .line 17
    .line 18
    iput-object p2, p0, La62;->p:Lfo2;

    .line 19
    .line 20
    const-string p1, "CsDownloadSession"

    .line 21
    .line 22
    iput-object p1, p0, La62;->q:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x5

    .line 25
    iput p1, p0, La62;->x:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
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
    iget-object v2, p0, La62;->p:Lfo2;

    .line 14
    .line 15
    invoke-virtual {v2}, Lfo2;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, " for "

    .line 20
    .line 21
    const-string v4, ", may result in unknown errors"

    .line 22
    .line 23
    const-string v5, "Closing connection with "

    .line 24
    .line 25
    invoke-static {v5, v0, v3, v2, v4}, Leq3;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    iget-object v2, p0, La62;->q:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lvr6;->w$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, La62;->close()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, La62;->t:Loi5;

    .line 2
    .line 3
    invoke-static {v0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, La62;->r:Ljava/io/OutputStream;

    .line 7
    .line 8
    invoke-static {p0}, Lf13;->a(Ljava/io/Closeable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, La62;->n:Ljh1;

    .line 4
    .line 5
    invoke-static {v0}, Luz4;->b(Ljh1;)Lzz4;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lno2;->e:Lke;

    .line 12
    .line 13
    iput-object v0, v1, Lke;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, v1, La62;->n:Ljh1;

    .line 17
    .line 18
    invoke-interface {v0}, Ljh1;->g()Ldd1;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v2, Ly52;->a:[I

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    aget v0, v2, v0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, La62;->j()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-class v2, La62;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :try_start_0
    invoke-virtual {v1}, La62;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit v2

    .line 50
    throw v0

    .line 51
    :cond_2
    const-string v3, "Error while downloading: File id = "

    .line 52
    .line 53
    const-string v4, "Partial download retries failed ("

    .line 54
    .line 55
    const-string v5, "Error while downloading: File id = "

    .line 56
    .line 57
    const-string v0, "File size mismatch for "

    .line 58
    .line 59
    const-class v6, La62;

    .line 60
    .line 61
    monitor-enter v6

    .line 62
    :try_start_1
    const-string v7, "executeDownload:"

    .line 63
    .line 64
    new-instance v8, Ljava/util/Timer;

    .line 65
    .line 66
    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v9, Lz52;

    .line 70
    .line 71
    invoke-direct {v9, v1}, Lz52;-><init>(La62;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v10, 0x0

    .line 75
    .line 76
    const-wide/16 v12, 0x7d0

    .line 77
    .line 78
    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 79
    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    :try_start_2
    iget-object v10, v1, Lno2;->a:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v11, v1, La62;->n:Ljh1;

    .line 85
    .line 86
    const/4 v12, 0x0

    .line 87
    invoke-interface {v11, v10, v12}, Ljh1;->c(Ljava/lang/String;Lt15;)Ltc4;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v13, v1, Lno2;->b:Lq63;

    .line 92
    .line 93
    invoke-virtual {v13, v9}, Lq63;->F(Z)Ljava/io/OutputStream;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    iput-object v13, v1, La62;->r:Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 98
    .line 99
    :try_start_3
    iget-object v14, v1, Lno2;->d:Lgz7;

    .line 100
    .line 101
    invoke-virtual {v14}, Lgz7;->isCancelled()Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-nez v14, :cond_3

    .line 106
    .line 107
    iget-object v14, v11, Ltc4;->a:Ljava/io/InputStream;

    .line 108
    .line 109
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 110
    .line 111
    .line 112
    const/high16 v15, 0x40000

    .line 113
    .line 114
    :try_start_4
    invoke-static {v14, v13, v15}, Lcy0;->j(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 115
    .line 116
    .line 117
    :try_start_5
    invoke-interface {v13}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .line 119
    .line 120
    :try_start_6
    invoke-interface {v14}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v10, v0

    .line 126
    goto :goto_0

    .line 127
    :catchall_2
    move-exception v0

    .line 128
    move-object v10, v0

    .line 129
    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 130
    :catchall_3
    move-exception v0

    .line 131
    :try_start_8
    invoke-static {v13, v10}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 135
    :goto_0
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 136
    :catchall_4
    move-exception v0

    .line 137
    :try_start_a
    invoke-static {v14, v10}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 141
    :goto_1
    move/from16 v17, v2

    .line 142
    .line 143
    move-object v2, v0

    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :catchall_5
    move-exception v0

    .line 147
    goto :goto_1

    .line 148
    :cond_3
    :goto_2
    :try_start_b
    invoke-static {v11, v12}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    iget-object v11, v1, Lno2;->b:Lq63;

    .line 152
    .line 153
    invoke-virtual {v11}, Lq63;->A()J

    .line 154
    .line 155
    .line 156
    move-result-wide v11

    .line 157
    iget-object v13, v1, La62;->p:Lfo2;

    .line 158
    .line 159
    iget-wide v13, v13, Lfo2;->c:J

    .line 160
    .line 161
    const-wide/16 v15, 0x0

    .line 162
    .line 163
    cmp-long v17, v13, v15

    .line 164
    .line 165
    if-lez v17, :cond_6

    .line 166
    .line 167
    cmp-long v13, v11, v13

    .line 168
    .line 169
    if-eqz v13, :cond_6

    .line 170
    .line 171
    iget-object v13, v1, La62;->n:Ljh1;

    .line 172
    .line 173
    invoke-interface {v13, v10}, Ljh1;->f(Ljava/lang/String;)Lpg1;

    .line 174
    .line 175
    .line 176
    move-result-object v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 177
    if-eqz v10, :cond_4

    .line 178
    .line 179
    :try_start_c
    iget-wide v13, v10, Lpg1;->c:J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catchall_6
    move-exception v0

    .line 183
    goto/16 :goto_c

    .line 184
    .line 185
    :catch_0
    move-exception v0

    .line 186
    move/from16 v17, v2

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_4
    move-wide v13, v15

    .line 190
    :goto_3
    cmp-long v10, v13, v15

    .line 191
    .line 192
    if-lez v10, :cond_6

    .line 193
    .line 194
    cmp-long v10, v13, v11

    .line 195
    .line 196
    if-nez v10, :cond_5

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_5
    :try_start_d
    iget-object v10, v1, La62;->p:Lfo2;

    .line 200
    .line 201
    iget-object v15, v10, Lfo2;->a:Ljava/lang/String;

    .line 202
    .line 203
    iget-wide v9, v10, Lfo2;->c:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 204
    .line 205
    move/from16 v17, v2

    .line 206
    .line 207
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v0, ": Metadata="

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, ", Server="

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v0, ", Downloaded="

    .line 232
    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    new-instance v2, Ljava/lang/RuntimeException;

    .line 244
    .line 245
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 249
    :catch_1
    move-exception v0

    .line 250
    :goto_4
    move/from16 v9, v17

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :catch_2
    move-exception v0

    .line 254
    move/from16 v17, v2

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :catch_3
    move-exception v0

    .line 258
    move/from16 v17, v2

    .line 259
    .line 260
    :goto_5
    const/4 v9, 0x0

    .line 261
    goto :goto_8

    .line 262
    :cond_6
    :goto_6
    :try_start_f
    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 263
    .line 264
    .line 265
    goto :goto_9

    .line 266
    :catchall_7
    move-exception v0

    .line 267
    goto/16 :goto_d

    .line 268
    .line 269
    :goto_7
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 270
    :catchall_8
    move-exception v0

    .line 271
    :try_start_11
    invoke-static {v11, v2}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 275
    :catch_4
    move-exception v0

    .line 276
    goto :goto_5

    .line 277
    :goto_8
    :try_start_12
    iget-object v2, v1, Lno2;->d:Lgz7;

    .line 278
    .line 279
    invoke-virtual {v2}, Lgz7;->isCancelled()Z

    .line 280
    .line 281
    .line 282
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 283
    if-eqz v2, :cond_7

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :goto_9
    monitor-exit v6

    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :cond_7
    :try_start_13
    iget-object v2, v1, La62;->q:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .line 293
    .line 294
    iget-object v2, v1, La62;->n:Ljh1;

    .line 295
    .line 296
    invoke-static {v2, v0}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    if-eqz v2, :cond_8

    .line 301
    .line 302
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 303
    .line 304
    iget-object v11, v1, La62;->q:Ljava/lang/String;

    .line 305
    .line 306
    iget-object v0, v1, Lno2;->a:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v0, ", Error = "

    .line 321
    .line 322
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    const/4 v14, 0x4

    .line 333
    const/4 v15, 0x0

    .line 334
    const/4 v13, 0x0

    .line 335
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, v1, Lno2;->e:Lke;

    .line 339
    .line 340
    iput-object v2, v0, Lke;->b:Ljava/lang/Object;

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :cond_8
    if-eqz v9, :cond_9

    .line 344
    .line 345
    iget v2, v1, La62;->y:I

    .line 346
    .line 347
    iget v5, v1, La62;->x:I

    .line 348
    .line 349
    if-lt v2, v5, :cond_9

    .line 350
    .line 351
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 352
    .line 353
    iget-object v11, v1, La62;->q:Ljava/lang/String;

    .line 354
    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v2, "/"

    .line 364
    .line 365
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v2, ")"

    .line 372
    .line 373
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    const/4 v14, 0x4

    .line 381
    const/4 v15, 0x0

    .line 382
    const/4 v13, 0x0

    .line 383
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    const/4 v9, 0x0

    .line 387
    :cond_9
    if-nez v9, :cond_b

    .line 388
    .line 389
    sget-object v2, Lnf1;->a:Lai6;

    .line 390
    .line 391
    invoke-static {v0}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-nez v2, :cond_b

    .line 396
    .line 397
    invoke-static {v0}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-nez v2, :cond_b

    .line 402
    .line 403
    invoke-static {v0}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-nez v2, :cond_b

    .line 408
    .line 409
    invoke-static {v0}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-nez v2, :cond_b

    .line 414
    .line 415
    invoke-static {v0}, Lx13;->D(Ljava/lang/Throwable;)Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_a

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_a
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 423
    .line 424
    iget-object v11, v1, La62;->q:Ljava/lang/String;

    .line 425
    .line 426
    iget-object v2, v1, Lno2;->a:Ljava/lang/String;

    .line 427
    .line 428
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v2, ", Error = "

    .line 441
    .line 442
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    const/4 v14, 0x4

    .line 453
    const/4 v15, 0x0

    .line 454
    const/4 v13, 0x0

    .line 455
    invoke-static/range {v10 .. v15}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v1, Lno2;->e:Lke;

    .line 459
    .line 460
    iput-object v0, v1, Lke;->b:Ljava/lang/Object;

    .line 461
    .line 462
    goto/16 :goto_6

    .line 463
    .line 464
    :cond_b
    :goto_a
    if-eqz v9, :cond_c

    .line 465
    .line 466
    iget v0, v1, La62;->y:I

    .line 467
    .line 468
    add-int/lit8 v0, v0, 0x1

    .line 469
    .line 470
    iput v0, v1, La62;->y:I

    .line 471
    .line 472
    :cond_c
    iget-object v0, v1, La62;->q:Ljava/lang/String;

    .line 473
    .line 474
    const-string v2, "executeDownload: Retrying download"

    .line 475
    .line 476
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 477
    .line 478
    .line 479
    const-wide/16 v2, 0x3e8

    .line 480
    .line 481
    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 482
    .line 483
    .line 484
    :catch_5
    :try_start_15
    invoke-virtual {v1}, La62;->j()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 485
    .line 486
    .line 487
    goto/16 :goto_6

    .line 488
    .line 489
    :goto_b
    return-void

    .line 490
    :goto_c
    :try_start_16
    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 491
    .line 492
    .line 493
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 494
    :goto_d
    monitor-exit v6

    .line 495
    throw v0
.end method

.method public final j()V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "File info not available for remote file at "

    .line 4
    .line 5
    const-string v2, ":"

    .line 6
    .line 7
    iget-object v3, v1, La62;->n:Ljh1;

    .line 8
    .line 9
    iget-object v4, v1, Lno2;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v1, La62;->p:Lfo2;

    .line 12
    .line 13
    const-string v6, "File size mismatch for "

    .line 14
    .line 15
    const-string v7, "File size for "

    .line 16
    .line 17
    const-string v8, "Getting file size from server for "

    .line 18
    .line 19
    const-string v9, ": executeDownload:"

    .line 20
    .line 21
    iget-object v10, v1, La62;->q:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v10, v9}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    const/4 v9, 0x1

    .line 28
    const/4 v11, 0x0

    .line 29
    :try_start_0
    new-instance v13, Lkh6;

    .line 30
    .line 31
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v14, Lkh6;

    .line 35
    .line 36
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v15, Ldz;

    .line 40
    .line 41
    invoke-direct {v15, v9, v1, v13, v14}, Ldz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-wide v13, v5, Lfo2;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 45
    .line 46
    const-wide/16 v17, 0x0

    .line 47
    .line 48
    cmp-long v13, v13, v17

    .line 49
    .line 50
    if-gtz v13, :cond_1

    .line 51
    .line 52
    move v13, v11

    .line 53
    :try_start_1
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 54
    .line 55
    new-instance v14, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    move-object v14, v15

    .line 68
    const/4 v15, 0x4

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    move-object/from16 v19, v14

    .line 72
    .line 73
    const/4 v14, 0x0

    .line 74
    move/from16 v30, v13

    .line 75
    .line 76
    move-object v13, v8

    .line 77
    move/from16 v8, v30

    .line 78
    .line 79
    move-object/from16 v30, v19

    .line 80
    .line 81
    move/from16 v19, v9

    .line 82
    .line 83
    move-object/from16 v9, v30

    .line 84
    .line 85
    :try_start_2
    invoke-static/range {v11 .. v16}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3, v4}, Ljh1;->f(Ljava/lang/String;)Lpg1;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    if-eqz v11, :cond_0

    .line 93
    .line 94
    iget-wide v13, v11, Lpg1;->c:J

    .line 95
    .line 96
    iput-wide v13, v5, Lfo2;->c:J

    .line 97
    .line 98
    sget-object v0, Lp93;->a:Lp93;

    .line 99
    .line 100
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v7, " = "

    .line 117
    .line 118
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :goto_0
    move-object v2, v4

    .line 134
    move v11, v8

    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    move/from16 v19, v9

    .line 153
    .line 154
    move v8, v13

    .line 155
    goto :goto_0

    .line 156
    :cond_1
    move/from16 v19, v9

    .line 157
    .line 158
    move v8, v11

    .line 159
    move-object v9, v15

    .line 160
    :goto_1
    :try_start_3
    new-instance v20, Loi5;

    .line 161
    .line 162
    new-instance v0, Lx52;

    .line 163
    .line 164
    invoke-direct {v0, v1, v4}, Lx52;-><init>(La62;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v7, v1, Lno2;->b:Lq63;

    .line 168
    .line 169
    iget-wide v13, v5, Lfo2;->c:J

    .line 170
    .line 171
    invoke-interface {v3}, Ljh1;->a()Z

    .line 172
    .line 173
    .line 174
    move-result v25

    .line 175
    invoke-virtual {v5}, Lfo2;->a()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v26

    .line 179
    invoke-interface {v3}, Ljh1;->g()Ldd1;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-virtual {v11}, Ldd1;->getConstant()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    move-object/from16 v16, v9

    .line 188
    .line 189
    iget-wide v8, v5, Lfo2;->c:J

    .line 190
    .line 191
    new-instance v15, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v27

    .line 215
    iget-boolean v2, v5, Lfo2;->e:Z

    .line 216
    .line 217
    iget-boolean v8, v5, Lfo2;->f:Z

    .line 218
    .line 219
    move-object/from16 v21, v0

    .line 220
    .line 221
    move/from16 v28, v2

    .line 222
    .line 223
    move-object/from16 v22, v7

    .line 224
    .line 225
    move/from16 v29, v8

    .line 226
    .line 227
    move-wide/from16 v23, v13

    .line 228
    .line 229
    invoke-direct/range {v20 .. v29}, Loi5;-><init>(Lst3;Lq63;JZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    .line 231
    .line 232
    move-object/from16 v0, v20

    .line 233
    .line 234
    iput-object v0, v1, La62;->t:Loi5;

    .line 235
    .line 236
    move-object/from16 v9, v16

    .line 237
    .line 238
    invoke-virtual {v0, v9}, Loi5;->b(Lmt3;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v1, Lno2;->b:Lq63;

    .line 242
    .line 243
    invoke-virtual {v0}, Lq63;->A()J

    .line 244
    .line 245
    .line 246
    move-result-wide v7

    .line 247
    iget-wide v13, v5, Lfo2;->c:J

    .line 248
    .line 249
    cmp-long v0, v13, v17

    .line 250
    .line 251
    if-lez v0, :cond_4

    .line 252
    .line 253
    cmp-long v0, v7, v13

    .line 254
    .line 255
    if-eqz v0, :cond_4

    .line 256
    .line 257
    invoke-interface {v3, v4}, Ljh1;->f(Ljava/lang/String;)Lpg1;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-eqz v0, :cond_2

    .line 262
    .line 263
    iget-wide v13, v0, Lpg1;->c:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :catch_2
    move-exception v0

    .line 267
    move-object v2, v4

    .line 268
    :goto_2
    const/4 v11, 0x0

    .line 269
    goto :goto_5

    .line 270
    :cond_2
    move-wide/from16 v13, v17

    .line 271
    .line 272
    :goto_3
    cmp-long v0, v13, v17

    .line 273
    .line 274
    if-lez v0, :cond_4

    .line 275
    .line 276
    cmp-long v0, v13, v7

    .line 277
    .line 278
    if-nez v0, :cond_3

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_3
    :try_start_4
    iget-object v0, v5, Lfo2;->a:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 282
    .line 283
    move-object v2, v4

    .line 284
    :try_start_5
    iget-wide v4, v5, Lfo2;->c:J

    .line 285
    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v0, ": Metadata="

    .line 295
    .line 296
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v0, ", Server="

    .line 303
    .line 304
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v0, ", Downloaded="

    .line 311
    .line 312
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    new-instance v4, Ljava/lang/RuntimeException;

    .line 323
    .line 324
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 328
    :catch_3
    move-exception v0

    .line 329
    :goto_4
    move/from16 v11, v19

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :catch_4
    move-exception v0

    .line 333
    move-object v2, v4

    .line 334
    goto :goto_4

    .line 335
    :catch_5
    move-exception v0

    .line 336
    move-object v2, v4

    .line 337
    move/from16 v19, v9

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :goto_5
    iget-object v4, v1, Lno2;->d:Lgz7;

    .line 341
    .line 342
    invoke-virtual {v4}, Lgz7;->isCancelled()Z

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-eqz v4, :cond_5

    .line 347
    .line 348
    :cond_4
    :goto_6
    return-void

    .line 349
    :cond_5
    invoke-static {v10, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .line 351
    .line 352
    invoke-static {v3, v0}, Luz4;->d(Ljh1;Ljava/lang/Exception;)Lzz4;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    iget-object v4, v1, Lno2;->e:Lke;

    .line 357
    .line 358
    const-string v5, ", Error = "

    .line 359
    .line 360
    const-string v6, "Error while downloading: File id = "

    .line 361
    .line 362
    if-eqz v3, :cond_6

    .line 363
    .line 364
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v6, v2, v5, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    const/16 v17, 0x4

    .line 375
    .line 376
    const/16 v18, 0x0

    .line 377
    .line 378
    iget-object v14, v1, La62;->q:Ljava/lang/String;

    .line 379
    .line 380
    const/16 v16, 0x0

    .line 381
    .line 382
    invoke-static/range {v13 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    iput-object v3, v4, Lke;->b:Ljava/lang/Object;

    .line 386
    .line 387
    return-void

    .line 388
    :cond_6
    if-eqz v11, :cond_7

    .line 389
    .line 390
    iget v3, v1, La62;->y:I

    .line 391
    .line 392
    iget v7, v1, La62;->x:I

    .line 393
    .line 394
    if-lt v3, v7, :cond_7

    .line 395
    .line 396
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 397
    .line 398
    const-string v8, "/"

    .line 399
    .line 400
    const-string v9, ")"

    .line 401
    .line 402
    const-string v11, "Partial download retries failed ("

    .line 403
    .line 404
    invoke-static {v11, v3, v8, v9, v7}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v15

    .line 408
    const/16 v17, 0x4

    .line 409
    .line 410
    const/16 v18, 0x0

    .line 411
    .line 412
    iget-object v14, v1, La62;->q:Ljava/lang/String;

    .line 413
    .line 414
    const/16 v16, 0x0

    .line 415
    .line 416
    invoke-static/range {v13 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    :cond_7
    if-nez v11, :cond_c

    .line 421
    .line 422
    sget-object v3, Lnf1;->a:Lai6;

    .line 423
    .line 424
    invoke-static {v0}, Lx13;->J(Ljava/lang/Throwable;)Z

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-nez v3, :cond_c

    .line 429
    .line 430
    invoke-static {v0}, Lx13;->G(Ljava/lang/Exception;)Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-nez v3, :cond_c

    .line 435
    .line 436
    invoke-static {v0}, Lx13;->I(Ljava/lang/Throwable;)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-nez v3, :cond_c

    .line 441
    .line 442
    invoke-static {v0}, Lx13;->C(Ljava/lang/Throwable;)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-nez v3, :cond_c

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    const-string v7, ""

    .line 453
    .line 454
    if-nez v3, :cond_8

    .line 455
    .line 456
    move-object v3, v7

    .line 457
    :cond_8
    const-string v8, "inputstream is closed"

    .line 458
    .line 459
    const/4 v15, 0x0

    .line 460
    invoke-static {v3, v8, v15}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    if-nez v3, :cond_c

    .line 465
    .line 466
    invoke-static {v0}, Lx13;->K(Ljava/lang/Throwable;)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-nez v3, :cond_c

    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    if-nez v3, :cond_9

    .line 477
    .line 478
    move-object v3, v7

    .line 479
    :cond_9
    const-string v8, "NoRouteToHostException"

    .line 480
    .line 481
    invoke-static {v3, v8, v15}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    if-nez v3, :cond_c

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    if-nez v3, :cond_a

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_a
    move-object v7, v3

    .line 495
    :goto_7
    const-string v3, "ENETUNREACH"

    .line 496
    .line 497
    invoke-static {v7, v3, v15}, Lnq7;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    if-nez v3, :cond_c

    .line 502
    .line 503
    invoke-static {v0}, Lx13;->D(Ljava/lang/Throwable;)Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_b

    .line 508
    .line 509
    goto :goto_8

    .line 510
    :cond_b
    sget-object v13, Lvr6;->INSTANCE:Lvr6;

    .line 511
    .line 512
    invoke-static {v0}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-static {v6, v2, v5, v3}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v15

    .line 520
    const/16 v17, 0x4

    .line 521
    .line 522
    const/16 v18, 0x0

    .line 523
    .line 524
    iget-object v14, v1, La62;->q:Ljava/lang/String;

    .line 525
    .line 526
    const/16 v16, 0x0

    .line 527
    .line 528
    invoke-static/range {v13 .. v18}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    iput-object v0, v4, Lke;->b:Ljava/lang/Object;

    .line 532
    .line 533
    return-void

    .line 534
    :cond_c
    :goto_8
    if-eqz v11, :cond_d

    .line 535
    .line 536
    iget v0, v1, La62;->y:I

    .line 537
    .line 538
    add-int/lit8 v0, v0, 0x1

    .line 539
    .line 540
    iput v0, v1, La62;->y:I

    .line 541
    .line 542
    :cond_d
    const-string v0, " Retrying download"

    .line 543
    .line 544
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->R()V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, La62;->j()V

    .line 555
    .line 556
    .line 557
    return-void
.end method
