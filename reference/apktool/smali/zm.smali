.class public abstract Lzm;
.super Landroidx/fragment/app/u;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldn;


# instance fields
.field private mDelegate:Lfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio1;->getSavedStateRegistry()Lot9;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lxm;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lxm;-><init>(Lzm;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "androidx:appcompat"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lot9;->h(Ljava/lang/String;Lux6;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lym;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lym;-><init>(Lzm;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lio1;->addOnContextAvailableListener(Lbt5;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio1;->initializeViewTreeOwners()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lfo;->w()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lfo;->R:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const v1, 0x1020002

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lfo;->x:Lxn;

    .line 28
    .line 29
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lxn;->a(Landroid/view/Window$Callback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfo;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lfo;->f0:Z

    .line 9
    .line 10
    iget v2, v0, Lfo;->j0:I

    .line 11
    .line 12
    const/16 v3, -0x64

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v2, Lnn;->b:I

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1, v2}, Lfo;->C(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1}, Lnn;->c(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_7

    .line 29
    .line 30
    invoke-static {p1}, Lnn;->c(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v4, 0x21

    .line 40
    .line 41
    if-lt v2, v4, :cond_2

    .line 42
    .line 43
    sget-boolean v2, Lnn;->f:Z

    .line 44
    .line 45
    if-nez v2, :cond_7

    .line 46
    .line 47
    sget-object v2, Lnn;->a:Lmn;

    .line 48
    .line 49
    new-instance v4, Lin;

    .line 50
    .line 51
    invoke-direct {v4, p1, v3}, Lin;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lmn;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_2
    sget-object v2, Lnn;->p:Ljava/lang/Object;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v4, Lnn;->c:Lh05;

    .line 62
    .line 63
    if-nez v4, :cond_5

    .line 64
    .line 65
    sget-object v4, Lnn;->d:Lh05;

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Liz1;->x(Landroid/content/Context;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Lh05;->a(Ljava/lang/String;)Lh05;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    sput-object v4, Lnn;->d:Lh05;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_1
    sget-object v4, Lnn;->d:Lh05;

    .line 83
    .line 84
    iget-object v4, v4, Lh05;->a:Li05;

    .line 85
    .line 86
    iget-object v4, v4, Li05;->a:Landroid/os/LocaleList;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    monitor-exit v2

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    sget-object v4, Lnn;->d:Lh05;

    .line 97
    .line 98
    sput-object v4, Lnn;->c:Lh05;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    sget-object v5, Lnn;->d:Lh05;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lh05;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_6

    .line 108
    .line 109
    sget-object v4, Lnn;->c:Lh05;

    .line 110
    .line 111
    sput-object v4, Lnn;->d:Lh05;

    .line 112
    .line 113
    iget-object v4, v4, Lh05;->a:Li05;

    .line 114
    .line 115
    iget-object v4, v4, Li05;->a:Landroid/os/LocaleList;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {p1, v4}, Liz1;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_2
    monitor-exit v2

    .line 125
    goto :goto_4

    .line 126
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0

    .line 128
    :cond_7
    :goto_4
    invoke-static {p1}, Lfo;->p(Landroid/content/Context;)Lh05;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    instance-of v4, p1, Landroid/view/ContextThemeWrapper;

    .line 133
    .line 134
    const/4 v5, 0x0

    .line 135
    if-eqz v4, :cond_8

    .line 136
    .line 137
    invoke-static {p1, v0, v2, v5, v3}, Lfo;->t(Landroid/content/Context;ILh05;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    :try_start_1
    move-object v6, p1

    .line 142
    check-cast v6, Landroid/view/ContextThemeWrapper;

    .line 143
    .line 144
    invoke-virtual {v6, v4}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto/16 :goto_b

    .line 148
    .line 149
    :catch_0
    :cond_8
    instance-of v4, p1, Lhv1;

    .line 150
    .line 151
    if-eqz v4, :cond_9

    .line 152
    .line 153
    invoke-static {p1, v0, v2, v5, v3}, Lfo;->t(Landroid/content/Context;ILh05;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :try_start_2
    move-object v4, p1

    .line 158
    check-cast v4, Lhv1;

    .line 159
    .line 160
    invoke-virtual {v4, v3}, Lhv1;->a(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .line 162
    .line 163
    goto/16 :goto_b

    .line 164
    .line 165
    :catch_1
    :cond_9
    sget-boolean v3, Lfo;->A0:Z

    .line 166
    .line 167
    if-nez v3, :cond_a

    .line 168
    .line 169
    goto/16 :goto_b

    .line 170
    .line 171
    :cond_a
    new-instance v3, Landroid/content/res/Configuration;

    .line 172
    .line 173
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 174
    .line 175
    .line 176
    const/4 v4, -0x1

    .line 177
    iput v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 178
    .line 179
    const/4 v4, 0x0

    .line 180
    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 203
    .line 204
    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 205
    .line 206
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_20

    .line 211
    .line 212
    new-instance v7, Landroid/content/res/Configuration;

    .line 213
    .line 214
    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 215
    .line 216
    .line 217
    iput v4, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 218
    .line 219
    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_b

    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_b
    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 228
    .line 229
    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 230
    .line 231
    cmpl-float v4, v4, v8

    .line 232
    .line 233
    if-eqz v4, :cond_c

    .line 234
    .line 235
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 236
    .line 237
    :cond_c
    iget v4, v3, Landroid/content/res/Configuration;->mcc:I

    .line 238
    .line 239
    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    .line 240
    .line 241
    if-eq v4, v8, :cond_d

    .line 242
    .line 243
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 244
    .line 245
    :cond_d
    iget v4, v3, Landroid/content/res/Configuration;->mnc:I

    .line 246
    .line 247
    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    .line 248
    .line 249
    if-eq v4, v8, :cond_e

    .line 250
    .line 251
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    .line 252
    .line 253
    :cond_e
    invoke-static {v3, v6, v7}, Lun;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 254
    .line 255
    .line 256
    iget v4, v3, Landroid/content/res/Configuration;->touchscreen:I

    .line 257
    .line 258
    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    .line 259
    .line 260
    if-eq v4, v8, :cond_f

    .line 261
    .line 262
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 263
    .line 264
    :cond_f
    iget v4, v3, Landroid/content/res/Configuration;->keyboard:I

    .line 265
    .line 266
    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    .line 267
    .line 268
    if-eq v4, v8, :cond_10

    .line 269
    .line 270
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 271
    .line 272
    :cond_10
    iget v4, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 273
    .line 274
    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 275
    .line 276
    if-eq v4, v8, :cond_11

    .line 277
    .line 278
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 279
    .line 280
    :cond_11
    iget v4, v3, Landroid/content/res/Configuration;->navigation:I

    .line 281
    .line 282
    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    .line 283
    .line 284
    if-eq v4, v8, :cond_12

    .line 285
    .line 286
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 287
    .line 288
    :cond_12
    iget v4, v3, Landroid/content/res/Configuration;->navigationHidden:I

    .line 289
    .line 290
    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    .line 291
    .line 292
    if-eq v4, v8, :cond_13

    .line 293
    .line 294
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 295
    .line 296
    :cond_13
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 297
    .line 298
    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    .line 299
    .line 300
    if-eq v4, v8, :cond_14

    .line 301
    .line 302
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 303
    .line 304
    :cond_14
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 305
    .line 306
    and-int/lit8 v4, v4, 0xf

    .line 307
    .line 308
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 309
    .line 310
    and-int/lit8 v8, v8, 0xf

    .line 311
    .line 312
    if-eq v4, v8, :cond_15

    .line 313
    .line 314
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 315
    .line 316
    or-int/2addr v4, v8

    .line 317
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 318
    .line 319
    :cond_15
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 320
    .line 321
    and-int/lit16 v4, v4, 0xc0

    .line 322
    .line 323
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 324
    .line 325
    and-int/lit16 v8, v8, 0xc0

    .line 326
    .line 327
    if-eq v4, v8, :cond_16

    .line 328
    .line 329
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 330
    .line 331
    or-int/2addr v4, v8

    .line 332
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 333
    .line 334
    :cond_16
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 335
    .line 336
    and-int/lit8 v4, v4, 0x30

    .line 337
    .line 338
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 339
    .line 340
    and-int/lit8 v8, v8, 0x30

    .line 341
    .line 342
    if-eq v4, v8, :cond_17

    .line 343
    .line 344
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    or-int/2addr v4, v8

    .line 347
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 348
    .line 349
    :cond_17
    iget v4, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 350
    .line 351
    and-int/lit16 v4, v4, 0x300

    .line 352
    .line 353
    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    .line 354
    .line 355
    and-int/lit16 v8, v8, 0x300

    .line 356
    .line 357
    if-eq v4, v8, :cond_18

    .line 358
    .line 359
    iget v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 360
    .line 361
    or-int/2addr v4, v8

    .line 362
    iput v4, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 363
    .line 364
    :cond_18
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 365
    .line 366
    and-int/lit8 v4, v4, 0x3

    .line 367
    .line 368
    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 369
    .line 370
    and-int/lit8 v8, v8, 0x3

    .line 371
    .line 372
    if-eq v4, v8, :cond_19

    .line 373
    .line 374
    iget v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 375
    .line 376
    or-int/2addr v4, v8

    .line 377
    iput v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 378
    .line 379
    :cond_19
    iget v4, v3, Landroid/content/res/Configuration;->colorMode:I

    .line 380
    .line 381
    and-int/lit8 v4, v4, 0xc

    .line 382
    .line 383
    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    .line 384
    .line 385
    and-int/lit8 v8, v8, 0xc

    .line 386
    .line 387
    if-eq v4, v8, :cond_1a

    .line 388
    .line 389
    iget v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 390
    .line 391
    or-int/2addr v4, v8

    .line 392
    iput v4, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 393
    .line 394
    :cond_1a
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 395
    .line 396
    and-int/lit8 v4, v4, 0xf

    .line 397
    .line 398
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 399
    .line 400
    and-int/lit8 v8, v8, 0xf

    .line 401
    .line 402
    if-eq v4, v8, :cond_1b

    .line 403
    .line 404
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 405
    .line 406
    or-int/2addr v4, v8

    .line 407
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 408
    .line 409
    :cond_1b
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 410
    .line 411
    and-int/lit8 v4, v4, 0x30

    .line 412
    .line 413
    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 414
    .line 415
    and-int/lit8 v8, v8, 0x30

    .line 416
    .line 417
    if-eq v4, v8, :cond_1c

    .line 418
    .line 419
    iget v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 420
    .line 421
    or-int/2addr v4, v8

    .line 422
    iput v4, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 423
    .line 424
    :cond_1c
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 425
    .line 426
    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 427
    .line 428
    if-eq v4, v8, :cond_1d

    .line 429
    .line 430
    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 431
    .line 432
    :cond_1d
    iget v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 433
    .line 434
    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 435
    .line 436
    if-eq v4, v8, :cond_1e

    .line 437
    .line 438
    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 439
    .line 440
    :cond_1e
    iget v4, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 441
    .line 442
    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 443
    .line 444
    if-eq v4, v8, :cond_1f

    .line 445
    .line 446
    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 447
    .line 448
    :cond_1f
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 449
    .line 450
    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 451
    .line 452
    if-eq v3, v4, :cond_21

    .line 453
    .line 454
    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_20
    move-object v7, v5

    .line 458
    :cond_21
    :goto_5
    invoke-static {p1, v0, v2, v7, v1}, Lfo;->t(Landroid/content/Context;ILh05;Landroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    new-instance v2, Lhv1;

    .line 463
    .line 464
    const v3, 0x7f14034c

    .line 465
    .line 466
    .line 467
    invoke-direct {v2, p1, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v0}, Lhv1;->a(Landroid/content/res/Configuration;)V

    .line 471
    .line 472
    .line 473
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 474
    .line 475
    .line 476
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5

    .line 477
    if-eqz p1, :cond_25

    .line 478
    .line 479
    invoke-virtual {v2}, Lhv1;->getTheme()Landroid/content/res/Resources$Theme;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 484
    .line 485
    const/16 v3, 0x1d

    .line 486
    .line 487
    if-lt v0, v3, :cond_22

    .line 488
    .line 489
    invoke-static {p1}, Ldu;->h(Landroid/content/res/Resources$Theme;)V

    .line 490
    .line 491
    .line 492
    goto :goto_a

    .line 493
    :cond_22
    sget-object v0, Lxh8;->k:Ljava/lang/Object;

    .line 494
    .line 495
    monitor-enter v0

    .line 496
    :try_start_4
    sget-boolean v3, Lxh8;->p:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 497
    .line 498
    if-nez v3, :cond_23

    .line 499
    .line 500
    :try_start_5
    const-class v3, Landroid/content/res/Resources$Theme;

    .line 501
    .line 502
    const-string v4, "rebase"

    .line 503
    .line 504
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    sput-object v3, Lxh8;->n:Ljava/lang/reflect/Method;

    .line 509
    .line 510
    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 511
    .line 512
    .line 513
    goto :goto_6

    .line 514
    :catchall_1
    move-exception p0

    .line 515
    goto :goto_9

    .line 516
    :catch_2
    move-exception v3

    .line 517
    :try_start_6
    const-string v4, "ResourcesCompat"

    .line 518
    .line 519
    const-string v6, "Failed to retrieve rebase() method"

    .line 520
    .line 521
    invoke-static {v4, v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .line 523
    .line 524
    :goto_6
    sput-boolean v1, Lxh8;->p:Z

    .line 525
    .line 526
    :cond_23
    sget-object v1, Lxh8;->n:Ljava/lang/reflect/Method;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 527
    .line 528
    if-eqz v1, :cond_24

    .line 529
    .line 530
    :try_start_7
    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 531
    .line 532
    .line 533
    goto :goto_8

    .line 534
    :catch_3
    move-exception p1

    .line 535
    goto :goto_7

    .line 536
    :catch_4
    move-exception p1

    .line 537
    :goto_7
    :try_start_8
    const-string v1, "ResourcesCompat"

    .line 538
    .line 539
    const-string v3, "Failed to invoke rebase() method via reflection"

    .line 540
    .line 541
    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .line 543
    .line 544
    sput-object v5, Lxh8;->n:Ljava/lang/reflect/Method;

    .line 545
    .line 546
    :cond_24
    :goto_8
    monitor-exit v0

    .line 547
    goto :goto_a

    .line 548
    :goto_9
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 549
    throw p0

    .line 550
    :catch_5
    :cond_25
    :goto_a
    move-object p1, v2

    .line 551
    :goto_b
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 552
    .line 553
    .line 554
    return-void
.end method

.method public final closeOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lnc8;->i()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x52

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lnc8;->S(Landroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lho1;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Lfo;->w()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lfo;->t:Landroid/view/Window;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getDelegate()Lnn;
    .locals 2

    .line 1
    iget-object v0, p0, Lzm;->mDelegate:Lfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lnn;->a:Lmn;

    .line 6
    .line 7
    new-instance v0, Lfo;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1, p0, p0}, Lfo;-><init>(Landroid/content/Context;Landroid/view/Window;Ldn;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lzm;->mDelegate:Lfo;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lzm;->mDelegate:Lfo;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfo;

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->G:Lks7;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lfo;->A()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lks7;

    .line 15
    .line 16
    iget-object v1, p0, Lfo;->y:Lnc8;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lnc8;->C()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lfo;->r:Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v0, v1}, Lks7;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lfo;->G:Lks7;

    .line 31
    .line 32
    :cond_1
    iget-object p0, p0, Lfo;->G:Lks7;

    .line 33
    .line 34
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    sget v0, Lsj8;->a:I

    .line 2
    .line 3
    invoke-super {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSupportActionBar()Lnc8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Lfo;->A()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 11
    .line 12
    return-object p0
.end method

.method public final invalidateOptionsMenu()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lnn;->b()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lio1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    iget-boolean p1, p0, Lfo;->W:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lfo;->Q:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lfo;->A()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lfo;->y:Lnc8;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lnc8;->N()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Ljo;->a()Ljo;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_0
    iget-object v1, p1, Ljo;->a:Lyl6;

    .line 36
    .line 37
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v2, v1, Lyl6;->b:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lv15;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lv15;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit p1

    .line 56
    new-instance p1, Landroid/content/res/Configuration;

    .line 57
    .line 58
    iget-object v0, p0, Lfo;->r:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lfo;->i0:Landroid/content/res/Configuration;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1, p1}, Lfo;->n(ZZ)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    throw p0

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    throw p0
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lnn;->f()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/u;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const v1, 0x102002c

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne p2, v1, :cond_7

    .line 23
    .line 24
    if-eqz p1, :cond_7

    .line 25
    .line 26
    invoke-virtual {p1}, Lnc8;->B()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    and-int/lit8 p1, p1, 0x4

    .line 31
    .line 32
    if-eqz p1, :cond_7

    .line 33
    .line 34
    invoke-static {p0}, Lrs9;->h(Lzm;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_7

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lrs9;->h(Lzm;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    invoke-static {p0}, Lrs9;->h(Lzm;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :cond_1
    if-eqz p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    :try_start_0
    invoke-static {p0, v1}, Lrs9;->i(Lzm;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_0
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {p0, v1}, Lrs9;->i(Lzm;Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception p0

    .line 104
    const-string p1, "TaskStackBuilder"

    .line 105
    .line 106
    const-string p2, "Bad ComponentName while traversing activity parent metadata"

    .line 107
    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_5

    .line 122
    .line 123
    new-array p2, v2, [Landroid/content/Intent;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, [Landroid/content/Intent;

    .line 130
    .line 131
    new-instance p2, Landroid/content/Intent;

    .line 132
    .line 133
    aget-object v1, p1, v2

    .line 134
    .line 135
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 136
    .line 137
    .line 138
    const v1, 0x1000c000

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    aput-object p2, p1, v2

    .line 146
    .line 147
    const/4 p2, 0x0

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 149
    .line 150
    .line 151
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 156
    .line 157
    .line 158
    :goto_2
    return v0

    .line 159
    :cond_5
    const-string p0, "No intents added to TaskStackBuilder; cannot startActivities"

    .line 160
    .line 161
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return v2

    .line 165
    :cond_6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    .line 166
    .line 167
    .line 168
    return v0

    .line 169
    :cond_7
    return v2
.end method

.method public final onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lfo;->w()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onPostResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onPostResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lfo;->A()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lnc8;->c0(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Lfo;->n(ZZ)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/u;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lfo;->A()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lfo;->y:Lnc8;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lnc8;->c0(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lnn;->l(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openOptionsMenu()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lnc8;->U()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio1;->initializeViewTreeOwners()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lnn;->i(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lio1;->initializeViewTreeOwners()V

    .line 13
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnn;->j(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lio1;->initializeViewTreeOwners()V

    .line 15
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnn;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lfo;

    .line 6
    .line 7
    iget-object v0, p0, Lfo;->q:Ljava/lang/Object;

    .line 8
    .line 9
    instance-of v0, v0, Landroid/app/Activity;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lfo;->A()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lfo;->y:Lnc8;

    .line 18
    .line 19
    instance-of v1, v0, Lou8;

    .line 20
    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lfo;->G:Lks7;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lnc8;->O()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-object v1, p0, Lfo;->y:Lnc8;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    new-instance v0, Lo88;

    .line 36
    .line 37
    iget-object v1, p0, Lfo;->q:Ljava/lang/Object;

    .line 38
    .line 39
    instance-of v2, v1, Landroid/app/Activity;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    check-cast v1, Landroid/app/Activity;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lfo;->H:Ljava/lang/CharSequence;

    .line 51
    .line 52
    :goto_0
    iget-object v2, p0, Lfo;->x:Lxn;

    .line 53
    .line 54
    invoke-direct {v0, p1, v1, v2}, Lo88;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Lxn;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lfo;->y:Lnc8;

    .line 58
    .line 59
    iget-object v1, p0, Lfo;->x:Lxn;

    .line 60
    .line 61
    iget-object v0, v0, Lo88;->g:Ltr9;

    .line 62
    .line 63
    iput-object v0, v1, Lxn;->b:Ltr9;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lfo;->x:Lxn;

    .line 71
    .line 72
    iput-object v1, p1, Lxn;->b:Ltr9;

    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Lfo;->b()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    const-string p0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    .line 79
    .line 80
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final setTheme(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getDelegate()Lnn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lfo;

    .line 9
    .line 10
    iput p1, p0, Lfo;->k0:I

    .line 11
    .line 12
    return-void
.end method
