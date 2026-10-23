.class public final Ldc7;
.super Lyl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lxb7;

.field public final j:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lxb7;

    .line 5
    .line 6
    invoke-direct {p1}, Lxb7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ldc7;->i:Lxb7;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ldc7;->j:Landroid/graphics/Path;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lwo4;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lxb7;

    .line 10
    .line 11
    iget-object v1, v1, Lwo4;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lxb7;

    .line 14
    .line 15
    iget-object v4, v0, Ldc7;->i:Lxb7;

    .line 16
    .line 17
    iget-object v5, v4, Lxb7;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v6, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 20
    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    new-instance v6, Landroid/graphics/PointF;

    .line 24
    .line 25
    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 29
    .line 30
    :cond_0
    iget-boolean v6, v3, Lxb7;->c:Z

    .line 31
    .line 32
    iget-object v7, v3, Lxb7;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    iget-boolean v6, v1, Lxb7;->c:Z

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v6, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    move v6, v9

    .line 45
    :goto_1
    iput-boolean v6, v4, Lxb7;->c:Z

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v10, v1, Lxb7;->a:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-eq v6, v11, :cond_3

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v11, "Curves must have the same number of control points. Shape 1: "

    .line 62
    .line 63
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v11, "\tShape 2: "

    .line 74
    .line 75
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6}, Lm15;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-ge v11, v6, :cond_4

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    :goto_2
    if-ge v11, v6, :cond_5

    .line 115
    .line 116
    new-instance v12, Lp62;

    .line 117
    .line 118
    invoke-direct {v12}, Lp62;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    add-int/lit8 v11, v11, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-le v11, v6, :cond_5

    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    sub-int/2addr v11, v9

    .line 138
    :goto_3
    if-lt v11, v6, :cond_5

    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    sub-int/2addr v12, v9

    .line 145
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    add-int/lit8 v11, v11, -0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    iget-object v3, v3, Lxb7;->b:Landroid/graphics/PointF;

    .line 152
    .line 153
    iget-object v1, v1, Lxb7;->b:Landroid/graphics/PointF;

    .line 154
    .line 155
    iget v6, v3, Landroid/graphics/PointF;->x:F

    .line 156
    .line 157
    iget v11, v1, Landroid/graphics/PointF;->x:F

    .line 158
    .line 159
    invoke-static {v6, v11, v2}, Lsg5;->d(FFF)F

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 164
    .line 165
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 166
    .line 167
    invoke-static {v3, v1, v2}, Lsg5;->d(FFF)F

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iget-object v3, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 172
    .line 173
    if-nez v3, :cond_6

    .line 174
    .line 175
    new-instance v3, Landroid/graphics/PointF;

    .line 176
    .line 177
    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v3, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 181
    .line 182
    :cond_6
    iget-object v3, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 183
    .line 184
    invoke-virtual {v3, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    sub-int/2addr v1, v9

    .line 192
    :goto_4
    if-ltz v1, :cond_7

    .line 193
    .line 194
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    check-cast v3, Lp62;

    .line 199
    .line 200
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, Lp62;

    .line 205
    .line 206
    iget-object v9, v3, Lp62;->a:Landroid/graphics/PointF;

    .line 207
    .line 208
    iget-object v11, v3, Lp62;->b:Landroid/graphics/PointF;

    .line 209
    .line 210
    iget-object v3, v3, Lp62;->c:Landroid/graphics/PointF;

    .line 211
    .line 212
    iget-object v12, v6, Lp62;->a:Landroid/graphics/PointF;

    .line 213
    .line 214
    iget-object v13, v6, Lp62;->b:Landroid/graphics/PointF;

    .line 215
    .line 216
    iget-object v6, v6, Lp62;->c:Landroid/graphics/PointF;

    .line 217
    .line 218
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v14

    .line 222
    check-cast v14, Lp62;

    .line 223
    .line 224
    iget v15, v9, Landroid/graphics/PointF;->x:F

    .line 225
    .line 226
    iget v8, v12, Landroid/graphics/PointF;->x:F

    .line 227
    .line 228
    invoke-static {v15, v8, v2}, Lsg5;->d(FFF)F

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 233
    .line 234
    iget v12, v12, Landroid/graphics/PointF;->y:F

    .line 235
    .line 236
    invoke-static {v9, v12, v2}, Lsg5;->d(FFF)F

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    iget-object v12, v14, Lp62;->a:Landroid/graphics/PointF;

    .line 241
    .line 242
    invoke-virtual {v12, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    check-cast v8, Lp62;

    .line 250
    .line 251
    iget v9, v11, Landroid/graphics/PointF;->x:F

    .line 252
    .line 253
    iget v12, v13, Landroid/graphics/PointF;->x:F

    .line 254
    .line 255
    invoke-static {v9, v12, v2}, Lsg5;->d(FFF)F

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 260
    .line 261
    iget v12, v13, Landroid/graphics/PointF;->y:F

    .line 262
    .line 263
    invoke-static {v11, v12, v2}, Lsg5;->d(FFF)F

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    iget-object v8, v8, Lp62;->b:Landroid/graphics/PointF;

    .line 268
    .line 269
    invoke-virtual {v8, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    check-cast v8, Lp62;

    .line 277
    .line 278
    iget v9, v3, Landroid/graphics/PointF;->x:F

    .line 279
    .line 280
    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 281
    .line 282
    invoke-static {v9, v11, v2}, Lsg5;->d(FFF)F

    .line 283
    .line 284
    .line 285
    move-result v9

    .line 286
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 287
    .line 288
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 289
    .line 290
    invoke-static {v3, v6, v2}, Lsg5;->d(FFF)F

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    iget-object v6, v8, Lp62;->c:Landroid/graphics/PointF;

    .line 295
    .line 296
    invoke-virtual {v6, v9, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 297
    .line 298
    .line 299
    add-int/lit8 v1, v1, -0x1

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_7
    iget-object v11, v0, Ldc7;->j:Landroid/graphics/Path;

    .line 303
    .line 304
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 305
    .line 306
    .line 307
    iget-object v0, v4, Lxb7;->b:Landroid/graphics/PointF;

    .line 308
    .line 309
    iget-object v1, v4, Lxb7;->a:Ljava/util/ArrayList;

    .line 310
    .line 311
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 312
    .line 313
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 314
    .line 315
    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 316
    .line 317
    .line 318
    sget-object v2, Lsg5;->a:Landroid/graphics/PointF;

    .line 319
    .line 320
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 321
    .line 322
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 323
    .line 324
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 325
    .line 326
    .line 327
    const/4 v8, 0x0

    .line 328
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-ge v8, v0, :cond_9

    .line 333
    .line 334
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Lp62;

    .line 339
    .line 340
    iget-object v3, v0, Lp62;->a:Landroid/graphics/PointF;

    .line 341
    .line 342
    iget-object v5, v0, Lp62;->b:Landroid/graphics/PointF;

    .line 343
    .line 344
    iget-object v0, v0, Lp62;->c:Landroid/graphics/PointF;

    .line 345
    .line 346
    invoke-virtual {v3, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_8

    .line 351
    .line 352
    invoke-virtual {v5, v0}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-eqz v6, :cond_8

    .line 357
    .line 358
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 359
    .line 360
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 361
    .line 362
    invoke-virtual {v11, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_8
    iget v12, v3, Landroid/graphics/PointF;->x:F

    .line 367
    .line 368
    iget v13, v3, Landroid/graphics/PointF;->y:F

    .line 369
    .line 370
    iget v14, v5, Landroid/graphics/PointF;->x:F

    .line 371
    .line 372
    iget v15, v5, Landroid/graphics/PointF;->y:F

    .line 373
    .line 374
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 375
    .line 376
    iget v5, v0, Landroid/graphics/PointF;->y:F

    .line 377
    .line 378
    move/from16 v16, v3

    .line 379
    .line 380
    move/from16 v17, v5

    .line 381
    .line 382
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 383
    .line 384
    .line 385
    :goto_6
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 386
    .line 387
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 388
    .line 389
    invoke-virtual {v2, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v8, v8, 0x1

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_9
    iget-boolean v0, v4, Lxb7;->c:Z

    .line 396
    .line 397
    if-eqz v0, :cond_a

    .line 398
    .line 399
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    .line 400
    .line 401
    .line 402
    :cond_a
    return-object v11
.end method
