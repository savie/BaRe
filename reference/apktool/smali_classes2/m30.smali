.class public final Lm30;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lqo0;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V
    .locals 0

    .line 1
    iput p5, p0, Lm30;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm30;->b:Lqo0;

    .line 4
    .line 5
    iput-object p2, p0, Lm30;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lm30;->d:Landroid/os/Parcelable;

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
    iget p1, p0, Lm30;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lm30;->d:Landroid/os/Parcelable;

    .line 4
    .line 5
    iget-object v1, p0, Lm30;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lm30;->b:Lqo0;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v2, Lm30;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lco8;

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Lho8;

    .line 19
    .line 20
    move-object v5, v0

    .line 21
    check-cast v5, Landroid/graphics/Bitmap;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v6, p2

    .line 25
    invoke-direct/range {v2 .. v7}, Lm30;-><init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_0
    move-object v6, p2

    .line 30
    new-instance v3, Lm30;

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    check-cast v4, Ln30;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Lk30;

    .line 37
    .line 38
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v7, v6

    .line 42
    move-object v6, v0

    .line 43
    invoke-direct/range {v3 .. v8}, Lm30;-><init>(Lqo0;Ljava/lang/Object;Landroid/os/Parcelable;Ljv1;I)V

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
    iget v0, p0, Lm30;->a:I

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
    invoke-virtual {p0, p1, p2}, Lm30;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lm30;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lm30;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lm30;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lm30;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lm30;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm30;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Lm30;->b:Lqo0;

    .line 10
    .line 11
    iget-object v6, v0, Lm30;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v0, v0, Lm30;->d:Landroid/os/Parcelable;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    check-cast v6, Lho8;

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast v5, Lco8;

    .line 27
    .line 28
    const v1, 0x7f1304f1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v1}, Lqo0;->h(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v5, Lco8;->h:Lgv7;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/WallpaperManager;

    .line 43
    .line 44
    invoke-virtual {v6}, Lho8;->getFlag()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v1, v0, v7, v4, v8}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0}, Lx13;->d(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/app/WallpaperManager;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    :goto_0
    move v3, v4

    .line 68
    goto :goto_2

    .line 69
    :goto_1
    iget-object v1, v5, La55;->b:Ljava/lang/String;

    .line 70
    .line 71
    const-string v4, "setWallpaper: "

    .line 72
    .line 73
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_2
    if-eqz v6, :cond_1

    .line 77
    .line 78
    sget-object v0, Lho8;->HOME:Lho8;

    .line 79
    .line 80
    if-eq v6, v0, :cond_1

    .line 81
    .line 82
    sget-object v0, Lho8;->BOTH:Lho8;

    .line 83
    .line 84
    if-ne v6, v0, :cond_2

    .line 85
    .line 86
    :cond_1
    iget-object v0, v5, Lco8;->j:Lix6;

    .line 87
    .line 88
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lix6;->k(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v5}, Lqo0;->f()V

    .line 94
    .line 95
    .line 96
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 97
    .line 98
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    const v1, 0x7f1305a2

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    const v1, 0x7f1301c8

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    sget-object v3, Lzn4;->a:Lzn4;

    .line 119
    .line 120
    invoke-static {v0, v1}, Ldj7;->y(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Luv7;->a:Luv7;

    .line 124
    .line 125
    new-instance v0, Lmg1;

    .line 126
    .line 127
    const/4 v1, 0x5

    .line 128
    invoke-direct {v0, v7, v7, v1}, Lmg1;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v7, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Lqo0;->d()V

    .line 135
    .line 136
    .line 137
    return-object v2

    .line 138
    :pswitch_0
    check-cast v0, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;

    .line 139
    .line 140
    invoke-static/range {p1 .. p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    check-cast v5, Ln30;

    .line 144
    .line 145
    iget-object v1, v5, Ln30;->j:Lex6;

    .line 146
    .line 147
    sget-object v8, Lym7;->LOADING:Lym7;

    .line 148
    .line 149
    invoke-virtual {v1, v8}, Lex6;->k(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    check-cast v6, Lk30;

    .line 153
    .line 154
    iget-object v8, v6, Lk30;->a:Ljava/lang/String;

    .line 155
    .line 156
    const-string v9, "Backup"

    .line 157
    .line 158
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    sget-object v9, Lov2;->a:Lov2;

    .line 163
    .line 164
    if-eqz v8, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    if-nez v8, :cond_4

    .line 171
    .line 172
    move-object v8, v9

    .line 173
    :cond_4
    invoke-static {v8}, Lfq1;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    iput-object v8, v5, Ln30;->i:Ljava/util/ArrayList;

    .line 178
    .line 179
    :cond_5
    iget-object v6, v6, Lk30;->a:Ljava/lang/String;

    .line 180
    .line 181
    const-string v8, "Restore"

    .line 182
    .line 183
    invoke-static {v6, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    const/16 v8, 0xa

    .line 188
    .line 189
    if-eqz v6, :cond_32

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appconfigs/data/Config;->getValidSettings()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_6

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    move-object v9, v0

    .line 199
    :goto_4
    sget-object v10, Lvr6;->INSTANCE:Lvr6;

    .line 200
    .line 201
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    const-string v6, "getAppTaskPropertiesForRestore: Loading apps list for "

    .line 206
    .line 207
    const-string v11, " custom settings"

    .line 208
    .line 209
    invoke-static {v0, v6, v11}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    const/4 v14, 0x4

    .line 214
    const/4 v15, 0x0

    .line 215
    const-string v11, "ConfigAppsLoader"

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    invoke-static/range {v10 .. v15}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, Lg00;->a:Lg00;

    .line 222
    .line 223
    invoke-static {}, Lg00;->C()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v4}, Lg00;->l(Z)Lc00;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iget-object v6, v0, Lc00;->b:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v6, Ljava/util/List;

    .line 233
    .line 234
    iget-object v0, v0, Lc00;->c:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v0, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-static {v6, v0}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v6, Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    :cond_7
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    if-eqz v10, :cond_8

    .line 256
    .line 257
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    move-object v11, v10

    .line 262
    check-cast v11, Lji;

    .line 263
    .line 264
    invoke-virtual {v11, v3}, Lji;->hasRestorableBackup(Z)Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    if-eqz v11, :cond_7

    .line 269
    .line 270
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_8
    sget-object v0, Lua1;->g:Lua1;

    .line 275
    .line 276
    invoke-virtual {v0}, Ldv;->e()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    new-instance v10, Ljava/util/ArrayList;

    .line 281
    .line 282
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .line 284
    .line 285
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_a

    .line 294
    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    move-object v12, v11

    .line 300
    check-cast v12, Lji;

    .line 301
    .line 302
    invoke-virtual {v12, v4}, Lji;->hasRestorableBackup(Z)Z

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    if-eqz v12, :cond_9

    .line 307
    .line 308
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-static {v6, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 315
    .line 316
    .line 317
    move-result v11

    .line 318
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v12

    .line 329
    if-eqz v12, :cond_b

    .line 330
    .line 331
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    check-cast v12, Lji;

    .line 336
    .line 337
    invoke-virtual {v12}, Lji;->getPackageName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_b
    new-instance v11, Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-static {v10, v8}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 355
    .line 356
    .line 357
    move-result-object v12

    .line 358
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    if-eqz v13, :cond_c

    .line 363
    .line 364
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v13

    .line 368
    check-cast v13, Lji;

    .line 369
    .line 370
    invoke-virtual {v13}, Lji;->getPackageName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v13

    .line 374
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_c
    invoke-static {v0, v11}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    new-instance v11, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    :cond_d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v12

    .line 395
    if-eqz v12, :cond_e

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    move-object v13, v12

    .line 402
    check-cast v13, Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    if-lez v13, :cond_d

    .line 409
    .line 410
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_9

    .line 414
    :cond_e
    invoke-static {v11}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    new-instance v11, Ljava/util/ArrayList;

    .line 419
    .line 420
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v12

    .line 431
    if-eqz v12, :cond_31

    .line 432
    .line 433
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    add-int/lit8 v13, v3, 0x1

    .line 438
    .line 439
    if-ltz v3, :cond_30

    .line 440
    .line 441
    check-cast v12, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 442
    .line 443
    sget-object v14, Lvr6;->INSTANCE:Lvr6;

    .line 444
    .line 445
    const-string v3, "Getting apps for ConfigSettings #"

    .line 446
    .line 447
    invoke-static {v13, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v16

    .line 451
    const/16 v18, 0x4

    .line 452
    .line 453
    const/16 v19, 0x0

    .line 454
    .line 455
    const-string v15, "ConfigAppsLoader"

    .line 456
    .line 457
    const/16 v17, 0x0

    .line 458
    .line 459
    invoke-static/range {v14 .. v19}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getApplyData()Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    if-eqz v3, :cond_2f

    .line 467
    .line 468
    invoke-virtual {v3, v4}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->isValid(Z)Z

    .line 469
    .line 470
    .line 471
    move-result v14

    .line 472
    if-eqz v14, :cond_2e

    .line 473
    .line 474
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings$ApplyData;->getLabelIds()Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    if-eqz v3, :cond_2d

    .line 479
    .line 480
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v14

    .line 484
    if-nez v14, :cond_f

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_f
    move-object v3, v7

    .line 488
    :goto_b
    if-eqz v3, :cond_2d

    .line 489
    .line 490
    new-instance v14, Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .line 494
    .line 495
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v15

    .line 499
    :goto_c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    if-eqz v16, :cond_11

    .line 504
    .line 505
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    move-object/from16 v17, v4

    .line 510
    .line 511
    check-cast v17, Ljava/lang/String;

    .line 512
    .line 513
    sget-object v18, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 514
    .line 515
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-static/range {v17 .. v17}, Lhr4;->c(Ljava/lang/String;)Z

    .line 519
    .line 520
    .line 521
    move-result v17

    .line 522
    if-nez v17, :cond_10

    .line 523
    .line 524
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    :cond_10
    const/4 v4, 0x1

    .line 528
    goto :goto_c

    .line 529
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    :cond_12
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    .line 540
    .line 541
    move-result v15

    .line 542
    if-eqz v15, :cond_13

    .line 543
    .line 544
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v15

    .line 548
    move-object/from16 v17, v15

    .line 549
    .line 550
    check-cast v17, Ljava/lang/String;

    .line 551
    .line 552
    sget-object v18, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 553
    .line 554
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-static/range {v17 .. v17}, Lhr4;->c(Ljava/lang/String;)Z

    .line 558
    .line 559
    .line 560
    move-result v17

    .line 561
    if-eqz v17, :cond_12

    .line 562
    .line 563
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_d

    .line 567
    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 573
    .line 574
    .line 575
    move-result-object v15

    .line 576
    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 577
    .line 578
    .line 579
    move-result v17

    .line 580
    if-eqz v17, :cond_26

    .line 581
    .line 582
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v17

    .line 586
    move-object/from16 v8, v17

    .line 587
    .line 588
    check-cast v8, Ljava/lang/String;

    .line 589
    .line 590
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 591
    .line 592
    .line 593
    move-result v17

    .line 594
    if-eqz v17, :cond_14

    .line 595
    .line 596
    goto :goto_11

    .line 597
    :cond_14
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 598
    .line 599
    .line 600
    move-result-object v17

    .line 601
    :goto_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 602
    .line 603
    .line 604
    move-result v18

    .line 605
    if-eqz v18, :cond_16

    .line 606
    .line 607
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v18

    .line 611
    move-object/from16 v7, v18

    .line 612
    .line 613
    check-cast v7, Ljz;

    .line 614
    .line 615
    iget-object v7, v7, Ljz;->b:Lji;

    .line 616
    .line 617
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v7

    .line 621
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    if-eqz v7, :cond_15

    .line 626
    .line 627
    :goto_10
    const/4 v7, 0x0

    .line 628
    const/16 v8, 0xa

    .line 629
    .line 630
    goto :goto_e

    .line 631
    :cond_15
    const/4 v7, 0x0

    .line 632
    goto :goto_f

    .line 633
    :cond_16
    :goto_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 634
    .line 635
    .line 636
    move-result-object v7

    .line 637
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 638
    .line 639
    .line 640
    move-result v17

    .line 641
    if-eqz v17, :cond_18

    .line 642
    .line 643
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v17

    .line 647
    move-object/from16 v18, v17

    .line 648
    .line 649
    check-cast v18, Lji;

    .line 650
    .line 651
    move-object/from16 p1, v0

    .line 652
    .line 653
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    invoke-static {v0, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_17

    .line 662
    .line 663
    goto :goto_13

    .line 664
    :cond_17
    move-object/from16 v0, p1

    .line 665
    .line 666
    goto :goto_12

    .line 667
    :cond_18
    move-object/from16 p1, v0

    .line 668
    .line 669
    const/16 v17, 0x0

    .line 670
    .line 671
    :goto_13
    move-object/from16 v0, v17

    .line 672
    .line 673
    check-cast v0, Lji;

    .line 674
    .line 675
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 676
    .line 677
    .line 678
    move-result-object v7

    .line 679
    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 680
    .line 681
    .line 682
    move-result v17

    .line 683
    if-eqz v17, :cond_1a

    .line 684
    .line 685
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v17

    .line 689
    move-object/from16 v18, v17

    .line 690
    .line 691
    check-cast v18, Lji;

    .line 692
    .line 693
    move-object/from16 v20, v0

    .line 694
    .line 695
    invoke-virtual/range {v18 .. v18}, Lji;->getPackageName()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-static {v0, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_19

    .line 704
    .line 705
    goto :goto_15

    .line 706
    :cond_19
    move-object/from16 v0, v20

    .line 707
    .line 708
    goto :goto_14

    .line 709
    :cond_1a
    move-object/from16 v20, v0

    .line 710
    .line 711
    const/16 v17, 0x0

    .line 712
    .line 713
    :goto_15
    move-object/from16 v0, v17

    .line 714
    .line 715
    check-cast v0, Lji;

    .line 716
    .line 717
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getLocations()Ljava/util/List;

    .line 718
    .line 719
    .line 720
    move-result-object v7

    .line 721
    invoke-static {v7}, Lji8;->v(Ljava/util/Collection;)Z

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    if-eqz v8, :cond_1b

    .line 726
    .line 727
    goto :goto_16

    .line 728
    :cond_1b
    invoke-static {v7}, Lji8;->t(Ljava/util/Collection;)Z

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    if-eqz v8, :cond_1c

    .line 733
    .line 734
    goto :goto_17

    .line 735
    :cond_1c
    sget-object v8, Lq05;->DEVICE:Lq05;

    .line 736
    .line 737
    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 738
    .line 739
    .line 740
    move-result v8

    .line 741
    if-eqz v8, :cond_1e

    .line 742
    .line 743
    sget-object v8, Lq05;->CLOUD:Lq05;

    .line 744
    .line 745
    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v7

    .line 749
    if-eqz v7, :cond_1e

    .line 750
    .line 751
    if-nez v20, :cond_1d

    .line 752
    .line 753
    goto :goto_17

    .line 754
    :cond_1d
    :goto_16
    move-object/from16 v0, v20

    .line 755
    .line 756
    goto :goto_17

    .line 757
    :cond_1e
    const/4 v0, 0x0

    .line 758
    :goto_17
    if-nez v0, :cond_20

    .line 759
    .line 760
    :cond_1f
    :goto_18
    move-object/from16 v0, p1

    .line 761
    .line 762
    goto/16 :goto_10

    .line 763
    .line 764
    :cond_20
    invoke-virtual {v0}, Lji;->getLabels()Ljava/util/Set;

    .line 765
    .line 766
    .line 767
    move-result-object v7

    .line 768
    if-eqz v7, :cond_23

    .line 769
    .line 770
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 771
    .line 772
    .line 773
    move-result v8

    .line 774
    if-eqz v8, :cond_21

    .line 775
    .line 776
    goto :goto_19

    .line 777
    :cond_21
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 778
    .line 779
    .line 780
    move-result-object v7

    .line 781
    :cond_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    if-eqz v8, :cond_23

    .line 786
    .line 787
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v8

    .line 791
    check-cast v8, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;

    .line 792
    .line 793
    invoke-virtual {v8}, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->getId()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v8

    .line 797
    invoke-static {v14, v8}, Lel1;->M0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v8

    .line 801
    if-eqz v8, :cond_22

    .line 802
    .line 803
    goto :goto_1a

    .line 804
    :cond_23
    :goto_19
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 805
    .line 806
    .line 807
    move-result v7

    .line 808
    if-eqz v7, :cond_24

    .line 809
    .line 810
    goto :goto_18

    .line 811
    :cond_24
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v7

    .line 815
    :cond_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    if-eqz v8, :cond_1f

    .line 820
    .line 821
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    check-cast v8, Ljava/lang/String;

    .line 826
    .line 827
    sget-object v17, Lorg/swiftapps/swiftbackup/appslist/ui/labels/LabelParams;->Companion:Lhr4;

    .line 828
    .line 829
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 830
    .line 831
    .line 832
    invoke-static {v0, v8}, Lhr4;->b(Lji;Ljava/lang/String;)Z

    .line 833
    .line 834
    .line 835
    move-result v8

    .line 836
    if-eqz v8, :cond_25

    .line 837
    .line 838
    :goto_1a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    goto :goto_18

    .line 842
    :cond_26
    move-object/from16 p1, v0

    .line 843
    .line 844
    sget-object v20, Lvr6;->INSTANCE:Lvr6;

    .line 845
    .line 846
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    const-string v4, "Num of apps matching Labels="

    .line 851
    .line 852
    invoke-static {v0, v4}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v22

    .line 856
    const/16 v24, 0x4

    .line 857
    .line 858
    const/16 v25, 0x0

    .line 859
    .line 860
    const-string v21, "ConfigAppsLoader"

    .line 861
    .line 862
    const/16 v23, 0x0

    .line 863
    .line 864
    invoke-static/range {v20 .. v25}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 865
    .line 866
    .line 867
    sget-object v0, Liy;->a:Liy;

    .line 868
    .line 869
    const/4 v4, 0x0

    .line 870
    invoke-static {v3, v4}, Liy;->f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    new-instance v3, Ljava/util/ArrayList;

    .line 875
    .line 876
    const/16 v4, 0xa

    .line 877
    .line 878
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 879
    .line 880
    .line 881
    move-result v7

    .line 882
    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 883
    .line 884
    .line 885
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 890
    .line 891
    .line 892
    move-result v4

    .line 893
    if-eqz v4, :cond_2c

    .line 894
    .line 895
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v4

    .line 899
    move-object/from16 v21, v4

    .line 900
    .line 901
    check-cast v21, Lji;

    .line 902
    .line 903
    invoke-virtual/range {v21 .. v21}, Lji;->isCloudApp()Z

    .line 904
    .line 905
    .line 906
    move-result v4

    .line 907
    if-eqz v4, :cond_29

    .line 908
    .line 909
    invoke-virtual/range {v21 .. v21}, Lji;->getCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 910
    .line 911
    .line 912
    move-result-object v4

    .line 913
    if-eqz v4, :cond_27

    .line 914
    .line 915
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;->getBackups()Ljava/util/List;

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    if-eqz v4, :cond_27

    .line 920
    .line 921
    invoke-static {v4}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v4

    .line 925
    check-cast v4, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 926
    .line 927
    move-object/from16 v27, v4

    .line 928
    .line 929
    goto :goto_1c

    .line 930
    :cond_27
    const/16 v27, 0x0

    .line 931
    .line 932
    :goto_1c
    if-eqz v27, :cond_28

    .line 933
    .line 934
    new-instance v4, Lhk;

    .line 935
    .line 936
    invoke-virtual/range {v27 .. v27}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getBackupId()Ljava/lang/String;

    .line 937
    .line 938
    .line 939
    move-result-object v7

    .line 940
    invoke-virtual/range {v21 .. v21}, Lji;->getPackageName()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v8

    .line 944
    const/4 v14, 0x1

    .line 945
    invoke-direct {v4, v7, v8, v14}, Lhk;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 946
    .line 947
    .line 948
    new-instance v20, Ljz;

    .line 949
    .line 950
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 951
    .line 952
    .line 953
    move-result-object v22

    .line 954
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestorePermissionsMode()Lyu;

    .line 955
    .line 956
    .line 957
    move-result-object v23

    .line 958
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSpecialPermissions()Z

    .line 959
    .line 960
    .line 961
    move-result v24

    .line 962
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSsaid()Z

    .line 963
    .line 964
    .line 965
    move-result v25

    .line 966
    move-object/from16 v26, v4

    .line 967
    .line 968
    invoke-direct/range {v20 .. v27}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 969
    .line 970
    .line 971
    :goto_1d
    move-object/from16 v4, v20

    .line 972
    .line 973
    goto :goto_20

    .line 974
    :cond_28
    invoke-virtual/range {v21 .. v21}, Lji;->asString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    const-string v1, "No cloud backup for app: "

    .line 979
    .line 980
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 985
    .line 986
    .line 987
    :goto_1e
    const/4 v2, 0x0

    .line 988
    goto/16 :goto_26

    .line 989
    .line 990
    :cond_29
    const/4 v14, 0x1

    .line 991
    invoke-virtual/range {v21 .. v21}, Lji;->getLocalBackups()Ljava/util/List;

    .line 992
    .line 993
    .line 994
    move-result-object v4

    .line 995
    if-eqz v4, :cond_2a

    .line 996
    .line 997
    invoke-static {v4}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v4

    .line 1001
    check-cast v4, Lgm;

    .line 1002
    .line 1003
    if-eqz v4, :cond_2a

    .line 1004
    .line 1005
    iget-object v4, v4, Lgm;->a:Lhk;

    .line 1006
    .line 1007
    move-object/from16 v26, v4

    .line 1008
    .line 1009
    goto :goto_1f

    .line 1010
    :cond_2a
    const/16 v26, 0x0

    .line 1011
    .line 1012
    :goto_1f
    if-eqz v26, :cond_2b

    .line 1013
    .line 1014
    new-instance v20, Ljz;

    .line 1015
    .line 1016
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getAppParts()Ljava/util/List;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v22

    .line 1020
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestorePermissionsMode()Lyu;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v23

    .line 1024
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSpecialPermissions()Z

    .line 1025
    .line 1026
    .line 1027
    move-result v24

    .line 1028
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;->getRestoreSsaid()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v25

    .line 1032
    const/16 v27, 0x0

    .line 1033
    .line 1034
    invoke-direct/range {v20 .. v27}, Ljz;-><init>(Lji;Ljava/util/List;Lyu;ZZLhk;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 1035
    .line 1036
    .line 1037
    goto :goto_1d

    .line 1038
    :goto_20
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_1b

    .line 1042
    .line 1043
    :cond_2b
    invoke-virtual/range {v21 .. v21}, Lji;->asString()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    const-string v1, "No local backup for app: "

    .line 1048
    .line 1049
    invoke-static {v1, v0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v0

    .line 1053
    invoke-static {v0}, Lf6;->g(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_1e

    .line 1057
    :cond_2c
    const/4 v14, 0x1

    .line 1058
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1059
    .line 1060
    .line 1061
    goto :goto_21

    .line 1062
    :cond_2d
    move-object/from16 p1, v0

    .line 1063
    .line 1064
    move v14, v4

    .line 1065
    :goto_21
    move-object/from16 v0, p1

    .line 1066
    .line 1067
    move v3, v13

    .line 1068
    move v4, v14

    .line 1069
    const/4 v7, 0x0

    .line 1070
    const/16 v8, 0xa

    .line 1071
    .line 1072
    goto/16 :goto_a

    .line 1073
    .line 1074
    :cond_2e
    const-string v0, "Failed requirement."

    .line 1075
    .line 1076
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    goto :goto_1e

    .line 1080
    :cond_2f
    const-string v0, "Required value was null."

    .line 1081
    .line 1082
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    goto :goto_1e

    .line 1086
    :cond_30
    invoke-static {}, Lfl1;->F0()V

    .line 1087
    .line 1088
    .line 1089
    const/16 v19, 0x0

    .line 1090
    .line 1091
    throw v19

    .line 1092
    :cond_31
    sget-object v12, Lvr6;->INSTANCE:Lvr6;

    .line 1093
    .line 1094
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1095
    .line 1096
    .line 1097
    move-result v0

    .line 1098
    const-string v3, "Apps list compiled with size "

    .line 1099
    .line 1100
    invoke-static {v0, v3}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v14

    .line 1104
    const/16 v16, 0x4

    .line 1105
    .line 1106
    const/16 v17, 0x0

    .line 1107
    .line 1108
    const-string v13, "ConfigAppsLoader"

    .line 1109
    .line 1110
    const/4 v15, 0x0

    .line 1111
    invoke-static/range {v12 .. v17}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 1112
    .line 1113
    .line 1114
    iput-object v11, v5, Ln30;->i:Ljava/util/ArrayList;

    .line 1115
    .line 1116
    :cond_32
    iget-object v0, v5, Ln30;->i:Ljava/util/ArrayList;

    .line 1117
    .line 1118
    if-eqz v0, :cond_37

    .line 1119
    .line 1120
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v0

    .line 1124
    if-eqz v0, :cond_33

    .line 1125
    .line 1126
    goto :goto_25

    .line 1127
    :cond_33
    iget-object v0, v5, Ln30;->i:Ljava/util/ArrayList;

    .line 1128
    .line 1129
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1130
    .line 1131
    .line 1132
    new-instance v7, Ljava/util/ArrayList;

    .line 1133
    .line 1134
    const/16 v4, 0xa

    .line 1135
    .line 1136
    invoke-static {v0, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1137
    .line 1138
    .line 1139
    move-result v3

    .line 1140
    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v3

    .line 1151
    if-eqz v3, :cond_34

    .line 1152
    .line 1153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    check-cast v3, Lkz;

    .line 1158
    .line 1159
    invoke-virtual {v3}, Lkz;->a()Lji;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v3

    .line 1163
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    goto :goto_22

    .line 1167
    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    .line 1168
    .line 1169
    const/16 v4, 0xa

    .line 1170
    .line 1171
    invoke-static {v7, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 1172
    .line 1173
    .line 1174
    move-result v3

    .line 1175
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v3

    .line 1182
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v4

    .line 1186
    if-eqz v4, :cond_35

    .line 1187
    .line 1188
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v4

    .line 1192
    check-cast v4, Lji;

    .line 1193
    .line 1194
    invoke-virtual {v4}, Lji;->getItemId()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    goto :goto_23

    .line 1202
    :cond_35
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v8

    .line 1206
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1207
    .line 1208
    .line 1209
    move-result v0

    .line 1210
    if-nez v0, :cond_36

    .line 1211
    .line 1212
    sget-object v0, Lym7;->DATA_RECEIVED:Lym7;

    .line 1213
    .line 1214
    goto :goto_24

    .line 1215
    :cond_36
    sget-object v0, Lym7;->DATA_EMPTY:Lym7;

    .line 1216
    .line 1217
    :goto_24
    invoke-virtual {v1, v0}, Lex6;->k(Ljava/lang/Object;)V

    .line 1218
    .line 1219
    .line 1220
    iget-object v0, v5, Ln30;->k:Lex6;

    .line 1221
    .line 1222
    new-instance v6, Lfm7;

    .line 1223
    .line 1224
    const/4 v10, 0x0

    .line 1225
    const/16 v11, 0x14

    .line 1226
    .line 1227
    const/4 v9, 0x1

    .line 1228
    invoke-direct/range {v6 .. v11}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0, v6}, Lex6;->k(Ljava/lang/Object;)V

    .line 1232
    .line 1233
    .line 1234
    goto :goto_26

    .line 1235
    :cond_37
    :goto_25
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 1236
    .line 1237
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    const v1, 0x7f13007a

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1249
    .line 1250
    .line 1251
    sget-object v3, Lzn4;->a:Lzn4;

    .line 1252
    .line 1253
    new-instance v3, Lcv;

    .line 1254
    .line 1255
    const/16 v4, 0xe

    .line 1256
    .line 1257
    invoke-direct {v3, v4, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v5}, Lqo0;->d()V

    .line 1264
    .line 1265
    .line 1266
    :goto_26
    return-object v2

    .line 1267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
