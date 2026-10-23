.class public final Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final a:F

.field public final b:F

.field public final c:I

.field public final d:Ljava/util/LinkedHashSet;

.field public final e:Ljava/util/LinkedHashMap;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f07005b

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->a:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const p2, 0x7f07006e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->b:F

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const p2, 0x7f07049c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->c:I

    .line 45
    .line 46
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d:Ljava/util/LinkedHashSet;

    .line 52
    .line 53
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->e:Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 74
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final c(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const v5, 0x7f040126

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v5}, Lg67;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x0

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_6

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_6

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    instance-of v6, v0, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    move-object v6, v0

    .line 57
    check-cast v6, Landroid/view/ViewGroup;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v6, 0x0

    .line 61
    :goto_0
    if-nez v6, :cond_3

    .line 62
    .line 63
    new-instance v2, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    invoke-direct {v2, v5, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    invoke-direct {v8, v5, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    new-instance v2, Landroid/graphics/Rect;

    .line 94
    .line 95
    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    if-gez v6, :cond_4

    .line 98
    .line 99
    move v6, v5

    .line 100
    :cond_4
    move-object v9, v0

    .line 101
    check-cast v9, Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-le v8, v9, :cond_5

    .line 114
    .line 115
    move v8, v9

    .line 116
    :cond_5
    invoke-direct {v2, v5, v6, v10, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-direct {v2, v5, v5, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 131
    .line 132
    .line 133
    :goto_2
    new-instance v9, Lc95;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_7

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-nez v8, :cond_8

    .line 149
    .line 150
    :cond_7
    move-object/from16 v16, v3

    .line 151
    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_8
    new-instance v8, Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    invoke-direct {v8, v5, v5, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 168
    .line 169
    .line 170
    new-instance v10, Landroid/graphics/Rect;

    .line 171
    .line 172
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 173
    .line 174
    iget v12, v2, Landroid/graphics/Rect;->left:I

    .line 175
    .line 176
    add-int/2addr v12, v11

    .line 177
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 178
    .line 179
    iget v13, v2, Landroid/graphics/Rect;->top:I

    .line 180
    .line 181
    add-int/2addr v13, v8

    .line 182
    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 183
    .line 184
    add-int/2addr v11, v14

    .line 185
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    .line 186
    .line 187
    add-int/2addr v8, v14

    .line 188
    invoke-direct {v10, v12, v13, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    .line 190
    .line 191
    new-instance v8, Landroid/graphics/RectF;

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    int-to-float v11, v11

    .line 198
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    int-to-float v12, v12

    .line 203
    invoke-direct {v8, v6, v6, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/google/android/material/card/MaterialCardView;->getShapeAppearanceModel()Ltb7;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget v12, v10, Landroid/graphics/Rect;->left:I

    .line 214
    .line 215
    const/4 v13, 0x1

    .line 216
    if-gt v12, v13, :cond_9

    .line 217
    .line 218
    move v12, v13

    .line 219
    goto :goto_3

    .line 220
    :cond_9
    move v12, v5

    .line 221
    :goto_3
    iget v14, v10, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    if-gt v14, v13, :cond_a

    .line 224
    .line 225
    move v14, v13

    .line 226
    goto :goto_4

    .line 227
    :cond_a
    move v14, v5

    .line 228
    :goto_4
    iget v15, v10, Landroid/graphics/Rect;->right:I

    .line 229
    .line 230
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 231
    .line 232
    .line 233
    move-result v16

    .line 234
    move/from16 p0, v13

    .line 235
    .line 236
    add-int/lit8 v13, v16, -0x1

    .line 237
    .line 238
    if-lt v15, v13, :cond_b

    .line 239
    .line 240
    move/from16 v13, p0

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_b
    move v13, v5

    .line 244
    :goto_5
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    add-int/lit8 v1, v1, -0x1

    .line 251
    .line 252
    if-lt v10, v1, :cond_c

    .line 253
    .line 254
    move/from16 v1, p0

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_c
    move v1, v5

    .line 258
    :goto_6
    if-eqz v12, :cond_d

    .line 259
    .line 260
    if-eqz v14, :cond_d

    .line 261
    .line 262
    iget-object v10, v11, Ltb7;->e:Llx1;

    .line 263
    .line 264
    invoke-interface {v10, v8}, Llx1;->a(Landroid/graphics/RectF;)F

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    goto :goto_7

    .line 269
    :cond_d
    move v10, v6

    .line 270
    :goto_7
    if-eqz v13, :cond_e

    .line 271
    .line 272
    if-eqz v14, :cond_e

    .line 273
    .line 274
    iget-object v14, v11, Ltb7;->f:Llx1;

    .line 275
    .line 276
    invoke-interface {v14, v8}, Llx1;->a(Landroid/graphics/RectF;)F

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    goto :goto_8

    .line 281
    :cond_e
    move v14, v6

    .line 282
    :goto_8
    if-eqz v13, :cond_f

    .line 283
    .line 284
    if-eqz v1, :cond_f

    .line 285
    .line 286
    iget-object v13, v11, Ltb7;->g:Llx1;

    .line 287
    .line 288
    invoke-interface {v13, v8}, Llx1;->a(Landroid/graphics/RectF;)F

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    goto :goto_9

    .line 293
    :cond_f
    move v13, v6

    .line 294
    :goto_9
    if-eqz v12, :cond_10

    .line 295
    .line 296
    if-eqz v1, :cond_10

    .line 297
    .line 298
    iget-object v1, v11, Ltb7;->h:Llx1;

    .line 299
    .line 300
    invoke-interface {v1, v8}, Llx1;->a(Landroid/graphics/RectF;)F

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    :cond_10
    new-instance v1, Lpq6;

    .line 305
    .line 306
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 307
    .line 308
    .line 309
    new-instance v8, Lpq6;

    .line 310
    .line 311
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    new-instance v11, Lpq6;

    .line 315
    .line 316
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v12, Lpq6;

    .line 320
    .line 321
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 322
    .line 323
    .line 324
    new-instance v15, Lus2;

    .line 325
    .line 326
    invoke-direct {v15, v5}, Lus2;-><init>(I)V

    .line 327
    .line 328
    .line 329
    new-instance v7, Lus2;

    .line 330
    .line 331
    invoke-direct {v7, v5}, Lus2;-><init>(I)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Lus2;

    .line 335
    .line 336
    invoke-direct {v0, v5}, Lus2;-><init>(I)V

    .line 337
    .line 338
    .line 339
    move-object/from16 v16, v3

    .line 340
    .line 341
    new-instance v3, Lus2;

    .line 342
    .line 343
    invoke-direct {v3, v5}, Lus2;-><init>(I)V

    .line 344
    .line 345
    .line 346
    new-instance v5, Lf3;

    .line 347
    .line 348
    invoke-direct {v5, v10}, Lf3;-><init>(F)V

    .line 349
    .line 350
    .line 351
    new-instance v10, Lf3;

    .line 352
    .line 353
    invoke-direct {v10, v14}, Lf3;-><init>(F)V

    .line 354
    .line 355
    .line 356
    new-instance v14, Lf3;

    .line 357
    .line 358
    invoke-direct {v14, v13}, Lf3;-><init>(F)V

    .line 359
    .line 360
    .line 361
    new-instance v13, Lf3;

    .line 362
    .line 363
    invoke-direct {v13, v6}, Lf3;-><init>(F)V

    .line 364
    .line 365
    .line 366
    new-instance v6, Ltb7;

    .line 367
    .line 368
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 369
    .line 370
    .line 371
    iput-object v1, v6, Ltb7;->a:Lzv1;

    .line 372
    .line 373
    iput-object v8, v6, Ltb7;->b:Lzv1;

    .line 374
    .line 375
    iput-object v11, v6, Ltb7;->c:Lzv1;

    .line 376
    .line 377
    iput-object v12, v6, Ltb7;->d:Lzv1;

    .line 378
    .line 379
    iput-object v5, v6, Ltb7;->e:Llx1;

    .line 380
    .line 381
    iput-object v10, v6, Ltb7;->f:Llx1;

    .line 382
    .line 383
    iput-object v14, v6, Ltb7;->g:Llx1;

    .line 384
    .line 385
    iput-object v13, v6, Ltb7;->h:Llx1;

    .line 386
    .line 387
    iput-object v15, v6, Ltb7;->i:Lus2;

    .line 388
    .line 389
    iput-object v7, v6, Ltb7;->j:Lus2;

    .line 390
    .line 391
    iput-object v0, v6, Ltb7;->k:Lus2;

    .line 392
    .line 393
    iput-object v3, v6, Ltb7;->l:Lus2;

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :goto_a
    new-instance v0, Lpq6;

    .line 397
    .line 398
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 399
    .line 400
    .line 401
    new-instance v1, Lpq6;

    .line 402
    .line 403
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 404
    .line 405
    .line 406
    new-instance v3, Lpq6;

    .line 407
    .line 408
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    new-instance v5, Lpq6;

    .line 412
    .line 413
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 414
    .line 415
    .line 416
    new-instance v7, Lf3;

    .line 417
    .line 418
    invoke-direct {v7, v6}, Lf3;-><init>(F)V

    .line 419
    .line 420
    .line 421
    new-instance v8, Lf3;

    .line 422
    .line 423
    invoke-direct {v8, v6}, Lf3;-><init>(F)V

    .line 424
    .line 425
    .line 426
    new-instance v10, Lf3;

    .line 427
    .line 428
    invoke-direct {v10, v6}, Lf3;-><init>(F)V

    .line 429
    .line 430
    .line 431
    new-instance v11, Lf3;

    .line 432
    .line 433
    invoke-direct {v11, v6}, Lf3;-><init>(F)V

    .line 434
    .line 435
    .line 436
    new-instance v6, Lus2;

    .line 437
    .line 438
    const/4 v12, 0x0

    .line 439
    invoke-direct {v6, v12}, Lus2;-><init>(I)V

    .line 440
    .line 441
    .line 442
    new-instance v13, Lus2;

    .line 443
    .line 444
    invoke-direct {v13, v12}, Lus2;-><init>(I)V

    .line 445
    .line 446
    .line 447
    new-instance v14, Lus2;

    .line 448
    .line 449
    invoke-direct {v14, v12}, Lus2;-><init>(I)V

    .line 450
    .line 451
    .line 452
    new-instance v15, Lus2;

    .line 453
    .line 454
    invoke-direct {v15, v12}, Lus2;-><init>(I)V

    .line 455
    .line 456
    .line 457
    new-instance v12, Ltb7;

    .line 458
    .line 459
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 460
    .line 461
    .line 462
    iput-object v0, v12, Ltb7;->a:Lzv1;

    .line 463
    .line 464
    iput-object v1, v12, Ltb7;->b:Lzv1;

    .line 465
    .line 466
    iput-object v3, v12, Ltb7;->c:Lzv1;

    .line 467
    .line 468
    iput-object v5, v12, Ltb7;->d:Lzv1;

    .line 469
    .line 470
    iput-object v7, v12, Ltb7;->e:Llx1;

    .line 471
    .line 472
    iput-object v8, v12, Ltb7;->f:Llx1;

    .line 473
    .line 474
    iput-object v10, v12, Ltb7;->g:Llx1;

    .line 475
    .line 476
    iput-object v11, v12, Ltb7;->h:Llx1;

    .line 477
    .line 478
    iput-object v6, v12, Ltb7;->i:Lus2;

    .line 479
    .line 480
    iput-object v13, v12, Ltb7;->j:Lus2;

    .line 481
    .line 482
    iput-object v14, v12, Ltb7;->k:Lus2;

    .line 483
    .line 484
    iput-object v15, v12, Ltb7;->l:Lus2;

    .line 485
    .line 486
    move-object v6, v12

    .line 487
    :goto_b
    invoke-direct {v9, v6}, Lc95;-><init>(Ltb7;)V

    .line 488
    .line 489
    .line 490
    const/4 v0, -0x1

    .line 491
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v9, v0}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 503
    .line 504
    sub-int/2addr v0, v1

    .line 505
    if-gez v0, :cond_11

    .line 506
    .line 507
    const/4 v13, 0x0

    .line 508
    goto :goto_c

    .line 509
    :cond_11
    move v13, v0

    .line 510
    :goto_c
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 511
    .line 512
    if-gtz v0, :cond_12

    .line 513
    .line 514
    if-gtz v13, :cond_12

    .line 515
    .line 516
    :goto_d
    move-object/from16 v0, v16

    .line 517
    .line 518
    const/4 v1, 0x0

    .line 519
    goto :goto_f

    .line 520
    :cond_12
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    .line 521
    .line 522
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 523
    .line 524
    if-gez v0, :cond_13

    .line 525
    .line 526
    const/4 v11, 0x0

    .line 527
    goto :goto_e

    .line 528
    :cond_13
    move v11, v0

    .line 529
    :goto_e
    const/4 v12, 0x0

    .line 530
    const/4 v10, 0x0

    .line 531
    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 532
    .line 533
    .line 534
    move-object v9, v8

    .line 535
    goto :goto_d

    .line 536
    :goto_f
    invoke-direct {v0, v4, v1, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 537
    .line 538
    .line 539
    move-object/from16 v1, p1

    .line 540
    .line 541
    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 542
    .line 543
    .line 544
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v0, v1}, Ll73;->F(II)Lnd4;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lld4;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    move-object v2, v0

    .line 26
    check-cast v2, Lmd4;

    .line 27
    .line 28
    iget-boolean v3, v2, Lmd4;->c:Z

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Lmd4;->nextInt()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    instance-of v2, v1, Lcom/google/android/material/card/MaterialCardView;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    return-object p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    iget-boolean v0, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->f:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Lmt7;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/google/android/material/card/MaterialCardView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    iget v2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v2, v1

    .line 36
    :goto_0
    const/4 v3, -0x2

    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    iget v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v4, v3

    .line 43
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .line 45
    invoke-direct {v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    instance-of v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    move-object v2, p3

    .line 53
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    .line 55
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    .line 57
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 58
    .line 59
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 60
    .line 61
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 62
    .line 63
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 64
    .line 65
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 66
    .line 67
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 68
    .line 69
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0, v4}, Lcom/google/android/material/card/MaterialCardView;->setUseCompatPadding(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v0, Lcom/google/android/material/card/MaterialCardView;->k:Lv85;

    .line 107
    .line 108
    iget-object v6, v5, Lv85;->b:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Lv85;->l()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    const v6, 0x7f0400b5

    .line 124
    .line 125
    .line 126
    invoke-static {v5, v6}, Lg67;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    invoke-virtual {v0, v5}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v5, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d:Ljava/util/LinkedHashSet;

    .line 136
    .line 137
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    if-eqz p3, :cond_6

    .line 141
    .line 142
    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    .line 144
    :cond_6
    if-eqz p3, :cond_7

    .line 145
    .line 146
    iget v3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    .line 148
    :cond_7
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    .line 150
    invoke-direct {p3, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    iput-boolean v2, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->f:Z

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-super {p0, v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    iput-boolean v4, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->f:Z

    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->e:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lst7;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, v1, Lst7;->a:Landroid/view/View;

    .line 14
    .line 15
    iget-object v4, v1, Lst7;->c:Lnt7;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    iget-object v4, v1, Lst7;->d:Lot7;

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v1, Lst7;->b:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 51
    .line 52
    .line 53
    move-object p2, p1

    .line 54
    :goto_1
    if-eqz p2, :cond_4

    .line 55
    .line 56
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    instance-of v1, p2, Lmt7;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    instance-of v1, p2, Landroid/view/View;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    check-cast p2, Landroid/view/View;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object p2, v2

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-object p2, v2

    .line 81
    :goto_2
    if-nez p2, :cond_5

    .line 82
    .line 83
    move-object v4, p1

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move-object v4, p2

    .line 86
    :goto_3
    move-object p2, v4

    .line 87
    :goto_4
    if-eqz p2, :cond_8

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_8

    .line 94
    .line 95
    instance-of v1, p2, Lcom/google/android/material/card/MaterialCardView;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d:Ljava/util/LinkedHashSet;

    .line 100
    .line 101
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    move-object v2, p2

    .line 108
    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    instance-of v1, p2, Landroid/view/View;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    check-cast p2, Landroid/view/View;

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_7
    move-object p2, v2

    .line 123
    goto :goto_4

    .line 124
    :cond_8
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {p0, v4, v2, p1}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->c(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    new-instance v6, Lnt7;

    .line 132
    .line 133
    invoke-direct {v6, p0, v4, v2, p1}, Lnt7;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lot7;

    .line 137
    .line 138
    invoke-direct {v7, p0, v4, v2, p1}, Lot7;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;Lcom/google/android/material/card/MaterialCardView;Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    new-instance v8, Lpt7;

    .line 142
    .line 143
    invoke-direct {v8, p0, v4}, Lpt7;-><init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_9

    .line 154
    .line 155
    invoke-virtual {p1, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Lst7;

    .line 162
    .line 163
    invoke-direct/range {v3 .. v8}, Lst7;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lnt7;Lot7;Lpt7;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eq v3, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->a()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v4, 0x8

    .line 63
    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v5, v3

    .line 71
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eq v5, v4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->a()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_6

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    move-object v6, v5

    .line 107
    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-ne v6, v4, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/4 v4, 0x0

    .line 128
    if-eqz v3, :cond_a

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    instance-of v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 141
    .line 142
    if-eqz v6, :cond_7

    .line 143
    .line 144
    move-object v4, v5

    .line 145
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    .line 147
    :cond_7
    if-nez v4, :cond_8

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_8
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 151
    .line 152
    if-nez v5, :cond_9

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    move v3, v2

    .line 166
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_18

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    add-int/lit8 v6, v3, 0x1

    .line 177
    .line 178
    if-ltz v3, :cond_17

    .line 179
    .line 180
    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    const/4 v8, 0x1

    .line 187
    if-ne v7, v8, :cond_b

    .line 188
    .line 189
    sget-object v3, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Single:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    if-nez v3, :cond_c

    .line 193
    .line 194
    sget-object v3, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Top:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    sub-int/2addr v7, v8

    .line 202
    if-ne v3, v7, :cond_d

    .line 203
    .line 204
    sget-object v3, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Bottom:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_d
    sget-object v3, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Middle:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 208
    .line 209
    :goto_5
    sget-object v7, Lorg/swiftapps/swiftbackup/views/a;->a:[I

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    aget v7, v7, v9

    .line 216
    .line 217
    iget v9, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->a:F

    .line 218
    .line 219
    if-eq v7, v8, :cond_11

    .line 220
    .line 221
    const/4 v8, 0x2

    .line 222
    iget v10, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->b:F

    .line 223
    .line 224
    if-eq v7, v8, :cond_10

    .line 225
    .line 226
    const/4 v8, 0x3

    .line 227
    if-eq v7, v8, :cond_f

    .line 228
    .line 229
    const/4 v8, 0x4

    .line 230
    if-ne v7, v8, :cond_e

    .line 231
    .line 232
    new-instance v7, Lqt7;

    .line 233
    .line 234
    invoke-direct {v7, v10, v10, v9, v9}, Lqt7;-><init>(FFFF)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_e
    invoke-static {}, Lq;->j()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_f
    new-instance v7, Lqt7;

    .line 243
    .line 244
    invoke-direct {v7, v10, v10, v10, v10}, Lqt7;-><init>(FFFF)V

    .line 245
    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_10
    new-instance v7, Lqt7;

    .line 249
    .line 250
    invoke-direct {v7, v9, v9, v10, v10}, Lqt7;-><init>(FFFF)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_11
    new-instance v7, Lqt7;

    .line 255
    .line 256
    invoke-direct {v7, v9, v9, v9, v9}, Lqt7;-><init>(FFFF)V

    .line 257
    .line 258
    .line 259
    :goto_6
    invoke-virtual {v5}, Lcom/google/android/material/card/MaterialCardView;->getShapeAppearanceModel()Ltb7;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    invoke-virtual {v8}, Ltb7;->m()Lsb7;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    invoke-static {v2}, Lxh8;->e(I)Lzv1;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    iput-object v9, v8, Lsb7;->a:Lzv1;

    .line 272
    .line 273
    new-instance v9, Lf3;

    .line 274
    .line 275
    iget v10, v7, Lqt7;->a:F

    .line 276
    .line 277
    invoke-direct {v9, v10}, Lf3;-><init>(F)V

    .line 278
    .line 279
    .line 280
    iput-object v9, v8, Lsb7;->e:Llx1;

    .line 281
    .line 282
    invoke-static {v2}, Lxh8;->e(I)Lzv1;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    iput-object v9, v8, Lsb7;->b:Lzv1;

    .line 287
    .line 288
    new-instance v9, Lf3;

    .line 289
    .line 290
    iget v10, v7, Lqt7;->b:F

    .line 291
    .line 292
    invoke-direct {v9, v10}, Lf3;-><init>(F)V

    .line 293
    .line 294
    .line 295
    iput-object v9, v8, Lsb7;->f:Llx1;

    .line 296
    .line 297
    invoke-static {v2}, Lxh8;->e(I)Lzv1;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    iput-object v9, v8, Lsb7;->c:Lzv1;

    .line 302
    .line 303
    new-instance v9, Lf3;

    .line 304
    .line 305
    iget v10, v7, Lqt7;->c:F

    .line 306
    .line 307
    invoke-direct {v9, v10}, Lf3;-><init>(F)V

    .line 308
    .line 309
    .line 310
    iput-object v9, v8, Lsb7;->g:Llx1;

    .line 311
    .line 312
    invoke-static {v2}, Lxh8;->e(I)Lzv1;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    iput-object v9, v8, Lsb7;->d:Lzv1;

    .line 317
    .line 318
    new-instance v9, Lf3;

    .line 319
    .line 320
    iget v7, v7, Lqt7;->d:F

    .line 321
    .line 322
    invoke-direct {v9, v7}, Lf3;-><init>(F)V

    .line 323
    .line 324
    .line 325
    iput-object v9, v8, Lsb7;->h:Llx1;

    .line 326
    .line 327
    invoke-virtual {v8}, Lsb7;->a()Ltb7;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v5, v7}, Lcom/google/android/material/card/MaterialCardView;->setShapeAppearanceModel(Ltb7;)V

    .line 332
    .line 333
    .line 334
    sget-object v7, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Bottom:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 335
    .line 336
    if-eq v3, v7, :cond_13

    .line 337
    .line 338
    sget-object v7, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;->Single:Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup$a;

    .line 339
    .line 340
    if-ne v3, v7, :cond_12

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_12
    iget v3, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->c:I

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_13
    :goto_7
    move v3, v2

    .line 347
    :goto_8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .line 353
    if-eqz v8, :cond_14

    .line 354
    .line 355
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_14
    move-object v7, v4

    .line 359
    :goto_9
    if-nez v7, :cond_15

    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_15
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 363
    .line 364
    if-ne v8, v3, :cond_16

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_16
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 368
    .line 369
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .line 371
    .line 372
    :goto_a
    move v3, v6

    .line 373
    goto/16 :goto_4

    .line 374
    .line 375
    :cond_17
    invoke-static {}, Lfl1;->F0()V

    .line 376
    .line 377
    .line 378
    throw v4

    .line 379
    :cond_18
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->d()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
