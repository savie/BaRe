.class public final Lq20;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lq20;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq20;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lq20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lq20;->d:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lws7;-><init>(ILjv1;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 9

    .line 1
    iget p1, p0, Lq20;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lq20;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lq20;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lq20;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v2, Lq20;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    .line 20
    move-object v5, v0

    .line 21
    check-cast v5, Lbt3;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v6, p2

    .line 25
    invoke-direct/range {v2 .. v7}, Lq20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_0
    move-object v6, p2

    .line 30
    new-instance v3, Lq20;

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    check-cast v4, Lr20;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Ln10;

    .line 37
    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v7, v6

    .line 42
    move-object v6, v0

    .line 43
    invoke-direct/range {v3 .. v8}, Lq20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq20;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    check-cast p1, Lxx1;

    .line 6
    .line 7
    check-cast p2, Ljv1;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lq20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lq20;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lq20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lq20;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lq20;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lq20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lq20;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    iget-object v2, p0, Lq20;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lq20;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lq20;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    check-cast p0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;

    .line 18
    .line 19
    check-cast v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lns0;->j(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistApp;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    check-cast v2, Lbt3;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-interface {v2}, Lbt3;->invoke()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object v1

    .line 37
    :pswitch_0
    check-cast v2, Ljava/util/List;

    .line 38
    .line 39
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast p0, Lr20;

    .line 43
    .line 44
    iget-object p1, p0, Lr20;->k:Lex6;

    .line 45
    .line 46
    sget-object v0, Lym7;->LOADING:Lym7;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    check-cast v3, Ln10;

    .line 52
    .line 53
    iget-object p1, v3, Ln10;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const-string v4, "Apply labels"

    .line 60
    .line 61
    sparse-switch v0, :sswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_a

    .line 65
    .line 66
    :sswitch_0
    const-string v0, "Backup"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_c

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    move-object v6, v5

    .line 94
    check-cast v6, Lji;

    .line 95
    .line 96
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_1

    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    move-object v2, v0

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :sswitch_1
    const-string v0, "Enable/Disable apps"

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_c

    .line 116
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_2

    .line 131
    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    move-object v6, v5

    .line 137
    check-cast v6, Lji;

    .line 138
    .line 139
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-eqz v6, :cond_3

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :sswitch_2
    const-string v0, "Uninstall"

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    new-instance v0, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_2

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    move-object v6, v5

    .line 177
    check-cast v6, Lji;

    .line 178
    .line 179
    invoke-virtual {v6}, Lji;->isInstalled()Z

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    if-eqz v7, :cond_4

    .line 184
    .line 185
    invoke-virtual {v6}, Lji;->isBundled()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_4

    .line 190
    .line 191
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :sswitch_3
    const-string v0, "Delete backups"

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_c

    .line 202
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_2

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    move-object v6, v5

    .line 223
    check-cast v6, Lji;

    .line 224
    .line 225
    iget-boolean v7, p0, Let;->e:Z

    .line 226
    .line 227
    invoke-virtual {v6, v7}, Lji;->hasBackup(Z)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-eqz v6, :cond_5

    .line 232
    .line 233
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :sswitch_4
    const-string v0, "Export apps list"

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :sswitch_5
    const-string v0, "Sync backups"

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_c

    .line 253
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_2

    .line 268
    .line 269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    move-object v6, v5

    .line 274
    check-cast v6, Lji;

    .line 275
    .line 276
    iget-boolean v7, p0, Let;->e:Z

    .line 277
    .line 278
    invoke-virtual {v6, v7}, Lji;->hasBackup(Z)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_6

    .line 283
    .line 284
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :sswitch_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_c

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :sswitch_7
    const-string v0, "Restore"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_c

    .line 302
    .line 303
    new-instance v0, Ljava/util/ArrayList;

    .line 304
    .line 305
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .line 307
    .line 308
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_2

    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    move-object v6, v5

    .line 323
    check-cast v6, Lji;

    .line 324
    .line 325
    iget-boolean v7, p0, Let;->e:Z

    .line 326
    .line 327
    invoke-virtual {v6, v7}, Lji;->hasRestorableBackup(Z)Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_7

    .line 332
    .line 333
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :goto_6
    iget-boolean v0, p0, Let;->e:Z

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    sget-object v5, Liy;->a:Liy;

    .line 343
    .line 344
    invoke-virtual {v5, v2, v0}, Liy;->e(Ljava/util/List;Z)Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v3}, Ln10;->g()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_a

    .line 353
    .line 354
    invoke-static {p1, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_8

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    .line 362
    .line 363
    const/16 v2, 0xa

    .line 364
    .line 365
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .line 371
    .line 372
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_9

    .line 381
    .line 382
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    check-cast v3, Lji;

    .line 387
    .line 388
    invoke-virtual {v3}, Lji;->getItemId()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_9
    invoke-static {p1}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    goto :goto_9

    .line 401
    :cond_a
    :goto_8
    sget-object p1, Lsv2;->a:Lsv2;

    .line 402
    .line 403
    :goto_9
    iget-boolean v2, p0, Lr20;->o:Z

    .line 404
    .line 405
    if-eqz v2, :cond_b

    .line 406
    .line 407
    iget-object v2, p0, Lr20;->p:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-lez v2, :cond_b

    .line 414
    .line 415
    iget-object v2, p0, Lr20;->p:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p0, v2, v0, p1}, Lr20;->l(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 418
    .line 419
    .line 420
    goto :goto_b

    .line 421
    :cond_b
    invoke-virtual {p0, v0, p1}, Lr20;->m(Ljava/util/List;Ljava/util/Set;)V

    .line 422
    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_c
    :goto_a
    const-string p0, "loadAppsForBatchAction not implemented for "

    .line 426
    .line 427
    invoke-static {p0, p1}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const/4 v1, 0x0

    .line 435
    :goto_b
    return-object v1

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x5b5c9592 -> :sswitch_7
        -0x6d07eef -> :sswitch_6
        0x142a828c -> :sswitch_5
        0x204bf840 -> :sswitch_4
        0x2d82559c -> :sswitch_3
        0x522848c2 -> :sswitch_2
        0x6a769db6 -> :sswitch_1
        0x762561e2 -> :sswitch_0
    .end sparse-switch
.end method
