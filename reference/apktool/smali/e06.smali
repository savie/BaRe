.class public final Le06;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final G:[F

.field public H:Landroid/view/View$OnClickListener;

.field public I:Landroid/view/View$OnLongClickListener;

.field public J:Ld06;

.field public K:I

.field public L:I

.field public M:Z

.field public N:Landroid/widget/ImageView$ScaleType;

.field public final O:Lrb;

.field public final a:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public k:Z

.field public final n:Lcom/github/chrisbanes/photoview/PhotoView;

.field public final p:Landroid/view/GestureDetector;

.field public final q:Lx62;

.field public final r:Landroid/graphics/Matrix;

.field public final t:Landroid/graphics/Matrix;

.field public final x:Landroid/graphics/Matrix;

.field public final y:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/PhotoView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le06;->a:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 10
    .line 11
    const/16 v0, 0xc8

    .line 12
    .line 13
    iput v0, p0, Le06;->b:I

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    iput v0, p0, Le06;->c:F

    .line 18
    .line 19
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 20
    .line 21
    iput v0, p0, Le06;->d:F

    .line 22
    .line 23
    const/high16 v0, 0x40400000    # 3.0f

    .line 24
    .line 25
    iput v0, p0, Le06;->e:F

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Le06;->f:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Le06;->k:Z

    .line 32
    .line 33
    new-instance v1, Landroid/graphics/Matrix;

    .line 34
    .line 35
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Le06;->r:Landroid/graphics/Matrix;

    .line 39
    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Le06;->t:Landroid/graphics/Matrix;

    .line 46
    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Le06;->y:Landroid/graphics/RectF;

    .line 60
    .line 61
    const/16 v1, 0x9

    .line 62
    .line 63
    new-array v1, v1, [F

    .line 64
    .line 65
    iput-object v1, p0, Le06;->G:[F

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    iput v1, p0, Le06;->K:I

    .line 69
    .line 70
    iput v1, p0, Le06;->L:I

    .line 71
    .line 72
    iput-boolean v0, p0, Le06;->M:Z

    .line 73
    .line 74
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 75
    .line 76
    iput-object v0, p0, Le06;->N:Landroid/widget/ImageView$ScaleType;

    .line 77
    .line 78
    new-instance v0, Lrb;

    .line 79
    .line 80
    const/16 v1, 0x13

    .line 81
    .line 82
    invoke-direct {v0, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Le06;->O:Lrb;

    .line 86
    .line 87
    iput-object p1, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    return-void

    .line 102
    :cond_0
    new-instance v1, Lx62;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2, v0}, Lx62;-><init>(Landroid/content/Context;Lrb;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Le06;->q:Lx62;

    .line 112
    .line 113
    new-instance v0, Landroid/view/GestureDetector;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v1, Lzz5;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lzz5;-><init>(Le06;)V

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Le06;->p:Landroid/view/GestureDetector;

    .line 128
    .line 129
    new-instance p1, La06;

    .line 130
    .line 131
    invoke-direct {p1, p0}, La06;-><init>(Le06;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le06;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object p0, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    int-to-float v4, v4

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    iget-object v5, p0, Le06;->y:Landroid/graphics/RectF;

    .line 25
    .line 26
    invoke-virtual {v5, v3, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v5, 0x0

    .line 34
    :goto_0
    const/4 v0, 0x0

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    sub-int/2addr v6, v7

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    sub-int/2addr v6, v7

    .line 60
    int-to-float v6, v6

    .line 61
    cmpg-float v7, v2, v6

    .line 62
    .line 63
    const/4 v8, -0x1

    .line 64
    const/high16 v9, 0x40000000    # 2.0f

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    const/4 v11, 0x1

    .line 68
    const/4 v12, 0x2

    .line 69
    if-gtz v7, :cond_4

    .line 70
    .line 71
    sget-object v7, Lb06;->a:[I

    .line 72
    .line 73
    iget-object v13, p0, Le06;->N:Landroid/widget/ImageView$ScaleType;

    .line 74
    .line 75
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    aget v7, v7, v13

    .line 80
    .line 81
    iget v13, v5, Landroid/graphics/RectF;->top:F

    .line 82
    .line 83
    if-eq v7, v12, :cond_3

    .line 84
    .line 85
    if-eq v7, v10, :cond_2

    .line 86
    .line 87
    sub-float/2addr v6, v2

    .line 88
    div-float/2addr v6, v9

    .line 89
    :goto_1
    sub-float/2addr v6, v13

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    sub-float/2addr v6, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    neg-float v6, v13

    .line 94
    :goto_2
    iput v12, p0, Le06;->L:I

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget v2, v5, Landroid/graphics/RectF;->top:F

    .line 98
    .line 99
    cmpl-float v7, v2, v3

    .line 100
    .line 101
    if-lez v7, :cond_5

    .line 102
    .line 103
    iput v0, p0, Le06;->L:I

    .line 104
    .line 105
    neg-float v6, v2

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    iget v2, v5, Landroid/graphics/RectF;->bottom:F

    .line 108
    .line 109
    cmpg-float v7, v2, v6

    .line 110
    .line 111
    if-gez v7, :cond_6

    .line 112
    .line 113
    iput v11, p0, Le06;->L:I

    .line 114
    .line 115
    sub-float/2addr v6, v2

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    iput v8, p0, Le06;->L:I

    .line 118
    .line 119
    move v6, v3

    .line 120
    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    sub-int/2addr v2, v7

    .line 129
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    sub-int/2addr v2, v1

    .line 134
    int-to-float v1, v2

    .line 135
    cmpg-float v2, v4, v1

    .line 136
    .line 137
    if-gtz v2, :cond_9

    .line 138
    .line 139
    sget-object v0, Lb06;->a:[I

    .line 140
    .line 141
    iget-object v2, p0, Le06;->N:Landroid/widget/ImageView$ScaleType;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    aget v0, v0, v2

    .line 148
    .line 149
    iget v2, v5, Landroid/graphics/RectF;->left:F

    .line 150
    .line 151
    if-eq v0, v12, :cond_8

    .line 152
    .line 153
    if-eq v0, v10, :cond_7

    .line 154
    .line 155
    sub-float/2addr v1, v4

    .line 156
    div-float/2addr v1, v9

    .line 157
    :goto_4
    sub-float/2addr v1, v2

    .line 158
    move v3, v1

    .line 159
    goto :goto_5

    .line 160
    :cond_7
    sub-float/2addr v1, v4

    .line 161
    goto :goto_4

    .line 162
    :cond_8
    neg-float v0, v2

    .line 163
    move v3, v0

    .line 164
    :goto_5
    iput v12, p0, Le06;->K:I

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_9
    iget v2, v5, Landroid/graphics/RectF;->left:F

    .line 168
    .line 169
    cmpl-float v4, v2, v3

    .line 170
    .line 171
    if-lez v4, :cond_a

    .line 172
    .line 173
    iput v0, p0, Le06;->K:I

    .line 174
    .line 175
    neg-float v3, v2

    .line 176
    goto :goto_6

    .line 177
    :cond_a
    iget v0, v5, Landroid/graphics/RectF;->right:F

    .line 178
    .line 179
    cmpg-float v2, v0, v1

    .line 180
    .line 181
    if-gez v2, :cond_b

    .line 182
    .line 183
    sub-float v3, v1, v0

    .line 184
    .line 185
    iput v11, p0, Le06;->K:I

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_b
    iput v8, p0, Le06;->K:I

    .line 189
    .line 190
    :goto_6
    iget-object p0, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 191
    .line 192
    invoke-virtual {p0, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 193
    .line 194
    .line 195
    return v11
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Le06;->r:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Le06;->t:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    .line 12
    .line 13
    return-object v1
.end method

.method public final d()F
    .locals 7

    .line 1
    iget-object v0, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object p0, p0, Le06;->G:[F

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v1, p0, v1

    .line 10
    .line 11
    float-to-double v1, v1

    .line 12
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    double-to-float v1, v1

    .line 19
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    aget p0, p0, v0

    .line 24
    .line 25
    float-to-double v5, p0

    .line 26
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    double-to-float p0, v2

    .line 31
    add-float/2addr v1, p0

    .line 32
    float-to-double v0, v1

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    double-to-float p0, v0

    .line 38
    return p0
.end method

.method public final e(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Le06;->c:F

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Le06;->e:F

    .line 8
    .line 9
    cmpl-float v0, p1, v0

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    new-instance v1, Lc06;

    .line 16
    .line 17
    invoke-virtual {p0}, Le06;->d()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    move-object v2, p0

    .line 22
    move v4, p1

    .line 23
    move v5, p2

    .line 24
    move v6, p3

    .line 25
    invoke-direct/range {v1 .. v6}, Lc06;-><init>(Le06;FFFF)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v2, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    move-object v2, p0

    .line 35
    move v4, p1

    .line 36
    move v5, p2

    .line 37
    move v6, p3

    .line 38
    iget-object p0, v2, Le06;->x:Landroid/graphics/Matrix;

    .line 39
    .line 40
    invoke-virtual {p0, v4, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Le06;->a()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string p0, "Scale must be within the range of minScale and maxScale"

    .line 48
    .line 49
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Le06;->M:Z

    .line 2
    .line 3
    iget-object v1, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Le06;->g(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Le06;->a()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Le06;->b()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sub-int/2addr v1, v2

    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    sub-int/2addr v2, v3

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    int-to-float v2, v2

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v4, p0, Le06;->r:Landroid/graphics/Matrix;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 47
    .line 48
    .line 49
    int-to-float v3, v3

    .line 50
    div-float v5, v1, v3

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    div-float v6, v2, p1

    .line 54
    .line 55
    iget-object v7, p0, Le06;->N:Landroid/widget/ImageView$ScaleType;

    .line 56
    .line 57
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const/high16 v10, 0x40000000    # 2.0f

    .line 61
    .line 62
    if-ne v7, v8, :cond_1

    .line 63
    .line 64
    sub-float/2addr v1, v3

    .line 65
    div-float/2addr v1, v10

    .line 66
    sub-float/2addr v2, p1

    .line 67
    div-float/2addr v2, v10

    .line 68
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 73
    .line 74
    if-ne v7, v8, :cond_2

    .line 75
    .line 76
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 81
    .line 82
    .line 83
    mul-float/2addr v3, v5

    .line 84
    sub-float/2addr v1, v3

    .line 85
    div-float/2addr v1, v10

    .line 86
    mul-float/2addr p1, v5

    .line 87
    sub-float/2addr v2, p1

    .line 88
    div-float/2addr v2, v10

    .line 89
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 94
    .line 95
    if-ne v7, v8, :cond_3

    .line 96
    .line 97
    const/high16 v7, 0x3f800000    # 1.0f

    .line 98
    .line 99
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 108
    .line 109
    .line 110
    mul-float/2addr v3, v5

    .line 111
    sub-float/2addr v1, v3

    .line 112
    div-float/2addr v1, v10

    .line 113
    mul-float/2addr p1, v5

    .line 114
    sub-float/2addr v2, p1

    .line 115
    div-float/2addr v2, v10

    .line 116
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    new-instance v5, Landroid/graphics/RectF;

    .line 121
    .line 122
    invoke-direct {v5, v9, v9, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Landroid/graphics/RectF;

    .line 126
    .line 127
    invoke-direct {p1, v9, v9, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lb06;->a:[I

    .line 131
    .line 132
    iget-object v2, p0, Le06;->N:Landroid/widget/ImageView$ScaleType;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    aget v1, v1, v2

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    if-eq v1, v2, :cond_7

    .line 142
    .line 143
    const/4 v2, 0x2

    .line 144
    if-eq v1, v2, :cond_6

    .line 145
    .line 146
    const/4 v2, 0x3

    .line 147
    if-eq v1, v2, :cond_5

    .line 148
    .line 149
    const/4 v2, 0x4

    .line 150
    if-eq v1, v2, :cond_4

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 154
    .line 155
    invoke-virtual {v4, v5, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_5
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 160
    .line 161
    invoke-virtual {v4, v5, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_6
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 166
    .line 167
    invoke-virtual {v4, v5, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 172
    .line 173
    invoke-virtual {v4, v5, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 174
    .line 175
    .line 176
    :goto_0
    iget-object p1, p0, Le06;->x:Landroid/graphics/Matrix;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Le06;->a()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Le06;->b()Z

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_1

    .line 2
    .line 3
    if-ne p3, p7, :cond_1

    .line 4
    .line 5
    if-ne p4, p8, :cond_1

    .line 6
    .line 7
    if-eq p5, p9, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Le06;->g(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Le06;->M:Z

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz v0, :cond_c

    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_c

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    if-eq v0, v7, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v0, v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Le06;->d()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v3, p0, Le06;->c:F

    .line 35
    .line 36
    cmpg-float v0, v0, v3

    .line 37
    .line 38
    iget-object v3, p0, Le06;->n:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 39
    .line 40
    iget-object v4, p0, Le06;->y:Landroid/graphics/RectF;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    if-gez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Le06;->b()Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-float v2, v2

    .line 63
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 72
    .line 73
    .line 74
    move-object v2, v4

    .line 75
    :cond_1
    if-eqz v2, :cond_6

    .line 76
    .line 77
    new-instance v0, Lc06;

    .line 78
    .line 79
    move-object v4, v2

    .line 80
    invoke-virtual {p0}, Le06;->d()F

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    iget v3, p0, Le06;->c:F

    .line 85
    .line 86
    move-object v5, v4

    .line 87
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    move-object v1, p0

    .line 96
    invoke-direct/range {v0 .. v5}, Lc06;-><init>(Le06;FFFF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Le06;->d()F

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget v8, p0, Le06;->e:F

    .line 108
    .line 109
    cmpl-float v0, v0, v8

    .line 110
    .line 111
    if-lez v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Le06;->b()Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Le06;->c()Landroid/graphics/Matrix;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    int-to-float v2, v2

    .line 131
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    int-to-float v3, v3

    .line 136
    invoke-virtual {v4, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 140
    .line 141
    .line 142
    move-object v2, v4

    .line 143
    :cond_3
    if-eqz v2, :cond_6

    .line 144
    .line 145
    new-instance v0, Lc06;

    .line 146
    .line 147
    move-object v4, v2

    .line 148
    invoke-virtual {p0}, Le06;->d()F

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    iget v3, p0, Le06;->e:F

    .line 153
    .line 154
    move-object v5, v4

    .line 155
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    move-object v1, p0

    .line 164
    invoke-direct/range {v0 .. v5}, Lc06;-><init>(Le06;FFFF)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    :goto_0
    move v0, v7

    .line 171
    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_5

    .line 177
    .line 178
    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object v0, p0, Le06;->J:Ld06;

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    iget-object v0, v0, Ld06;->a:Landroid/widget/OverScroller;

    .line 186
    .line 187
    invoke-virtual {v0, v7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 188
    .line 189
    .line 190
    iput-object v2, p0, Le06;->J:Ld06;

    .line 191
    .line 192
    :cond_6
    :goto_1
    move v0, v6

    .line 193
    :goto_2
    iget-object v2, p0, Le06;->q:Lx62;

    .line 194
    .line 195
    if-eqz v2, :cond_a

    .line 196
    .line 197
    iget-object v0, v2, Lx62;->c:Landroid/view/ScaleGestureDetector;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    iget-boolean v4, v2, Lx62;->e:Z

    .line 204
    .line 205
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, p2}, Lx62;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    :catch_0
    if-nez v3, :cond_7

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_7

    .line 218
    .line 219
    move v0, v7

    .line 220
    goto :goto_3

    .line 221
    :cond_7
    move v0, v6

    .line 222
    :goto_3
    if-nez v4, :cond_8

    .line 223
    .line 224
    iget-boolean v2, v2, Lx62;->e:Z

    .line 225
    .line 226
    if-nez v2, :cond_8

    .line 227
    .line 228
    move v2, v7

    .line 229
    goto :goto_4

    .line 230
    :cond_8
    move v2, v6

    .line 231
    :goto_4
    if-eqz v0, :cond_9

    .line 232
    .line 233
    if-eqz v2, :cond_9

    .line 234
    .line 235
    move v6, v7

    .line 236
    :cond_9
    iput-boolean v6, p0, Le06;->k:Z

    .line 237
    .line 238
    move v0, v7

    .line 239
    :cond_a
    iget-object v1, p0, Le06;->p:Landroid/view/GestureDetector;

    .line 240
    .line 241
    if-eqz v1, :cond_b

    .line 242
    .line 243
    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_b

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_b
    move v7, v0

    .line 251
    :goto_5
    return v7

    .line 252
    :cond_c
    return v6
.end method
