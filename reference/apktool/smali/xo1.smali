.class public final Lxo1;
.super Lju7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final b(Lmc4;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lju7;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lnz4;

    .line 8
    .line 9
    iget-object v3, v2, Lnz4;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ld67;

    .line 12
    .line 13
    iget-object v4, v0, Lju7;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Lyo1;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v4, v1, v5, v2}, Lyo1;->j(Lmc4;Ljava/lang/Object;Lnz4;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v3}, Ld67;->getText()Luq4;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    invoke-virtual {v4, v1, v5, v6}, Lyo1;->g(Lmc4;Ljava/lang/Object;Luq4;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v4, v1, v5, v3}, Lyo1;->e(Lmc4;Ljava/lang/Object;Ld67;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v1, v5, v3}, Lyo1;->f(Lmc4;Ljava/lang/Object;Ld67;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v2, Lnz4;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lny1;

    .line 39
    .line 40
    iget-object v2, v0, Lju7;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lnl1;

    .line 43
    .line 44
    iget-object v3, v1, Lny1;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lwf7;

    .line 47
    .line 48
    iget-object v4, v1, Lny1;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    move-wide v8, v6

    .line 59
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-eqz v10, :cond_b

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    check-cast v10, Lwf7;

    .line 70
    .line 71
    iget-object v11, v10, Lwf7;->b:Luf7;

    .line 72
    .line 73
    iget-object v12, v11, Luf7;->b:Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    new-instance v12, Luw5;

    .line 76
    .line 77
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v11, v11, Luf7;->a:Luw5;

    .line 81
    .line 82
    invoke-virtual {v11}, Luw5;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    if-eqz v13, :cond_2

    .line 91
    .line 92
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    check-cast v13, Ltw5;

    .line 97
    .line 98
    move-object v14, v13

    .line 99
    check-cast v14, Lhz0;

    .line 100
    .line 101
    iget-object v14, v14, Lhz0;->b:Ljava/lang/Object;

    .line 102
    .line 103
    if-eqz v14, :cond_1

    .line 104
    .line 105
    invoke-virtual {v12, v14, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v2}, Lnl1;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    iget-object v13, v2, Lnl1;->a:Lml1;

    .line 114
    .line 115
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    const-wide/high16 v15, -0x4010000000000000L    # -1.0

    .line 120
    .line 121
    if-eqz v14, :cond_5

    .line 122
    .line 123
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    invoke-virtual {v12, v14}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v17

    .line 131
    check-cast v17, Ltw5;

    .line 132
    .line 133
    invoke-virtual {v13, v14}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    check-cast v14, Lhj8;

    .line 138
    .line 139
    move-object/from16 v18, v5

    .line 140
    .line 141
    iget-object v5, v14, Lhj8;->b:Luq4;

    .line 142
    .line 143
    invoke-interface {v5}, Luq4;->k()Lau1;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    if-nez v17, :cond_4

    .line 148
    .line 149
    invoke-interface {v5}, Lau1;->g()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_3

    .line 154
    .line 155
    if-nez v17, :cond_3

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_3
    move-object/from16 v5, v18

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    iget-object v0, v14, Lhj8;->a:Ljava/lang/Object;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 168
    .line 169
    .line 170
    throw v18

    .line 171
    :cond_5
    move-object/from16 v18, v5

    .line 172
    .line 173
    iget-object v5, v10, Lwf7;->a:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    move-wide/from16 v19, v6

    .line 180
    .line 181
    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-eqz v12, :cond_8

    .line 186
    .line 187
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    check-cast v12, Ltw5;

    .line 192
    .line 193
    move-object v14, v12

    .line 194
    check-cast v14, Lhz0;

    .line 195
    .line 196
    iget-object v14, v14, Lhz0;->b:Ljava/lang/Object;

    .line 197
    .line 198
    invoke-virtual {v13, v14}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    check-cast v14, Lhj8;

    .line 203
    .line 204
    if-nez v14, :cond_7

    .line 205
    .line 206
    check-cast v12, Lhz0;

    .line 207
    .line 208
    iget-boolean v12, v12, Lhz0;->c:Z

    .line 209
    .line 210
    if-eqz v12, :cond_6

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_7
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 214
    .line 215
    add-double v19, v19, v21

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    int-to-double v11, v11

    .line 223
    const-wide v13, 0x408f400000000000L    # 1000.0

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    div-double/2addr v11, v13

    .line 229
    cmpl-double v13, v19, v6

    .line 230
    .line 231
    if-lez v13, :cond_9

    .line 232
    .line 233
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    int-to-double v13, v5

    .line 238
    div-double v19, v19, v13

    .line 239
    .line 240
    add-double v15, v19, v11

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    int-to-double v11, v5

    .line 248
    div-double v15, v19, v11

    .line 249
    .line 250
    :goto_4
    cmpl-double v5, v15, v8

    .line 251
    .line 252
    if-lez v5, :cond_a

    .line 253
    .line 254
    move-object v3, v10

    .line 255
    move-wide v8, v15

    .line 256
    :cond_a
    move-object/from16 v5, v18

    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_b
    move-object/from16 v18, v5

    .line 261
    .line 262
    if-eqz v3, :cond_f

    .line 263
    .line 264
    iget-object v1, v3, Lwf7;->a:Ljava/util/List;

    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    const/4 v5, 0x0

    .line 271
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    if-ge v5, v6, :cond_d

    .line 276
    .line 277
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ltw5;

    .line 282
    .line 283
    check-cast v6, Lhz0;

    .line 284
    .line 285
    iget-object v6, v6, Lhz0;->b:Ljava/lang/Object;

    .line 286
    .line 287
    iget-object v7, v2, Lnl1;->a:Lml1;

    .line 288
    .line 289
    invoke-virtual {v7, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Lhj8;

    .line 294
    .line 295
    if-eqz v6, :cond_c

    .line 296
    .line 297
    iget-object v6, v6, Lhj8;->a:Ljava/lang/Object;

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_c
    move-object/from16 v6, v18

    .line 301
    .line 302
    :goto_6
    aput-object v6, v4, v5

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_d
    iget-object v1, v3, Lwf7;->b:Luf7;

    .line 308
    .line 309
    iget-object v1, v1, Luf7;->b:Ljava/lang/reflect/Constructor;

    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-nez v3, :cond_e

    .line 316
    .line 317
    const/4 v3, 0x1

    .line 318
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 319
    .line 320
    .line 321
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iget-object v0, v0, Lju7;->e:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Lgd4;

    .line 328
    .line 329
    invoke-interface {v0, v1}, Lgd4;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v1}, Lnl1;->c(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    return-object v1

    .line 336
    :cond_f
    new-instance v0, Lkd5;

    .line 337
    .line 338
    iget-object v1, v1, Lny1;->d:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v1, Lri2;

    .line 341
    .line 342
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const-string v2, "Constructor not matched for %s"

    .line 347
    .line 348
    invoke-direct {v0, v2, v1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    throw v0
.end method
