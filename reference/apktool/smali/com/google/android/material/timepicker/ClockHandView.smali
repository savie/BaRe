.class public Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic N:I


# instance fields
.field public final G:I

.field public H:F

.field public I:Z

.field public J:Lm38;

.field public K:D

.field public L:I

.field public M:I

.field public final a:I

.field public final b:Landroid/animation/TimeInterpolator;

.field public final c:Landroid/animation/ValueAnimator;

.field public d:Z

.field public e:F

.field public f:F

.field public k:Z

.field public final n:I

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:I

.field public final t:F

.field public final x:Landroid/graphics/Paint;

.field public final y:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040405

    .line 150
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->x:Landroid/graphics/Paint;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:Landroid/graphics/RectF;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iput v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 34
    .line 35
    sget-object v3, Ltd6;->k:[I

    .line 36
    .line 37
    const v4, 0x7f14069a

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const p3, 0x7f040444

    .line 45
    .line 46
    .line 47
    const/16 v3, 0xc8

    .line 48
    .line 49
    invoke-static {p1, p3, v3}, Lji8;->F(Landroid/content/Context;II)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    iput p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:I

    .line 54
    .line 55
    const p3, 0x7f040454

    .line 56
    .line 57
    .line 58
    sget-object v3, Led;->b:Li53;

    .line 59
    .line 60
    invoke-static {p1, p3, v3}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iput-object p3, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/TimeInterpolator;

    .line 65
    .line 66
    const/4 p3, 0x0

    .line 67
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->L:I

    .line 72
    .line 73
    const/4 v3, 0x2

    .line 74
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iput v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const v5, 0x7f070398

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->G:I

    .line 92
    .line 93
    const v5, 0x7f070396

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    int-to-float v4, v4

    .line 101
    iput v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 102
    .line 103
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, v1, p3}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:I

    .line 126
    .line 127
    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    .line 132
    .line 133
    new-instance p1, Lea1;

    .line 134
    .line 135
    invoke-direct {p1, p0, p3}, Lea1;-><init>(Landroid/view/View;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    .line 140
    .line 141
    new-instance p0, Lfa1;

    .line 142
    .line 143
    invoke-direct {p0, p3}, Lfa1;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final a(FF)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    div-int/lit8 p0, p0, 0x2

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    sub-float/2addr p1, v0

    .line 15
    float-to-double v0, p1

    .line 16
    int-to-float p0, p0

    .line 17
    sub-float/2addr p2, p0

    .line 18
    float-to-double p0, p2

    .line 19
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    double-to-int p0, p0

    .line 28
    add-int/lit8 p1, p0, 0x5a

    .line 29
    .line 30
    if-gez p1, :cond_0

    .line 31
    .line 32
    add-int/lit16 p0, p0, 0x1c2

    .line 33
    .line 34
    return p0

    .line 35
    :cond_0
    return p1
.end method

.method public final b(FZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/timepicker/ClockHandView;->c(FZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget p2, p0, Lcom/google/android/material/timepicker/ClockHandView;->H:F

    .line 14
    .line 15
    sub-float v2, p2, p1

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/high16 v3, 0x43340000    # 180.0f

    .line 22
    .line 23
    cmpl-float v2, v2, v3

    .line 24
    .line 25
    if-lez v2, :cond_2

    .line 26
    .line 27
    cmpl-float v2, p2, v3

    .line 28
    .line 29
    const/high16 v4, 0x43b40000    # 360.0f

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    cmpg-float v2, p1, v3

    .line 34
    .line 35
    if-gez v2, :cond_1

    .line 36
    .line 37
    add-float/2addr p1, v4

    .line 38
    :cond_1
    cmpg-float v2, p2, v3

    .line 39
    .line 40
    if-gez v2, :cond_2

    .line 41
    .line 42
    cmpl-float v2, p1, v3

    .line 43
    .line 44
    if-lez v2, :cond_2

    .line 45
    .line 46
    add-float/2addr p2, v4

    .line 47
    :cond_2
    new-instance v2, Landroid/util/Pair;

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v2, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Ljava/lang/Float;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p2, Ljava/lang/Float;

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/4 v2, 0x2

    .line 77
    new-array v2, v2, [F

    .line 78
    .line 79
    aput p1, v2, v1

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    aput p2, v2, p1

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 85
    .line 86
    .line 87
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->a:I

    .line 88
    .line 89
    int-to-long p1, p1

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockHandView;->b:Landroid/animation/TimeInterpolator;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final c(FZ)V
    .locals 6

    .line 1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    .line 3
    rem-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->H:F

    .line 5
    .line 6
    const/high16 v0, 0x42b40000    # 90.0f

    .line 7
    .line 8
    sub-float v0, p1, v0

    .line 9
    .line 10
    float-to-double v0, v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    div-int/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    div-int/2addr v2, v1

    .line 28
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 29
    .line 30
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->L:I

    .line 31
    .line 32
    if-ne v3, v1, :cond_0

    .line 33
    .line 34
    int-to-float v1, v4

    .line 35
    const v3, 0x3f28f5c3    # 0.66f

    .line 36
    .line 37
    .line 38
    mul-float/2addr v1, v3

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :cond_0
    int-to-float v1, v2

    .line 44
    int-to-float v2, v4

    .line 45
    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 46
    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    double-to-float v3, v3

    .line 52
    mul-float/2addr v3, v2

    .line 53
    add-float/2addr v3, v1

    .line 54
    int-to-float v0, v0

    .line 55
    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 56
    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    double-to-float v1, v4

    .line 62
    mul-float/2addr v2, v1

    .line 63
    add-float/2addr v2, v0

    .line 64
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 65
    .line 66
    int-to-float v0, v0

    .line 67
    sub-float v1, v3, v0

    .line 68
    .line 69
    sub-float v4, v2, v0

    .line 70
    .line 71
    add-float/2addr v3, v0

    .line 72
    add-float/2addr v2, v0

    .line 73
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->y:Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->q:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lga1;

    .line 95
    .line 96
    invoke-interface {v1, p1, p2}, Lga1;->a(FZ)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    div-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    div-int/2addr v2, v1

    .line 15
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 16
    .line 17
    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->L:I

    .line 18
    .line 19
    if-ne v3, v1, :cond_0

    .line 20
    .line 21
    int-to-float v1, v4

    .line 22
    const v3, 0x3f28f5c3    # 0.66f

    .line 23
    .line 24
    .line 25
    mul-float/2addr v1, v3

    .line 26
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    :cond_0
    int-to-float v6, v2

    .line 31
    int-to-float v1, v4

    .line 32
    iget-wide v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 33
    .line 34
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    double-to-float v3, v7

    .line 39
    mul-float/2addr v3, v1

    .line 40
    add-float/2addr v3, v6

    .line 41
    int-to-float v7, v0

    .line 42
    iget-wide v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 43
    .line 44
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    double-to-float v5, v8

    .line 49
    mul-float/2addr v1, v5

    .line 50
    add-float/2addr v1, v7

    .line 51
    const/4 v5, 0x0

    .line 52
    iget-object v10, p0, Lcom/google/android/material/timepicker/ClockHandView;->x:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    .line 56
    .line 57
    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->r:I

    .line 58
    .line 59
    int-to-float v8, v5

    .line 60
    invoke-virtual {p1, v3, v1, v8, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    iget-wide v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 64
    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    iget-wide v11, p0, Lcom/google/android/material/timepicker/ClockHandView;->K:D

    .line 70
    .line 71
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    sub-int/2addr v4, v5

    .line 76
    int-to-float v1, v4

    .line 77
    float-to-double v3, v1

    .line 78
    mul-double/2addr v11, v3

    .line 79
    double-to-int v1, v11

    .line 80
    add-int/2addr v2, v1

    .line 81
    int-to-float v1, v2

    .line 82
    mul-double/2addr v3, v8

    .line 83
    double-to-int v2, v3

    .line 84
    add-int/2addr v0, v2

    .line 85
    int-to-float v9, v0

    .line 86
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->G:I

    .line 87
    .line 88
    int-to-float v0, v0

    .line 89
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    .line 91
    .line 92
    move-object v5, p1

    .line 93
    move v8, v1

    .line 94
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 95
    .line 96
    .line 97
    iget p0, p0, Lcom/google/android/material/timepicker/ClockHandView;->t:F

    .line 98
    .line 99
    invoke-virtual {v5, v6, v7, p0, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->c:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->H:F

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    if-eq v0, v3, :cond_0

    .line 21
    .line 22
    if-eq v0, v5, :cond_0

    .line 23
    .line 24
    move v0, v4

    .line 25
    move v5, v0

    .line 26
    move v6, v5

    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    .line 30
    .line 31
    sub-float v6, v1, v6

    .line 32
    .line 33
    float-to-int v6, v6

    .line 34
    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:F

    .line 35
    .line 36
    sub-float v7, p1, v7

    .line 37
    .line 38
    float-to-int v7, v7

    .line 39
    mul-int/2addr v6, v6

    .line 40
    mul-int/2addr v7, v7

    .line 41
    add-int/2addr v7, v6

    .line 42
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->n:I

    .line 43
    .line 44
    if-le v7, v6, :cond_1

    .line 45
    .line 46
    move v6, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v6, v4

    .line 49
    :goto_0
    iput-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 50
    .line 51
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->I:Z

    .line 52
    .line 53
    if-ne v0, v3, :cond_2

    .line 54
    .line 55
    move v0, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v0, v4

    .line 58
    :goto_1
    iget-boolean v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->p:Z

    .line 59
    .line 60
    if-eqz v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    div-int/2addr v7, v5

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    div-int/2addr v8, v5

    .line 72
    int-to-float v7, v7

    .line 73
    int-to-float v8, v8

    .line 74
    sub-float v7, v1, v7

    .line 75
    .line 76
    sub-float v8, p1, v8

    .line 77
    .line 78
    float-to-double v9, v7

    .line 79
    float-to-double v7, v8

    .line 80
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    double-to-float v7, v7

    .line 85
    iget v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->L:I

    .line 86
    .line 87
    int-to-float v8, v8

    .line 88
    const v9, 0x3f28f5c3    # 0.66f

    .line 89
    .line 90
    .line 91
    mul-float/2addr v8, v9

    .line 92
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v9, v2}, Lyc9;->m(Landroid/content/Context;I)F

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    int-to-float v8, v8

    .line 105
    add-float/2addr v8, v9

    .line 106
    cmpg-float v7, v7, v8

    .line 107
    .line 108
    if-gtz v7, :cond_3

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move v5, v3

    .line 112
    :goto_2
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->M:I

    .line 113
    .line 114
    :cond_4
    move v5, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->e:F

    .line 117
    .line 118
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->f:F

    .line 119
    .line 120
    iput-boolean v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 121
    .line 122
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->I:Z

    .line 123
    .line 124
    move v5, v3

    .line 125
    move v0, v4

    .line 126
    move v6, v0

    .line 127
    :goto_3
    iget-boolean v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->I:Z

    .line 128
    .line 129
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    iget v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->H:F

    .line 134
    .line 135
    int-to-float v8, v8

    .line 136
    cmpl-float v9, v9, v8

    .line 137
    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    move v9, v3

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    move v9, v4

    .line 143
    :goto_4
    if-eqz v5, :cond_7

    .line 144
    .line 145
    if-eqz v9, :cond_7

    .line 146
    .line 147
    :goto_5
    move v5, v3

    .line 148
    goto :goto_8

    .line 149
    :cond_7
    if-nez v9, :cond_9

    .line 150
    .line 151
    if-eqz v6, :cond_8

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_8
    move v5, v4

    .line 155
    goto :goto_8

    .line 156
    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    .line 157
    .line 158
    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->d:Z

    .line 159
    .line 160
    if-eqz v5, :cond_a

    .line 161
    .line 162
    move v5, v3

    .line 163
    goto :goto_7

    .line 164
    :cond_a
    move v5, v4

    .line 165
    :goto_7
    invoke-virtual {p0, v8, v5}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :goto_8
    or-int/2addr v5, v7

    .line 170
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->I:Z

    .line 171
    .line 172
    if-eqz v5, :cond_f

    .line 173
    .line 174
    if-eqz v0, :cond_f

    .line 175
    .line 176
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->J:Lm38;

    .line 177
    .line 178
    if-eqz v0, :cond_f

    .line 179
    .line 180
    iget-object v5, v0, Lm38;->b:Lj38;

    .line 181
    .line 182
    iget-object v6, v0, Lm38;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 183
    .line 184
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/timepicker/ClockHandView;->a(FF)I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    int-to-float p1, p1

    .line 189
    iget-boolean p0, p0, Lcom/google/android/material/timepicker/ClockHandView;->k:Z

    .line 190
    .line 191
    iput-boolean v3, v0, Lm38;->e:Z

    .line 192
    .line 193
    iget v1, v5, Lj38;->c:I

    .line 194
    .line 195
    iget v7, v5, Lj38;->b:I

    .line 196
    .line 197
    iget v8, v5, Lj38;->d:I

    .line 198
    .line 199
    const/16 v9, 0xa

    .line 200
    .line 201
    if-ne v8, v9, :cond_c

    .line 202
    .line 203
    iget p0, v0, Lm38;->d:F

    .line 204
    .line 205
    iget-object p1, v6, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/timepicker/ClockHandView;

    .line 206
    .line 207
    invoke-virtual {p1, p0, v4}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    const-class p1, Landroid/view/accessibility/AccessibilityManager;

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 221
    .line 222
    if-eqz p0, :cond_b

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_b

    .line 229
    .line 230
    goto :goto_9

    .line 231
    :cond_b
    invoke-virtual {v0, v2, v3}, Lm38;->d(IZ)V

    .line 232
    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p0, :cond_d

    .line 240
    .line 241
    add-int/lit8 p1, p1, 0xf

    .line 242
    .line 243
    div-int/lit8 p1, p1, 0x1e

    .line 244
    .line 245
    mul-int/lit8 p1, p1, 0x5

    .line 246
    .line 247
    invoke-virtual {v5, p1}, Lj38;->l(I)V

    .line 248
    .line 249
    .line 250
    iget p1, v5, Lj38;->c:I

    .line 251
    .line 252
    mul-int/lit8 p1, p1, 0x6

    .line 253
    .line 254
    int-to-float p1, p1

    .line 255
    iput p1, v0, Lm38;->c:F

    .line 256
    .line 257
    :cond_d
    iget p1, v0, Lm38;->c:F

    .line 258
    .line 259
    iget-object v2, v6, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/timepicker/ClockHandView;

    .line 260
    .line 261
    invoke-virtual {v2, p1, p0}, Lcom/google/android/material/timepicker/ClockHandView;->b(FZ)V

    .line 262
    .line 263
    .line 264
    :goto_9
    iput-boolean v4, v0, Lm38;->e:Z

    .line 265
    .line 266
    invoke-virtual {v0}, Lm38;->e()V

    .line 267
    .line 268
    .line 269
    iget p0, v5, Lj38;->c:I

    .line 270
    .line 271
    if-ne p0, v1, :cond_e

    .line 272
    .line 273
    iget p0, v5, Lj38;->b:I

    .line 274
    .line 275
    if-eq p0, v7, :cond_f

    .line 276
    .line 277
    :cond_e
    const/4 p0, 0x4

    .line 278
    invoke-virtual {v6, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 279
    .line 280
    .line 281
    :cond_f
    return v3
.end method
