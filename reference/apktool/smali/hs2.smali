.class public final Lhs2;
.super Ln60;


# instance fields
.field public final b:[B

.field public c:Lis2;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ln60;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    iput-object v1, p0, Lhs2;->b:[B

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a([B[BI[B)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "ctx"

    .line 12
    .line 13
    const-string v6, "\'ctx\' cannot be null"

    .line 14
    .line 15
    iget-object v7, v0, Lhs2;->b:[B

    .line 16
    .line 17
    monitor-enter v7

    .line 18
    :try_start_0
    iget-object v8, v0, Lhs2;->c:Lis2;

    .line 19
    .line 20
    if-nez v8, :cond_0

    .line 21
    .line 22
    new-instance v8, Lis2;

    .line 23
    .line 24
    iget-object v9, v0, Lhs2;->b:[B

    .line 25
    .line 26
    invoke-static {v9}, Lyc9;->r([B)Lnh;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-direct {v8, v9}, Lis2;-><init>(Lnh;)V

    .line 31
    .line 32
    .line 33
    iput-object v8, v0, Lhs2;->c:Lis2;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v8, v0, Lhs2;->c:Lis2;

    .line 40
    .line 41
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/16 v7, 0x39

    .line 43
    .line 44
    new-array v9, v7, [B

    .line 45
    .line 46
    iget-object v8, v8, Lis2;->b:Lnh;

    .line 47
    .line 48
    invoke-static {v8, v9}, Lyc9;->n(Lnh;[B)V

    .line 49
    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    array-length v6, v1

    .line 54
    const/16 v8, 0xff

    .line 55
    .line 56
    if-gt v6, v8, :cond_4

    .line 57
    .line 58
    iget-object v0, v0, Lhs2;->b:[B

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    array-length v5, v1

    .line 63
    const/16 v6, 0x100

    .line 64
    .line 65
    if-ge v5, v6, :cond_3

    .line 66
    .line 67
    new-instance v5, Llr6;

    .line 68
    .line 69
    invoke-direct {v5, v6}, Llr6;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/16 v6, 0x72

    .line 73
    .line 74
    new-array v8, v6, [B

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v5, v0, v10, v7}, Lgo4;->update([BII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v8, v10, v6}, Llr6;->l([BII)V

    .line 81
    .line 82
    .line 83
    new-array v0, v7, [B

    .line 84
    .line 85
    invoke-static {v8, v0}, Lyc9;->V([B[B)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v10, v1}, Lyc9;->l(Llr6;B[B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v8, v7, v7}, Lgo4;->update([BII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2, v10, v3}, Lgo4;->update([BII)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v8, v10, v6}, Llr6;->l([BII)V

    .line 98
    .line 99
    .line 100
    invoke-static {v8}, Lod2;->w([B)[B

    .line 101
    .line 102
    .line 103
    move-result-object v11

    .line 104
    new-array v12, v7, [B

    .line 105
    .line 106
    new-instance v13, Lbp0;

    .line 107
    .line 108
    invoke-direct {v13}, Lbp0;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v11, v13}, Lyc9;->d0([BLbp0;)V

    .line 112
    .line 113
    .line 114
    const/16 v14, 0x10

    .line 115
    .line 116
    new-array v15, v14, [I

    .line 117
    .line 118
    new-array v6, v14, [I

    .line 119
    .line 120
    iget-object v7, v13, Lbp0;->c:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v7, [I

    .line 123
    .line 124
    invoke-static {v7, v6}, Lzh8;->u([I[I)V

    .line 125
    .line 126
    .line 127
    iget-object v7, v13, Lbp0;->a:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v7, [I

    .line 130
    .line 131
    invoke-static {v6, v7, v15}, Lzh8;->z([I[I[I)V

    .line 132
    .line 133
    .line 134
    iget-object v7, v13, Lbp0;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v7, [I

    .line 137
    .line 138
    invoke-static {v6, v7, v6}, Lzh8;->z([I[I[I)V

    .line 139
    .line 140
    .line 141
    const/4 v7, 0x1

    .line 142
    invoke-static {v15, v7}, Lzh8;->E([II)V

    .line 143
    .line 144
    .line 145
    const/4 v13, -0x1

    .line 146
    invoke-static {v15, v13}, Lzh8;->E([II)V

    .line 147
    .line 148
    .line 149
    invoke-static {v6, v7}, Lzh8;->E([II)V

    .line 150
    .line 151
    .line 152
    invoke-static {v6, v13}, Lzh8;->E([II)V

    .line 153
    .line 154
    .line 155
    move/from16 v16, v10

    .line 156
    .line 157
    new-array v10, v14, [I

    .line 158
    .line 159
    new-array v13, v14, [I

    .line 160
    .line 161
    move/from16 v17, v7

    .line 162
    .line 163
    new-array v7, v14, [I

    .line 164
    .line 165
    invoke-static {v15, v13}, Lzh8;->L([I[I)V

    .line 166
    .line 167
    .line 168
    invoke-static {v6, v7}, Lzh8;->L([I[I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v13, v7, v10}, Lzh8;->z([I[I[I)V

    .line 172
    .line 173
    .line 174
    invoke-static {v13, v7, v13}, Lzh8;->b([I[I[I)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v18, v15

    .line 178
    .line 179
    const v15, 0x98a9

    .line 180
    .line 181
    .line 182
    invoke-static {v15, v10, v10}, Lzh8;->y(I[I[I)V

    .line 183
    .line 184
    .line 185
    new-array v14, v14, [I

    .line 186
    .line 187
    aput v17, v14, v16

    .line 188
    .line 189
    invoke-static {v10, v14, v10}, Lzh8;->M([I[I[I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v10, v13, v10}, Lzh8;->b([I[I[I)V

    .line 193
    .line 194
    .line 195
    move/from16 v13, v17

    .line 196
    .line 197
    invoke-static {v10, v13}, Lzh8;->E([II)V

    .line 198
    .line 199
    .line 200
    const/4 v14, -0x1

    .line 201
    invoke-static {v10, v14}, Lzh8;->E([II)V

    .line 202
    .line 203
    .line 204
    invoke-static {v7, v13}, Lzh8;->E([II)V

    .line 205
    .line 206
    .line 207
    invoke-static {v7, v14}, Lzh8;->E([II)V

    .line 208
    .line 209
    .line 210
    invoke-static {v10}, Lzh8;->w([I)I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-static {v7}, Lzh8;->w([I)I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    not-int v7, v7

    .line 219
    and-int/2addr v7, v10

    .line 220
    invoke-static {v12, v6}, Lzh8;->l([B[I)V

    .line 221
    .line 222
    .line 223
    aget v6, v18, v16

    .line 224
    .line 225
    and-int/2addr v6, v13

    .line 226
    shl-int/lit8 v6, v6, 0x7

    .line 227
    .line 228
    int-to-byte v6, v6

    .line 229
    const/16 v10, 0x38

    .line 230
    .line 231
    aput-byte v6, v12, v10

    .line 232
    .line 233
    if-eqz v7, :cond_2

    .line 234
    .line 235
    move/from16 v6, v16

    .line 236
    .line 237
    invoke-static {v5, v6, v1}, Lyc9;->l(Llr6;B[B)V

    .line 238
    .line 239
    .line 240
    const/16 v1, 0x39

    .line 241
    .line 242
    invoke-virtual {v5, v12, v6, v1}, Lgo4;->update([BII)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v9, v6, v1}, Lgo4;->update([BII)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v5, v2, v6, v3}, Lgo4;->update([BII)V

    .line 249
    .line 250
    .line 251
    const/16 v1, 0x72

    .line 252
    .line 253
    invoke-virtual {v5, v8, v6, v1}, Llr6;->l([BII)V

    .line 254
    .line 255
    .line 256
    invoke-static {v8}, Lod2;->w([B)[B

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    const/16 v2, 0x1c

    .line 261
    .line 262
    new-array v3, v2, [I

    .line 263
    .line 264
    invoke-static {v11, v3}, Lod2;->c([B[I)V

    .line 265
    .line 266
    .line 267
    const/16 v5, 0xe

    .line 268
    .line 269
    new-array v6, v5, [I

    .line 270
    .line 271
    invoke-static {v1, v6}, Lod2;->c([B[I)V

    .line 272
    .line 273
    .line 274
    new-array v1, v5, [I

    .line 275
    .line 276
    invoke-static {v0, v1}, Lod2;->c([B[I)V

    .line 277
    .line 278
    .line 279
    const-wide/16 v7, 0x0

    .line 280
    .line 281
    const/4 v0, 0x0

    .line 282
    :goto_1
    if-ge v0, v5, :cond_1

    .line 283
    .line 284
    aget v9, v6, v0

    .line 285
    .line 286
    invoke-static {v9, v0, v1, v3}, Ljb9;->H(II[I[I)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    int-to-long v9, v9

    .line 291
    const-wide v13, 0xffffffffL

    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    and-long/2addr v9, v13

    .line 297
    add-long/2addr v7, v9

    .line 298
    add-int/lit8 v9, v0, 0xe

    .line 299
    .line 300
    aget v10, v3, v9

    .line 301
    .line 302
    int-to-long v10, v10

    .line 303
    and-long/2addr v10, v13

    .line 304
    add-long/2addr v7, v10

    .line 305
    long-to-int v10, v7

    .line 306
    aput v10, v3, v9

    .line 307
    .line 308
    const/16 v9, 0x20

    .line 309
    .line 310
    ushr-long/2addr v7, v9

    .line 311
    add-int/lit8 v0, v0, 0x1

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_1
    const/16 v0, 0x72

    .line 315
    .line 316
    new-array v0, v0, [B

    .line 317
    .line 318
    invoke-static {v0, v2, v3}, Lg67;->o([BI[I)V

    .line 319
    .line 320
    .line 321
    invoke-static {v0}, Lod2;->w([B)[B

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const/16 v1, 0x39

    .line 326
    .line 327
    const/4 v6, 0x0

    .line 328
    invoke-static {v12, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    .line 330
    .line 331
    invoke-static {v0, v6, v4, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_2
    invoke-static {}, Lg84;->c()V

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :cond_3
    const-string v0, "ctx"

    .line 340
    .line 341
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_2
    return-void

    .line 345
    :cond_4
    invoke-static {v5}, Lc6;->f(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_5
    invoke-static {v6}, Lf6;->n(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :goto_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    throw v0
.end method
