.class public final Llj;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljv1;I)V
    .locals 0

    .line 1
    iput p3, p0, Llj;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Llj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    iget p1, p0, Llj;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Llj;

    .line 9
    .line 10
    check-cast p0, Lod6;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-direct {p1, p0, p2, v0}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Llj;

    .line 18
    .line 19
    check-cast p0, Lfi5;

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-direct {p1, p0, p2, v0}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, Llj;

    .line 27
    .line 28
    check-cast p0, Lfa2;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-direct {p1, p0, p2, v0}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, Llj;

    .line 36
    .line 37
    check-cast p0, Lji;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-direct {p1, p0, p2, v0}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_3
    new-instance p1, Llj;

    .line 45
    .line 46
    check-cast p0, Lrj;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-direct {p1, p0, p2, v0}, Llj;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Llj;->a:I

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
    invoke-virtual {p0, p1, p2}, Llj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Llj;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Llj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Llj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Llj;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Llj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Llj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Llj;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Llj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Llj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Llj;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Llj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Llj;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Llj;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Llj;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Llj;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lbe8;->a:Lbe8;

    .line 10
    .line 11
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lod6;

    .line 17
    .line 18
    iget-object p1, p0, Lod6;->i:Lqo0;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const v2, 0x7f130426

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lqo0;->h(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lud5;->e()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lod6;->k()Lix6;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 46
    .line 47
    if-eqz p0, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0}, Lqo0;->f()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lvd5;

    .line 58
    .line 59
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lq63;->j()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lod6;->k()Lix6;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 81
    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lqo0;->f()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object v2, p0, Lod6;->i:Lqo0;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    const v3, 0x7f130209

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lqo0;->h(I)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-static {p1}, Lud5;->d(Lvd5;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lq63;->j()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {p0}, Lod6;->k()Lix6;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lvd5;->getLocalFile()Lq63;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v1, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Lod6;->k()Lix6;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    iget-object p0, p0, Lod6;->i:Lqo0;

    .line 134
    .line 135
    if-eqz p0, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0}, Lqo0;->f()V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_1
    return-object v0

    .line 141
    :pswitch_0
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Lfi5;

    .line 147
    .line 148
    iget-object p0, p0, Lfi5;->i:Lgv7;

    .line 149
    .line 150
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, Lxc7;

    .line 155
    .line 156
    sget-object p1, Lxc7;->b:Landroidx/datastore/core/NativeSharedCounter;

    .line 157
    .line 158
    iget-wide v0, p0, Lxc7;->a:J

    .line 159
    .line 160
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/core/NativeSharedCounter;->nativeIncrementAndGetCounterValue(J)I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    new-instance p1, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :pswitch_1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Llj;->b:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p1, Lfa2;

    .line 176
    .line 177
    new-instance v0, Lda2;

    .line 178
    .line 179
    invoke-direct {v0, v3, p1, v2}, Lda2;-><init>(ZLfa2;Z)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 183
    .line 184
    .line 185
    const/4 p1, 0x2

    .line 186
    new-array v0, p1, [Ldv;

    .line 187
    .line 188
    sget-object v4, Lkz4;->g:Lkz4;

    .line 189
    .line 190
    aput-object v4, v0, v3

    .line 191
    .line 192
    sget-object v3, Lpz4;->g:Lpz4;

    .line 193
    .line 194
    aput-object v3, v0, v2

    .line 195
    .line 196
    invoke-static {v0}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    move-object v4, v3

    .line 215
    check-cast v4, Ldv;

    .line 216
    .line 217
    iget-boolean v3, v4, Ldv;->b:Z

    .line 218
    .line 219
    if-nez v3, :cond_6

    .line 220
    .line 221
    const/4 v8, 0x0

    .line 222
    const/16 v9, 0xc

    .line 223
    .line 224
    const/4 v5, 0x1

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    invoke-static/range {v4 .. v9}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_7
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast p0, Lfa2;

    .line 234
    .line 235
    const-string v0, "5.1.0"

    .line 236
    .line 237
    const-string v3, "KEY_LAST_SHOWN_VERSION"

    .line 238
    .line 239
    const-string v4, ""

    .line 240
    .line 241
    :try_start_0
    sget-object v5, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 242
    .line 243
    if-eqz v5, :cond_8

    .line 244
    .line 245
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    goto :goto_3

    .line 250
    :cond_8
    const-string v3, "prefs"

    .line 251
    .line 252
    invoke-static {v3}, Lpe4;->F(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    move-object v3, v4

    .line 257
    :goto_3
    if-nez v3, :cond_9

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_9
    move-object v4, v3

    .line 261
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    invoke-static {}, Lc41;->a()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    if-nez v3, :cond_a

    .line 276
    .line 277
    iget-object p0, p0, Lfa2;->h:Lix6;

    .line 278
    .line 279
    invoke-virtual {p0, v0}, Lix6;->k(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    :cond_a
    sget-object p0, Lso5;->a:Lso5;

    .line 283
    .line 284
    invoke-virtual {p0}, Lso5;->a()V

    .line 285
    .line 286
    .line 287
    sget-object v4, Lat7;->a:Lat7;

    .line 288
    .line 289
    monitor-enter v4

    .line 290
    :try_start_1
    sget-object p0, Lzn4;->a:Lzn4;

    .line 291
    .line 292
    new-instance p0, Ldh7;

    .line 293
    .line 294
    invoke-direct {p0, p1, v1, v2}, Ldh7;-><init>(ILjv1;I)V

    .line 295
    .line 296
    .line 297
    invoke-static {v1, p0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    .line 299
    .line 300
    monitor-exit v4

    .line 301
    sget-object p0, Lbe8;->a:Lbe8;

    .line 302
    .line 303
    return-object p0

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    move-object p0, v0

    .line 306
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    throw p0

    .line 308
    :pswitch_2
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    sget-object p1, Lg00;->a:Lg00;

    .line 312
    .line 313
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p0, Lji;

    .line 316
    .line 317
    invoke-virtual {p0}, Lji;->getPackageName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {p0, v3}, Lg00;->c(Ljava/lang/String;Z)V

    .line 322
    .line 323
    .line 324
    sget-object p0, Lbe8;->a:Lbe8;

    .line 325
    .line 326
    return-object p0

    .line 327
    :pswitch_3
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    sget-object p1, Lg00;->a:Lg00;

    .line 331
    .line 332
    iget-object p0, p0, Llj;->b:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p0, Lrj;

    .line 335
    .line 336
    iget-object p1, p0, Lrj;->f:Lji;

    .line 337
    .line 338
    invoke-virtual {p1}, Lji;->getPackageName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lji;->getName()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-static {v0, v1, v3}, Lg00;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Lji;->getEnabled()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    xor-int/2addr v0, v2

    .line 358
    invoke-virtual {p1, v0}, Lji;->setEnabled(Z)V

    .line 359
    .line 360
    .line 361
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->T()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Lrj;->I()V

    .line 365
    .line 366
    .line 367
    sget-object p0, Lbe8;->a:Lbe8;

    .line 368
    .line 369
    return-object p0

    .line 370
    nop

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
