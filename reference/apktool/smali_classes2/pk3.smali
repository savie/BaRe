.class public final Lpk3;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public a:I

.field public final synthetic b:Lqk3;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lqk3;Ljava/util/List;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpk3;->b:Lqk3;

    .line 2
    .line 3
    iput-object p2, p0, Lpk3;->c:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lpk3;

    .line 2
    .line 3
    iget-object v0, p0, Lpk3;->b:Lqk3;

    .line 4
    .line 5
    iget-object p0, p0, Lpk3;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lpk3;-><init>(Lqk3;Ljava/util/List;Ljv1;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lpk3;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpk3;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lpk3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpk3;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_a

    .line 15
    .line 16
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget v1, Lqk3;->T:I

    .line 26
    .line 27
    iget-object v1, v0, Lpk3;->b:Lqk3;

    .line 28
    .line 29
    iget-object v4, v0, Lpk3;->c:Ljava/util/List;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    move v13, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    move v7, v5

    .line 47
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_5

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Lzk3;

    .line 58
    .line 59
    iget-object v8, v8, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 60
    .line 61
    invoke-virtual {v1}, Lqk3;->k()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    invoke-virtual {v8, v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->hasBackup(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_3

    .line 70
    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    if-ltz v7, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    invoke-static {}, Lfl1;->E0()V

    .line 77
    .line 78
    .line 79
    throw v2

    .line 80
    :cond_5
    move v13, v7

    .line 81
    :goto_1
    invoke-virtual {v1}, Lqk3;->k()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_b

    .line 86
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/16 v5, 0xa

    .line 90
    .line 91
    invoke-static {v4, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lzk3;

    .line 113
    .line 114
    iget-object v7, v7, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 115
    .line 116
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    sget-object v6, Lpz4;->g:Lpz4;

    .line 121
    .line 122
    invoke-virtual {v6}, Ldv;->e()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    new-instance v7, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v6, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_7

    .line 144
    .line 145
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 150
    .line 151
    invoke-virtual {v6}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_8

    .line 173
    .line 174
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 179
    .line 180
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_a

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    move-object v8, v7

    .line 208
    check-cast v8, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 209
    .line 210
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    if-nez v8, :cond_9

    .line 219
    .line 220
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    :cond_b
    move/from16 v19, v5

    .line 229
    .line 230
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 231
    .line 232
    .line 233
    move-result v25

    .line 234
    invoke-virtual {v1}, Lqk3;->k()Z

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    invoke-static {}, Lnc8;->p()Lww4;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    new-instance v4, Llk3;

    .line 243
    .line 244
    const v12, 0x7f080123

    .line 245
    .line 246
    .line 247
    const/4 v7, 0x0

    .line 248
    const-string v5, "New folder setup"

    .line 249
    .line 250
    const v6, 0x7f1303b4

    .line 251
    .line 252
    .line 253
    const v8, 0x7f080123

    .line 254
    .line 255
    .line 256
    const/4 v9, 0x1

    .line 257
    const v11, 0x7f1303b4

    .line 258
    .line 259
    .line 260
    move v10, v14

    .line 261
    invoke-direct/range {v4 .. v12}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    if-eqz v10, :cond_c

    .line 268
    .line 269
    new-instance v14, Llk3;

    .line 270
    .line 271
    const v22, 0x7f080121

    .line 272
    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    const-string v15, "Copy folder setups"

    .line 277
    .line 278
    const v16, 0x7f1301c2

    .line 279
    .line 280
    .line 281
    const v18, 0x7f080121

    .line 282
    .line 283
    .line 284
    const/16 v20, 0x1

    .line 285
    .line 286
    const v21, 0x7f1301c2

    .line 287
    .line 288
    .line 289
    invoke-direct/range {v14 .. v22}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v14}, Lww4;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_c
    new-instance v20, Llk3;

    .line 296
    .line 297
    const v28, 0x7f080135

    .line 298
    .line 299
    .line 300
    const/16 v23, 0x0

    .line 301
    .line 302
    const-string v21, "Backup"

    .line 303
    .line 304
    const v22, 0x7f13008f

    .line 305
    .line 306
    .line 307
    const v24, 0x7f080104

    .line 308
    .line 309
    .line 310
    const v27, 0x7f1300a5

    .line 311
    .line 312
    .line 313
    move/from16 v26, v10

    .line 314
    .line 315
    invoke-direct/range {v20 .. v28}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v4, v20

    .line 319
    .line 320
    move/from16 v14, v26

    .line 321
    .line 322
    invoke-virtual {v2, v4}, Lww4;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    new-instance v8, Llk3;

    .line 326
    .line 327
    if-eqz v14, :cond_d

    .line 328
    .line 329
    const v4, 0x7f130466

    .line 330
    .line 331
    .line 332
    :goto_6
    move v10, v4

    .line 333
    goto :goto_7

    .line 334
    :cond_d
    const v4, 0x7f13045a

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :goto_7
    const v16, 0x7f080135

    .line 339
    .line 340
    .line 341
    const/4 v11, 0x0

    .line 342
    const-string v9, "Restore"

    .line 343
    .line 344
    const v12, 0x7f0801ab

    .line 345
    .line 346
    .line 347
    const v15, 0x7f13046d

    .line 348
    .line 349
    .line 350
    invoke-direct/range {v8 .. v16}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v8}, Lww4;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    new-instance v8, Llk3;

    .line 357
    .line 358
    if-eqz v14, :cond_e

    .line 359
    .line 360
    const v4, 0x7f1301eb

    .line 361
    .line 362
    .line 363
    :goto_8
    move v10, v4

    .line 364
    goto :goto_9

    .line 365
    :cond_e
    const v4, 0x7f1301f4

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :goto_9
    const v16, 0x7f080128

    .line 370
    .line 371
    .line 372
    const/4 v11, 0x0

    .line 373
    const-string v9, "Delete backups"

    .line 374
    .line 375
    const v12, 0x7f080128

    .line 376
    .line 377
    .line 378
    const v15, 0x7f1301e5

    .line 379
    .line 380
    .line 381
    invoke-direct/range {v8 .. v16}, Llk3;-><init>(Ljava/lang/String;ILjava/lang/String;IIZII)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v8}, Lww4;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    invoke-static {v2}, Lnc8;->h(Lww4;)Lww4;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    sget-object v4, Lzn4;->a:Lzn4;

    .line 392
    .line 393
    new-instance v4, Llx;

    .line 394
    .line 395
    const/4 v5, 0x5

    .line 396
    invoke-direct {v4, v5, v1, v2}, Llx;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iput v3, v0, Lpk3;->a:I

    .line 400
    .line 401
    invoke-static {v4, v0}, Lzn4;->g(Lbt3;Ljv1;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    sget-object v1, Lyx1;->a:Lyx1;

    .line 406
    .line 407
    if-ne v0, v1, :cond_f

    .line 408
    .line 409
    return-object v1

    .line 410
    :cond_f
    :goto_a
    sget-object v0, Lbe8;->a:Lbe8;

    .line 411
    .line 412
    return-object v0
.end method
