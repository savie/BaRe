.class public Lcom/google/android/material/progressindicator/LinearProgressIndicator;
.super Lkm0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403aa

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    const v0, 0x7f14065d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lkm0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lpu4;

    .line 8
    .line 9
    iget-object p2, p0, Lkm0;->a:Llm0;

    .line 10
    .line 11
    check-cast p2, Lzu4;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lup2;-><init>(Llm0;)V

    .line 14
    .line 15
    .line 16
    const/high16 p3, 0x43960000    # 300.0f

    .line 17
    .line 18
    iput p3, p1, Lpu4;->f:F

    .line 19
    .line 20
    new-instance p3, Landroid/util/Pair;

    .line 21
    .line 22
    new-instance v0, Ltp2;

    .line 23
    .line 24
    invoke-direct {v0}, Ltp2;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ltp2;

    .line 28
    .line 29
    invoke-direct {v1}, Ltp2;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p1, Lpu4;->o:Landroid/util/Pair;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    new-instance v0, Lmb4;

    .line 42
    .line 43
    iget v1, p2, Lzu4;->q:I

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    new-instance v1, Lru4;

    .line 48
    .line 49
    invoke-direct {v1, p2}, Lru4;-><init>(Lzu4;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v1, Lsu4;

    .line 54
    .line 55
    invoke-direct {v1, p3, p2}, Lsu4;-><init>(Landroid/content/Context;Lzu4;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-direct {v0, p3, p2, p1, v1}, Lmb4;-><init>(Landroid/content/Context;Llm0;Lup2;Lao;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lkm0;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    new-instance v0, Lqk2;

    .line 69
    .line 70
    invoke-direct {v0, p3, p2, p1}, Lqk2;-><init>(Landroid/content/Context;Llm0;Lup2;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lkm0;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lkm0;->q:Z

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Llm0;
    .locals 7

    .line 1
    new-instance p0, Lzu4;

    .line 2
    .line 3
    const v0, 0x7f0403aa

    .line 4
    .line 5
    .line 6
    const v1, 0x7f14065d

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, v0, v1}, Llm0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v6, v0, [I

    .line 14
    .line 15
    const v4, 0x7f0403aa

    .line 16
    .line 17
    .line 18
    const v5, 0x7f14065d

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v4, v5}, Ljd4;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Ltd6;->q:[I

    .line 25
    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    invoke-static/range {v1 .. v6}, Ljd4;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lzu4;->q:I

    .line 41
    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, p0, Lzu4;->r:I

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, p0, Lzu4;->t:I

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lzu4;->u:Ljava/lang/Integer;

    .line 71
    .line 72
    :cond_0
    const/4 v1, 0x2

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget v3, v2, Landroid/util/TypedValue;->type:I

    .line 80
    .line 81
    const/4 v4, 0x5

    .line 82
    if-ne v3, v4, :cond_1

    .line 83
    .line 84
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iget v3, p0, Llm0;->a:I

    .line 99
    .line 100
    div-int/2addr v3, v1

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    iput v1, p0, Lzu4;->v:I

    .line 106
    .line 107
    iput-boolean v0, p0, Lzu4;->x:Z

    .line 108
    .line 109
    iput-boolean p2, p0, Lzu4;->y:Z

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x6

    .line 113
    if-ne v3, v1, :cond_2

    .line 114
    .line 115
    const/high16 v1, 0x3f800000    # 1.0f

    .line 116
    .line 117
    invoke-virtual {v2, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const/high16 v2, 0x3f000000    # 0.5f

    .line 122
    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iput v1, p0, Lzu4;->w:F

    .line 128
    .line 129
    iput-boolean p2, p0, Lzu4;->x:Z

    .line 130
    .line 131
    iput-boolean p2, p0, Lzu4;->y:Z

    .line 132
    .line 133
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lzu4;->d()V

    .line 137
    .line 138
    .line 139
    iget p1, p0, Lzu4;->r:I

    .line 140
    .line 141
    if-ne p1, p2, :cond_3

    .line 142
    .line 143
    move v0, p2

    .line 144
    :cond_3
    iput-boolean v0, p0, Lzu4;->s:Z

    .line 145
    .line 146
    return-object p0
.end method

.method public final c(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lzu4;

    .line 6
    .line 7
    iget v0, v0, Lzu4;->q:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Lkm0;->c(IZ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getIndeterminateAnimationType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    check-cast p0, Lzu4;

    .line 4
    .line 5
    iget p0, p0, Lzu4;->q:I

    .line 6
    .line 7
    return p0
.end method

.method public getIndicatorDirection()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    check-cast p0, Lzu4;

    .line 4
    .line 5
    iget p0, p0, Lzu4;->r:I

    .line 6
    .line 7
    return p0
.end method

.method public getTrackInnerCornerRadius()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    check-cast p0, Lzu4;

    .line 4
    .line 5
    iget p0, p0, Lzu4;->v:I

    .line 6
    .line 7
    return p0
.end method

.method public getTrackStopIndicatorPadding()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    check-cast p0, Lzu4;

    .line 4
    .line 5
    iget-object p0, p0, Lzu4;->u:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public getTrackStopIndicatorSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    check-cast p0, Lzu4;

    .line 4
    .line 5
    iget p0, p0, Lzu4;->t:I

    .line 6
    .line 7
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lkm0;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkm0;->a:Llm0;

    .line 5
    .line 6
    move-object p2, p1

    .line 7
    check-cast p2, Lzu4;

    .line 8
    .line 9
    move-object p3, p1

    .line 10
    check-cast p3, Lzu4;

    .line 11
    .line 12
    iget p3, p3, Lzu4;->r:I

    .line 13
    .line 14
    const/4 p4, 0x1

    .line 15
    if-eq p3, p4, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-ne p3, p4, :cond_0

    .line 22
    .line 23
    move-object p3, p1

    .line 24
    check-cast p3, Lzu4;

    .line 25
    .line 26
    iget p3, p3, Lzu4;->r:I

    .line 27
    .line 28
    const/4 p5, 0x2

    .line 29
    if-eq p3, p5, :cond_2

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    check-cast p1, Lzu4;

    .line 38
    .line 39
    iget p0, p1, Lzu4;->r:I

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    if-ne p0, p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p4, 0x0

    .line 46
    :cond_2
    :goto_0
    iput-boolean p4, p2, Lzu4;->s:Z

    .line 47
    .line 48
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    add-int/2addr p4, p3

    .line 10
    sub-int/2addr p1, p4

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    add-int/2addr p4, p3

    .line 20
    sub-int/2addr p2, p4

    .line 21
    invoke-virtual {p0}, Lkm0;->getIndeterminateDrawable()Lmb4;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const/4 p4, 0x0

    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lkm0;->getProgressDrawable()Lqk2;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public setIndeterminateAnimationType(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iget v1, v1, Lzu4;->q:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lkm0;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p0, "Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode."

    .line 25
    .line 26
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    :goto_0
    move-object v1, v0

    .line 31
    check-cast v1, Lzu4;

    .line 32
    .line 33
    iput p1, v1, Lzu4;->q:I

    .line 34
    .line 35
    move-object v1, v0

    .line 36
    check-cast v1, Lzu4;

    .line 37
    .line 38
    invoke-virtual {v1}, Lzu4;->d()V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lkm0;->getIndeterminateDrawable()Lmb4;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-instance v1, Lru4;

    .line 48
    .line 49
    check-cast v0, Lzu4;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lru4;-><init>(Lzu4;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p1, Lmb4;->G:Lao;

    .line 55
    .line 56
    iput-object p1, v1, Lao;->a:Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Lkm0;->getIndeterminateDrawable()Lmb4;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v1, Lsu4;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v0, Lzu4;

    .line 70
    .line 71
    invoke-direct {v1, v2, v0}, Lsu4;-><init>(Landroid/content/Context;Lzu4;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p1, Lmb4;->G:Lao;

    .line 75
    .line 76
    iput-object p1, v1, Lao;->a:Ljava/lang/Object;

    .line 77
    .line 78
    :goto_1
    invoke-virtual {p0}, Lkm0;->b()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public varargs setIndicatorColor([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkm0;->setIndicatorColor([I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkm0;->a:Llm0;

    .line 5
    .line 6
    check-cast p0, Lzu4;

    .line 7
    .line 8
    invoke-virtual {p0}, Lzu4;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setIndicatorDirection(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iput p1, v1, Lzu4;->r:I

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lzu4;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ne v3, v2, :cond_0

    .line 19
    .line 20
    check-cast v0, Lzu4;

    .line 21
    .line 22
    iget v0, v0, Lzu4;->r:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v0, v3, :cond_2

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    if-ne p1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :cond_2
    :goto_0
    iput-boolean v2, v1, Lzu4;->s:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public setTrackCornerRadius(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lkm0;->setTrackCornerRadius(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkm0;->a:Llm0;

    .line 5
    .line 6
    check-cast p1, Lzu4;

    .line 7
    .line 8
    invoke-virtual {p1}, Lzu4;->d()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTrackInnerCornerRadius(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iget v1, v1, Lzu4;->v:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lzu4;

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lzu4;

    .line 16
    .line 17
    iget v2, v2, Llm0;->a:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    div-float/2addr v2, v3

    .line 23
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, v1, Lzu4;->v:I

    .line 32
    .line 33
    move-object p1, v0

    .line 34
    check-cast p1, Lzu4;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p1, Lzu4;->x:Z

    .line 38
    .line 39
    move-object p1, v0

    .line 40
    check-cast p1, Lzu4;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p1, Lzu4;->y:Z

    .line 44
    .line 45
    check-cast v0, Lzu4;

    .line 46
    .line 47
    invoke-virtual {v0}, Lzu4;->d()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public setTrackInnerCornerRadiusFraction(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iget v1, v1, Lzu4;->w:F

    .line 7
    .line 8
    cmpl-float v1, v1, p1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Lzu4;

    .line 14
    .line 15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 16
    .line 17
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, v1, Lzu4;->w:F

    .line 22
    .line 23
    move-object p1, v0

    .line 24
    check-cast p1, Lzu4;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p1, Lzu4;->x:Z

    .line 28
    .line 29
    move-object p1, v0

    .line 30
    check-cast p1, Lzu4;

    .line 31
    .line 32
    iput-boolean v1, p1, Lzu4;->y:Z

    .line 33
    .line 34
    check-cast v0, Lzu4;

    .line 35
    .line 36
    invoke-virtual {v0}, Lzu4;->d()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public setTrackStopIndicatorPadding(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iget-object v1, v1, Lzu4;->u:Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lzu4;

    .line 15
    .line 16
    iput-object p1, v0, Lzu4;->u:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setTrackStopIndicatorSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm0;->a:Llm0;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lzu4;

    .line 5
    .line 6
    iget v1, v1, Lzu4;->t:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lzu4;

    .line 12
    .line 13
    iput p1, v1, Lzu4;->t:I

    .line 14
    .line 15
    check-cast v0, Lzu4;

    .line 16
    .line 17
    invoke-virtual {v0}, Lzu4;->d()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkm0;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
