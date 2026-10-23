.class public final Lgs1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lcs1;


# instance fields
.field public final a:Lr26;

.field public final b:Lr26;

.field public final c:Lhx0;

.field public final d:Ljava/lang/ThreadLocal;

.field public volatile e:Z

.field public final f:J

.field public final k:I


# direct methods
.method public constructor <init>(Lcd;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lhx0;

    const/4 v1, 0x5

    .line 75
    invoke-direct {v0, v1}, Lhx0;-><init>(I)V

    .line 76
    iput-object v0, p0, Lgs1;->c:Lhx0;

    .line 77
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lgs1;->d:Ljava/lang/ThreadLocal;

    .line 78
    sget-object v0, Lmr2;->b:Lma2;

    const/16 v0, 0x1e

    sget-object v1, Lor2;->d:Lor2;

    invoke-static {v0, v1}, Lpe4;->G(ILor2;)J

    move-result-wide v0

    iput-wide v0, p0, Lgs1;->f:J

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lgs1;->k:I

    .line 80
    new-instance v0, Lr26;

    .line 81
    new-instance v1, Lbh;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v2}, Lbh;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x1

    .line 82
    invoke-direct {v0, p1, v1}, Lr26;-><init>(ILbt3;)V

    .line 83
    iput-object v0, p0, Lgs1;->a:Lr26;

    .line 84
    iput-object v0, p0, Lgs1;->b:Lr26;

    return-void
.end method

.method public constructor <init>(Lcd;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lhx0;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    invoke-direct {v0, v1}, Lhx0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lgs1;->c:Lhx0;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lgs1;->d:Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    sget-object v0, Lmr2;->b:Lma2;

    .line 23
    .line 24
    const/16 v0, 0x1e

    .line 25
    .line 26
    sget-object v1, Lor2;->d:Lor2;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lpe4;->G(ILor2;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lgs1;->f:J

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lgs1;->k:I

    .line 36
    .line 37
    if-lez p3, :cond_0

    .line 38
    .line 39
    new-instance v1, Lr26;

    .line 40
    .line 41
    new-instance v2, Ld11;

    .line 42
    .line 43
    invoke-direct {v2, v0, p1, p2}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p3, v2}, Lr26;-><init>(ILbt3;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lgs1;->a:Lr26;

    .line 50
    .line 51
    new-instance p3, Lr26;

    .line 52
    .line 53
    new-instance v0, Lqf;

    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-direct {v0, v1, p1, p2}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-direct {p3, p1, v0}, Lr26;-><init>(ILbt3;)V

    .line 61
    .line 62
    .line 63
    iput-object p3, p0, Lgs1;->b:Lr26;

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    const-string p0, "Maximum number of readers must be greater than 0"

    .line 67
    .line 68
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgs1;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lgs1;->e:Z

    .line 7
    .line 8
    iget-object v0, p0, Lgs1;->a:Lr26;

    .line 9
    .line 10
    invoke-virtual {v0}, Lr26;->c()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lgs1;->b:Lr26;

    .line 14
    .line 15
    invoke-virtual {p0}, Lr26;->c()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final w(ZLqt3;Lkv1;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Les1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Les1;

    .line 15
    .line 16
    iget v5, v4, Les1;->q:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Les1;->q:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Les1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Les1;-><init>(Lgs1;Lkv1;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Les1;->n:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v5, Lyx1;->a:Lyx1;

    .line 36
    .line 37
    iget v6, v4, Les1;->q:I

    .line 38
    .line 39
    const-string v7, "ROLLBACK TRANSACTION"

    .line 40
    .line 41
    const/4 v8, 0x4

    .line 42
    const/4 v9, 0x3

    .line 43
    const/4 v10, 0x2

    .line 44
    const/4 v11, 0x1

    .line 45
    const/4 v12, 0x0

    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    if-eq v6, v11, :cond_4

    .line 49
    .line 50
    if-eq v6, v10, :cond_3

    .line 51
    .line 52
    if-eq v6, v9, :cond_2

    .line 53
    .line 54
    if-ne v6, v8, :cond_1

    .line 55
    .line 56
    iget-object v0, v4, Les1;->c:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v1, v0

    .line 59
    check-cast v1, Llh6;

    .line 60
    .line 61
    iget-object v0, v4, Les1;->b:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v2, v0

    .line 64
    check-cast v2, Lr26;

    .line 65
    .line 66
    :try_start_0
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto/16 :goto_8

    .line 70
    .line 71
    :catchall_0
    move-exception v0

    .line 72
    move-object v6, v1

    .line 73
    move-object v1, v0

    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 77
    .line 78
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v12

    .line 82
    :cond_2
    iget-boolean v1, v4, Les1;->a:Z

    .line 83
    .line 84
    iget-object v2, v4, Les1;->k:Lhx0;

    .line 85
    .line 86
    iget-object v6, v4, Les1;->f:Llh6;

    .line 87
    .line 88
    iget-object v9, v4, Les1;->e:Lox1;

    .line 89
    .line 90
    iget-object v10, v4, Les1;->d:Llh6;

    .line 91
    .line 92
    iget-object v13, v4, Les1;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v13, Lr26;

    .line 95
    .line 96
    iget-object v14, v4, Les1;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v14, Lqt3;

    .line 99
    .line 100
    :try_start_1
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    .line 103
    move-object/from16 v16, v9

    .line 104
    .line 105
    move-object v9, v6

    .line 106
    move-object v6, v10

    .line 107
    move-object/from16 v10, v16

    .line 108
    .line 109
    goto/16 :goto_5

    .line 110
    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v1, v0

    .line 113
    move-object v6, v10

    .line 114
    :goto_1
    move-object v2, v13

    .line 115
    goto/16 :goto_9

    .line 116
    .line 117
    :cond_3
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-object v3

    .line 121
    :cond_4
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object v3

    .line 125
    :cond_5
    invoke-static {v3}, Llg7;->H(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    iget-boolean v3, v0, Lgs1;->e:Z

    .line 129
    .line 130
    if-nez v3, :cond_17

    .line 131
    .line 132
    iget-object v3, v0, Lgs1;->d:Ljava/lang/ThreadLocal;

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Lb36;

    .line 139
    .line 140
    if-nez v3, :cond_7

    .line 141
    .line 142
    invoke-interface {v4}, Ljv1;->getContext()Lox1;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    iget-object v6, v0, Lgs1;->c:Lhx0;

    .line 147
    .line 148
    invoke-interface {v3, v6}, Lox1;->get(Lnx1;)Lmx1;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lzr1;

    .line 153
    .line 154
    if-eqz v3, :cond_6

    .line 155
    .line 156
    iget-object v3, v3, Lzr1;->b:Lb36;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    move-object v3, v12

    .line 160
    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 161
    .line 162
    if-nez v1, :cond_9

    .line 163
    .line 164
    iget-boolean v1, v3, Lb36;->c:Z

    .line 165
    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    .line 170
    .line 171
    invoke-static {v11, v0}, Lly8;->P(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v12

    .line 175
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljv1;->getContext()Lox1;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v6, v0, Lgs1;->c:Lhx0;

    .line 180
    .line 181
    invoke-interface {v1, v6}, Lox1;->get(Lnx1;)Lmx1;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_b

    .line 186
    .line 187
    new-instance v1, Lzr1;

    .line 188
    .line 189
    iget-object v6, v0, Lgs1;->c:Lhx0;

    .line 190
    .line 191
    invoke-direct {v1, v6, v3}, Lzr1;-><init>(Lnx1;Lb36;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v0, Lgs1;->d:Ljava/lang/ThreadLocal;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    new-instance v6, Lq28;

    .line 200
    .line 201
    invoke-direct {v6, v3, v0}, Lq28;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v6}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Lo41;

    .line 209
    .line 210
    invoke-direct {v1, v2, v3, v12}, Lo41;-><init>(Lqt3;Lb36;Ljv1;)V

    .line 211
    .line 212
    .line 213
    iput v11, v4, Les1;->q:I

    .line 214
    .line 215
    invoke-static {v0, v1, v4}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v5, :cond_a

    .line 220
    .line 221
    goto/16 :goto_7

    .line 222
    .line 223
    :cond_a
    return-object v0

    .line 224
    :cond_b
    iput v10, v4, Les1;->q:I

    .line 225
    .line 226
    invoke-interface {v2, v3, v4}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v5, :cond_c

    .line 231
    .line 232
    goto/16 :goto_7

    .line 233
    .line 234
    :cond_c
    return-object v0

    .line 235
    :cond_d
    if-eqz v1, :cond_e

    .line 236
    .line 237
    iget-object v3, v0, Lgs1;->a:Lr26;

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_e
    iget-object v3, v0, Lgs1;->b:Lr26;

    .line 241
    .line 242
    :goto_4
    new-instance v6, Llh6;

    .line 243
    .line 244
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 245
    .line 246
    .line 247
    :try_start_2
    invoke-interface {v4}, Ljv1;->getContext()Lox1;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    iget-object v13, v0, Lgs1;->c:Lhx0;

    .line 252
    .line 253
    iget-wide v14, v0, Lgs1;->f:J

    .line 254
    .line 255
    new-instance v11, Lds1;

    .line 256
    .line 257
    invoke-direct {v11, v0, v1}, Lds1;-><init>(Lgs1;Z)V

    .line 258
    .line 259
    .line 260
    iput-object v2, v4, Les1;->b:Ljava/lang/Object;

    .line 261
    .line 262
    iput-object v3, v4, Les1;->c:Ljava/lang/Object;

    .line 263
    .line 264
    iput-object v6, v4, Les1;->d:Llh6;

    .line 265
    .line 266
    iput-object v10, v4, Les1;->e:Lox1;

    .line 267
    .line 268
    iput-object v6, v4, Les1;->f:Llh6;

    .line 269
    .line 270
    iput-object v13, v4, Les1;->k:Lhx0;

    .line 271
    .line 272
    iput-boolean v1, v4, Les1;->a:Z

    .line 273
    .line 274
    iput v9, v4, Les1;->q:I

    .line 275
    .line 276
    invoke-virtual {v3, v14, v15, v11, v4}, Lr26;->b(JLds1;Lkv1;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 280
    if-ne v9, v5, :cond_f

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_f
    move-object v14, v2

    .line 284
    move-object v2, v13

    .line 285
    move-object v13, v3

    .line 286
    move-object v3, v9

    .line 287
    move-object v9, v6

    .line 288
    :goto_5
    :try_start_3
    check-cast v3, Lns1;

    .line 289
    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    iput-object v10, v3, Lns1;->c:Lox1;

    .line 297
    .line 298
    new-instance v10, Ljava/lang/Throwable;

    .line 299
    .line 300
    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    .line 301
    .line 302
    .line 303
    iput-object v10, v3, Lns1;->d:Ljava/lang/Throwable;

    .line 304
    .line 305
    iget-object v10, v0, Lgs1;->a:Lr26;

    .line 306
    .line 307
    iget-object v11, v0, Lgs1;->b:Lr26;

    .line 308
    .line 309
    const/4 v15, 0x0

    .line 310
    if-eq v10, v11, :cond_10

    .line 311
    .line 312
    if-eqz v1, :cond_10

    .line 313
    .line 314
    const/4 v1, 0x1

    .line 315
    goto :goto_6

    .line 316
    :cond_10
    move v1, v15

    .line 317
    :goto_6
    new-instance v10, Lb36;

    .line 318
    .line 319
    invoke-direct {v10, v2, v3, v1}, Lb36;-><init>(Lhx0;Lns1;Z)V

    .line 320
    .line 321
    .line 322
    iput-object v10, v9, Llh6;->a:Ljava/lang/Object;

    .line 323
    .line 324
    iget-object v1, v6, Llh6;->a:Ljava/lang/Object;

    .line 325
    .line 326
    if-eqz v1, :cond_14

    .line 327
    .line 328
    check-cast v1, Lb36;

    .line 329
    .line 330
    new-instance v2, Lzr1;

    .line 331
    .line 332
    iget-object v3, v0, Lgs1;->c:Lhx0;

    .line 333
    .line 334
    invoke-direct {v2, v3, v1}, Lzr1;-><init>(Lnx1;Lb36;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, v0, Lgs1;->d:Ljava/lang/ThreadLocal;

    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    new-instance v3, Lq28;

    .line 343
    .line 344
    invoke-direct {v3, v1, v0}, Lq28;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v2, v3}, Liz1;->s(Lox1;Lox1;)Lox1;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    new-instance v1, Lfs1;

    .line 352
    .line 353
    invoke-direct {v1, v14, v6, v12, v15}, Lfs1;-><init>(Lqt3;Ljava/lang/Object;Ljv1;I)V

    .line 354
    .line 355
    .line 356
    iput-object v13, v4, Les1;->b:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v6, v4, Les1;->c:Ljava/lang/Object;

    .line 359
    .line 360
    iput-object v12, v4, Les1;->d:Llh6;

    .line 361
    .line 362
    iput-object v12, v4, Les1;->e:Lox1;

    .line 363
    .line 364
    iput-object v12, v4, Les1;->f:Llh6;

    .line 365
    .line 366
    iput-object v12, v4, Les1;->k:Lhx0;

    .line 367
    .line 368
    iput v8, v4, Les1;->q:I

    .line 369
    .line 370
    invoke-static {v0, v1, v4}, Ll73;->G(Lox1;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 374
    if-ne v3, v5, :cond_11

    .line 375
    .line 376
    :goto_7
    return-object v5

    .line 377
    :cond_11
    move-object v1, v6

    .line 378
    move-object v2, v13

    .line 379
    :goto_8
    iget-object v0, v1, Llh6;->a:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Lb36;

    .line 382
    .line 383
    if-eqz v0, :cond_13

    .line 384
    .line 385
    iget-boolean v1, v0, Lb36;->e:Z

    .line 386
    .line 387
    if-nez v1, :cond_12

    .line 388
    .line 389
    const/4 v1, 0x1

    .line 390
    iput-boolean v1, v0, Lb36;->e:Z

    .line 391
    .line 392
    iget-object v1, v0, Lb36;->b:Lns1;

    .line 393
    .line 394
    iget-object v1, v1, Lns1;->a:Lfw6;

    .line 395
    .line 396
    invoke-interface {v1}, Lfw6;->a0()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_12

    .line 401
    .line 402
    iget-object v1, v0, Lb36;->b:Lns1;

    .line 403
    .line 404
    invoke-static {v7, v1}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 405
    .line 406
    .line 407
    :cond_12
    iget-object v0, v0, Lb36;->b:Lns1;

    .line 408
    .line 409
    iput-object v12, v0, Lns1;->c:Lox1;

    .line 410
    .line 411
    iput-object v12, v0, Lns1;->d:Ljava/lang/Throwable;

    .line 412
    .line 413
    invoke-virtual {v2, v0}, Lr26;->e(Lns1;)V

    .line 414
    .line 415
    .line 416
    :cond_13
    return-object v3

    .line 417
    :catchall_2
    move-exception v0

    .line 418
    move-object v1, v0

    .line 419
    goto/16 :goto_1

    .line 420
    .line 421
    :cond_14
    :try_start_4
    const-string v0, "Required value was null."

    .line 422
    .line 423
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 424
    .line 425
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 429
    :catchall_3
    move-exception v0

    .line 430
    move-object v1, v0

    .line 431
    move-object v2, v3

    .line 432
    :goto_9
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 433
    :catchall_4
    move-exception v0

    .line 434
    move-object v3, v0

    .line 435
    :try_start_6
    iget-object v0, v6, Llh6;->a:Ljava/lang/Object;

    .line 436
    .line 437
    check-cast v0, Lb36;

    .line 438
    .line 439
    if-eqz v0, :cond_16

    .line 440
    .line 441
    iget-boolean v4, v0, Lb36;->e:Z

    .line 442
    .line 443
    if-nez v4, :cond_15

    .line 444
    .line 445
    const/4 v4, 0x1

    .line 446
    iput-boolean v4, v0, Lb36;->e:Z

    .line 447
    .line 448
    iget-object v4, v0, Lb36;->b:Lns1;

    .line 449
    .line 450
    iget-object v4, v4, Lns1;->a:Lfw6;

    .line 451
    .line 452
    invoke-interface {v4}, Lfw6;->a0()Z

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-eqz v4, :cond_15

    .line 457
    .line 458
    iget-object v4, v0, Lb36;->b:Lns1;

    .line 459
    .line 460
    invoke-static {v7, v4}, Lly8;->t(Ljava/lang/String;Lfw6;)V

    .line 461
    .line 462
    .line 463
    :cond_15
    iget-object v0, v0, Lb36;->b:Lns1;

    .line 464
    .line 465
    iput-object v12, v0, Lns1;->c:Lox1;

    .line 466
    .line 467
    iput-object v12, v0, Lns1;->d:Ljava/lang/Throwable;

    .line 468
    .line 469
    invoke-virtual {v2, v0}, Lr26;->e(Lns1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :catchall_5
    move-exception v0

    .line 474
    invoke-static {v1, v0}, Lyc9;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 475
    .line 476
    .line 477
    :cond_16
    :goto_a
    throw v3

    .line 478
    :cond_17
    const/16 v0, 0x15

    .line 479
    .line 480
    const-string v1, "Connection pool is closed"

    .line 481
    .line 482
    invoke-static {v0, v1}, Lly8;->P(ILjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v12
.end method
