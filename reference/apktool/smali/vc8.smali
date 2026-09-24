.class public abstract Lvc8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ly13;

.field public static final b:Lp35;

.field public static c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TypefaceCompat static init"

    .line 2
    .line 3
    invoke-static {v0}, Liz1;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1f

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lzc8;

    .line 13
    .line 14
    invoke-direct {v0}, Ly13;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lvc8;->a:Ly13;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x1d

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Lyc8;

    .line 25
    .line 26
    invoke-direct {v0}, Ly13;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lvc8;->a:Ly13;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x1c

    .line 33
    .line 34
    if-lt v0, v1, :cond_2

    .line 35
    .line 36
    new-instance v0, Lxc8;

    .line 37
    .line 38
    invoke-direct {v0}, Lwc8;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lvc8;->a:Ly13;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lwc8;

    .line 45
    .line 46
    invoke-direct {v0}, Lwc8;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lvc8;->a:Ly13;

    .line 50
    .line 51
    :goto_0
    new-instance v0, Lp35;

    .line 52
    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lp35;-><init>(I)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lvc8;->b:Lp35;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lvc8;->c:Landroid/graphics/Paint;

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;Loq3;Landroid/content/res/Resources;ILjava/lang/String;IILg67;Z)Landroid/graphics/Typeface;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    instance-of v4, v1, Lrq3;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, -0x3

    .line 13
    if-eqz v4, :cond_16

    .line 14
    .line 15
    check-cast v1, Lrq3;

    .line 16
    .line 17
    const-string v4, "TypefaceCompat"

    .line 18
    .line 19
    iget-object v7, v1, Lrq3;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x1

    .line 27
    const/4 v11, 0x0

    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    invoke-static {v7}, Lvc8;->c(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    iget-object v7, v1, Lrq3;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-ne v8, v10, :cond_1

    .line 45
    .line 46
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lfq3;

    .line 51
    .line 52
    iget-object v4, v4, Lfq3;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v4}, Lvc8;->c(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v12, 0x1f

    .line 63
    .line 64
    if-ge v8, v12, :cond_2

    .line 65
    .line 66
    :goto_0
    move-object v7, v9

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_2
    move v8, v11

    .line 70
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-ge v8, v12, :cond_4

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    check-cast v12, Lfq3;

    .line 81
    .line 82
    iget-object v12, v12, Lfq3;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v12}, Lvc8;->c(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    if-nez v12, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object v12, v9

    .line 95
    move v8, v11

    .line 96
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-ge v8, v13, :cond_9

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Lfq3;

    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    sub-int/2addr v14, v10

    .line 113
    if-ne v8, v14, :cond_5

    .line 114
    .line 115
    iget-object v14, v13, Lfq3;->f:Ljava/lang/String;

    .line 116
    .line 117
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    if-eqz v14, :cond_5

    .line 122
    .line 123
    iget-object v4, v13, Lfq3;->e:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v12, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_5
    iget-object v14, v13, Lfq3;->e:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v15, v13, Lfq3;->f:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v14}, Lvc8;->c(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-static {v14}, Lvc8;->d(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    .line 138
    .line 139
    .line 140
    move-result-object v14

    .line 141
    if-nez v14, :cond_6

    .line 142
    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v8, "Unable identify the primary font for "

    .line 146
    .line 147
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v8, v13, Lfq3;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v8, ". Falling back to provider font."

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-nez v13, :cond_7

    .line 173
    .line 174
    :try_start_0
    new-instance v13, Landroid/graphics/fonts/FontFamily$Builder;

    .line 175
    .line 176
    new-instance v13, Landroid/graphics/fonts/Font$Builder;

    .line 177
    .line 178
    invoke-static {v14}, Lju1;->a(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/Font$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    invoke-virtual {v13, v15}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    invoke-virtual {v13}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    new-instance v14, Landroid/graphics/fonts/FontFamily$Builder;

    .line 191
    .line 192
    invoke-direct {v14, v13}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v14}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 196
    .line 197
    .line 198
    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_3

    .line 200
    :catch_0
    const-string v7, "Failed to clone Font instance. Fall back to provider font."

    .line 201
    .line 202
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    new-instance v13, Landroid/graphics/fonts/FontFamily$Builder;

    .line 208
    .line 209
    invoke-direct {v13, v14}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v13}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    :goto_3
    if-nez v12, :cond_8

    .line 217
    .line 218
    new-instance v12, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 219
    .line 220
    invoke-direct {v12, v13}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    invoke-virtual {v12, v13}, Landroid/graphics/Typeface$CustomFallbackBuilder;->addCustomFallback(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 225
    .line 226
    .line 227
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_9
    :goto_5
    invoke-virtual {v12}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    :goto_6
    if-eqz v7, :cond_b

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    new-instance v0, Landroid/os/Handler;

    .line 240
    .line 241
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Lro1;

    .line 249
    .line 250
    invoke-direct {v1, v5, v3, v7}, Lro1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    :cond_a
    sget-object v0, Lvc8;->b:Lp35;

    .line 257
    .line 258
    invoke-static/range {p2 .. p6}, Lvc8;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1, v7}, Lp35;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    return-object v7

    .line 266
    :cond_b
    if-eqz p8, :cond_d

    .line 267
    .line 268
    iget v4, v1, Lrq3;->c:I

    .line 269
    .line 270
    if-nez v4, :cond_c

    .line 271
    .line 272
    :goto_7
    move v4, v10

    .line 273
    goto :goto_8

    .line 274
    :cond_c
    move v4, v11

    .line 275
    goto :goto_8

    .line 276
    :cond_d
    if-nez v3, :cond_c

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :goto_8
    const/4 v5, -0x1

    .line 280
    if-eqz p8, :cond_e

    .line 281
    .line 282
    iget v7, v1, Lrq3;->b:I

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_e
    move v7, v5

    .line 286
    :goto_9
    new-instance v8, Landroid/os/Handler;

    .line 287
    .line 288
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    invoke-direct {v8, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 293
    .line 294
    .line 295
    new-instance v12, Lkm5;

    .line 296
    .line 297
    const/16 v13, 0x12

    .line 298
    .line 299
    invoke-direct {v12, v11, v13}, Lkm5;-><init>(BI)V

    .line 300
    .line 301
    .line 302
    iput-object v3, v12, Lkm5;->b:Ljava/lang/Object;

    .line 303
    .line 304
    iget-object v1, v1, Lrq3;->a:Ljava/util/ArrayList;

    .line 305
    .line 306
    new-instance v3, Lot9;

    .line 307
    .line 308
    new-instance v13, Ly60;

    .line 309
    .line 310
    invoke-direct {v13, v8}, Ly60;-><init>(Landroid/os/Handler;)V

    .line 311
    .line 312
    .line 313
    invoke-direct {v3, v12, v13, v11}, Lot9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 314
    .line 315
    .line 316
    if-eqz v4, :cond_12

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-gt v4, v10, :cond_11

    .line 323
    .line 324
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, Lfq3;

    .line 329
    .line 330
    sget-object v4, Lnq3;->a:Lp35;

    .line 331
    .line 332
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    new-instance v8, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .line 340
    .line 341
    aget-object v4, v4, v11

    .line 342
    .line 343
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-static {v2, v4}, Lnq3;->a(ILjava/util/List;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    sget-object v8, Lnq3;->a:Lp35;

    .line 358
    .line 359
    invoke-virtual {v8, v4}, Lp35;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    check-cast v8, Landroid/graphics/Typeface;

    .line 364
    .line 365
    if-eqz v8, :cond_f

    .line 366
    .line 367
    new-instance v0, Ls60;

    .line 368
    .line 369
    invoke-direct {v0, v12, v8}, Ls60;-><init>(Lkm5;Landroid/graphics/Typeface;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v13, v0}, Ly60;->execute(Ljava/lang/Runnable;)V

    .line 373
    .line 374
    .line 375
    move-object v9, v8

    .line 376
    goto/16 :goto_d

    .line 377
    .line 378
    :cond_f
    if-ne v7, v5, :cond_10

    .line 379
    .line 380
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    new-instance v5, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .line 388
    .line 389
    aget-object v1, v1, v11

    .line 390
    .line 391
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v4, v0, v1, v2}, Lnq3;->b(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;I)Lmq3;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v3, v0}, Lot9;->f(Lmq3;)V

    .line 406
    .line 407
    .line 408
    iget-object v9, v0, Lmq3;->a:Landroid/graphics/Typeface;

    .line 409
    .line 410
    goto/16 :goto_d

    .line 411
    .line 412
    :cond_10
    new-instance v5, Liq3;

    .line 413
    .line 414
    invoke-direct {v5, v4, v0, v1, v2}, Liq3;-><init>(Ljava/lang/String;Landroid/content/Context;Lfq3;I)V

    .line 415
    .line 416
    .line 417
    :try_start_1
    sget-object v0, Lnq3;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 418
    .line 419
    invoke-interface {v0, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 420
    .line 421
    .line 422
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 423
    int-to-long v4, v7

    .line 424
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 425
    .line 426
    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3

    .line 430
    :try_start_3
    check-cast v0, Lmq3;

    .line 431
    .line 432
    invoke-virtual {v3, v0}, Lot9;->f(Lmq3;)V

    .line 433
    .line 434
    .line 435
    iget-object v9, v0, Lmq3;->a:Landroid/graphics/Typeface;

    .line 436
    .line 437
    goto/16 :goto_d

    .line 438
    .line 439
    :catch_1
    move-exception v0

    .line 440
    goto :goto_a

    .line 441
    :catch_2
    move-exception v0

    .line 442
    goto :goto_b

    .line 443
    :catch_3
    new-instance v0, Ljava/lang/InterruptedException;

    .line 444
    .line 445
    const-string v1, "timeout"

    .line 446
    .line 447
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :goto_a
    throw v0

    .line 452
    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    .line 453
    .line 454
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 455
    .line 456
    .line 457
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 458
    :catch_4
    iget-object v0, v3, Lot9;->b:Ljava/lang/Object;

    .line 459
    .line 460
    check-cast v0, Ly60;

    .line 461
    .line 462
    iget-object v1, v3, Lot9;->a:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v1, Lkm5;

    .line 465
    .line 466
    new-instance v3, Lxz0;

    .line 467
    .line 468
    invoke-direct {v3, v1, v6, v11}, Lxz0;-><init>(Ljava/lang/Object;II)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v3}, Ly60;->execute(Ljava/lang/Runnable;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_d

    .line 475
    .line 476
    :cond_11
    const-string v0, "Fallbacks with blocking fetches are not supported for performance reasons"

    .line 477
    .line 478
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    return-object v9

    .line 482
    :cond_12
    invoke-static {v2, v1}, Lnq3;->a(ILjava/util/List;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    sget-object v5, Lnq3;->a:Lp35;

    .line 487
    .line 488
    invoke-virtual {v5, v4}, Lp35;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    check-cast v5, Landroid/graphics/Typeface;

    .line 493
    .line 494
    if-eqz v5, :cond_13

    .line 495
    .line 496
    new-instance v0, Ls60;

    .line 497
    .line 498
    invoke-direct {v0, v12, v5}, Ls60;-><init>(Lkm5;Landroid/graphics/Typeface;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v13, v0}, Ly60;->execute(Ljava/lang/Runnable;)V

    .line 502
    .line 503
    .line 504
    move-object v9, v5

    .line 505
    goto :goto_d

    .line 506
    :cond_13
    new-instance v5, Ljq3;

    .line 507
    .line 508
    invoke-direct {v5, v3, v11}, Ljq3;-><init>(Ljava/lang/Object;I)V

    .line 509
    .line 510
    .line 511
    sget-object v7, Lnq3;->c:Ljava/lang/Object;

    .line 512
    .line 513
    monitor-enter v7

    .line 514
    :try_start_4
    sget-object v3, Lnq3;->d:Ldg7;

    .line 515
    .line 516
    invoke-virtual {v3, v4}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    check-cast v6, Ljava/util/ArrayList;

    .line 521
    .line 522
    if-eqz v6, :cond_14

    .line 523
    .line 524
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    monitor-exit v7

    .line 528
    goto :goto_d

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    goto :goto_e

    .line 531
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3, v4, v6}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 543
    new-instance v3, Lkq3;

    .line 544
    .line 545
    invoke-direct {v3, v4, v0, v1, v2}, Lkq3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 546
    .line 547
    .line 548
    sget-object v0, Lnq3;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 549
    .line 550
    new-instance v1, Llq3;

    .line 551
    .line 552
    invoke-direct {v1, v4}, Llq3;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    if-nez v4, :cond_15

    .line 560
    .line 561
    new-instance v4, Landroid/os/Handler;

    .line 562
    .line 563
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 568
    .line 569
    .line 570
    goto :goto_c

    .line 571
    :cond_15
    new-instance v4, Landroid/os/Handler;

    .line 572
    .line 573
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 574
    .line 575
    .line 576
    :goto_c
    new-instance v5, Lrj6;

    .line 577
    .line 578
    invoke-direct {v5}, Lrj6;-><init>()V

    .line 579
    .line 580
    .line 581
    iput-object v3, v5, Lrj6;->b:Ljava/lang/Object;

    .line 582
    .line 583
    iput-object v1, v5, Lrj6;->c:Ljava/lang/Object;

    .line 584
    .line 585
    iput-object v4, v5, Lrj6;->d:Ljava/lang/Object;

    .line 586
    .line 587
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 588
    .line 589
    .line 590
    :goto_d
    move-object/from16 v7, p2

    .line 591
    .line 592
    goto :goto_f

    .line 593
    :goto_e
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 594
    throw v0

    .line 595
    :cond_16
    sget-object v4, Lvc8;->a:Ly13;

    .line 596
    .line 597
    check-cast v1, Lpq3;

    .line 598
    .line 599
    move-object/from16 v7, p2

    .line 600
    .line 601
    invoke-virtual {v4, v0, v1, v7, v2}, Ly13;->f(Landroid/content/Context;Lpq3;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    if-eqz v3, :cond_18

    .line 606
    .line 607
    if-eqz v9, :cond_17

    .line 608
    .line 609
    new-instance v0, Landroid/os/Handler;

    .line 610
    .line 611
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 616
    .line 617
    .line 618
    new-instance v1, Lro1;

    .line 619
    .line 620
    invoke-direct {v1, v5, v3, v9}, Lro1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    .line 625
    .line 626
    goto :goto_f

    .line 627
    :cond_17
    invoke-virtual {v3, v6}, Lg67;->g(I)V

    .line 628
    .line 629
    .line 630
    :cond_18
    :goto_f
    if-eqz v9, :cond_19

    .line 631
    .line 632
    sget-object v0, Lvc8;->b:Lp35;

    .line 633
    .line 634
    invoke-static/range {p2 .. p6}, Lvc8;->b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v0, v1, v9}, Lp35;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    :cond_19
    return-object v9
.end method

.method public static b(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x2d

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static d(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;
    .locals 10

    .line 1
    sget-object v0, Lvc8;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lvc8;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lvc8;->c:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lvc8;->c:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    sget-object v9, Lvc8;->c:Landroid/graphics/Paint;

    .line 26
    .line 27
    const-string v1, " "

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
