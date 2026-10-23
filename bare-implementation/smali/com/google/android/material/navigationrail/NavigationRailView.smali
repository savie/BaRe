.class public Lcom/google/android/material/navigationrail/NavigationRailView;
.super Lol5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final P:Landroid/view/animation/PathInterpolator;


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public final O:Lvl5;

.field public final k:I

.field public final n:I

.field public p:Z

.field public final q:Landroid/view/View;

.field public final r:Ljava/lang/Boolean;

.field public final t:Ljava/lang/Boolean;

.field public final x:Ljava/lang/Boolean;

.field public y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const v1, 0x3e6147ae    # 0.22f

    .line 4
    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const v3, 0x3ec28f5c    # 0.38f

    .line 9
    .line 10
    .line 11
    const v4, 0x3f9ae148    # 1.21f

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/material/navigationrail/NavigationRailView;->P:Landroid/view/animation/PathInterpolator;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040478

    .line 490
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x7f140678

    .line 491
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lol5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->r:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->t:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->x:Ljava/lang/Boolean;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->H:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->I:I

    .line 18
    .line 19
    const/16 v2, 0x31

    .line 20
    .line 21
    iput v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->J:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const v5, 0x7f0702fd

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iput v4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->N:I

    .line 43
    .line 44
    const v4, 0x800013

    .line 45
    .line 46
    .line 47
    iput v4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->M:I

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    iput v9, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->L:I

    .line 51
    .line 52
    sget-object v5, Ltd6;->M:[I

    .line 53
    .line 54
    new-array v8, v0, [I

    .line 55
    .line 56
    move-object v4, p2

    .line 57
    move v6, p3

    .line 58
    move v7, p4

    .line 59
    invoke-static/range {v3 .. v8}, Ljd4;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lu94;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const p4, 0x7f070447

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iget-object v4, p2, Lu94;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Landroid/content/res/TypedArray;

    .line 77
    .line 78
    invoke-virtual {v4, v9, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    const/4 v5, 0x7

    .line 91
    invoke-virtual {v4, v5, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    const/16 v5, 0xe

    .line 96
    .line 97
    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/16 v7, 0x11

    .line 102
    .line 103
    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    invoke-virtual {p0, v7}, Lcom/google/android/material/navigationrail/NavigationRailView;->setSubmenuDividersEnabled(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lol5;->getMenuView()Lzc5;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    check-cast v7, Landroid/view/View;

    .line 115
    .line 116
    new-instance v8, Lvl5;

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput v0, v8, Lvl5;->a:I

    .line 126
    .line 127
    iput-boolean v0, v8, Lvl5;->b:Z

    .line 128
    .line 129
    iput-object v8, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 130
    .line 131
    invoke-virtual {v8, p3}, Lvl5;->setPaddingTop(I)V

    .line 132
    .line 133
    .line 134
    iget-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 135
    .line 136
    invoke-virtual {p3, v6}, Lvl5;->setScrollingEnabled(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 145
    .line 146
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .line 148
    invoke-direct {v8, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    .line 153
    .line 154
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    const/4 v8, -0x2

    .line 157
    invoke-direct {p3, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    iget-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 164
    .line 165
    invoke-virtual {p3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    if-nez v6, :cond_0

    .line 169
    .line 170
    iget-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 171
    .line 172
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_0
    new-instance p3, Landroid/widget/ScrollView;

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-direct {p3, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 186
    .line 187
    .line 188
    iget-object v6, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 189
    .line 190
    invoke-virtual {p3, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 194
    .line 195
    invoke-direct {v6, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    .line 203
    .line 204
    :goto_0
    const/4 p3, 0x6

    .line 205
    invoke-virtual {v4, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 206
    .line 207
    .line 208
    move-result p3

    .line 209
    if-eqz p3, :cond_2

    .line 210
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v6, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    iget-object v6, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/View;

    .line 224
    .line 225
    if-eqz v6, :cond_1

    .line 226
    .line 227
    iget-object v7, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 228
    .line 229
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/View;

    .line 233
    .line 234
    :cond_1
    iput-object p3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/View;

    .line 235
    .line 236
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    .line 238
    invoke-direct {p1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 242
    .line 243
    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 244
    .line 245
    iget-object p4, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 246
    .line 247
    invoke-virtual {p4, p3, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 248
    .line 249
    .line 250
    :cond_2
    const/16 p1, 0xa

    .line 251
    .line 252
    invoke-virtual {v4, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setMenuGravity(I)V

    .line 257
    .line 258
    .line 259
    const/16 p1, 0x8

    .line 260
    .line 261
    invoke-virtual {v4, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    invoke-virtual {v4, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 270
    .line 271
    .line 272
    move-result p4

    .line 273
    if-eqz p4, :cond_3

    .line 274
    .line 275
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 276
    .line 277
    .line 278
    move-result p3

    .line 279
    :cond_3
    const/4 p4, 0x3

    .line 280
    invoke-virtual {v4, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_4

    .line 285
    .line 286
    invoke-virtual {v4, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    :cond_4
    invoke-virtual {p0, p3}, Lcom/google/android/material/navigationrail/NavigationRailView;->setCollapsedItemMinimumHeight(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpandedItemMinimumHeight(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    const p3, 0x7f07030c

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    const/4 p3, 0x5

    .line 308
    invoke-virtual {v4, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:I

    .line 313
    .line 314
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    const p3, 0x7f07030b

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    const/4 p3, 0x4

    .line 326
    invoke-virtual {v4, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->n:I

    .line 331
    .line 332
    const/16 p1, 0xd

    .line 333
    .line 334
    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 335
    .line 336
    .line 337
    move-result p3

    .line 338
    if-eqz p3, :cond_5

    .line 339
    .line 340
    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->r:Ljava/lang/Boolean;

    .line 349
    .line 350
    :cond_5
    const/16 p1, 0xb

    .line 351
    .line 352
    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 353
    .line 354
    .line 355
    move-result p3

    .line 356
    if-eqz p3, :cond_6

    .line 357
    .line 358
    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->t:Ljava/lang/Boolean;

    .line 367
    .line 368
    :cond_6
    const/16 p1, 0xc

    .line 369
    .line 370
    invoke-virtual {v4, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 371
    .line 372
    .line 373
    move-result p3

    .line 374
    if-eqz p3, :cond_7

    .line 375
    .line 376
    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    iput-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->x:Ljava/lang/Boolean;

    .line 385
    .line 386
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    const p3, 0x7f070309

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 398
    .line 399
    .line 400
    move-result-object p3

    .line 401
    const p4, 0x7f070307

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 405
    .line 406
    .line 407
    move-result p3

    .line 408
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 409
    .line 410
    .line 411
    move-result-object p4

    .line 412
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 413
    .line 414
    .line 415
    move-result-object p4

    .line 416
    iget p4, p4, Landroid/content/res/Configuration;->fontScale:F

    .line 417
    .line 418
    const/high16 v1, 0x3f800000    # 1.0f

    .line 419
    .line 420
    sub-float/2addr p4, v1

    .line 421
    const/4 v2, 0x0

    .line 422
    const v3, 0x3e99999a    # 0.3f

    .line 423
    .line 424
    .line 425
    invoke-static {v2, v1, v3, v1, p4}, Led;->b(FFFFF)F

    .line 426
    .line 427
    .line 428
    move-result p4

    .line 429
    invoke-virtual {p0}, Lol5;->getItemPaddingTop()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    invoke-static {p4, v1, p1}, Led;->c(FII)I

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    int-to-float p1, p1

    .line 438
    invoke-virtual {p0}, Lol5;->getItemPaddingBottom()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-static {p4, v1, p3}, Led;->c(FII)I

    .line 443
    .line 444
    .line 445
    move-result p3

    .line 446
    int-to-float p3, p3

    .line 447
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    invoke-virtual {p0, p1}, Lol5;->setItemPaddingTop(I)V

    .line 452
    .line 453
    .line 454
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    invoke-virtual {p0, p1}, Lol5;->setItemPaddingBottom(I)V

    .line 459
    .line 460
    .line 461
    const/16 p1, 0x9

    .line 462
    .line 463
    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setCollapsedItemSpacing(I)V

    .line 468
    .line 469
    .line 470
    const/4 p1, 0x2

    .line 471
    invoke-virtual {v4, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 472
    .line 473
    .line 474
    move-result p1

    .line 475
    invoke-direct {p0, p1}, Lcom/google/android/material/navigationrail/NavigationRailView;->setExpanded(Z)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2}, Lu94;->f()V

    .line 479
    .line 480
    .line 481
    new-instance p1, Lzq8;

    .line 482
    .line 483
    invoke-direct {p1, p0, v5}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 484
    .line 485
    .line 486
    invoke-static {p0, p1}, Lyc9;->k(Landroid/view/View;Lum8;)V

    .line 487
    .line 488
    .line 489
    return-void
.end method

.method private getMaxChildWidth()I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x8

    .line 26
    .line 27
    if-eq v4, v5, :cond_0

    .line 28
    .line 29
    instance-of v4, v3, Lwk5;

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return v2
.end method

.method private getNavigationRailMenuView()Lxl5;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lol5;->getMenuView()Lzc5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lxl5;

    .line 6
    .line 7
    return-object p0
.end method

.method private setExpanded(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_1
    new-instance v0, Lt31;

    .line 15
    .line 16
    invoke-direct {v0}, Ly98;-><init>()V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x1f4

    .line 20
    .line 21
    iput-wide v1, v0, Ly98;->c:J

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/material/navigationrail/NavigationRailView;->P:Landroid/view/animation/PathInterpolator;

    .line 24
    .line 25
    iput-object v1, v0, Ly98;->d:Landroid/animation/TimeInterpolator;

    .line 26
    .line 27
    new-instance v1, Lg33;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2}, Lg33;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v3, 0x64

    .line 34
    .line 35
    iput-wide v3, v1, Ly98;->c:J

    .line 36
    .line 37
    new-instance v5, Lg33;

    .line 38
    .line 39
    invoke-direct {v5, v2}, Lg33;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-wide v3, v5, Ly98;->c:J

    .line 43
    .line 44
    new-instance v6, Lfr4;

    .line 45
    .line 46
    invoke-direct {v6}, Ly98;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lg33;

    .line 50
    .line 51
    invoke-direct {v7, v2}, Lg33;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-wide v3, v7, Ly98;->c:J

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    move v4, v3

    .line 66
    :goto_0
    if-ge v4, v2, :cond_4

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    instance-of v9, v8, Lal5;

    .line 77
    .line 78
    if-eqz v9, :cond_3

    .line 79
    .line 80
    move-object v9, v8

    .line 81
    check-cast v9, Lal5;

    .line 82
    .line 83
    invoke-virtual {v9}, Lal5;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    invoke-virtual {v0, v10}, Ly98;->o(Landroid/view/View;)Ly98;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Lal5;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-virtual {v0, v10}, Ly98;->o(Landroid/view/View;)Ly98;

    .line 95
    .line 96
    .line 97
    iget-boolean v10, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 98
    .line 99
    if-eqz v10, :cond_2

    .line 100
    .line 101
    invoke-virtual {v9}, Lal5;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v5, v10}, Ly98;->b(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Lal5;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v1, v10}, Ly98;->b(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v9}, Lal5;->getLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v5, v10}, Ly98;->b(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9}, Lal5;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v1, v10}, Ly98;->b(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {v9}, Lal5;->getExpandedLabelGroup()Lcom/google/android/material/internal/BaselineLayout;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-virtual {v6, v9}, Ly98;->b(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    invoke-virtual {v7, v8}, Ly98;->b(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v4, v4, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    new-instance v2, Lia8;

    .line 144
    .line 145
    invoke-direct {v2}, Lia8;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Lia8;->R(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Lia8;->O(Ly98;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Lia8;->O(Ly98;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v6}, Lia8;->O(Ly98;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 161
    .line 162
    if-nez v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v2, v7}, Lia8;->O(Ly98;)V

    .line 165
    .line 166
    .line 167
    :cond_5
    new-instance v0, Lia8;

    .line 168
    .line 169
    invoke-direct {v0}, Lia8;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Lia8;->R(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v5}, Lia8;->O(Ly98;)V

    .line 176
    .line 177
    .line 178
    iget-boolean v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    invoke-virtual {v0, v7}, Lia8;->O(Ly98;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    new-instance v1, Lia8;

    .line 186
    .line 187
    invoke-direct {v1}, Lia8;-><init>()V

    .line 188
    .line 189
    .line 190
    const/4 v3, 0x1

    .line 191
    invoke-virtual {v1, v3}, Lia8;->R(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Lia8;->O(Ly98;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lia8;->O(Ly98;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    .line 206
    invoke-static {v0, v1}, Lda8;->a(Landroid/view/ViewGroup;Ly98;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 210
    .line 211
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->I:I

    .line 212
    .line 213
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->G:I

    .line 214
    .line 215
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->H:I

    .line 216
    .line 217
    iget v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->J:I

    .line 218
    .line 219
    if-eqz p1, :cond_7

    .line 220
    .line 221
    iget v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->L:I

    .line 222
    .line 223
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->N:I

    .line 224
    .line 225
    iget v2, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->K:I

    .line 226
    .line 227
    iget v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->M:I

    .line 228
    .line 229
    :cond_7
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4, v3}, Lfl5;->setItemGravity(I)V

    .line 234
    .line 235
    .line 236
    invoke-super {p0, v0}, Lol5;->setItemIconGravity(I)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0, v1}, Lxl5;->setItemSpacing(I)V

    .line 244
    .line 245
    .line 246
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, v2}, Lxl5;->setItemMinimumHeight(I)V

    .line 251
    .line 252
    .line 253
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Lfl5;->setExpanded(Z)V

    .line 258
    .line 259
    .line 260
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lfl5;
    .locals 0

    .line 1
    new-instance p0, Lxl5;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lxl5;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public getCollapsedItemMinimumHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->H:I

    .line 2
    .line 3
    return p0
.end method

.method public getCollapsedMaxItemCount()I
    .locals 0

    .line 1
    const/4 p0, 0x7

    .line 2
    return p0
.end method

.method public getExpandedItemMinimumHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->K:I

    .line 2
    .line 3
    return p0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public getItemGravity()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lfl5;->getItemGravity()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getItemIconGravity()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lfl5;->getItemIconGravity()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getItemMinimumHeight()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lxl5;->getItemMinimumHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getItemSpacing()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lxl5;->getItemSpacing()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getMaxItemCount()I
    .locals 0

    .line 1
    const p0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getMenuGravity()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lxl5;->getMenuGravity()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public getSubmenuDividersEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v3, v1

    .line 24
    add-int/2addr v3, v0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, p1

    .line 39
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 40
    .line 41
    if-eqz v1, :cond_6

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getMaxChildWidth()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iget v3, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->k:I

    .line 62
    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eq v4, v2, :cond_3

    .line 76
    .line 77
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget v1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->n:I

    .line 96
    .line 97
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :cond_3
    invoke-virtual {p0}, Lol5;->getItemActiveIndicatorExpandedWidth()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v1, -0x1

    .line 114
    if-ne v0, v1, :cond_5

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iget-object v0, v0, Lfl5;->k:[Ldl5;

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    array-length v3, v0

    .line 129
    const/4 v4, 0x0

    .line 130
    :goto_1
    if-ge v4, v3, :cond_5

    .line 131
    .line 132
    aget-object v5, v0, v4

    .line 133
    .line 134
    instance-of v6, v5, Lal5;

    .line 135
    .line 136
    if-eqz v6, :cond_4

    .line 137
    .line 138
    check-cast v5, Lal5;

    .line 139
    .line 140
    invoke-virtual {v5, v1}, Lal5;->j(I)V

    .line 141
    .line 142
    .line 143
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    move v0, p1

    .line 147
    :cond_6
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->O:Lvl5;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ge p2, v1, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 171
    .line 172
    .line 173
    :cond_7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0
.end method

.method public setCollapsedItemMinimumHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->H:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lol5;->getMenuView()Lzc5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lxl5;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lxl5;->setItemMinimumHeight(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setCollapsedItemSpacing(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->G:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lxl5;->setItemSpacing(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setExpandedItemMinimumHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->K:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->y:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lol5;->getMenuView()Lzc5;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lxl5;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lxl5;->setItemMinimumHeight(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setItemGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->J:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->M:I

    .line 4
    .line 5
    invoke-super {p0, p1}, Lol5;->setItemGravity(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setItemIconGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->I:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->L:I

    .line 4
    .line 5
    invoke-super {p0, p1}, Lol5;->setItemIconGravity(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setItemMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->H:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->K:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lol5;->getMenuView()Lzc5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lxl5;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lxl5;->setItemMinimumHeight(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->G:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->N:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lxl5;->setItemSpacing(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setMenuGravity(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lxl5;->setMenuGravity(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSubmenuDividersEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->p:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/navigationrail/NavigationRailView;->p:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/navigationrail/NavigationRailView;->getNavigationRailMenuView()Lxl5;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1}, Lfl5;->setSubmenuDividersEnabled(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
