.class public Lcom/ferfalk/simplesearchview/SimpleSearchView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final G:Landroid/widget/ImageButton;

.field public final H:Landroid/view/View;

.field public I:Lcom/google/android/material/tabs/TabLayout;

.field public J:I

.field public K:Lug7;

.field public L:Lwg7;

.field public M:Z

.field public N:Z

.field public final a:Landroid/content/Context;

.field public b:I

.field public c:Landroid/graphics/Point;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/String;

.field public final f:Z

.field public k:Z

.field public n:Z

.field public p:Ljava/lang/String;

.field public q:I

.field public final r:Landroid/view/ViewGroup;

.field public final t:Landroid/widget/EditText;

.field public final x:Landroid/widget/ImageButton;

.field public final y:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, p1, p2, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xfa

    .line 5
    .line 6
    iput v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->f:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->n:Z

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->p:Ljava/lang/String;

    .line 18
    .line 19
    iput v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->q:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->N:Z

    .line 24
    .line 25
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0d016b

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a042f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/view/ViewGroup;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->r:Landroid/view/ViewGroup;

    .line 48
    .line 49
    const v1, 0x7f0a0430

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/EditText;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 59
    .line 60
    const v1, 0x7f0a013a

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/ImageButton;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->x:Landroid/widget/ImageButton;

    .line 70
    .line 71
    const v1, 0x7f0a013b

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/ImageButton;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 81
    .line 82
    const v1, 0x7f0a013d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/ImageButton;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 92
    .line 93
    const v1, 0x7f0a00cf

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->H:Landroid/view/View;

    .line 101
    .line 102
    sget-object v1, Lrd6;->a:[I

    .line 103
    .line 104
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const/4 p3, 0x2

    .line 109
    const/16 v1, 0xf

    .line 110
    .line 111
    const/16 v2, 0xb

    .line 112
    .line 113
    const/4 v4, 0x4

    .line 114
    if-nez p2, :cond_0

    .line 115
    .line 116
    iget p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->q:I

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setCardStyle(I)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :cond_0
    const/16 v5, 0xd

    .line 124
    .line 125
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_1

    .line 130
    .line 131
    iget v6, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->q:I

    .line 132
    .line 133
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {p0, v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setCardStyle(I)V

    .line 138
    .line 139
    .line 140
    :cond_1
    const/4 v5, 0x3

    .line 141
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_2

    .line 146
    .line 147
    const v6, 0x3f5eb852    # 0.87f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-virtual {p0, v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconAlpha(F)V

    .line 155
    .line 156
    .line 157
    :cond_2
    const/4 v5, 0x7

    .line 158
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_3

    .line 163
    .line 164
    const v6, 0x3f0a3d71    # 0.54f

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {p0, v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setIconsAlpha(F)V

    .line 172
    .line 173
    .line 174
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_4

    .line 179
    .line 180
    new-instance v5, Landroid/util/TypedValue;

    .line 181
    .line 182
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const v7, 0x7f04014a

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 193
    .line 194
    .line 195
    iget v5, v5, Landroid/util/TypedValue;->data:I

    .line 196
    .line 197
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {p0, v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconColor(I)V

    .line 202
    .line 203
    .line 204
    :cond_4
    const/16 v5, 0x8

    .line 205
    .line 206
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    const/high16 v6, -0x1000000

    .line 213
    .line 214
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    invoke-virtual {p0, v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setIconsColor(I)V

    .line 219
    .line 220
    .line 221
    :cond_5
    const/4 v5, 0x5

    .line 222
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_6

    .line 227
    .line 228
    new-instance v6, Landroid/util/TypedValue;

    .line 229
    .line 230
    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const v7, 0x7f04011e

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v7, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 241
    .line 242
    .line 243
    iget p1, v6, Landroid/util/TypedValue;->data:I

    .line 244
    .line 245
    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setCursorColor(I)V

    .line 250
    .line 251
    .line 252
    :cond_6
    const/4 p1, 0x6

    .line 253
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_7

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    const v6, 0x7f06008d

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setHintTextColor(I)V

    .line 275
    .line 276
    .line 277
    :cond_7
    const/16 p1, 0xa

    .line 278
    .line 279
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_8

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setSearchBackground(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .line 291
    .line 292
    :cond_8
    const/16 p1, 0x9

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_9

    .line 299
    .line 300
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    .line 306
    .line 307
    :cond_9
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    if-eqz p1, :cond_a

    .line 312
    .line 313
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setClearIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    .line 319
    .line 320
    :cond_a
    const/16 p1, 0xc

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_b

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVoiceIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    .line 334
    .line 335
    :cond_b
    const/16 p1, 0xe

    .line 336
    .line 337
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_c

    .line 342
    .line 343
    iget-boolean v5, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->f:Z

    .line 344
    .line 345
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->f:Z

    .line 350
    .line 351
    :cond_c
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    if-eqz p1, :cond_d

    .line 356
    .line 357
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVoiceSearchPrompt(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    :cond_d
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-eqz p1, :cond_e

    .line 369
    .line 370
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    :cond_e
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    if-eqz p1, :cond_f

    .line 382
    .line 383
    const/high16 p1, 0x80000

    .line 384
    .line 385
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setInputType(I)V

    .line 390
    .line 391
    .line 392
    :cond_f
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_10

    .line 397
    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    const v5, 0x7f06008c

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setTextColor(I)V

    .line 414
    .line 415
    .line 416
    :cond_10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    .line 418
    .line 419
    :goto_0
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 420
    .line 421
    new-instance p2, Log7;

    .line 422
    .line 423
    invoke-direct {p2, p0}, Log7;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 430
    .line 431
    new-instance p2, Lk52;

    .line 432
    .line 433
    invoke-direct {p2, p0, p3}, Lk52;-><init>(Ljava/lang/Object;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 437
    .line 438
    .line 439
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 440
    .line 441
    new-instance p2, Lpg7;

    .line 442
    .line 443
    invoke-direct {p2, p0}, Lpg7;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 447
    .line 448
    .line 449
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->x:Landroid/widget/ImageButton;

    .line 450
    .line 451
    new-instance p2, Lnf;

    .line 452
    .line 453
    invoke-direct {p2, p0, v2}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 460
    .line 461
    new-instance p2, Lg7;

    .line 462
    .line 463
    invoke-direct {p2, p0, v1}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    .line 468
    .line 469
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 470
    .line 471
    new-instance p2, Lh7;

    .line 472
    .line 473
    invoke-direct {p2, p0, v1}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0, v3}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c(Z)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    if-nez p1, :cond_11

    .line 487
    .line 488
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .line 490
    .line 491
    :cond_11
    return-void
.end method

.method private getCardStyleBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {p0, v1}, Ltu0;->c(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    int-to-float p0, p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->M:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->clearFocus()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    new-instance v1, Lrg7;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getRevealAnimationCenter()Landroid/graphics/Point;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    new-instance v3, Landroid/graphics/Point;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    div-int/lit8 v5, v5, 0x2

    .line 50
    .line 51
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 55
    .line 56
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 57
    .line 58
    invoke-static {v3, p0}, Lk55;->r(Landroid/graphics/Point;Lcom/ferfalk/simplesearchview/SimpleSearchView;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    const/4 v6, 0x0

    .line 64
    invoke-static {p0, v4, v5, v3, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lcg7;

    .line 69
    .line 70
    invoke-direct {v4, p0, v1}, Lq44;-><init>(Landroid/view/View;Ljm1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    .line 75
    .line 76
    int-to-long v1, v2

    .line 77
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 78
    .line 79
    .line 80
    new-instance v1, Li53;

    .line 81
    .line 82
    invoke-direct {v1}, Li53;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v1, 0x4

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->I:Lcom/google/android/material/tabs/TabLayout;

    .line 97
    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    if-eqz p1, :cond_4

    .line 102
    .line 103
    iget p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->J:I

    .line 104
    .line 105
    iget v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 106
    .line 107
    invoke-static {v0, p1, v2, v1}, Lk55;->I(IIILandroid/view/View;)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :goto_1
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 119
    .line 120
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->L:Lwg7;

    .line 121
    .line 122
    if-eqz p0, :cond_5

    .line 123
    .line 124
    invoke-interface {p0}, Lwg7;->f()V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->N:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->d:Ljava/lang/CharSequence;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    new-instance v1, Lqg7;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getRevealAnimationCenter()Landroid/graphics/Point;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    new-instance v3, Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    div-int/lit8 v4, v4, 0x2

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    div-int/lit8 v5, v5, 0x2

    .line 52
    .line 53
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 57
    .line 58
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 59
    .line 60
    invoke-static {v3, p0}, Lk55;->r(Landroid/graphics/Point;Lcom/ferfalk/simplesearchview/SimpleSearchView;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    int-to-float v3, v3

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static {p0, v4, v5, v6, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Lbg7;

    .line 71
    .line 72
    invoke-direct {v4, p0, v1}, Lq44;-><init>(Landroid/view/View;Ljm1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    .line 77
    .line 78
    int-to-long v1, v2

    .line 79
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 80
    .line 81
    .line 82
    new-instance v1, Li53;

    .line 83
    .line 84
    invoke-direct {v1}, Li53;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->I:Lcom/google/android/material/tabs/TabLayout;

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    if-eqz p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iget v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 109
    .line 110
    invoke-static {p1, v0, v2, v1}, Lk55;->I(IIILandroid/view/View;)Landroid/animation/ValueAnimator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const/16 p1, 0x8

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    :goto_2
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 125
    .line 126
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->L:Lwg7;

    .line 127
    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    invoke-interface {p0}, Lwg7;->e()V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_3
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    xor-int/2addr v1, p1

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->f:Z

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 49
    .line 50
    const/16 p1, 0x8

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final clearFocus()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->n:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "input_method"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 32
    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->n:Z

    .line 35
    .line 36
    return-void
.end method

.method public getAnimationDuration()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public getCardStyle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public getRevealAnimationCenter()Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c:Landroid/graphics/Point;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x1a

    .line 11
    .line 12
    iget-object v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v2, v1}, Ltu0;->c(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Point;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c:Landroid/graphics/Point;

    .line 31
    .line 32
    return-object v2
.end method

.method public getSearchEditText()Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->I:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lvg7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lvg7;

    .line 10
    .line 11
    iget-object v0, p1, Lvg7;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->d:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget v0, p1, Lvg7;->c:I

    .line 16
    .line 17
    iput v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 18
    .line 19
    iget-object v0, p1, Lvg7;->d:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->p:Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean v0, p1, Lvg7;->e:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->N:Z

    .line 26
    .line 27
    iget-boolean v0, p1, Lvg7;->b:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lvg7;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->d:Ljava/lang/CharSequence;

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lvg7;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->d:Ljava/lang/CharSequence;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-object v0, v1, Lvg7;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->k:Z

    .line 23
    .line 24
    iput-boolean v0, v1, Lvg7;->b:Z

    .line 25
    .line 26
    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 27
    .line 28
    iput v0, v1, Lvg7;->c:I

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->N:Z

    .line 31
    .line 32
    iput-boolean p0, v1, Lvg7;->e:Z

    .line 33
    .line 34
    return-object v1
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setBackIconAlpha(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->x:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBackIconColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->x:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setBackIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->x:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCardStyle(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->q:I

    .line 2
    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget-object v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->r:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eq p1, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->H:Landroid/view/View;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getCardStyleBackground()Landroid/graphics/drawable/GradientDrawable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->H:Landroid/view/View;

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x6

    .line 40
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v1, p1}, Ltu0;->c(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x2

    .line 50
    invoke-static {v1, p1}, Ltu0;->c(Landroid/content/Context;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-float p1, p1

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->r:Landroid/view/ViewGroup;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->r:Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setClearIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCursorColor(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    sget v0, Lho6;->e:I

    .line 4
    .line 5
    const-class v0, Landroid/widget/TextView;

    .line 6
    .line 7
    :try_start_0
    const-string v1, "mCursorDrawableRes"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v3, "mEditor"

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    .line 46
    .line 47
    filled-new-array {p0, p0}, [Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v1, "mCursorDrawable"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string p1, "ho6"

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public setCursorDrawable(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    sget v0, Lho6;->e:I

    .line 4
    .line 5
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "mCursorDrawableRes"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string p1, "ho6"

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHintTextColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIconsAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIconsColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->y:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setInputType(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setKeepQuery(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->N:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMenuItem(Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    new-instance v0, Lm85;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lm85;-><init>(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setOnQueryTextListener(Lug7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->K:Lug7;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSearchViewListener(Lwg7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->L:Lwg7;

    .line 2
    .line 3
    return-void
.end method

.method public setRevealAnimationCenter(Landroid/graphics/Point;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->c:Landroid/graphics/Point;

    .line 2
    .line 3
    return-void
.end method

.method public setSearchBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->r:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTabLayout(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->I:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lsg7;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lsg7;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/google/android/material/tabs/TabLayout;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->I:Lcom/google/android/material/tabs/TabLayout;

    .line 16
    .line 17
    new-instance v0, Ltg7;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ltg7;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->a(Lxv7;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->t:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVoiceIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->G:Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVoiceSearchPrompt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
