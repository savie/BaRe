.class public final Lyk0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lxk0;

.field public final b:Lxk0;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxk0;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lxk0;

    .line 5
    .line 6
    invoke-direct {v0}, Lxk0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyk0;->b:Lxk0;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Lxk0;

    .line 14
    .line 15
    invoke-direct {p2}, Lxk0;-><init>()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v1, p2, Lxk0;->a:I

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    const-string v4, "badge"

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eq v6, v0, :cond_2

    .line 40
    .line 41
    if-ne v6, v2, :cond_1

    .line 42
    .line 43
    :cond_2
    if-ne v6, v0, :cond_4

    .line 44
    .line 45
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 56
    .line 57
    .line 58
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_0
    move-object v5, v1

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :goto_1
    move-object p0, v0

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :try_start_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p2, "Must have a <"

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p2, "> start tag"

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 99
    .line 100
    const-string p1, "No start tag found"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    :goto_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v0, "Can\'t load badge resource ID #0x"

    .line 111
    .line 112
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_5
    const/4 v1, 0x0

    .line 134
    move v4, v3

    .line 135
    goto :goto_0

    .line 136
    :goto_3
    if-nez v4, :cond_6

    .line 137
    .line 138
    const v4, 0x7f140634

    .line 139
    .line 140
    .line 141
    :cond_6
    move v8, v4

    .line 142
    sget-object v6, Ltd6;->c:[I

    .line 143
    .line 144
    new-array v9, v3, [I

    .line 145
    .line 146
    const v7, 0x7f040065

    .line 147
    .line 148
    .line 149
    move-object v4, p1

    .line 150
    invoke-static/range {v4 .. v9}, Ljd4;->B(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const/4 v5, 0x5

    .line 159
    const/4 v6, -0x1

    .line 160
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    int-to-float v5, v5

    .line 165
    iput v5, p0, Lyk0;->c:F

    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const v7, 0x7f0703bf

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    iput v5, p0, Lyk0;->i:I

    .line 179
    .line 180
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const v7, 0x7f0703c2

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    iput v5, p0, Lyk0;->j:I

    .line 192
    .line 193
    const/16 v5, 0xf

    .line 194
    .line 195
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    int-to-float v5, v5

    .line 200
    iput v5, p0, Lyk0;->d:F

    .line 201
    .line 202
    const/16 v5, 0xd

    .line 203
    .line 204
    const v7, 0x7f0700ea

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    iput v5, p0, Lyk0;->e:F

    .line 216
    .line 217
    const/16 v5, 0x12

    .line 218
    .line 219
    const v8, 0x7f0700ee

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    invoke-virtual {p1, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    iput v5, p0, Lyk0;->g:F

    .line 231
    .line 232
    const/4 v5, 0x4

    .line 233
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    iput v5, p0, Lyk0;->f:F

    .line 242
    .line 243
    const/16 v5, 0xe

    .line 244
    .line 245
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    iput v5, p0, Lyk0;->h:F

    .line 254
    .line 255
    const/16 v5, 0x19

    .line 256
    .line 257
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    iput v5, p0, Lyk0;->k:I

    .line 262
    .line 263
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    iput v0, p0, Lyk0;->l:I

    .line 268
    .line 269
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 270
    .line 271
    iget v5, p2, Lxk0;->p:I

    .line 272
    .line 273
    const/4 v7, -0x2

    .line 274
    if-ne v5, v7, :cond_7

    .line 275
    .line 276
    const/16 v5, 0xff

    .line 277
    .line 278
    :cond_7
    iput v5, v0, Lxk0;->p:I

    .line 279
    .line 280
    iget v5, p2, Lxk0;->r:I

    .line 281
    .line 282
    if-eq v5, v7, :cond_8

    .line 283
    .line 284
    iput v5, v0, Lxk0;->r:I

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_8
    const/16 v0, 0x18

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    iget-object v8, p0, Lyk0;->b:Lxk0;

    .line 294
    .line 295
    if-eqz v5, :cond_9

    .line 296
    .line 297
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    iput v0, v8, Lxk0;->r:I

    .line 302
    .line 303
    goto :goto_4

    .line 304
    :cond_9
    iput v6, v8, Lxk0;->r:I

    .line 305
    .line 306
    :goto_4
    iget-object v0, p2, Lxk0;->q:Ljava/lang/String;

    .line 307
    .line 308
    if-eqz v0, :cond_a

    .line 309
    .line 310
    iget-object v5, p0, Lyk0;->b:Lxk0;

    .line 311
    .line 312
    iput-object v0, v5, Lxk0;->q:Ljava/lang/String;

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_a
    const/16 v0, 0x8

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_b

    .line 322
    .line 323
    iget-object v5, p0, Lyk0;->b:Lxk0;

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, v5, Lxk0;->q:Ljava/lang/String;

    .line 330
    .line 331
    :cond_b
    :goto_5
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 332
    .line 333
    iget-object v5, p2, Lxk0;->G:Ljava/lang/CharSequence;

    .line 334
    .line 335
    iput-object v5, v0, Lxk0;->G:Ljava/lang/CharSequence;

    .line 336
    .line 337
    iget-object v5, p2, Lxk0;->H:Ljava/lang/CharSequence;

    .line 338
    .line 339
    if-nez v5, :cond_c

    .line 340
    .line 341
    const v5, 0x7f130353

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    :cond_c
    iput-object v5, v0, Lxk0;->H:Ljava/lang/CharSequence;

    .line 349
    .line 350
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 351
    .line 352
    iget v5, p2, Lxk0;->I:I

    .line 353
    .line 354
    if-nez v5, :cond_d

    .line 355
    .line 356
    const v5, 0x7f110001

    .line 357
    .line 358
    .line 359
    :cond_d
    iput v5, v0, Lxk0;->I:I

    .line 360
    .line 361
    iget v5, p2, Lxk0;->J:I

    .line 362
    .line 363
    if-nez v5, :cond_e

    .line 364
    .line 365
    const v5, 0x7f130364

    .line 366
    .line 367
    .line 368
    :cond_e
    iput v5, v0, Lxk0;->J:I

    .line 369
    .line 370
    iget-object v5, p2, Lxk0;->L:Ljava/lang/Boolean;

    .line 371
    .line 372
    if-eqz v5, :cond_10

    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_f

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_f
    move v5, v3

    .line 382
    goto :goto_7

    .line 383
    :cond_10
    :goto_6
    move v5, v2

    .line 384
    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    iput-object v5, v0, Lxk0;->L:Ljava/lang/Boolean;

    .line 389
    .line 390
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 391
    .line 392
    iget v5, p2, Lxk0;->t:I

    .line 393
    .line 394
    if-ne v5, v7, :cond_11

    .line 395
    .line 396
    const/16 v5, 0x16

    .line 397
    .line 398
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    :cond_11
    iput v5, v0, Lxk0;->t:I

    .line 403
    .line 404
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 405
    .line 406
    iget v5, p2, Lxk0;->x:I

    .line 407
    .line 408
    if-ne v5, v7, :cond_12

    .line 409
    .line 410
    const/16 v5, 0x17

    .line 411
    .line 412
    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    :cond_12
    iput v5, v0, Lxk0;->x:I

    .line 417
    .line 418
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 419
    .line 420
    iget-object v5, p2, Lxk0;->e:Ljava/lang/Integer;

    .line 421
    .line 422
    const v6, 0x7f140229

    .line 423
    .line 424
    .line 425
    if-nez v5, :cond_13

    .line 426
    .line 427
    const/4 v5, 0x6

    .line 428
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 429
    .line 430
    .line 431
    move-result v5

    .line 432
    goto :goto_8

    .line 433
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    iput-object v5, v0, Lxk0;->e:Ljava/lang/Integer;

    .line 442
    .line 443
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 444
    .line 445
    iget-object v5, p2, Lxk0;->f:Ljava/lang/Integer;

    .line 446
    .line 447
    if-nez v5, :cond_14

    .line 448
    .line 449
    const/4 v5, 0x7

    .line 450
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    goto :goto_9

    .line 455
    :cond_14
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    :goto_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    iput-object v5, v0, Lxk0;->f:Ljava/lang/Integer;

    .line 464
    .line 465
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 466
    .line 467
    iget-object v5, p2, Lxk0;->k:Ljava/lang/Integer;

    .line 468
    .line 469
    if-nez v5, :cond_15

    .line 470
    .line 471
    const/16 v5, 0x10

    .line 472
    .line 473
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    goto :goto_a

    .line 478
    :cond_15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    iput-object v5, v0, Lxk0;->k:Ljava/lang/Integer;

    .line 487
    .line 488
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 489
    .line 490
    iget-object v5, p2, Lxk0;->n:Ljava/lang/Integer;

    .line 491
    .line 492
    if-nez v5, :cond_16

    .line 493
    .line 494
    const/16 v5, 0x11

    .line 495
    .line 496
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    goto :goto_b

    .line 501
    :cond_16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 502
    .line 503
    .line 504
    move-result v5

    .line 505
    :goto_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    iput-object v5, v0, Lxk0;->n:Ljava/lang/Integer;

    .line 510
    .line 511
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 512
    .line 513
    iget-object v5, p2, Lxk0;->b:Ljava/lang/Integer;

    .line 514
    .line 515
    if-nez v5, :cond_17

    .line 516
    .line 517
    invoke-static {v4, p1, v2}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    goto :goto_c

    .line 526
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v2

    .line 530
    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    iput-object v2, v0, Lxk0;->b:Ljava/lang/Integer;

    .line 535
    .line 536
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 537
    .line 538
    iget-object v2, p2, Lxk0;->d:Ljava/lang/Integer;

    .line 539
    .line 540
    if-nez v2, :cond_18

    .line 541
    .line 542
    const/16 v2, 0x9

    .line 543
    .line 544
    const v5, 0x7f140325

    .line 545
    .line 546
    .line 547
    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    goto :goto_d

    .line 552
    :cond_18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    iput-object v2, v0, Lxk0;->d:Ljava/lang/Integer;

    .line 561
    .line 562
    iget-object v0, p2, Lxk0;->c:Ljava/lang/Integer;

    .line 563
    .line 564
    if-eqz v0, :cond_19

    .line 565
    .line 566
    iget-object v2, p0, Lyk0;->b:Lxk0;

    .line 567
    .line 568
    iput-object v0, v2, Lxk0;->c:Ljava/lang/Integer;

    .line 569
    .line 570
    goto :goto_e

    .line 571
    :cond_19
    const/16 v0, 0xa

    .line 572
    .line 573
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    iget-object v5, p0, Lyk0;->b:Lxk0;

    .line 578
    .line 579
    if-eqz v2, :cond_1a

    .line 580
    .line 581
    invoke-static {v4, p1, v0}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    iput-object v0, v5, Lxk0;->c:Ljava/lang/Integer;

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_1a
    new-instance v0, Lu08;

    .line 597
    .line 598
    iget-object v2, v5, Lxk0;->d:Ljava/lang/Integer;

    .line 599
    .line 600
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    invoke-direct {v0, v4, v2}, Lu08;-><init>(Landroid/content/Context;I)V

    .line 605
    .line 606
    .line 607
    iget-object v2, p0, Lyk0;->b:Lxk0;

    .line 608
    .line 609
    iget-object v0, v0, Lu08;->k:Landroid/content/res/ColorStateList;

    .line 610
    .line 611
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    iput-object v0, v2, Lxk0;->c:Ljava/lang/Integer;

    .line 620
    .line 621
    :goto_e
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 622
    .line 623
    iget-object v2, p2, Lxk0;->K:Ljava/lang/Integer;

    .line 624
    .line 625
    if-nez v2, :cond_1b

    .line 626
    .line 627
    const/4 v2, 0x3

    .line 628
    const v4, 0x800035

    .line 629
    .line 630
    .line 631
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    goto :goto_f

    .line 636
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    iput-object v2, v0, Lxk0;->K:Ljava/lang/Integer;

    .line 645
    .line 646
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 647
    .line 648
    iget-object v2, p2, Lxk0;->M:Ljava/lang/Integer;

    .line 649
    .line 650
    if-nez v2, :cond_1c

    .line 651
    .line 652
    const v2, 0x7f0703c0

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    const/16 v4, 0xc

    .line 660
    .line 661
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    goto :goto_10

    .line 666
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    iput-object v2, v0, Lxk0;->M:Ljava/lang/Integer;

    .line 675
    .line 676
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 677
    .line 678
    iget-object v2, p2, Lxk0;->N:Ljava/lang/Integer;

    .line 679
    .line 680
    if-nez v2, :cond_1d

    .line 681
    .line 682
    const v2, 0x7f0700f0

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    const/16 v2, 0xb

    .line 690
    .line 691
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    goto :goto_11

    .line 696
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 697
    .line 698
    .line 699
    move-result v1

    .line 700
    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    iput-object v1, v0, Lxk0;->N:Ljava/lang/Integer;

    .line 705
    .line 706
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 707
    .line 708
    iget-object v1, p2, Lxk0;->O:Ljava/lang/Integer;

    .line 709
    .line 710
    if-nez v1, :cond_1e

    .line 711
    .line 712
    const/16 v1, 0x13

    .line 713
    .line 714
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    goto :goto_12

    .line 719
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 720
    .line 721
    .line 722
    move-result v1

    .line 723
    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    iput-object v1, v0, Lxk0;->O:Ljava/lang/Integer;

    .line 728
    .line 729
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 730
    .line 731
    iget-object v1, p2, Lxk0;->P:Ljava/lang/Integer;

    .line 732
    .line 733
    if-nez v1, :cond_1f

    .line 734
    .line 735
    const/16 v1, 0x1a

    .line 736
    .line 737
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 738
    .line 739
    .line 740
    move-result v1

    .line 741
    goto :goto_13

    .line 742
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 743
    .line 744
    .line 745
    move-result v1

    .line 746
    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    iput-object v1, v0, Lxk0;->P:Ljava/lang/Integer;

    .line 751
    .line 752
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 753
    .line 754
    iget-object v1, p2, Lxk0;->Q:Ljava/lang/Integer;

    .line 755
    .line 756
    if-nez v1, :cond_20

    .line 757
    .line 758
    iget-object v1, v0, Lxk0;->O:Ljava/lang/Integer;

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    const/16 v2, 0x14

    .line 765
    .line 766
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    goto :goto_14

    .line 771
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    iput-object v1, v0, Lxk0;->Q:Ljava/lang/Integer;

    .line 780
    .line 781
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 782
    .line 783
    iget-object v1, p2, Lxk0;->R:Ljava/lang/Integer;

    .line 784
    .line 785
    if-nez v1, :cond_21

    .line 786
    .line 787
    iget-object v1, v0, Lxk0;->P:Ljava/lang/Integer;

    .line 788
    .line 789
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    const/16 v2, 0x1b

    .line 794
    .line 795
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    goto :goto_15

    .line 800
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 801
    .line 802
    .line 803
    move-result v1

    .line 804
    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    iput-object v1, v0, Lxk0;->R:Ljava/lang/Integer;

    .line 809
    .line 810
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 811
    .line 812
    iget-object v1, p2, Lxk0;->U:Ljava/lang/Integer;

    .line 813
    .line 814
    if-nez v1, :cond_22

    .line 815
    .line 816
    const/16 v1, 0x15

    .line 817
    .line 818
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    goto :goto_16

    .line 823
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 824
    .line 825
    .line 826
    move-result v1

    .line 827
    :goto_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    iput-object v1, v0, Lxk0;->U:Ljava/lang/Integer;

    .line 832
    .line 833
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 834
    .line 835
    iget-object v1, p2, Lxk0;->S:Ljava/lang/Integer;

    .line 836
    .line 837
    if-nez v1, :cond_23

    .line 838
    .line 839
    move v1, v3

    .line 840
    goto :goto_17

    .line 841
    :cond_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    iput-object v1, v0, Lxk0;->S:Ljava/lang/Integer;

    .line 850
    .line 851
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 852
    .line 853
    iget-object v1, p2, Lxk0;->T:Ljava/lang/Integer;

    .line 854
    .line 855
    if-nez v1, :cond_24

    .line 856
    .line 857
    move v1, v3

    .line 858
    goto :goto_18

    .line 859
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    iput-object v1, v0, Lxk0;->T:Ljava/lang/Integer;

    .line 868
    .line 869
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 870
    .line 871
    iget-object v1, p2, Lxk0;->V:Ljava/lang/Boolean;

    .line 872
    .line 873
    if-nez v1, :cond_25

    .line 874
    .line 875
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    goto :goto_19

    .line 880
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    :goto_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    iput-object v1, v0, Lxk0;->V:Ljava/lang/Boolean;

    .line 889
    .line 890
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 891
    .line 892
    .line 893
    iget-object p1, p2, Lxk0;->y:Ljava/util/Locale;

    .line 894
    .line 895
    iget-object v0, p0, Lyk0;->b:Lxk0;

    .line 896
    .line 897
    if-nez p1, :cond_26

    .line 898
    .line 899
    sget-object p1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 900
    .line 901
    invoke-static {p1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    iput-object p1, v0, Lxk0;->y:Ljava/util/Locale;

    .line 906
    .line 907
    goto :goto_1a

    .line 908
    :cond_26
    iput-object p1, v0, Lxk0;->y:Ljava/util/Locale;

    .line 909
    .line 910
    :goto_1a
    iput-object p2, p0, Lyk0;->a:Lxk0;

    .line 911
    .line 912
    return-void
.end method
