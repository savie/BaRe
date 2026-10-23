.class public final Lsu4;
.super Lao;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final r:[I

.field public static final t:[I

.field public static final x:Ln71;


# instance fields
.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/ObjectAnimator;

.field public final e:[Landroid/view/animation/Interpolator;

.field public final f:Lzu4;

.field public k:I

.field public n:Z

.field public p:F

.field public q:Lzb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x352

    .line 2
    .line 3
    const/16 v1, 0x2ee

    .line 4
    .line 5
    const/16 v2, 0x215

    .line 6
    .line 7
    const/16 v3, 0x237

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lsu4;->r:[I

    .line 14
    .line 15
    const/16 v0, 0x14d

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x4f3

    .line 19
    .line 20
    const/16 v3, 0x3e8

    .line 21
    .line 22
    filled-new-array {v2, v3, v0, v1}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lsu4;->t:[I

    .line 27
    .line 28
    new-instance v0, Ln71;

    .line 29
    .line 30
    const-string v1, "animationFraction"

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const-class v3, Ljava/lang/Float;

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v2}, Ln71;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lsu4;->x:Ln71;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzu4;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lao;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lsu4;->k:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lsu4;->q:Lzb;

    .line 10
    .line 11
    iput-object p2, p0, Lsu4;->f:Lzu4;

    .line 12
    .line 13
    const p2, 0x7f010031

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const v2, 0x7f010032

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f010033

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const v4, 0x7f010034

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v4, 0x4

    .line 42
    new-array v4, v4, [Landroid/view/animation/Interpolator;

    .line 43
    .line 44
    aput-object p2, v4, v1

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    aput-object v2, v4, p2

    .line 48
    .line 49
    aput-object v3, v4, v0

    .line 50
    .line 51
    const/4 p2, 0x3

    .line 52
    aput-object p1, v4, p2

    .line 53
    .line 54
    iput-object v4, p0, Lsu4;->e:[Landroid/view/animation/Interpolator;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lsu4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 5
    .line 6
    iget-object v1, p0, Lsu4;->f:Lzu4;

    .line 7
    .line 8
    iget v2, v1, Llm0;->n:F

    .line 9
    .line 10
    const/high16 v3, 0x44e10000    # 1800.0f

    .line 11
    .line 12
    mul-float/2addr v2, v3

    .line 13
    float-to-long v4, v2

    .line 14
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 18
    .line 19
    iget v1, v1, Llm0;->n:F

    .line 20
    .line 21
    mul-float/2addr v1, v3

    .line 22
    float-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lsu4;->w()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final l(Lim0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsu4;->q:Lzb;

    .line 2
    .line 3
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lsu4;->c()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lao;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lmb4;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 26
    .line 27
    iget v1, p0, Lsu4;->p:F

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [F

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    aput v1, v2, v3

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    .line 38
    aput v3, v2, v1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    iget v1, p0, Lsu4;->p:F

    .line 46
    .line 47
    sub-float/2addr v3, v1

    .line 48
    const/high16 v1, 0x44e10000    # 1800.0f

    .line 49
    .line 50
    mul-float/2addr v3, v1

    .line 51
    float-to-long v1, v3

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsu4;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lsu4;->w()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsu4;->q:Lzb;

    .line 3
    .line 4
    return-void
.end method

.method public final v()V
    .locals 8

    .line 1
    iget-object v0, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lsu4;->f:Lzu4;

    .line 5
    .line 6
    const/high16 v3, 0x44e10000    # 1800.0f

    .line 7
    .line 8
    sget-object v4, Lsu4;->x:Ln71;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v5, v0, [F

    .line 14
    .line 15
    fill-array-data v5, :array_0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iput-object v5, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    iget v6, v2, Llm0;->n:F

    .line 25
    .line 26
    mul-float/2addr v6, v3

    .line 27
    float-to-long v6, v6

    .line 28
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    iget-object v5, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 37
    .line 38
    const/4 v6, -0x1

    .line 39
    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lsu4;->c:Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    new-instance v6, Ljn0;

    .line 45
    .line 46
    invoke-direct {v6, p0, v0}, Ljn0;-><init>(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    new-array v5, v0, [F

    .line 58
    .line 59
    const/high16 v6, 0x3f800000    # 1.0f

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    aput v6, v5, v7

    .line 63
    .line 64
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iput-object v4, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 69
    .line 70
    iget v2, v2, Llm0;->n:F

    .line 71
    .line 72
    mul-float/2addr v2, v3

    .line 73
    float-to-long v2, v2

    .line 74
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lsu4;->d:Landroid/animation/ObjectAnimator;

    .line 83
    .line 84
    new-instance v2, Ldi3;

    .line 85
    .line 86
    invoke-direct {v2, p0, v0}, Ldi3;-><init>(Ljava/lang/Object;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void

    .line 93
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final w()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsu4;->k:I

    .line 3
    .line 4
    iget-object v1, p0, Lao;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lsp2;

    .line 23
    .line 24
    iget-object v3, p0, Lsu4;->f:Lzu4;

    .line 25
    .line 26
    iget-object v3, v3, Llm0;->e:[I

    .line 27
    .line 28
    aget v3, v3, v0

    .line 29
    .line 30
    iput v3, v2, Lsp2;->c:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
