.class public final Lsh7;
.super Lan6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/util/Iterator;

.field public d:I

.field public e:I

.field public f:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic p:I

.field public final synthetic q:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(IILjava/util/Iterator;Ljv1;)V
    .locals 0

    .line 1
    iput p1, p0, Lsh7;->n:I

    .line 2
    .line 3
    iput p2, p0, Lsh7;->p:I

    .line 4
    .line 5
    iput-object p3, p0, Lsh7;->q:Ljava/util/Iterator;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lan6;-><init>(ILjv1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 3

    .line 1
    new-instance v0, Lsh7;

    .line 2
    .line 3
    iget v1, p0, Lsh7;->p:I

    .line 4
    .line 5
    iget-object v2, p0, Lsh7;->q:Ljava/util/Iterator;

    .line 6
    .line 7
    iget p0, p0, Lsh7;->n:I

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Lsh7;-><init>(IILjava/util/Iterator;Ljv1;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lsh7;->k:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg77;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lsh7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsh7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsh7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lsh7;->k:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lg77;

    .line 6
    .line 7
    iget v2, v0, Lsh7;->f:I

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    iget v7, v0, Lsh7;->p:I

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    iget v9, v0, Lsh7;->n:I

    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    sget-object v11, Lyx1;->a:Lyx1;

    .line 20
    .line 21
    if-eqz v2, :cond_5

    .line 22
    .line 23
    if-eq v2, v8, :cond_4

    .line 24
    .line 25
    if-eq v2, v6, :cond_3

    .line 26
    .line 27
    if-eq v2, v5, :cond_2

    .line 28
    .line 29
    if-eq v2, v4, :cond_1

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lsh7;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lvn6;

    .line 36
    .line 37
    :goto_0
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v10

    .line 48
    :cond_1
    iget v2, v0, Lsh7;->e:I

    .line 49
    .line 50
    iget v5, v0, Lsh7;->d:I

    .line 51
    .line 52
    iget-object v6, v0, Lsh7;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Lvn6;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Lvn6;->e(I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_2
    iget v2, v0, Lsh7;->e:I

    .line 65
    .line 66
    iget v6, v0, Lsh7;->d:I

    .line 67
    .line 68
    iget-object v12, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 69
    .line 70
    check-cast v12, Ljava/util/Iterator;

    .line 71
    .line 72
    iget-object v13, v0, Lsh7;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v13, Lvn6;

    .line 75
    .line 76
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v13, v7}, Lvn6;->e(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_3
    iget-object v0, v0, Lsh7;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Ljava/util/ArrayList;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget v2, v0, Lsh7;->e:I

    .line 90
    .line 91
    iget v3, v0, Lsh7;->d:I

    .line 92
    .line 93
    iget-object v4, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 94
    .line 95
    check-cast v4, Ljava/util/Iterator;

    .line 96
    .line 97
    iget-object v5, v0, Lsh7;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v5, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .line 108
    .line 109
    move v12, v2

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0x400

    .line 115
    .line 116
    if-le v9, v2, :cond_6

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    move v2, v9

    .line 120
    :goto_1
    sub-int v12, v7, v9

    .line 121
    .line 122
    iget-object v13, v0, Lsh7;->q:Ljava/util/Iterator;

    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    if-ltz v12, :cond_a

    .line 126
    .line 127
    new-instance v5, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .line 131
    .line 132
    move v3, v2

    .line 133
    move-object v4, v13

    .line 134
    move v2, v14

    .line 135
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_9

    .line 140
    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    if-lez v2, :cond_8

    .line 146
    .line 147
    add-int/lit8 v2, v2, -0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-ne v7, v9, :cond_7

    .line 158
    .line 159
    iput-object v1, v0, Lsh7;->k:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v5, v0, Lsh7;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v4, Ljava/util/Iterator;

    .line 164
    .line 165
    iput-object v4, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 166
    .line 167
    iput v3, v0, Lsh7;->d:I

    .line 168
    .line 169
    iput v12, v0, Lsh7;->e:I

    .line 170
    .line 171
    iput v8, v0, Lsh7;->f:I

    .line 172
    .line 173
    invoke-virtual {v1, v5, v0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 174
    .line 175
    .line 176
    return-object v11

    .line 177
    :cond_9
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_12

    .line 182
    .line 183
    iput-object v10, v0, Lsh7;->k:Ljava/lang/Object;

    .line 184
    .line 185
    iput-object v10, v0, Lsh7;->b:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v10, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 188
    .line 189
    iput v3, v0, Lsh7;->d:I

    .line 190
    .line 191
    iput v12, v0, Lsh7;->e:I

    .line 192
    .line 193
    iput v6, v0, Lsh7;->f:I

    .line 194
    .line 195
    invoke-virtual {v1, v5, v0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 196
    .line 197
    .line 198
    return-object v11

    .line 199
    :cond_a
    new-instance v6, Lvn6;

    .line 200
    .line 201
    new-array v15, v2, [Ljava/lang/Object;

    .line 202
    .line 203
    invoke-direct {v6, v14, v15}, Lvn6;-><init>(I[Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    move-object/from16 v18, v6

    .line 207
    .line 208
    move v6, v2

    .line 209
    move v2, v12

    .line 210
    move-object v12, v13

    .line 211
    move-object/from16 v13, v18

    .line 212
    .line 213
    :goto_3
    iget v14, v13, Lvn6;->b:I

    .line 214
    .line 215
    iget-object v15, v13, Lvn6;->a:[Ljava/lang/Object;

    .line 216
    .line 217
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v16

    .line 221
    if-eqz v16, :cond_10

    .line 222
    .line 223
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v16

    .line 227
    move/from16 v17, v8

    .line 228
    .line 229
    invoke-virtual {v13}, Lvn6;->d()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-eq v8, v14, :cond_f

    .line 234
    .line 235
    iget v8, v13, Lvn6;->c:I

    .line 236
    .line 237
    iget v3, v13, Lvn6;->d:I

    .line 238
    .line 239
    add-int/2addr v8, v3

    .line 240
    rem-int/2addr v8, v14

    .line 241
    aput-object v16, v15, v8

    .line 242
    .line 243
    add-int/lit8 v3, v3, 0x1

    .line 244
    .line 245
    iput v3, v13, Lvn6;->d:I

    .line 246
    .line 247
    invoke-virtual {v13}, Lvn6;->d()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-ne v3, v14, :cond_d

    .line 252
    .line 253
    iget v3, v13, Lvn6;->d:I

    .line 254
    .line 255
    if-ge v3, v9, :cond_e

    .line 256
    .line 257
    shr-int/lit8 v3, v14, 0x1

    .line 258
    .line 259
    add-int/2addr v14, v3

    .line 260
    add-int/lit8 v14, v14, 0x1

    .line 261
    .line 262
    if-le v14, v9, :cond_b

    .line 263
    .line 264
    move v14, v9

    .line 265
    :cond_b
    iget v3, v13, Lvn6;->c:I

    .line 266
    .line 267
    if-nez v3, :cond_c

    .line 268
    .line 269
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    goto :goto_4

    .line 274
    :cond_c
    new-array v3, v14, [Ljava/lang/Object;

    .line 275
    .line 276
    invoke-virtual {v13, v3}, Lvn6;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    :goto_4
    new-instance v8, Lvn6;

    .line 281
    .line 282
    iget v13, v13, Lvn6;->d:I

    .line 283
    .line 284
    invoke-direct {v8, v13, v3}, Lvn6;-><init>(I[Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    move-object v13, v8

    .line 288
    :cond_d
    move/from16 v8, v17

    .line 289
    .line 290
    const/4 v3, 0x5

    .line 291
    goto :goto_3

    .line 292
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    .line 296
    .line 297
    iput-object v1, v0, Lsh7;->k:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v13, v0, Lsh7;->b:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v12, Ljava/util/Iterator;

    .line 302
    .line 303
    iput-object v12, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 304
    .line 305
    iput v6, v0, Lsh7;->d:I

    .line 306
    .line 307
    iput v2, v0, Lsh7;->e:I

    .line 308
    .line 309
    iput v5, v0, Lsh7;->f:I

    .line 310
    .line 311
    invoke-virtual {v1, v3, v0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 312
    .line 313
    .line 314
    return-object v11

    .line 315
    :cond_f
    const-string v0, "ring buffer is full"

    .line 316
    .line 317
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-object v10

    .line 321
    :cond_10
    move v5, v6

    .line 322
    move-object v6, v13

    .line 323
    :goto_5
    iget v3, v6, Lvn6;->d:I

    .line 324
    .line 325
    if-le v3, v7, :cond_11

    .line 326
    .line 327
    new-instance v3, Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    .line 331
    .line 332
    iput-object v1, v0, Lsh7;->k:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v6, v0, Lsh7;->b:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v10, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 337
    .line 338
    iput v5, v0, Lsh7;->d:I

    .line 339
    .line 340
    iput v2, v0, Lsh7;->e:I

    .line 341
    .line 342
    iput v4, v0, Lsh7;->f:I

    .line 343
    .line 344
    invoke-virtual {v1, v3, v0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 345
    .line 346
    .line 347
    return-object v11

    .line 348
    :cond_11
    invoke-virtual {v6}, Ll3;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-nez v3, :cond_12

    .line 353
    .line 354
    iput-object v10, v0, Lsh7;->k:Ljava/lang/Object;

    .line 355
    .line 356
    iput-object v10, v0, Lsh7;->b:Ljava/lang/Object;

    .line 357
    .line 358
    iput-object v10, v0, Lsh7;->c:Ljava/util/Iterator;

    .line 359
    .line 360
    iput v5, v0, Lsh7;->d:I

    .line 361
    .line 362
    iput v2, v0, Lsh7;->e:I

    .line 363
    .line 364
    const/4 v2, 0x5

    .line 365
    iput v2, v0, Lsh7;->f:I

    .line 366
    .line 367
    invoke-virtual {v1, v6, v0}, Lg77;->d(Ljava/lang/Object;Lan6;)V

    .line 368
    .line 369
    .line 370
    return-object v11

    .line 371
    :cond_12
    :goto_6
    sget-object v0, Lbe8;->a:Lbe8;

    .line 372
    .line 373
    return-object v0
.end method
