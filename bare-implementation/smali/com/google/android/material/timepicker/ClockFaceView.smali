.class public Lcom/google/android/material/timepicker/ClockFaceView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga1;


# instance fields
.field public final I:Lyc;

.field public J:I

.field public final K:Lc95;

.field public final L:Lcom/google/android/material/timepicker/ClockHandView;

.field public final M:Landroid/graphics/Rect;

.field public final N:Landroid/graphics/RectF;

.field public final O:Landroid/graphics/Rect;

.field public final P:Landroid/util/SparseArray;

.field public final Q:Lda1;

.field public final R:[I

.field public final S:[F

.field public final T:I

.field public final U:I

.field public final V:I

.field public final W:I

.field public a0:[Ljava/lang/String;

.field public b0:F

.field public final c0:Landroid/content/res/ColorStateList;

.field public d0:Llb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040405

    .line 284
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0d00f9

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lc95;

    .line 15
    .line 16
    invoke-direct {v0}, Lc95;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:Lc95;

    .line 20
    .line 21
    new-instance v1, Lvi6;

    .line 22
    .line 23
    const/high16 v2, 0x3f000000    # 0.5f

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lvi6;-><init>(F)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lc95;->b:La95;

    .line 29
    .line 30
    iget-object v2, v2, La95;->a:Lrb7;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Lrb7;->e(Lvi6;)Ltb7;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lc95;->setShapeAppearanceModel(Ltb7;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:Lc95;

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:Lc95;

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Ltd6;->N:[I

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 66
    .line 67
    new-instance v2, Lyc;

    .line 68
    .line 69
    const/4 v3, 0x5

    .line 70
    invoke-direct {v2, p0, v3}, Lyc;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->I:Lyc;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->M:Landroid/graphics/Rect;

    .line 84
    .line 85
    new-instance v0, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->N:Landroid/graphics/RectF;

    .line 91
    .line 92
    new-instance v0, Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->O:Landroid/graphics/Rect;

    .line 98
    .line 99
    new-instance v0, Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 105
    .line 106
    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [F

    .line 108
    .line 109
    fill-array-data v0, :array_0

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->S:[F

    .line 113
    .line 114
    sget-object v0, Ltd6;->j:[I

    .line 115
    .line 116
    const v2, 0x7f14069a

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    const/4 v0, 0x1

    .line 128
    invoke-static {p1, p2, v0}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->c0:Landroid/content/res/ColorStateList;

    .line 133
    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const v4, 0x7f0d00f8

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    const v3, 0x7f0a030d

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/google/android/material/timepicker/ClockHandView;

    .line 152
    .line 153
    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 154
    .line 155
    const v4, 0x7f070397

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    iput v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->T:I

    .line 163
    .line 164
    const v4, 0x10100a1

    .line 165
    .line 166
    .line 167
    filled-new-array {v4}, [I

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    invoke-virtual {v2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    filled-new-array {v4, v4, v2}, [I

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->R:[I

    .line 188
    .line 189
    iget-object v2, v3, Lcom/google/android/material/timepicker/ClockHandView;->q:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    const v2, 0x7f0603fc

    .line 195
    .line 196
    .line 197
    invoke-static {p1, v2}, Lzh8;->q(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-static {p1, p2, v1}, Lk55;->m(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-nez p1, :cond_0

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockFaceView;->setBackgroundColor(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    .line 221
    .line 222
    new-instance p1, Lca1;

    .line 223
    .line 224
    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 234
    .line 235
    .line 236
    new-instance p1, Lda1;

    .line 237
    .line 238
    invoke-direct {p1, p0}, Lda1;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 239
    .line 240
    .line 241
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Lda1;

    .line 242
    .line 243
    const/16 p1, 0xc

    .line 244
    .line 245
    new-array p1, p1, [Ljava/lang/String;

    .line 246
    .line 247
    const-string p2, ""

    .line 248
    .line 249
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->o(I[Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const p1, 0x7f0703b4

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->U:I

    .line 263
    .line 264
    const p1, 0x7f0703b5

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->V:I

    .line 272
    .line 273
    const p1, 0x7f07039e

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->W:I

    .line 281
    .line 282
    return-void

    .line 283
    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(FZ)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->b0:F

    .line 2
    .line 3
    sub-float/2addr p2, p1

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v0, 0x3a83126f    # 0.001f

    .line 9
    .line 10
    .line 11
    cmpl-float p2, p2, v0

    .line 12
    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->b0:F

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->n()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 p3, -0x1

    .line 9
    if-ne p2, p3, :cond_0

    .line 10
    .line 11
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->I:Lyc;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final n()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/material/timepicker/ClockHandView;->y:Landroid/graphics/RectF;

    .line 6
    .line 7
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v6, v3

    .line 13
    move v5, v4

    .line 14
    :goto_0
    iget-object v7, v0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    iget-object v9, v0, Lcom/google/android/material/timepicker/ClockFaceView;->M:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget-object v10, v0, Lcom/google/android/material/timepicker/ClockFaceView;->N:Landroid/graphics/RectF;

    .line 23
    .line 24
    if-ge v5, v8, :cond_2

    .line 25
    .line 26
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Landroid/widget/TextView;

    .line 31
    .line 32
    if-nez v7, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v7, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    mul-float/2addr v9, v8

    .line 53
    cmpg-float v8, v9, v2

    .line 54
    .line 55
    if-gez v8, :cond_1

    .line 56
    .line 57
    move-object v6, v7

    .line 58
    move v2, v9

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v2, v4

    .line 63
    :goto_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ge v2, v5, :cond_6

    .line 68
    .line 69
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Landroid/widget/TextView;

    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_3
    if-ne v5, v6, :cond_4

    .line 79
    .line 80
    const/4 v8, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    move v8, v4

    .line 83
    :goto_3
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    iget-object v8, v0, Lcom/google/android/material/timepicker/ClockFaceView;->O:Landroid/graphics/Rect;

    .line 93
    .line 94
    invoke-virtual {v5, v4, v8}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 95
    .line 96
    .line 97
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    int-to-float v11, v11

    .line 100
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 101
    .line 102
    int-to-float v8, v8

    .line 103
    invoke-virtual {v10, v11, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v10}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_5

    .line 111
    .line 112
    move-object v11, v3

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    new-instance v11, Landroid/graphics/RadialGradient;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iget v12, v10, Landroid/graphics/RectF;->left:F

    .line 121
    .line 122
    sub-float v12, v8, v12

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    iget v13, v10, Landroid/graphics/RectF;->top:F

    .line 129
    .line 130
    sub-float v13, v8, v13

    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    const/high16 v14, 0x3f000000    # 0.5f

    .line 137
    .line 138
    mul-float/2addr v14, v8

    .line 139
    iget-object v8, v0, Lcom/google/android/material/timepicker/ClockFaceView;->S:[F

    .line 140
    .line 141
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 142
    .line 143
    iget-object v15, v0, Lcom/google/android/material/timepicker/ClockFaceView;->R:[I

    .line 144
    .line 145
    move-object/from16 v16, v8

    .line 146
    .line 147
    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 158
    .line 159
    .line 160
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    return-void
.end method

.method public final o(I[Ljava/lang/String;)V
    .locals 10

    .line 1
    iput-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    :goto_0
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 21
    .line 22
    array-length v5, v5

    .line 23
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x1

    .line 28
    if-ge v3, v5, :cond_4

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 37
    .line 38
    array-length v7, v7

    .line 39
    if-lt v3, v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    if-nez v5, :cond_1

    .line 49
    .line 50
    const v5, 0x7f0d00f7

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 66
    .line 67
    aget-object v7, v7, v3

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const v7, 0x7f0a031d

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    div-int/lit8 v7, v3, 0xc

    .line 83
    .line 84
    add-int/2addr v7, v6

    .line 85
    const v8, 0x7f0a030e

    .line 86
    .line 87
    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v5, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    if-le v7, v6, :cond_2

    .line 96
    .line 97
    move v4, v6

    .line 98
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->Q:Lda1;

    .line 99
    .line 100
    invoke-static {v5, v6}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 101
    .line 102
    .line 103
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->c0:Landroid/content/res/ColorStateList;

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 115
    .line 116
    aget-object v7, v7, v3

    .line 117
    .line 118
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v6, p1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 133
    .line 134
    iget-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    .line 135
    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    iput v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 141
    .line 142
    :cond_5
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->p()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 5
    .line 6
    array-length p0, p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1, p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v4, -0x1

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const v1, 0x7f0a031d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    if-ne v1, v4, :cond_2

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_2
    const/16 v2, 0x42

    .line 52
    .line 53
    const/16 v3, 0xc

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    if-eq p1, v2, :cond_5

    .line 57
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :pswitch_0
    add-int/lit8 v2, v1, -0x1

    .line 67
    .line 68
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 69
    .line 70
    array-length v6, v5

    .line 71
    add-int/2addr v2, v6

    .line 72
    array-length v5, v5

    .line 73
    rem-int/2addr v2, v5

    .line 74
    goto :goto_2

    .line 75
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .line 76
    .line 77
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->a0:[Ljava/lang/String;

    .line 78
    .line 79
    array-length v5, v5

    .line 80
    rem-int/2addr v2, v5

    .line 81
    :goto_2
    if-eq v2, v1, :cond_4

    .line 82
    .line 83
    div-int/lit8 p1, v2, 0xc

    .line 84
    .line 85
    add-int/2addr p1, v4

    .line 86
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 87
    .line 88
    iget v1, p2, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 89
    .line 90
    if-eq p1, v1, :cond_3

    .line 91
    .line 92
    iput p1, p2, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 95
    .line 96
    .line 97
    :cond_3
    rem-int/2addr v2, v3

    .line 98
    int-to-float p1, v2

    .line 99
    const/high16 v1, 0x41f00000    # 30.0f

    .line 100
    .line 101
    mul-float/2addr p1, v1

    .line 102
    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->n()V

    .line 106
    .line 107
    .line 108
    return v4

    .line 109
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_5
    :pswitch_2
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->d0:Llb;

    .line 115
    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    iget-object p0, p0, Llb;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lcom/google/android/material/timepicker/TimePickerView;

    .line 121
    .line 122
    iget-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->J:Lcom/google/android/material/chip/Chip;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->O:Lm38;

    .line 131
    .line 132
    if-eqz p0, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, v3, v4}, Lm38;->d(IZ)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return v4

    .line 138
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    return p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->n()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    iget v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->W:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    iget v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->U:I

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    div-float/2addr v3, v1

    .line 22
    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->V:I

    .line 23
    .line 24
    int-to-float v1, v1

    .line 25
    div-float/2addr v1, v0

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    div-float/2addr v2, v0

    .line 37
    float-to-int v0, v2

    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    div-int/lit8 v0, v0, 0x2

    .line 73
    .line 74
    iget-object p2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->L:Lcom/google/android/material/timepicker/ClockHandView;

    .line 75
    .line 76
    iget v1, p2, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 77
    .line 78
    sub-int/2addr v0, v1

    .line 79
    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->T:I

    .line 80
    .line 81
    sub-int/2addr v0, v1

    .line 82
    iget v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 83
    .line 84
    if-eq v0, v1, :cond_2

    .line 85
    .line 86
    if-eq v0, v1, :cond_2

    .line 87
    .line 88
    iput v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->p()V

    .line 91
    .line 92
    .line 93
    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 94
    .line 95
    iput v0, p2, Lcom/google/android/material/timepicker/ClockHandView;->L:I

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 98
    .line 99
    .line 100
    :cond_2
    invoke-super {p0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->I:Lyc;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 12

    .line 1
    new-instance v0, Lnt1;

    .line 2
    .line 3
    invoke-direct {v0}, Lnt1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lnt1;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const v5, 0x7f0a015c

    .line 21
    .line 22
    .line 23
    if-ge v3, v4, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eq v6, v5, :cond_3

    .line 34
    .line 35
    const-string v5, "skip"

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const v5, 0x7f0a030e

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 56
    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    new-instance v6, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_8

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    iget v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->J:I

    .line 127
    .line 128
    const/4 v7, 0x2

    .line 129
    if-ne v3, v7, :cond_6

    .line 130
    .line 131
    int-to-float v3, v6

    .line 132
    const v6, 0x3f28f5c3    # 0.66f

    .line 133
    .line 134
    .line 135
    mul-float/2addr v3, v6

    .line 136
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const/4 v7, 0x0

    .line 145
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_5

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Landroid/view/View;

    .line 156
    .line 157
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    iget-object v10, v0, Lnt1;->c:Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_7

    .line 172
    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    new-instance v11, Lit1;

    .line 178
    .line 179
    invoke-direct {v11}, Lit1;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Lit1;

    .line 194
    .line 195
    iget-object v8, v8, Lit1;->d:Ljt1;

    .line 196
    .line 197
    iput v5, v8, Ljt1;->z:I

    .line 198
    .line 199
    iput v6, v8, Ljt1;->A:I

    .line 200
    .line 201
    iput v7, v8, Ljt1;->B:F

    .line 202
    .line 203
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    int-to-float v8, v8

    .line 208
    const/high16 v9, 0x43b40000    # 360.0f

    .line 209
    .line 210
    div-float/2addr v9, v8

    .line 211
    add-float/2addr v7, v9

    .line 212
    goto :goto_2

    .line 213
    :cond_8
    invoke-virtual {v0, p0}, Lnt1;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 214
    .line 215
    .line 216
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lnt1;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 221
    .line 222
    .line 223
    move v0, v2

    .line 224
    :goto_3
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->P:Landroid/util/SparseArray;

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-ge v0, v3, :cond_9

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Landroid/widget/TextView;

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_9
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->K:Lc95;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lc95;->t(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
