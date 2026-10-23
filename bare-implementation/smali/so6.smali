.class public final synthetic Lso6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfp6;

.field public final synthetic b:J

.field public final synthetic c:Li17;

.field public final synthetic d:Le94;

.field public final synthetic e:Lap6;


# direct methods
.method public synthetic constructor <init>(Lfp6;JLi17;Le94;Lap6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lso6;->a:Lfp6;

    .line 5
    .line 6
    iput-wide p2, p0, Lso6;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lso6;->c:Li17;

    .line 9
    .line 10
    iput-object p5, p0, Lso6;->d:Le94;

    .line 11
    .line 12
    iput-object p6, p0, Lso6;->e:Lap6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lso6;->a:Lfp6;

    .line 4
    .line 5
    iget-wide v3, v0, Lso6;->b:J

    .line 6
    .line 7
    iget-object v8, v0, Lso6;->c:Li17;

    .line 8
    .line 9
    iget-object v5, v0, Lso6;->d:Le94;

    .line 10
    .line 11
    iget-object v9, v0, Lso6;->e:Lap6;

    .line 12
    .line 13
    iget-object v0, v9, Lap6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast v0, Lo17;

    .line 23
    .line 24
    invoke-static {v0}, Lo17;->c(Lo17;)Lo17;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v9, v0}, Lfp6;->m(Lap6;Lo17;)V

    .line 29
    .line 30
    .line 31
    new-instance v10, Lkh6;

    .line 32
    .line 33
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v11, Llh6;

    .line 37
    .line 38
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-static {v9}, Lfp6;->n(Lap6;)V

    .line 42
    .line 43
    .line 44
    iget-wide v6, v8, Li17;->p:J

    .line 45
    .line 46
    iget-object v0, v8, Li17;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v6, v7}, Lfp6;->s(J)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Ldp6;

    .line 52
    .line 53
    iget-wide v6, v8, Li17;->p:J

    .line 54
    .line 55
    invoke-direct/range {v2 .. v7}, Ldp6;-><init>(JLe94;J)V

    .line 56
    .line 57
    .line 58
    invoke-static {v8}, Ljd4;->j(Li17;)Lh17;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v13, v5, Lh17;->a:Ljava/io/File;

    .line 63
    .line 64
    iget-object v14, v5, Lh17;->b:Ljava/util/ArrayList;

    .line 65
    .line 66
    iget-object v15, v5, Lh17;->c:Lf27;

    .line 67
    .line 68
    iget-object v6, v5, Lh17;->d:Lcy0;

    .line 69
    .line 70
    iget-object v7, v5, Lh17;->e:Lzv1;

    .line 71
    .line 72
    iget-object v12, v5, Lh17;->f:Ljava/lang/String;

    .line 73
    .line 74
    iget-boolean v5, v5, Lh17;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 75
    .line 76
    move-wide/from16 v25, v3

    .line 77
    .line 78
    :try_start_1
    iget-wide v3, v8, Li17;->p:J

    .line 79
    .line 80
    move-wide/from16 v19, v3

    .line 81
    .line 82
    new-instance v3, Lpf;

    .line 83
    .line 84
    const/16 v4, 0x9

    .line 85
    .line 86
    invoke-direct {v3, v9, v4}, Lpf;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lqo6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 90
    .line 91
    move-object/from16 v21, v3

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    :try_start_2
    invoke-direct {v4, v3, v10, v2}, Lqo6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Lro6;

    .line 98
    .line 99
    invoke-direct {v2, v11, v1}, Lro6;-><init>(Llh6;Lfp6;)V

    .line 100
    .line 101
    .line 102
    move-object/from16 v23, v2

    .line 103
    .line 104
    move-object/from16 v22, v4

    .line 105
    .line 106
    move/from16 v24, v5

    .line 107
    .line 108
    move-object/from16 v16, v6

    .line 109
    .line 110
    move-object/from16 v17, v7

    .line 111
    .line 112
    move-object/from16 v18, v12

    .line 113
    .line 114
    invoke-static/range {v13 .. v24}, Ltu0;->d(Ljava/io/File;Ljava/util/ArrayList;Lf27;Lcy0;Lzv1;Ljava/lang/String;JLny6;Lh07;Lmt3;Z)Lky6;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lfp6;->k(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lo17;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    .line 122
    move-object v1, v9

    .line 123
    :try_start_3
    iget-object v9, v8, Li17;->a:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v4, Ljava/io/File;

    .line 126
    .line 127
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    invoke-virtual {v1}, Lap6;->a()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    iget-object v0, v11, Llh6;->a:Ljava/lang/Object;

    .line 139
    .line 140
    move-object v14, v0

    .line 141
    check-cast v14, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    .line 143
    const-wide/16 v29, 0x0

    .line 144
    .line 145
    const v31, 0x1fe08

    .line 146
    .line 147
    .line 148
    move-object v6, v11

    .line 149
    move-wide/from16 v39, v4

    .line 150
    .line 151
    move-object v4, v10

    .line 152
    move-wide/from16 v10, v39

    .line 153
    .line 154
    const/4 v5, 0x2

    .line 155
    move-object v7, v6

    .line 156
    const/4 v6, 0x0

    .line 157
    move-object v15, v7

    .line 158
    const/4 v7, 0x0

    .line 159
    move-object/from16 v16, v8

    .line 160
    .line 161
    const/4 v8, 0x0

    .line 162
    move-object/from16 v18, v15

    .line 163
    .line 164
    move-object/from16 v17, v16

    .line 165
    .line 166
    const-wide/16 v15, 0x0

    .line 167
    .line 168
    move-object/from16 v19, v17

    .line 169
    .line 170
    move-object/from16 v20, v18

    .line 171
    .line 172
    const-wide/16 v17, 0x0

    .line 173
    .line 174
    move-object/from16 v21, v19

    .line 175
    .line 176
    move-object/from16 v22, v20

    .line 177
    .line 178
    const-wide/16 v19, 0x0

    .line 179
    .line 180
    move-object/from16 v23, v21

    .line 181
    .line 182
    move-object/from16 v24, v22

    .line 183
    .line 184
    const-wide/16 v21, 0x0

    .line 185
    .line 186
    move-object/from16 v27, v23

    .line 187
    .line 188
    move-object/from16 v28, v24

    .line 189
    .line 190
    const-wide/16 v23, 0x0

    .line 191
    .line 192
    move/from16 v33, v3

    .line 193
    .line 194
    move-object/from16 v32, v4

    .line 195
    .line 196
    move-wide/from16 v3, v25

    .line 197
    .line 198
    const-wide/16 v25, 0x0

    .line 199
    .line 200
    move-object/from16 v34, v27

    .line 201
    .line 202
    move-object/from16 v35, v28

    .line 203
    .line 204
    const-wide/16 v27, 0x0

    .line 205
    .line 206
    move-object/from16 v36, v32

    .line 207
    .line 208
    move-object/from16 v37, v35

    .line 209
    .line 210
    :try_start_4
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v2}, Lfp6;->m(Lap6;Lo17;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    .line 215
    .line 216
    move-object/from16 v2, v34

    .line 217
    .line 218
    iget-object v0, v2, Li17;->k:[C

    .line 219
    .line 220
    if-eqz v0, :cond_1

    .line 221
    .line 222
    array-length v1, v0

    .line 223
    const/4 v5, 0x0

    .line 224
    invoke-static {v0, v5, v1, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    move-object/from16 v2, v34

    .line 230
    .line 231
    :goto_0
    const/4 v5, 0x0

    .line 232
    goto :goto_2

    .line 233
    :catchall_1
    move-exception v0

    .line 234
    move v5, v3

    .line 235
    move-object v2, v8

    .line 236
    :goto_1
    move-object/from16 v36, v10

    .line 237
    .line 238
    move-object/from16 v37, v11

    .line 239
    .line 240
    move-wide/from16 v3, v25

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    move v5, v3

    .line 245
    move-object v2, v8

    .line 246
    move-object v1, v9

    .line 247
    goto :goto_1

    .line 248
    :catchall_3
    move-exception v0

    .line 249
    move-object v2, v8

    .line 250
    move-object v1, v9

    .line 251
    move-object/from16 v36, v10

    .line 252
    .line 253
    move-object/from16 v37, v11

    .line 254
    .line 255
    move-wide/from16 v3, v25

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catchall_4
    move-exception v0

    .line 259
    move-object v2, v8

    .line 260
    move-object v1, v9

    .line 261
    move-object/from16 v36, v10

    .line 262
    .line 263
    move-object/from16 v37, v11

    .line 264
    .line 265
    goto :goto_0

    .line 266
    :goto_2
    :try_start_5
    instance-of v6, v0, Lzz6;

    .line 267
    .line 268
    if-eqz v6, :cond_0

    .line 269
    .line 270
    const/4 v6, 0x4

    .line 271
    goto :goto_3

    .line 272
    :cond_0
    const/4 v6, 0x3

    .line 273
    :goto_3
    new-instance v7, Lo17;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 274
    .line 275
    move/from16 v33, v5

    .line 276
    .line 277
    move v5, v6

    .line 278
    :try_start_6
    invoke-static {v0}, Lfp6;->p(Ljava/lang/Throwable;)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    move-object v8, v7

    .line 283
    invoke-static {v0}, Lfp6;->q(Ljava/lang/Throwable;)I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    iget-object v9, v2, Li17;->a:Ljava/lang/String;

    .line 292
    .line 293
    move-object/from16 v10, v36

    .line 294
    .line 295
    iget-wide v10, v10, Lkh6;->a:J

    .line 296
    .line 297
    invoke-virtual {v1}, Lap6;->a()J

    .line 298
    .line 299
    .line 300
    move-result-wide v12

    .line 301
    move-object/from16 v15, v37

    .line 302
    .line 303
    iget-object v14, v15, Llh6;->a:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v14, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 306
    .line 307
    const-wide/16 v29, 0x0

    .line 308
    .line 309
    const v31, 0x1fe00

    .line 310
    .line 311
    .line 312
    const-wide/16 v15, 0x0

    .line 313
    .line 314
    const-wide/16 v17, 0x0

    .line 315
    .line 316
    const-wide/16 v19, 0x0

    .line 317
    .line 318
    const-wide/16 v21, 0x0

    .line 319
    .line 320
    const-wide/16 v23, 0x0

    .line 321
    .line 322
    const-wide/16 v25, 0x0

    .line 323
    .line 324
    const-wide/16 v27, 0x0

    .line 325
    .line 326
    move-object/from16 v38, v2

    .line 327
    .line 328
    move-object v2, v8

    .line 329
    move-object v8, v0

    .line 330
    :try_start_7
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 331
    .line 332
    .line 333
    invoke-static {v1, v2}, Lfp6;->m(Lap6;Lo17;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 334
    .line 335
    .line 336
    move-object/from16 v2, v38

    .line 337
    .line 338
    iget-object v0, v2, Li17;->k:[C

    .line 339
    .line 340
    if-eqz v0, :cond_1

    .line 341
    .line 342
    array-length v1, v0

    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 345
    .line 346
    .line 347
    :cond_1
    return-void

    .line 348
    :catchall_5
    move-exception v0

    .line 349
    move-object/from16 v2, v38

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    goto :goto_4

    .line 353
    :catchall_6
    move-exception v0

    .line 354
    move/from16 v3, v33

    .line 355
    .line 356
    goto :goto_4

    .line 357
    :catchall_7
    move-exception v0

    .line 358
    move v3, v5

    .line 359
    :goto_4
    iget-object v1, v2, Li17;->k:[C

    .line 360
    .line 361
    if-eqz v1, :cond_2

    .line 362
    .line 363
    array-length v2, v1

    .line 364
    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 365
    .line 366
    .line 367
    :cond_2
    throw v0
.end method
