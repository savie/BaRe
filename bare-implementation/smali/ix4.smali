.class public abstract Lix4;
.super Landroid/view/ViewGroup;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[I

.field public e:[I

.field public f:Ljava/lang/ref/WeakReference;

.field public k:I

.field public n:I

.field public p:I

.field public q:I


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 11
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget p0, p0, Lix4;->a:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public getMinChildWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lix4;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public getPrimaryActionSwipeMode()I
    .locals 0

    .line 1
    iget p0, p0, Lix4;->q:I

    .line 2
    .line 3
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    .line 1
    iget p1, p0, Lix4;->c:I

    .line 2
    .line 3
    iget p2, p0, Lix4;->a:I

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-float p1, p1

    .line 11
    int-to-float p2, p2

    .line 12
    div-float/2addr p1, p2

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    mul-float/2addr p2, p1

    .line 19
    float-to-int p2, p2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 29
    .line 30
    .line 31
    move-result p5

    .line 32
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne p5, v1, :cond_1

    .line 35
    .line 36
    add-int/lit8 p5, p4, -0x1

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p5, v0

    .line 41
    :goto_1
    if-ge v0, p4, :cond_3

    .line 42
    .line 43
    mul-int v2, v1, v0

    .line 44
    .line 45
    add-int/2addr v2, p5

    .line 46
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    if-ne v3, v4, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 74
    .line 75
    add-int/2addr v6, p3

    .line 76
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 77
    .line 78
    int-to-float v7, v7

    .line 79
    mul-float/2addr v7, p1

    .line 80
    float-to-int v7, v7

    .line 81
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 82
    .line 83
    int-to-float v3, v3

    .line 84
    mul-float/2addr v3, p1

    .line 85
    float-to-int v3, v3

    .line 86
    add-int v8, p2, v7

    .line 87
    .line 88
    add-int v9, v8, v4

    .line 89
    .line 90
    add-int/2addr v5, v6

    .line 91
    invoke-virtual {v2, v8, v6, v9, v5}, Landroid/view/View;->layout(IIII)V

    .line 92
    .line 93
    .line 94
    add-int/2addr v7, v4

    .line 95
    add-int/2addr v7, v3

    .line 96
    add-int/2addr v7, p2

    .line 97
    move p2, v7

    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    iget v1, v0, Lix4;->p:I

    .line 12
    .line 13
    iget v3, v0, Lix4;->b:I

    .line 14
    .line 15
    const/high16 v7, 0x40000000    # 2.0f

    .line 16
    .line 17
    const/4 v8, -0x1

    .line 18
    const/16 v9, 0x8

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    if-ne v3, v8, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-ne v1, v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v7, :cond_5

    .line 34
    .line 35
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    iget v1, v0, Lix4;->n:I

    .line 43
    .line 44
    iget v3, v0, Lix4;->a:I

    .line 45
    .line 46
    if-ne v3, v8, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    if-ne v1, v2, :cond_4

    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :cond_4
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_9

    .line 58
    .line 59
    if-ne v1, v7, :cond_5

    .line 60
    .line 61
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eq v1, v3, :cond_9

    .line 66
    .line 67
    :cond_5
    :goto_1
    iput v4, v0, Lix4;->p:I

    .line 68
    .line 69
    iput v2, v0, Lix4;->n:I

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    move v3, v10

    .line 76
    move v12, v3

    .line 77
    move v13, v12

    .line 78
    move v14, v13

    .line 79
    :goto_2
    if-ge v12, v11, :cond_7

    .line 80
    .line 81
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-ne v5, v9, :cond_6

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v15, v5

    .line 97
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 108
    .line 109
    add-int/2addr v5, v7

    .line 110
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 111
    .line 112
    add-int/2addr v5, v7

    .line 113
    add-int/2addr v3, v5

    .line 114
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 119
    .line 120
    add-int/2addr v5, v7

    .line 121
    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 122
    .line 123
    add-int/2addr v5, v7

    .line 124
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 137
    .line 138
    const/high16 v7, 0x40000000    # 2.0f

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    add-int/2addr v5, v1

    .line 150
    add-int/2addr v5, v3

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    add-int/2addr v5, v3

    .line 168
    add-int/2addr v5, v13

    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    invoke-static {v3, v4, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    const v5, 0xffffff

    .line 182
    .line 183
    .line 184
    and-int/2addr v3, v5

    .line 185
    invoke-static {v1, v2, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iput v1, v0, Lix4;->a:I

    .line 190
    .line 191
    shl-int/lit8 v1, v14, 0x10

    .line 192
    .line 193
    invoke-static {v3, v4, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iput v1, v0, Lix4;->b:I

    .line 198
    .line 199
    new-array v1, v6, [I

    .line 200
    .line 201
    iput-object v1, v0, Lix4;->d:[I

    .line 202
    .line 203
    new-array v1, v6, [I

    .line 204
    .line 205
    iput-object v1, v0, Lix4;->e:[I

    .line 206
    .line 207
    move v1, v10

    .line 208
    :goto_4
    if-ge v1, v6, :cond_9

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eq v3, v9, :cond_8

    .line 219
    .line 220
    iget-object v3, v0, Lix4;->d:[I

    .line 221
    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    aput v4, v3, v1

    .line 227
    .line 228
    iget-object v3, v0, Lix4;->e:[I

    .line 229
    .line 230
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    aput v4, v3, v1

    .line 235
    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 241
    .line 242
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 243
    .line 244
    if-ne v2, v8, :cond_8

    .line 245
    .line 246
    iget-object v2, v0, Lix4;->e:[I

    .line 247
    .line 248
    iget v3, v0, Lix4;->b:I

    .line 249
    .line 250
    aput v3, v2, v1

    .line 251
    .line 252
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_9
    :goto_5
    iget-object v1, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 256
    .line 257
    const/4 v2, 0x0

    .line 258
    if-eqz v1, :cond_a

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    if-nez v1, :cond_e

    .line 265
    .line 266
    :cond_a
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 273
    .line 274
    if-nez v3, :cond_c

    .line 275
    .line 276
    :cond_b
    move-object v7, v2

    .line 277
    goto :goto_7

    .line 278
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Landroid/view/ViewGroup;

    .line 283
    .line 284
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    move v5, v10

    .line 289
    :goto_6
    if-ge v5, v4, :cond_b

    .line 290
    .line 291
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    instance-of v8, v7, Lcx4;

    .line 296
    .line 297
    if-eqz v8, :cond_d

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 301
    .line 302
    goto :goto_6

    .line 303
    :goto_7
    invoke-direct {v1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iput-object v1, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 307
    .line 308
    :cond_e
    iget-object v1, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    if-eqz v1, :cond_f

    .line 315
    .line 316
    iget-object v1, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    check-cast v1, Lcx4;

    .line 323
    .line 324
    invoke-virtual {v1}, Lcx4;->getSwipeMaxOvershoot()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    goto :goto_8

    .line 329
    :cond_f
    move v1, v10

    .line 330
    :goto_8
    iget-object v3, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 331
    .line 332
    if-eqz v3, :cond_10

    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    if-eqz v3, :cond_10

    .line 339
    .line 340
    iget-object v3, v0, Lix4;->f:Ljava/lang/ref/WeakReference;

    .line 341
    .line 342
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Landroid/view/View;

    .line 347
    .line 348
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    goto :goto_9

    .line 353
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    instance-of v3, v3, Landroid/view/View;

    .line 358
    .line 359
    if-eqz v3, :cond_11

    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    check-cast v3, Landroid/view/View;

    .line 366
    .line 367
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    goto :goto_9

    .line 372
    :cond_11
    iget v3, v0, Lix4;->a:I

    .line 373
    .line 374
    :goto_9
    iget v4, v0, Lix4;->c:I

    .line 375
    .line 376
    if-nez v4, :cond_12

    .line 377
    .line 378
    const/4 v4, 0x4

    .line 379
    goto :goto_a

    .line 380
    :cond_12
    move v4, v10

    .line 381
    :goto_a
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    iget v4, v0, Lix4;->c:I

    .line 385
    .line 386
    if-nez v4, :cond_13

    .line 387
    .line 388
    iget v1, v0, Lix4;->b:I

    .line 389
    .line 390
    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_13
    if-nez v6, :cond_14

    .line 395
    .line 396
    iget v1, v0, Lix4;->b:I

    .line 397
    .line 398
    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_14
    iget v5, v0, Lix4;->q:I

    .line 403
    .line 404
    const/4 v7, 0x0

    .line 405
    if-eqz v5, :cond_1f

    .line 406
    .line 407
    iget v5, v0, Lix4;->a:I

    .line 408
    .line 409
    add-int/2addr v1, v5

    .line 410
    if-le v4, v1, :cond_1f

    .line 411
    .line 412
    if-le v3, v5, :cond_1f

    .line 413
    .line 414
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    const/4 v4, 0x1

    .line 419
    if-ne v1, v4, :cond_15

    .line 420
    .line 421
    move v1, v4

    .line 422
    goto :goto_b

    .line 423
    :cond_15
    move v1, v10

    .line 424
    :goto_b
    invoke-static {v0}, Llg7;->w(Landroid/view/View;)Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-ne v5, v1, :cond_17

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    move v4, v10

    .line 435
    :goto_c
    if-ge v4, v1, :cond_19

    .line 436
    .line 437
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    if-eq v5, v9, :cond_16

    .line 446
    .line 447
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    goto :goto_e

    .line 452
    :cond_16
    add-int/lit8 v4, v4, 0x1

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    sub-int/2addr v1, v4

    .line 460
    :goto_d
    if-ltz v1, :cond_19

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eq v4, v9, :cond_18

    .line 471
    .line 472
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    goto :goto_e

    .line 477
    :cond_18
    add-int/lit8 v1, v1, -0x1

    .line 478
    .line 479
    goto :goto_d

    .line 480
    :cond_19
    :goto_e
    if-eqz v2, :cond_1e

    .line 481
    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    add-int/2addr v4, v1

    .line 491
    iget v1, v0, Lix4;->c:I

    .line 492
    .line 493
    iget v5, v0, Lix4;->a:I

    .line 494
    .line 495
    sub-int/2addr v1, v5

    .line 496
    int-to-float v1, v1

    .line 497
    sub-int v5, v3, v5

    .line 498
    .line 499
    int-to-float v5, v5

    .line 500
    div-float/2addr v1, v5

    .line 501
    const/high16 v5, 0x3f800000    # 1.0f

    .line 502
    .line 503
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    move v6, v10

    .line 516
    :goto_f
    const/16 v7, 0xff

    .line 517
    .line 518
    if-ge v6, v5, :cond_1d

    .line 519
    .line 520
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 525
    .line 526
    .line 527
    move-result v11

    .line 528
    if-ne v11, v9, :cond_1a

    .line 529
    .line 530
    goto :goto_10

    .line 531
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v11

    .line 535
    if-ne v6, v11, :cond_1b

    .line 536
    .line 537
    goto :goto_10

    .line 538
    :cond_1b
    iget-object v11, v0, Lix4;->d:[I

    .line 539
    .line 540
    aget v11, v11, v6

    .line 541
    .line 542
    iget v12, v0, Lix4;->k:I

    .line 543
    .line 544
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    .line 545
    .line 546
    .line 547
    move-result v11

    .line 548
    iget v12, v0, Lix4;->k:I

    .line 549
    .line 550
    invoke-static {v1, v11, v12}, Led;->c(FII)I

    .line 551
    .line 552
    .line 553
    move-result v11

    .line 554
    const/high16 v12, 0x40000000    # 2.0f

    .line 555
    .line 556
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 557
    .line 558
    .line 559
    move-result v11

    .line 560
    iget-object v13, v0, Lix4;->e:[I

    .line 561
    .line 562
    aget v13, v13, v6

    .line 563
    .line 564
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 565
    .line 566
    .line 567
    move-result v13

    .line 568
    invoke-virtual {v8, v11, v13}, Landroid/view/View;->measure(II)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 576
    .line 577
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 578
    .line 579
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 580
    .line 581
    add-int/2addr v12, v11

    .line 582
    iget v11, v0, Lix4;->k:I

    .line 583
    .line 584
    add-int/2addr v12, v11

    .line 585
    add-int/2addr v12, v4

    .line 586
    instance-of v4, v8, Lcom/google/android/material/button/MaterialButton;

    .line 587
    .line 588
    if-eqz v4, :cond_1c

    .line 589
    .line 590
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 591
    .line 592
    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    if-eqz v4, :cond_1c

    .line 597
    .line 598
    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-static {v1, v7, v10}, Led;->c(FII)I

    .line 603
    .line 604
    .line 605
    move-result v7

    .line 606
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 607
    .line 608
    .line 609
    :cond_1c
    move v4, v12

    .line 610
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 611
    .line 612
    goto :goto_f

    .line 613
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 614
    .line 615
    .line 616
    move-result v5

    .line 617
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 626
    .line 627
    sub-int v4, v3, v4

    .line 628
    .line 629
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 630
    .line 631
    sub-int/2addr v4, v8

    .line 632
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 633
    .line 634
    sub-int/2addr v4, v6

    .line 635
    iget v6, v0, Lix4;->c:I

    .line 636
    .line 637
    sub-int/2addr v6, v3

    .line 638
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    iget-object v6, v0, Lix4;->d:[I

    .line 643
    .line 644
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 645
    .line 646
    .line 647
    move-result v8

    .line 648
    aget v6, v6, v8

    .line 649
    .line 650
    invoke-static {v1, v6, v4}, Led;->c(FII)I

    .line 651
    .line 652
    .line 653
    move-result v1

    .line 654
    add-int/2addr v1, v3

    .line 655
    const/high16 v12, 0x40000000    # 2.0f

    .line 656
    .line 657
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    iget-object v3, v0, Lix4;->e:[I

    .line 662
    .line 663
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    aget v2, v3, v2

    .line 668
    .line 669
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 674
    .line 675
    .line 676
    instance-of v1, v5, Lcom/google/android/material/button/MaterialButton;

    .line 677
    .line 678
    if-eqz v1, :cond_1e

    .line 679
    .line 680
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 681
    .line 682
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    if-eqz v1, :cond_1e

    .line 687
    .line 688
    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 693
    .line 694
    .line 695
    :cond_1e
    iget v1, v0, Lix4;->c:I

    .line 696
    .line 697
    iget v2, v0, Lix4;->b:I

    .line 698
    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 700
    .line 701
    .line 702
    return-void

    .line 703
    :cond_1f
    iget v1, v0, Lix4;->a:I

    .line 704
    .line 705
    int-to-float v1, v1

    .line 706
    const/high16 v2, 0x40800000    # 4.0f

    .line 707
    .line 708
    div-float v2, v1, v2

    .line 709
    .line 710
    const/high16 v3, 0x40000000    # 2.0f

    .line 711
    .line 712
    div-float/2addr v1, v3

    .line 713
    int-to-float v3, v4

    .line 714
    const/high16 v4, 0x437f0000    # 255.0f

    .line 715
    .line 716
    invoke-static {v7, v4, v2, v1, v3}, Led;->b(FFFFF)F

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    float-to-int v1, v1

    .line 721
    iget v2, v0, Lix4;->c:I

    .line 722
    .line 723
    int-to-float v2, v2

    .line 724
    iget v3, v0, Lix4;->a:I

    .line 725
    .line 726
    int-to-float v3, v3

    .line 727
    div-float/2addr v2, v3

    .line 728
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    int-to-float v3, v3

    .line 733
    mul-float/2addr v3, v2

    .line 734
    float-to-int v3, v3

    .line 735
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 736
    .line 737
    .line 738
    move-result v4

    .line 739
    int-to-float v4, v4

    .line 740
    mul-float/2addr v4, v2

    .line 741
    float-to-int v4, v4

    .line 742
    move v5, v10

    .line 743
    :goto_11
    if-ge v10, v6, :cond_22

    .line 744
    .line 745
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 746
    .line 747
    .line 748
    move-result-object v7

    .line 749
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 750
    .line 751
    .line 752
    move-result v8

    .line 753
    if-ne v8, v9, :cond_20

    .line 754
    .line 755
    const/high16 v12, 0x40000000    # 2.0f

    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_20
    iget v8, v0, Lix4;->k:I

    .line 759
    .line 760
    iget-object v11, v0, Lix4;->d:[I

    .line 761
    .line 762
    aget v11, v11, v10

    .line 763
    .line 764
    int-to-float v11, v11

    .line 765
    mul-float/2addr v11, v2

    .line 766
    float-to-int v11, v11

    .line 767
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    .line 768
    .line 769
    .line 770
    move-result v8

    .line 771
    const/high16 v12, 0x40000000    # 2.0f

    .line 772
    .line 773
    invoke-static {v8, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    iget-object v13, v0, Lix4;->e:[I

    .line 778
    .line 779
    aget v13, v13, v10

    .line 780
    .line 781
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 782
    .line 783
    .line 784
    move-result v13

    .line 785
    invoke-virtual {v7, v11, v13}, Landroid/view/View;->measure(II)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 789
    .line 790
    .line 791
    move-result-object v11

    .line 792
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 793
    .line 794
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 795
    .line 796
    int-to-float v13, v13

    .line 797
    mul-float/2addr v13, v2

    .line 798
    float-to-int v13, v13

    .line 799
    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 800
    .line 801
    int-to-float v11, v11

    .line 802
    mul-float/2addr v11, v2

    .line 803
    float-to-int v11, v11

    .line 804
    add-int/2addr v8, v13

    .line 805
    add-int/2addr v8, v11

    .line 806
    add-int/2addr v8, v5

    .line 807
    instance-of v5, v7, Lcom/google/android/material/button/MaterialButton;

    .line 808
    .line 809
    if-eqz v5, :cond_21

    .line 810
    .line 811
    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 812
    .line 813
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 814
    .line 815
    .line 816
    move-result-object v5

    .line 817
    if-eqz v5, :cond_21

    .line 818
    .line 819
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 824
    .line 825
    .line 826
    :cond_21
    move v5, v8

    .line 827
    :goto_12
    add-int/lit8 v10, v10, 0x1

    .line 828
    .line 829
    goto :goto_11

    .line 830
    :cond_22
    iget v1, v0, Lix4;->c:I

    .line 831
    .line 832
    add-int/2addr v5, v3

    .line 833
    add-int/2addr v5, v4

    .line 834
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    iget v2, v0, Lix4;->b:I

    .line 839
    .line 840
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 841
    .line 842
    .line 843
    return-void
.end method

.method public setMinChildWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lix4;->k:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lix4;->k:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPrimaryActionSwipeMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lix4;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public setRevealedWidth(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iget v0, p0, Lix4;->c:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iput p1, p0, Lix4;->c:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
