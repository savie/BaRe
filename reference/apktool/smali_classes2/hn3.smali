.class public final Lhn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lzn7;

.field public final b:Ljava/util/List;

.field public final c:Lq63;

.field public final d:Lbn3;

.field public final e:Z

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lzn7;Ljava/util/List;Lq63;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-static {v1, v2}, Lho6;->n(Lzn7;Lq63;)Lbn3;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-boolean v4, v3, Lbn3;->b:Z

    .line 12
    .line 13
    invoke-virtual {v2}, Lq63;->B()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    new-instance v6, Ls93;

    .line 18
    .line 19
    invoke-direct {v6}, Ls93;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    const/4 v8, 0x0

    .line 24
    if-eqz v5, :cond_6

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    if-eqz v9, :cond_0

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_0
    iget-boolean v9, v6, Ls93;->e:Z

    .line 34
    .line 35
    if-eqz v9, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_4

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    move-object v11, v10

    .line 58
    check-cast v11, Lq63;

    .line 59
    .line 60
    invoke-virtual {v11}, Lq63;->p()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    invoke-virtual {v11}, Lq63;->n()Lorg/swiftapps/filesystem/File$FileType;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v11}, Lorg/swiftapps/filesystem/File$FileType;->getFile()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v11}, Ljava/io/File;->isHidden()Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-nez v11, :cond_2

    .line 77
    .line 78
    const-string v11, "."

    .line 79
    .line 80
    invoke-static {v12, v11, v8}, Luq7;->V(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    move-object v5, v9

    .line 92
    :goto_1
    iget-object v9, v6, Ls93;->f:Ljava/util/Locale;

    .line 93
    .line 94
    invoke-static {v9}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9, v7}, Ljava/text/Collator;->setStrength(I)V

    .line 99
    .line 100
    .line 101
    new-instance v10, Lq93;

    .line 102
    .line 103
    invoke-direct {v10, v6, v9}, Lq93;-><init>(Ls93;Ljava/text/Collator;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v6, v6, Ls93;->b:Z

    .line 107
    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    invoke-interface {v10}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    :goto_2
    invoke-static {v5, v10}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_6
    :goto_3
    const/4 v6, 0x0

    .line 123
    if-eqz v5, :cond_7

    .line 124
    .line 125
    new-instance v9, Ljava/util/ArrayList;

    .line 126
    .line 127
    const/16 v10, 0xa

    .line 128
    .line 129
    invoke-static {v5, v10}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-eqz v11, :cond_8

    .line 145
    .line 146
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    check-cast v11, Lq63;

    .line 151
    .line 152
    invoke-static {v1, v11}, Lho6;->n(Lzn7;Lq63;)Lbn3;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    move-object v9, v6

    .line 161
    :cond_8
    sget-object v10, Lov2;->a:Lov2;

    .line 162
    .line 163
    if-nez v9, :cond_9

    .line 164
    .line 165
    move-object v9, v10

    .line 166
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v2, v11}, Lq63;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_a

    .line 181
    .line 182
    new-instance v11, Lfn3;

    .line 183
    .line 184
    invoke-virtual {v1}, Lzn7;->u()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-direct {v11, v2, v7, v7, v12}, Lfn3;-><init>(Lq63;ZZLjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v11}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    goto :goto_6

    .line 196
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .line 200
    .line 201
    move-object v11, v2

    .line 202
    :cond_b
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-virtual {v11, v12}, Lq63;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v12

    .line 210
    new-instance v13, Lfn3;

    .line 211
    .line 212
    invoke-virtual {v11, v2}, Lq63;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    if-eqz v12, :cond_c

    .line 217
    .line 218
    invoke-virtual {v1}, Lzn7;->u()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    goto :goto_5

    .line 223
    :cond_c
    move-object v15, v6

    .line 224
    :goto_5
    invoke-direct {v13, v11, v14, v12, v15}, Lfn3;-><init>(Lq63;ZZLjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11}, Lq63;->v()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v1}, Lzn7;->n()Lq63;

    .line 235
    .line 236
    .line 237
    move-result-object v13

    .line 238
    invoke-virtual {v13}, Lq63;->v()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v13

    .line 242
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    if-nez v12, :cond_d

    .line 247
    .line 248
    invoke-virtual {v11}, Lq63;->t()Lq63;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    if-nez v11, :cond_b

    .line 253
    .line 254
    :cond_d
    invoke-static {v7}, Lel1;->j1(Ljava/util/List;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    :goto_6
    if-nez v5, :cond_e

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_e
    move-object v10, v5

    .line 262
    :goto_7
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v11

    .line 266
    if-eqz v11, :cond_f

    .line 267
    .line 268
    move v12, v8

    .line 269
    goto :goto_9

    .line 270
    :cond_f
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    move v12, v8

    .line 275
    :cond_10
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-eqz v13, :cond_12

    .line 280
    .line 281
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    check-cast v13, Lq63;

    .line 286
    .line 287
    invoke-virtual {v13}, Lq63;->y()Z

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-eqz v13, :cond_10

    .line 292
    .line 293
    add-int/lit8 v12, v12, 0x1

    .line 294
    .line 295
    if-ltz v12, :cond_11

    .line 296
    .line 297
    goto :goto_8

    .line 298
    :cond_11
    invoke-static {}, Lfl1;->E0()V

    .line 299
    .line 300
    .line 301
    throw v6

    .line 302
    :cond_12
    :goto_9
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-eqz v11, :cond_13

    .line 307
    .line 308
    goto :goto_b

    .line 309
    :cond_13
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    :cond_14
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v11

    .line 317
    if-eqz v11, :cond_16

    .line 318
    .line 319
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    check-cast v11, Lq63;

    .line 324
    .line 325
    invoke-virtual {v11}, Lq63;->x()Z

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-eqz v11, :cond_14

    .line 330
    .line 331
    add-int/lit8 v8, v8, 0x1

    .line 332
    .line 333
    if-ltz v8, :cond_15

    .line 334
    .line 335
    goto :goto_a

    .line 336
    :cond_15
    invoke-static {}, Lfl1;->E0()V

    .line 337
    .line 338
    .line 339
    throw v6

    .line 340
    :cond_16
    :goto_b
    sget-object v6, Lp93;->a:Lp93;

    .line 341
    .line 342
    invoke-static {v12, v8}, Lp93;->d(II)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 356
    .line 357
    .line 358
    iput-object v1, v0, Lhn3;->a:Lzn7;

    .line 359
    .line 360
    move-object/from16 v1, p2

    .line 361
    .line 362
    iput-object v1, v0, Lhn3;->b:Ljava/util/List;

    .line 363
    .line 364
    iput-object v2, v0, Lhn3;->c:Lq63;

    .line 365
    .line 366
    iput-object v3, v0, Lhn3;->d:Lbn3;

    .line 367
    .line 368
    iput-boolean v4, v0, Lhn3;->e:Z

    .line 369
    .line 370
    iput-object v5, v0, Lhn3;->f:Ljava/util/List;

    .line 371
    .line 372
    iput-object v9, v0, Lhn3;->g:Ljava/util/List;

    .line 373
    .line 374
    iput-object v7, v0, Lhn3;->h:Ljava/util/List;

    .line 375
    .line 376
    iput-object v6, v0, Lhn3;->i:Ljava/lang/String;

    .line 377
    .line 378
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lhn3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lhn3;

    .line 12
    .line 13
    iget-object v1, p0, Lhn3;->a:Lzn7;

    .line 14
    .line 15
    iget-object v3, p1, Lhn3;->a:Lzn7;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lhn3;->b:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lhn3;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lhn3;->c:Lq63;

    .line 36
    .line 37
    iget-object v3, p1, Lhn3;->c:Lq63;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lhn3;->d:Lbn3;

    .line 47
    .line 48
    iget-object v3, p1, Lhn3;->d:Lbn3;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-boolean v1, p0, Lhn3;->e:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lhn3;->e:Z

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lhn3;->f:Ljava/util/List;

    .line 65
    .line 66
    iget-object v3, p1, Lhn3;->f:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lhn3;->g:Ljava/util/List;

    .line 76
    .line 77
    iget-object v3, p1, Lhn3;->g:Ljava/util/List;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lhn3;->h:Ljava/util/List;

    .line 87
    .line 88
    iget-object v3, p1, Lhn3;->h:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object p0, p0, Lhn3;->i:Ljava/lang/String;

    .line 98
    .line 99
    iget-object p1, p1, Lhn3;->i:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lhn3;->a:Lzn7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lzn7;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lhn3;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lhn3;->c:Lq63;

    .line 17
    .line 18
    iget-object v2, v2, Lq63;->a:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    mul-int/2addr v2, v1

    .line 26
    iget-object v0, p0, Lhn3;->d:Lbn3;

    .line 27
    .line 28
    invoke-virtual {v0}, Lbn3;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/2addr v0, v2

    .line 33
    mul-int/2addr v0, v1

    .line 34
    iget-boolean v2, p0, Lhn3;->e:Z

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Lfz5;->h(IIZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-object v2, p0, Lhn3;->f:Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_0
    add-int/2addr v0, v2

    .line 51
    mul-int/2addr v0, v1

    .line 52
    iget-object v2, p0, Lhn3;->g:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Lhn3;->h:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, Lfz5;->i(Ljava/util/List;II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object p0, p0, Lhn3;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    add-int/2addr p0, v0

    .line 71
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(storage="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lhn3;->a:Lzn7;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", allStorages="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lhn3;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", folder="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lhn3;->c:Lq63;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", currentPickerItem="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lhn3;->d:Lbn3;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", isFolderSelectable="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lhn3;->e:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", allFiles="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lhn3;->f:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", items="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lhn3;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", navItems="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lhn3;->h:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", folderAndFilesCountString="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ")"

    .line 89
    .line 90
    iget-object p0, p0, Lhn3;->i:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method
