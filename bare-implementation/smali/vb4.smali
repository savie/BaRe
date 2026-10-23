.class public final Lvb4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:Lcom/warkiz/widget/ArrowView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/PopupWindow;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:I

.field public final h:I

.field public final i:Landroid/content/Context;

.field public final j:I

.field public final k:Lcom/warkiz/widget/IndicatorSeekBar;

.field public final l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lvb4;->b:[I

    .line 8
    .line 9
    iput-object p1, p0, Lvb4;->i:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 12
    .line 13
    iput p3, p0, Lvb4;->h:I

    .line 14
    .line 15
    iput p4, p0, Lvb4;->j:I

    .line 16
    .line 17
    int-to-float p5, p5

    .line 18
    const-string v0, "window"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/WindowManager;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    iput v0, p0, Lvb4;->a:I

    .line 40
    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    .line 42
    .line 43
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, p0, Lvb4;->g:I

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/high16 v3, 0x3f000000    # 0.5f

    .line 51
    .line 52
    const-string v4, "id"

    .line 53
    .line 54
    const-string v5, "isb_progress"

    .line 55
    .line 56
    const/4 v6, 0x4

    .line 57
    if-ne p4, v6, :cond_3

    .line 58
    .line 59
    if-eqz p7, :cond_2

    .line 60
    .line 61
    iput-object p7, p0, Lvb4;->l:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-virtual {p3, v5, v4, p4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-lez p3, :cond_8

    .line 80
    .line 81
    iget-object p4, p0, Lvb4;->l:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_8

    .line 88
    .line 89
    instance-of p4, p3, Landroid/widget/TextView;

    .line 90
    .line 91
    if-eqz p4, :cond_1

    .line 92
    .line 93
    check-cast p3, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object p3, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 115
    .line 116
    div-float/2addr p5, p1

    .line 117
    add-float/2addr p5, v3

    .line 118
    float-to-int p1, p5

    .line 119
    int-to-float p1, p1

    .line 120
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    .line 122
    .line 123
    iget-object p0, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {p0, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    .line 130
    .line 131
    const-string p1, "the view identified by isb_progress in indicator custom layout can not be cast to TextView"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_2
    const-string p0, "the attr\uff1aindicator_custom_layout must be set while you set the indicator type to CUSTOM."

    .line 138
    .line 139
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v2

    .line 143
    :cond_3
    const/4 p7, 0x1

    .line 144
    if-ne p4, p7, :cond_5

    .line 145
    .line 146
    new-instance p4, La71;

    .line 147
    .line 148
    invoke-direct {p4, p1, v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    .line 150
    .line 151
    iput p6, p4, La71;->a:I

    .line 152
    .line 153
    iput p3, p4, La71;->b:I

    .line 154
    .line 155
    new-instance p3, Landroid/graphics/Paint;

    .line 156
    .line 157
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object p3, p4, La71;->d:Landroid/graphics/Paint;

    .line 161
    .line 162
    invoke-virtual {p3, p7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    .line 164
    .line 165
    iget-object p3, p4, La71;->d:Landroid/graphics/Paint;

    .line 166
    .line 167
    const/high16 p6, 0x3f800000    # 1.0f

    .line 168
    .line 169
    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    .line 171
    .line 172
    iget-object p3, p4, La71;->d:Landroid/graphics/Paint;

    .line 173
    .line 174
    sget-object p6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 175
    .line 176
    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    .line 178
    .line 179
    iget-object p3, p4, La71;->d:Landroid/graphics/Paint;

    .line 180
    .line 181
    invoke-virtual {p3, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    .line 183
    .line 184
    new-instance p3, Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-object p5, p4, La71;->d:Landroid/graphics/Paint;

    .line 190
    .line 191
    const-string p6, "1000"

    .line 192
    .line 193
    invoke-virtual {p5, p6, v1, v6, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 197
    .line 198
    .line 199
    move-result p5

    .line 200
    const/high16 p6, 0x40800000    # 4.0f

    .line 201
    .line 202
    invoke-static {p1, p6}, Ltu0;->j(Landroid/content/Context;F)I

    .line 203
    .line 204
    .line 205
    move-result p6

    .line 206
    add-int/2addr p6, p5

    .line 207
    int-to-float p5, p6

    .line 208
    iput p5, p4, La71;->e:F

    .line 209
    .line 210
    const/high16 p5, 0x42100000    # 36.0f

    .line 211
    .line 212
    invoke-static {p1, p5}, Ltu0;->j(Landroid/content/Context;F)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    iget p5, p4, La71;->e:F

    .line 217
    .line 218
    int-to-float p1, p1

    .line 219
    cmpg-float p5, p5, p1

    .line 220
    .line 221
    if-gez p5, :cond_4

    .line 222
    .line 223
    iput p1, p4, La71;->e:F

    .line 224
    .line 225
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    int-to-float p1, p1

    .line 230
    iput p1, p4, La71;->k:F

    .line 231
    .line 232
    iget p1, p4, La71;->e:F

    .line 233
    .line 234
    const p3, 0x3f99999a    # 1.2f

    .line 235
    .line 236
    .line 237
    mul-float/2addr p1, p3

    .line 238
    iput p1, p4, La71;->f:F

    .line 239
    .line 240
    new-instance p1, Landroid/graphics/Path;

    .line 241
    .line 242
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 243
    .line 244
    .line 245
    iput-object p1, p4, La71;->c:Landroid/graphics/Path;

    .line 246
    .line 247
    new-instance p1, Landroid/graphics/RectF;

    .line 248
    .line 249
    const/4 p3, 0x0

    .line 250
    iget p5, p4, La71;->e:F

    .line 251
    .line 252
    invoke-direct {p1, p3, p3, p5, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 253
    .line 254
    .line 255
    iget-object p3, p4, La71;->c:Landroid/graphics/Path;

    .line 256
    .line 257
    const/high16 p5, 0x43070000    # 135.0f

    .line 258
    .line 259
    const/high16 p6, 0x43870000    # 270.0f

    .line 260
    .line 261
    invoke-virtual {p3, p1, p5, p6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p4, La71;->c:Landroid/graphics/Path;

    .line 265
    .line 266
    iget p3, p4, La71;->e:F

    .line 267
    .line 268
    div-float/2addr p3, v0

    .line 269
    iget p5, p4, La71;->f:F

    .line 270
    .line 271
    invoke-virtual {p1, p3, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p4, La71;->c:Landroid/graphics/Path;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 277
    .line 278
    .line 279
    iput-object p4, p0, Lvb4;->l:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p4, p0}, La71;->setProgress(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_5
    const p4, 0x7f0d00d8

    .line 290
    .line 291
    .line 292
    invoke-static {p1, p4, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p4

    .line 296
    iput-object p4, p0, Lvb4;->l:Landroid/view/View;

    .line 297
    .line 298
    const p7, 0x7f0a027b

    .line 299
    .line 300
    .line 301
    invoke-virtual {p4, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object p4

    .line 305
    check-cast p4, Landroid/widget/LinearLayout;

    .line 306
    .line 307
    iput-object p4, p0, Lvb4;->f:Landroid/widget/LinearLayout;

    .line 308
    .line 309
    iget-object p4, p0, Lvb4;->l:Landroid/view/View;

    .line 310
    .line 311
    const p7, 0x7f0a027a

    .line 312
    .line 313
    .line 314
    invoke-virtual {p4, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object p4

    .line 318
    check-cast p4, Lcom/warkiz/widget/ArrowView;

    .line 319
    .line 320
    iput-object p4, p0, Lvb4;->c:Lcom/warkiz/widget/ArrowView;

    .line 321
    .line 322
    invoke-virtual {p4, p3}, Lcom/warkiz/widget/ArrowView;->setColor(I)V

    .line 323
    .line 324
    .line 325
    iget-object p3, p0, Lvb4;->l:Landroid/view/View;

    .line 326
    .line 327
    const p4, 0x7f0a0288

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p3

    .line 334
    check-cast p3, Landroid/widget/TextView;

    .line 335
    .line 336
    iput-object p3, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {p2}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    iget-object p2, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 352
    .line 353
    .line 354
    move-result-object p3

    .line 355
    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 356
    .line 357
    div-float/2addr p5, p3

    .line 358
    add-float/2addr p5, v3

    .line 359
    float-to-int p3, p5

    .line 360
    int-to-float p3, p3

    .line 361
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 362
    .line 363
    .line 364
    iget-object p2, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 365
    .line 366
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    .line 368
    .line 369
    iget-object p2, p0, Lvb4;->f:Landroid/widget/LinearLayout;

    .line 370
    .line 371
    invoke-virtual {p0}, Lvb4;->b()Landroid/graphics/drawable/GradientDrawable;

    .line 372
    .line 373
    .line 374
    move-result-object p3

    .line 375
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 376
    .line 377
    .line 378
    if-eqz p8, :cond_8

    .line 379
    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-virtual {p2, v5, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-lez p1, :cond_7

    .line 397
    .line 398
    invoke-virtual {p8, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    if-eqz p1, :cond_6

    .line 403
    .line 404
    instance-of p2, p1, Landroid/widget/TextView;

    .line 405
    .line 406
    if-eqz p2, :cond_6

    .line 407
    .line 408
    check-cast p1, Landroid/widget/TextView;

    .line 409
    .line 410
    invoke-virtual {p0, p8, p1}, Lvb4;->e(Landroid/view/View;Landroid/widget/TextView;)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :cond_6
    invoke-virtual {p0, p8, v2}, Lvb4;->e(Landroid/view/View;Landroid/widget/TextView;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :cond_7
    invoke-virtual {p0, p8, v2}, Lvb4;->e(Landroid/view/View;Landroid/widget/TextView;)V

    .line 419
    .line 420
    .line 421
    :cond_8
    return-void
.end method

.method public static d(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    .line 23
    :cond_1
    if-ne p2, v1, :cond_2

    .line 24
    .line 25
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    .line 27
    :cond_2
    if-ne p3, v1, :cond_3

    .line 28
    .line 29
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    .line 31
    :cond_3
    if-ne p4, v1, :cond_4

    .line 32
    .line 33
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 34
    .line 35
    :cond_4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 39
    .line 40
    .line 41
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    iget v1, p0, Lvb4;->j:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 11
    .line 12
    iget-object v1, p0, Lvb4;->b:[I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    aget v1, v1, v0

    .line 19
    .line 20
    int-to-float v2, v1

    .line 21
    add-float/2addr v2, p1

    .line 22
    iget-object v3, p0, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    div-int/lit8 v3, v3, 0x2

    .line 33
    .line 34
    int-to-float v3, v3

    .line 35
    cmpg-float v2, v2, v3

    .line 36
    .line 37
    iget-object v3, p0, Lvb4;->c:Lcom/warkiz/widget/ArrowView;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    if-gez v2, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    div-int/lit8 p0, p0, 0x2

    .line 53
    .line 54
    sub-int/2addr p0, v1

    .line 55
    int-to-float p0, p0

    .line 56
    sub-float/2addr p0, p1

    .line 57
    float-to-int p0, p0

    .line 58
    neg-int p0, p0

    .line 59
    invoke-static {v3, p0, v4, v4, v4}, Lvb4;->d(Landroid/view/View;IIII)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget v2, p0, Lvb4;->a:I

    .line 64
    .line 65
    sub-int/2addr v2, v1

    .line 66
    int-to-float v1, v2

    .line 67
    sub-float/2addr v1, p1

    .line 68
    iget-object p1, p0, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    div-int/lit8 p1, p1, 0x2

    .line 79
    .line 80
    int-to-float p1, p1

    .line 81
    cmpg-float p1, v1, p1

    .line 82
    .line 83
    if-gez p1, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    div-int/lit8 p0, p0, 0x2

    .line 96
    .line 97
    int-to-float p0, p0

    .line 98
    sub-float/2addr p0, v1

    .line 99
    float-to-int p0, p0

    .line 100
    invoke-static {v3, p0, v4, v4, v4}, Lvb4;->d(Landroid/view/View;IIII)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    invoke-static {v3, v0, v0, v0, v0}, Lvb4;->d(Landroid/view/View;IIII)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public final b()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 1
    iget v0, p0, Lvb4;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lvb4;->i:Landroid/content/Context;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f080218

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f080219

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .line 35
    :goto_0
    iget p0, p0, Lvb4;->h:I

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lvb4;->l:Landroid/view/View;

    .line 8
    .line 9
    instance-of v2, v1, La71;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    check-cast v1, La71;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, La71;->setProgress(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final e(Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lvb4;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p2, p0, Lvb4;->f:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lvb4;->b()Landroid/graphics/drawable/GradientDrawable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
