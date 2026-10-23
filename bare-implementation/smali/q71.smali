.class public final Lq71;
.super Lao;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final G:Ln31;

.field public static final r:Li53;

.field public static final t:[I

.field public static final x:[F

.field public static final y:Lm31;


# instance fields
.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Landroid/animation/TimeInterpolator;

.field public final f:Lv71;

.field public k:I

.field public n:F

.field public p:F

.field public q:Lzb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Led;->b:Li53;

    .line 2
    .line 3
    sput-object v0, Lq71;->r:Li53;

    .line 4
    .line 5
    const/16 v0, 0xbb8

    .line 6
    .line 7
    const/16 v1, 0x1194

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v3, 0x5dc

    .line 11
    .line 12
    filled-new-array {v2, v3, v0, v1}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lq71;->t:[I

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    sput-object v0, Lq71;->x:[F

    .line 25
    .line 26
    new-instance v0, Lm31;

    .line 27
    .line 28
    const-class v1, Ljava/lang/Float;

    .line 29
    .line 30
    const-string v2, "animationFraction"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-direct {v0, v1, v2, v3}, Lm31;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lq71;->y:Lm31;

    .line 37
    .line 38
    new-instance v0, Ln31;

    .line 39
    .line 40
    const-string v2, "completeEndFraction"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2, v3}, Ln31;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lq71;->G:Ln31;

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f5eb852    # 0.87f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lv71;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lao;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lq71;->k:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lq71;->q:Lzb;

    .line 10
    .line 11
    iput-object p2, p0, Lq71;->f:Lv71;

    .line 12
    .line 13
    const p2, 0x7f04045a

    .line 14
    .line 15
    .line 16
    sget-object v0, Lq71;->r:Li53;

    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lq71;->e:Landroid/animation/TimeInterpolator;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq71;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 5
    .line 6
    iget-object v1, p0, Lq71;->f:Lv71;

    .line 7
    .line 8
    iget v2, v1, Llm0;->n:F

    .line 9
    .line 10
    const v3, 0x45bb8000    # 6000.0f

    .line 11
    .line 12
    .line 13
    mul-float/2addr v2, v3

    .line 14
    float-to-long v2, v2

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 21
    .line 22
    iget v3, v1, Llm0;->n:F

    .line 23
    .line 24
    mul-float/2addr v3, v2

    .line 25
    float-to-long v2, v3

    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lq71;->k:I

    .line 31
    .line 32
    iget-object v2, p0, Lao;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lsp2;

    .line 41
    .line 42
    iget-object v1, v1, Llm0;->e:[I

    .line 43
    .line 44
    aget v0, v1, v0

    .line 45
    .line 46
    iput v0, v2, Lsp2;->c:I

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lq71;->p:F

    .line 50
    .line 51
    return-void
.end method

.method public final l(Lim0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq71;->q:Lzb;

    .line 2
    .line 3
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_2

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
    iget-object v0, p0, Lao;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lmb4;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lq71;->c()V

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq71;->v()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lq71;->k:I

    .line 6
    .line 7
    iget-object v1, p0, Lao;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lsp2;

    .line 16
    .line 17
    iget-object v2, p0, Lq71;->f:Lv71;

    .line 18
    .line 19
    iget-object v2, v2, Llm0;->e:[I

    .line 20
    .line 21
    aget v0, v2, v0

    .line 22
    .line 23
    iput v0, v1, Lsp2;->c:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lq71;->p:F

    .line 27
    .line 28
    iget-object p0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq71;->q:Lzb;

    .line 3
    .line 4
    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lq71;->f:Lv71;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array v0, v1, [F

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    sget-object v3, Lq71;->y:Lm31;

    .line 14
    .line 15
    invoke-static {p0, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 20
    .line 21
    const v3, 0x45bb8000    # 6000.0f

    .line 22
    .line 23
    .line 24
    iget v4, v2, Llm0;->n:F

    .line 25
    .line 26
    mul-float/2addr v4, v3

    .line 27
    float-to-long v3, v4

    .line 28
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lq71;->c:Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    new-instance v3, Lp71;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {v3, p0, v4}, Lp71;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-array v0, v1, [F

    .line 59
    .line 60
    fill-array-data v0, :array_1

    .line 61
    .line 62
    .line 63
    sget-object v1, Lq71;->G:Ln31;

    .line 64
    .line 65
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 72
    .line 73
    iget v2, v2, Llm0;->n:F

    .line 74
    .line 75
    mul-float/2addr v2, v1

    .line 76
    float-to-long v1, v2

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lq71;->d:Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    new-instance v1, Lrn0;

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-direct {v1, p0, v2}, Lrn0;-><init>(Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    nop

    .line 93
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
