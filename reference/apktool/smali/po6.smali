.class public final synthetic Lpo6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfp6;

.field public final synthetic b:J

.field public final synthetic c:Lm17;

.field public final synthetic d:Le94;

.field public final synthetic e:Lap6;


# direct methods
.method public synthetic constructor <init>(Lfp6;JLm17;Le94;Lap6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpo6;->a:Lfp6;

    .line 5
    .line 6
    iput-wide p2, p0, Lpo6;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lpo6;->c:Lm17;

    .line 9
    .line 10
    iput-object p5, p0, Lpo6;->d:Le94;

    .line 11
    .line 12
    iput-object p6, p0, Lpo6;->e:Lap6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lpo6;->a:Lfp6;

    .line 4
    .line 5
    iget-wide v3, v0, Lpo6;->b:J

    .line 6
    .line 7
    iget-object v8, v0, Lpo6;->c:Lm17;

    .line 8
    .line 9
    iget-object v5, v0, Lpo6;->d:Le94;

    .line 10
    .line 11
    iget-object v9, v0, Lpo6;->e:Lap6;

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
    iget-wide v6, v8, Lm17;->k:J

    .line 45
    .line 46
    invoke-static {v6, v7}, Lfp6;->s(J)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ldp6;

    .line 50
    .line 51
    iget-wide v6, v8, Lm17;->k:J

    .line 52
    .line 53
    invoke-direct/range {v2 .. v7}, Ldp6;-><init>(JLe94;J)V

    .line 54
    .line 55
    .line 56
    invoke-static {v8}, Ljd4;->n(Lm17;)Ll17;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v13, v0, Ll17;->a:Ljava/io/File;

    .line 61
    .line 62
    iget-object v14, v0, Ll17;->b:Ljava/io/File;

    .line 63
    .line 64
    iget-object v15, v0, Ll17;->c:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v5, v0, Ll17;->d:Lf27;

    .line 67
    .line 68
    iget-object v6, v0, Ll17;->e:[C

    .line 69
    .line 70
    iget-object v7, v0, Ll17;->f:Ljava/util/List;

    .line 71
    .line 72
    move-object/from16 v16, v13

    .line 73
    .line 74
    iget-wide v12, v8, Lm17;->k:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 75
    .line 76
    move-wide/from16 v25, v3

    .line 77
    .line 78
    :try_start_1
    new-instance v3, Llb;

    .line 79
    .line 80
    invoke-direct {v3, v9}, Llb;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Lvo6;

    .line 84
    .line 85
    invoke-direct {v4, v10, v2}, Lvo6;-><init>(Lkh6;Ldp6;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcz;

    .line 89
    .line 90
    invoke-direct {v2, v11, v1}, Lcz;-><init>(Llh6;Lfp6;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, v0, Ll17;->g:Z

    .line 94
    .line 95
    move/from16 v24, v0

    .line 96
    .line 97
    move-object/from16 v23, v2

    .line 98
    .line 99
    move-object/from16 v21, v3

    .line 100
    .line 101
    move-object/from16 v22, v4

    .line 102
    .line 103
    move-object/from16 v17, v6

    .line 104
    .line 105
    move-object/from16 v18, v7

    .line 106
    .line 107
    move-wide/from16 v19, v12

    .line 108
    .line 109
    move-object/from16 v13, v16

    .line 110
    .line 111
    move-object/from16 v16, v5

    .line 112
    .line 113
    invoke-static/range {v13 .. v24}, Ltu0;->k(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lf27;[CLjava/util/List;JLny6;Lh07;Lmt3;Z)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lo17;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 117
    .line 118
    move-object v1, v9

    .line 119
    :try_start_2
    iget-object v9, v8, Lm17;->b:Ljava/lang/String;

    .line 120
    .line 121
    iget-wide v3, v10, Lkh6;->a:J

    .line 122
    .line 123
    invoke-virtual {v1}, Lap6;->a()J

    .line 124
    .line 125
    .line 126
    move-result-wide v12

    .line 127
    iget-object v0, v11, Llh6;->a:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v14, v0

    .line 130
    check-cast v14, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    .line 132
    const-wide/16 v29, 0x0

    .line 133
    .line 134
    const v31, 0x1fe08

    .line 135
    .line 136
    .line 137
    const/4 v5, 0x2

    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x0

    .line 140
    move-object v15, v8

    .line 141
    const/4 v8, 0x0

    .line 142
    move-object/from16 v17, v15

    .line 143
    .line 144
    const-wide/16 v15, 0x0

    .line 145
    .line 146
    move-object/from16 v19, v17

    .line 147
    .line 148
    const-wide/16 v17, 0x0

    .line 149
    .line 150
    move-object/from16 v21, v19

    .line 151
    .line 152
    const-wide/16 v19, 0x0

    .line 153
    .line 154
    move-object/from16 v23, v21

    .line 155
    .line 156
    const-wide/16 v21, 0x0

    .line 157
    .line 158
    move-object/from16 v27, v23

    .line 159
    .line 160
    const-wide/16 v23, 0x0

    .line 161
    .line 162
    move-object/from16 v28, v10

    .line 163
    .line 164
    move-object/from16 v32, v11

    .line 165
    .line 166
    move-wide v10, v3

    .line 167
    move-wide/from16 v3, v25

    .line 168
    .line 169
    const-wide/16 v25, 0x0

    .line 170
    .line 171
    move-object/from16 v33, v27

    .line 172
    .line 173
    move-object/from16 v34, v28

    .line 174
    .line 175
    const-wide/16 v27, 0x0

    .line 176
    .line 177
    move-object/from16 v36, v32

    .line 178
    .line 179
    move-object/from16 v35, v34

    .line 180
    .line 181
    :try_start_3
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 182
    .line 183
    .line 184
    invoke-static {v1, v2}, Lfp6;->m(Lap6;Lo17;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .line 186
    .line 187
    move-object/from16 v2, v33

    .line 188
    .line 189
    iget-object v0, v2, Lm17;->e:[C

    .line 190
    .line 191
    if-eqz v0, :cond_1

    .line 192
    .line 193
    array-length v1, v0

    .line 194
    const/4 v5, 0x0

    .line 195
    invoke-static {v0, v5, v1, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    move-object/from16 v2, v33

    .line 201
    .line 202
    :goto_0
    const/4 v5, 0x0

    .line 203
    goto :goto_2

    .line 204
    :catchall_1
    move-exception v0

    .line 205
    move-object v2, v8

    .line 206
    :goto_1
    move-object/from16 v35, v10

    .line 207
    .line 208
    move-object/from16 v36, v11

    .line 209
    .line 210
    move-wide/from16 v3, v25

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :catchall_2
    move-exception v0

    .line 214
    move-object v2, v8

    .line 215
    move-object v1, v9

    .line 216
    goto :goto_1

    .line 217
    :catchall_3
    move-exception v0

    .line 218
    move-object v2, v8

    .line 219
    move-object v1, v9

    .line 220
    move-object/from16 v35, v10

    .line 221
    .line 222
    move-object/from16 v36, v11

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :goto_2
    :try_start_4
    instance-of v6, v0, Lzz6;

    .line 226
    .line 227
    if-eqz v6, :cond_0

    .line 228
    .line 229
    const/4 v6, 0x4

    .line 230
    goto :goto_3

    .line 231
    :cond_0
    const/4 v6, 0x3

    .line 232
    :goto_3
    new-instance v7, Lo17;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 233
    .line 234
    move/from16 v37, v5

    .line 235
    .line 236
    move v5, v6

    .line 237
    :try_start_5
    invoke-static {v0}, Lfp6;->p(Ljava/lang/Throwable;)I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    move-object v8, v7

    .line 242
    invoke-static {v0}, Lfp6;->q(Ljava/lang/Throwable;)I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v9, v2, Lm17;->b:Ljava/lang/String;

    .line 251
    .line 252
    move-object/from16 v10, v35

    .line 253
    .line 254
    iget-wide v10, v10, Lkh6;->a:J

    .line 255
    .line 256
    invoke-virtual {v1}, Lap6;->a()J

    .line 257
    .line 258
    .line 259
    move-result-wide v12

    .line 260
    move-object/from16 v14, v36

    .line 261
    .line 262
    iget-object v14, v14, Llh6;->a:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v14, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 265
    .line 266
    const-wide/16 v29, 0x0

    .line 267
    .line 268
    const v31, 0x1fe00

    .line 269
    .line 270
    .line 271
    const-wide/16 v15, 0x0

    .line 272
    .line 273
    const-wide/16 v17, 0x0

    .line 274
    .line 275
    const-wide/16 v19, 0x0

    .line 276
    .line 277
    const-wide/16 v21, 0x0

    .line 278
    .line 279
    const-wide/16 v23, 0x0

    .line 280
    .line 281
    const-wide/16 v25, 0x0

    .line 282
    .line 283
    const-wide/16 v27, 0x0

    .line 284
    .line 285
    move-object/from16 v38, v2

    .line 286
    .line 287
    move-object v2, v8

    .line 288
    move-object v8, v0

    .line 289
    :try_start_6
    invoke-direct/range {v2 .. v31}, Lo17;-><init>(JIIILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJJJJJJJI)V

    .line 290
    .line 291
    .line 292
    invoke-static {v1, v2}, Lfp6;->m(Lap6;Lo17;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 293
    .line 294
    .line 295
    move-object/from16 v15, v38

    .line 296
    .line 297
    iget-object v0, v15, Lm17;->e:[C

    .line 298
    .line 299
    if-eqz v0, :cond_1

    .line 300
    .line 301
    array-length v1, v0

    .line 302
    const/4 v5, 0x0

    .line 303
    invoke-static {v0, v5, v1, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 304
    .line 305
    .line 306
    :cond_1
    return-void

    .line 307
    :catchall_4
    move-exception v0

    .line 308
    move-object/from16 v15, v38

    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    goto :goto_4

    .line 312
    :catchall_5
    move-exception v0

    .line 313
    move-object v15, v2

    .line 314
    move/from16 v5, v37

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :catchall_6
    move-exception v0

    .line 318
    move-object v15, v2

    .line 319
    :goto_4
    iget-object v1, v15, Lm17;->e:[C

    .line 320
    .line 321
    if-eqz v1, :cond_2

    .line 322
    .line 323
    array-length v2, v1

    .line 324
    invoke-static {v1, v5, v2, v5}, Ljava/util/Arrays;->fill([CIIC)V

    .line 325
    .line 326
    .line 327
    :cond_2
    throw v0
.end method
