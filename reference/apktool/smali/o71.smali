.class public final Lo71;
.super Lao;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final G:Ln71;

.field public static final r:[I

.field public static final t:[I

.field public static final x:[I

.field public static final y:Lm71;


# instance fields
.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/animation/ObjectAnimator;

.field public final e:Li53;

.field public final f:Lv71;

.field public k:I

.field public n:F

.field public p:F

.field public q:Lzb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xa8c

    .line 2
    .line 3
    const/16 v1, 0xfd2

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x546

    .line 7
    .line 8
    filled-new-array {v2, v3, v0, v1}, [I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lo71;->r:[I

    .line 13
    .line 14
    const/16 v0, 0xd27

    .line 15
    .line 16
    const/16 v1, 0x126d

    .line 17
    .line 18
    const/16 v2, 0x29b

    .line 19
    .line 20
    const/16 v3, 0x7e1

    .line 21
    .line 22
    filled-new-array {v2, v3, v0, v1}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lo71;->t:[I

    .line 27
    .line 28
    const/16 v0, 0xe74

    .line 29
    .line 30
    const/16 v1, 0x13ba

    .line 31
    .line 32
    const/16 v2, 0x3e8

    .line 33
    .line 34
    const/16 v3, 0x92e

    .line 35
    .line 36
    filled-new-array {v2, v3, v0, v1}, [I

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lo71;->x:[I

    .line 41
    .line 42
    new-instance v0, Lm71;

    .line 43
    .line 44
    const-string v1, "animationFraction"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const-class v3, Ljava/lang/Float;

    .line 48
    .line 49
    invoke-direct {v0, v3, v1, v2}, Lm71;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lo71;->y:Lm71;

    .line 53
    .line 54
    new-instance v0, Ln71;

    .line 55
    .line 56
    const-string v1, "completeEndFraction"

    .line 57
    .line 58
    invoke-direct {v0, v3, v1, v2}, Ln71;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lo71;->G:Ln71;

    .line 62
    .line 63
    return-void
.end method

.method public constructor <init>(Lv71;)V
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
    iput v0, p0, Lo71;->k:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo71;->q:Lzb;

    .line 10
    .line 11
    iput-object p1, p0, Lo71;->f:Lv71;

    .line 12
    .line 13
    new-instance p1, Li53;

    .line 14
    .line 15
    invoke-direct {p1}, Li53;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lo71;->e:Li53;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 1
    iget-object p0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

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
    invoke-virtual {p0}, Lo71;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 5
    .line 6
    iget-object v1, p0, Lo71;->f:Lv71;

    .line 7
    .line 8
    iget v2, v1, Llm0;->n:F

    .line 9
    .line 10
    const v3, 0x45a8c000    # 5400.0f

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
    iget-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    const v2, 0x43a68000    # 333.0f

    .line 21
    .line 22
    .line 23
    iget v3, v1, Llm0;->n:F

    .line 24
    .line 25
    mul-float/2addr v3, v2

    .line 26
    float-to-long v2, v3

    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lo71;->k:I

    .line 32
    .line 33
    iget-object v2, p0, Lao;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lsp2;

    .line 42
    .line 43
    iget-object v1, v1, Llm0;->e:[I

    .line 44
    .line 45
    aget v0, v1, v0

    .line 46
    .line 47
    iput v0, v2, Lsp2;->c:I

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lo71;->p:F

    .line 51
    .line 52
    return-void
.end method

.method public final l(Lim0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo71;->q:Lzb;

    .line 2
    .line 3
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

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
    iget-object p0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0}, Lo71;->c()V

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
    invoke-virtual {p0}, Lo71;->v()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo71;->k:I

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
    iget-object v2, p0, Lo71;->f:Lv71;

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
    iput v0, p0, Lo71;->p:F

    .line 27
    .line 28
    iget-object p0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

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
    iput-object v0, p0, Lo71;->q:Lzb;

    .line 3
    .line 4
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    iget-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lo71;->f:Lv71;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array v0, v2, [F

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    sget-object v4, Lo71;->y:Lm71;

    .line 15
    .line 16
    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    const v4, 0x45a8c000    # 5400.0f

    .line 23
    .line 24
    .line 25
    iget v5, v3, Llm0;->n:F

    .line 26
    .line 27
    mul-float/2addr v5, v4

    .line 28
    float-to-long v4, v5

    .line 29
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    const/4 v4, -0x1

    .line 41
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lo71;->c:Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    new-instance v4, Lau0;

    .line 47
    .line 48
    invoke-direct {v4, p0, v1}, Lau0;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 55
    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    new-array v0, v2, [F

    .line 59
    .line 60
    fill-array-data v0, :array_1

    .line 61
    .line 62
    .line 63
    sget-object v2, Lo71;->G:Ln71;

    .line 64
    .line 65
    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 70
    .line 71
    const v2, 0x43a68000    # 333.0f

    .line 72
    .line 73
    .line 74
    iget v3, v3, Llm0;->n:F

    .line 75
    .line 76
    mul-float/2addr v3, v2

    .line 77
    float-to-long v2, v3

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 82
    .line 83
    iget-object v2, p0, Lo71;->e:Li53;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lo71;->d:Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    new-instance v2, Ljn0;

    .line 91
    .line 92
    invoke-direct {v2, p0, v1}, Ljn0;-><init>(Ljava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
