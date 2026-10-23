.class public final Lr88;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwd2;


# instance fields
.field public final a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public final c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public final f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public final j:Ljava/lang/CharSequence;

.field public k:Landroid/view/Window$Callback;

.field public l:Z

.field public m:Lo8;

.field public final n:I

.field public final o:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lr88;->n:I

    .line 6
    .line 7
    iput-object p1, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lr88;->i:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-object v1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v0

    .line 29
    :goto_0
    iput-boolean v1, p0, Lr88;->g:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lr88;->f:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v3, Lge6;->a:[I

    .line 42
    .line 43
    const v4, 0x7f040007

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static {v4, v0, v1, v5, v3}, Lu94;->e(IILandroid/content/Context;Landroid/util/AttributeSet;[I)Lu94;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, v1, Lu94;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroid/content/res/TypedArray;

    .line 54
    .line 55
    const/16 v4, 0xf

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v6, p0, Lr88;->o:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    if-eqz p2, :cond_f

    .line 64
    .line 65
    const/16 p2, 0x1b

    .line 66
    .line 67
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    iput-boolean v2, p0, Lr88;->g:Z

    .line 78
    .line 79
    iput-object p2, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 80
    .line 81
    iget v2, p0, Lr88;->b:I

    .line 82
    .line 83
    and-int/lit8 v2, v2, 0x8

    .line 84
    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v2, p0, Lr88;->g:Z

    .line 91
    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2, p2}, Ldl8;->o(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    const/16 p2, 0x19

    .line 102
    .line 103
    invoke-virtual {v3, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {p0, p2}, Lr88;->b(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    const/16 p2, 0x14

    .line 117
    .line 118
    invoke-virtual {v1, p2}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    iput-object p2, p0, Lr88;->e:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    invoke-virtual {p0}, Lr88;->d()V

    .line 127
    .line 128
    .line 129
    :cond_3
    const/16 p2, 0x11

    .line 130
    .line 131
    invoke-virtual {v1, p2}, Lu94;->b(I)Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_4

    .line 136
    .line 137
    iput-object p2, p0, Lr88;->d:Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    invoke-virtual {p0}, Lr88;->d()V

    .line 140
    .line 141
    .line 142
    :cond_4
    iget-object p2, p0, Lr88;->f:Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    if-nez p2, :cond_6

    .line 145
    .line 146
    iget-object p2, p0, Lr88;->o:Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    if-eqz p2, :cond_6

    .line 149
    .line 150
    iput-object p2, p0, Lr88;->f:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    iget v2, p0, Lr88;->b:I

    .line 153
    .line 154
    and-int/lit8 v2, v2, 0x4

    .line 155
    .line 156
    if-eqz v2, :cond_5

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_1
    const/16 p2, 0xa

    .line 166
    .line 167
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p0, p2}, Lr88;->a(I)V

    .line 172
    .line 173
    .line 174
    const/16 p2, 0x9

    .line 175
    .line 176
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_9

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    iget-object v2, p0, Lr88;->c:Landroid/view/View;

    .line 195
    .line 196
    if-eqz v2, :cond_7

    .line 197
    .line 198
    iget v4, p0, Lr88;->b:I

    .line 199
    .line 200
    and-int/lit8 v4, v4, 0x10

    .line 201
    .line 202
    if-eqz v4, :cond_7

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    iput-object p2, p0, Lr88;->c:Landroid/view/View;

    .line 208
    .line 209
    if-eqz p2, :cond_8

    .line 210
    .line 211
    iget v2, p0, Lr88;->b:I

    .line 212
    .line 213
    and-int/lit8 v2, v2, 0x10

    .line 214
    .line 215
    if-eqz v2, :cond_8

    .line 216
    .line 217
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :cond_8
    iget p2, p0, Lr88;->b:I

    .line 221
    .line 222
    or-int/lit8 p2, p2, 0x10

    .line 223
    .line 224
    invoke-virtual {p0, p2}, Lr88;->a(I)V

    .line 225
    .line 226
    .line 227
    :cond_9
    const/16 p2, 0xd

    .line 228
    .line 229
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-lez p2, :cond_a

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    :cond_a
    const/4 p2, 0x7

    .line 245
    const/4 v2, -0x1

    .line 246
    invoke-virtual {v3, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    const/4 v4, 0x3

    .line 251
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-gez p2, :cond_b

    .line 256
    .line 257
    if-ltz v2, :cond_c

    .line 258
    .line 259
    :cond_b
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->d()V

    .line 268
    .line 269
    .line 270
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->L:Lqq6;

    .line 271
    .line 272
    invoke-virtual {v4, p2, v2}, Lqq6;->a(II)V

    .line 273
    .line 274
    .line 275
    :cond_c
    const/16 p2, 0x1c

    .line 276
    .line 277
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_d

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->t:I

    .line 288
    .line 289
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->b:Ltp;

    .line 290
    .line 291
    if-eqz v4, :cond_d

    .line 292
    .line 293
    invoke-virtual {v4, v2, p2}, Ltp;->setTextAppearance(Landroid/content/Context;I)V

    .line 294
    .line 295
    .line 296
    :cond_d
    const/16 p2, 0x1a

    .line 297
    .line 298
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-eqz p2, :cond_e

    .line 303
    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    iput p2, p1, Landroidx/appcompat/widget/Toolbar;->x:I

    .line 309
    .line 310
    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar;->c:Ltp;

    .line 311
    .line 312
    if-eqz v4, :cond_e

    .line 313
    .line 314
    invoke-virtual {v4, v2, p2}, Ltp;->setTextAppearance(Landroid/content/Context;I)V

    .line 315
    .line 316
    .line 317
    :cond_e
    const/16 p2, 0x16

    .line 318
    .line 319
    invoke-virtual {v3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_11

    .line 324
    .line 325
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_f
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    if-eqz p2, :cond_10

    .line 334
    .line 335
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    iput-object p2, p0, Lr88;->o:Landroid/graphics/drawable/Drawable;

    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_10
    const/16 v4, 0xb

    .line 343
    .line 344
    :goto_2
    iput v4, p0, Lr88;->b:I

    .line 345
    .line 346
    :cond_11
    :goto_3
    invoke-virtual {v1}, Lu94;->f()V

    .line 347
    .line 348
    .line 349
    iget p2, p0, Lr88;->n:I

    .line 350
    .line 351
    const v0, 0x7f130001

    .line 352
    .line 353
    .line 354
    if-ne v0, p2, :cond_12

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_12
    iput v0, p0, Lr88;->n:I

    .line 358
    .line 359
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-eqz p2, :cond_14

    .line 368
    .line 369
    iget p2, p0, Lr88;->n:I

    .line 370
    .line 371
    if-nez p2, :cond_13

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    :goto_4
    iput-object v5, p0, Lr88;->j:Ljava/lang/CharSequence;

    .line 383
    .line 384
    invoke-virtual {p0}, Lr88;->c()V

    .line 385
    .line 386
    .line 387
    :cond_14
    :goto_5
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    .line 388
    .line 389
    .line 390
    move-result-object p2

    .line 391
    iput-object p2, p0, Lr88;->j:Ljava/lang/CharSequence;

    .line 392
    .line 393
    new-instance p2, Lp88;

    .line 394
    .line 395
    invoke-direct {p2, p0}, Lp88;-><init>(Lr88;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    .line 400
    .line 401
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget v0, p0, Lr88;->b:I

    .line 2
    .line 3
    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Lr88;->b:I

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    and-int/lit8 v1, v0, 0x4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    and-int/lit8 v1, p1, 0x4

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lr88;->c()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v1, p0, Lr88;->b:I

    .line 23
    .line 24
    and-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lr88;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Lr88;->o:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    and-int/lit8 v1, v0, 0x3

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Lr88;->d()V

    .line 47
    .line 48
    .line 49
    :cond_4
    and-int/lit8 v1, v0, 0x8

    .line 50
    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    and-int/lit8 v1, p1, 0x8

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, p0, Lr88;->h:Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lr88;->i:Ljava/lang/CharSequence;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_2
    and-int/lit8 v0, v0, 0x10

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    iget-object p0, p0, Lr88;->c:Landroid/view/View;

    .line 79
    .line 80
    if-eqz p0, :cond_8

    .line 81
    .line 82
    and-int/lit8 p1, p1, 0x10

    .line 83
    .line 84
    if-eqz p1, :cond_7

    .line 85
    .line 86
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_7
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_8
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lr88;->i:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v0, p0, Lr88;->b:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget v0, p0, Lr88;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lr88;->j:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget p0, p0, Lr88;->n:I

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p0, p0, Lr88;->j:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, Lr88;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lr88;->e:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lr88;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lr88;->d:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object p0, p0, Lr88;->a:Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
