.class public Lcom/warkiz/widget/IndicatorSeekBar;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Z

.field public D0:I

.field public E0:Z

.field public F0:Landroid/graphics/RectF;

.field public G:I

.field public G0:Landroid/graphics/RectF;

.field public H:F

.field public H0:I

.field public I:F

.field public I0:I

.field public J:Z

.field public J0:I

.field public K:F

.field public K0:I

.field public L:F

.field public L0:F

.field public M:F

.field public M0:F

.field public N:Z

.field public N0:Landroid/graphics/Bitmap;

.field public O:I

.field public O0:I

.field public P:Z

.field public P0:I

.field public Q:Z

.field public Q0:Landroid/graphics/drawable/Drawable;

.field public R:Z

.field public R0:Landroid/graphics/Bitmap;

.field public S:[F

.field public S0:I

.field public T:Z

.field public T0:Z

.field public U:Z

.field public U0:F

.field public V:I

.field public V0:I

.field public W:[Ljava/lang/String;

.field public W0:Z

.field public final a:Landroid/content/Context;

.field public a0:[F

.field public b:Landroid/graphics/Paint;

.field public b0:[F

.field public c:Landroid/text/TextPaint;

.field public c0:F

.field public d:Lit5;

.field public d0:I

.field public e:Landroid/graphics/Rect;

.field public e0:Landroid/graphics/Typeface;

.field public f:F

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:[Ljava/lang/CharSequence;

.field public j0:Lvb4;

.field public k:F

.field public k0:I

.field public l0:I

.field public m0:Z

.field public n:F

.field public n0:I

.field public o0:Landroid/view/View;

.field public p:F

.field public p0:Landroid/view/View;

.field public q:Z

.field public q0:I

.field public r:Lcz4;

.field public r0:Ljava/lang/String;

.field public s0:[F

.field public t:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:F

.field public x:I

.field public x0:Landroid/graphics/Bitmap;

.field public y:I

.field public y0:Landroid/graphics/Bitmap;

.field public z0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/IndicatorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 44
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 45
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 47
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, -0x40800000    # -1.0f

    .line 51
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 52
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    const/4 p3, 0x1

    .line 53
    iput p3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 54
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/warkiz/widget/IndicatorSeekBar;->j(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->k()V

    return-void
.end method

.method public constructor <init>(Ldx0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ldx0;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 9
    .line 10
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 14
    .line 15
    iget-object v0, p1, Ldx0;->a:Landroid/content/Context;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 18
    .line 19
    const/high16 v1, 0x41800000    # 16.0f

    .line 20
    .line 21
    invoke-static {v0, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->b(Ldx0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->k()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic a(Lcom/warkiz/widget/IndicatorSeekBar;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private getAmplitude()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 2
    .line 3
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 4
    .line 5
    sub-float v1, v0, p0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    cmpl-float v1, v1, v2

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    sub-float/2addr v0, p0

    .line 13
    return v0

    .line 14
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    return p0
.end method

.method private getClosestIndex()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    if-ge v1, v4, :cond_1

    .line 16
    .line 17
    aget v3, v3, v1

    .line 18
    .line 19
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 20
    .line 21
    sub-float/2addr v3, v4

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    cmpg-float v4, v3, v0

    .line 27
    .line 28
    if-gtz v4, :cond_0

    .line 29
    .line 30
    move v2, v1

    .line 31
    move v0, v3

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return v2
.end method

.method private getLeftSideTickColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:I

    .line 9
    .line 10
    return p0
.end method

.method private getLeftSideTickTextsColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:I

    .line 9
    .line 10
    return p0
.end method

.method private getLeftSideTrackSize()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 9
    .line 10
    return p0
.end method

.method private getRightSideTickColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:I

    .line 9
    .line 10
    return p0
.end method

.method private getRightSideTickTextsColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:I

    .line 9
    .line 10
    return p0
.end method

.method private getRightSideTrackSize()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 9
    .line 10
    return p0
.end method

.method private getThumbCenterX()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 11
    .line 12
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 13
    .line 14
    return p0
.end method

.method private getThumbPosOnTick()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 14
    .line 15
    div-float/2addr v0, p0

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private getThumbPosOnTickFloat()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    sub-float/2addr v0, v1

    .line 13
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 14
    .line 15
    div-float/2addr v0, p0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method private setSeekListener(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lit5;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:Z

    .line 7
    .line 8
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 13
    .line 14
    cmpl-float p1, v0, p1

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eq p1, v0, :cond_6

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lit5;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Lcz4;

    .line 38
    .line 39
    const/16 v1, 0x12

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcz4;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgressFloat()F

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    if-le v0, v1, :cond_5

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 85
    .line 86
    aget-object v0, v1, v0

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 92
    .line 93
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r:Lcz4;

    .line 105
    .line 106
    check-cast p1, Ls79;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final b(Ldx0;)V
    .locals 3

    .line 1
    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    .line 3
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 7
    .line 8
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:Z

    .line 12
    .line 13
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:Z

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 28
    .line 29
    iget v1, p1, Ldx0;->b:I

    .line 30
    .line 31
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:I

    .line 32
    .line 33
    iget v1, p1, Ldx0;->c:I

    .line 34
    .line 35
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:I

    .line 36
    .line 37
    iget v1, p1, Ldx0;->d:I

    .line 38
    .line 39
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:I

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/view/View;

    .line 45
    .line 46
    iget v2, p1, Ldx0;->e:I

    .line 47
    .line 48
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 49
    .line 50
    iget v2, p1, Ldx0;->f:I

    .line 51
    .line 52
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J0:I

    .line 53
    .line 54
    iget v2, p1, Ldx0;->g:I

    .line 55
    .line 56
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 57
    .line 58
    iget v2, p1, Ldx0;->h:I

    .line 59
    .line 60
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K0:I

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 63
    .line 64
    iget v2, p1, Ldx0;->j:I

    .line 65
    .line 66
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 67
    .line 68
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    iget v2, p1, Ldx0;->i:I

    .line 71
    .line 72
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V0:I

    .line 73
    .line 74
    iget v2, p1, Ldx0;->k:I

    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->p(Landroid/content/res/ColorStateList;I)V

    .line 77
    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T0:Z

    .line 80
    .line 81
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 82
    .line 83
    iget v2, p1, Ldx0;->p:I

    .line 84
    .line 85
    iput v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 86
    .line 87
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 88
    .line 89
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Z

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Z

    .line 92
    .line 93
    iget v2, p1, Ldx0;->o:I

    .line 94
    .line 95
    invoke-virtual {p0, v1, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->r(Landroid/content/res/ColorStateList;I)V

    .line 96
    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 99
    .line 100
    iget v0, p1, Ldx0;->m:I

    .line 101
    .line 102
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 103
    .line 104
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:[Ljava/lang/CharSequence;

    .line 105
    .line 106
    iget-object v0, p1, Ldx0;->n:Landroid/graphics/Typeface;

    .line 107
    .line 108
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 109
    .line 110
    iget p1, p1, Ldx0;->l:I

    .line 111
    .line 112
    invoke-virtual {p0, v1, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->s(Landroid/content/res/ColorStateList;I)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    if-ltz v0, :cond_3

    .line 4
    .line 5
    const/16 v1, 0x32

    .line 6
    .line 7
    if-gt v0, v1, :cond_3

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    new-array v1, v0, [F

    .line 12
    .line 13
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-array v1, v0, [F

    .line 20
    .line 21
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 22
    .line 23
    new-array v1, v0, [F

    .line 24
    .line 25
    iput-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:[F

    .line 26
    .line 27
    :cond_0
    new-array v0, v0, [F

    .line 28
    .line 29
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 33
    .line 34
    array-length v2, v1

    .line 35
    if-ge v0, v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 38
    .line 39
    int-to-float v3, v0

    .line 40
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 41
    .line 42
    sub-float/2addr v4, v2

    .line 43
    mul-float/2addr v4, v3

    .line 44
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 45
    .line 46
    add-int/lit8 v5, v3, -0x1

    .line 47
    .line 48
    if-lez v5, :cond_1

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v3, 0x1

    .line 54
    :goto_1
    int-to-float v3, v3

    .line 55
    div-float/2addr v4, v3

    .line 56
    add-float/2addr v4, v2

    .line 57
    aput v4, v1, v0

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void

    .line 63
    :cond_3
    const-string v0, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    .line 64
    .line 65
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 66
    .line 67
    invoke-static {p0, v0}, Lz5;->c(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->o()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 29
    .line 30
    const/16 v2, 0xff

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:Z

    .line 36
    .line 37
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    div-float/2addr v3, v2

    .line 49
    sub-float/2addr v0, v3

    .line 50
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 53
    .line 54
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    int-to-float v4, v4

    .line 61
    div-float/2addr v4, v2

    .line 62
    sub-float/2addr v3, v4

    .line 63
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    int-to-float v3, v3

    .line 76
    div-float/2addr v3, v2

    .line 77
    sub-float/2addr v0, v3

    .line 78
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 79
    .line 80
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 81
    .line 82
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-float v4, v4

    .line 89
    div-float/2addr v4, v2

    .line 90
    sub-float/2addr v3, v4

    .line 91
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-virtual {p1, v1, v0, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    const-string p0, "the format of the selector thumb drawable is wrong!"

    .line 98
    .line 99
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:Z

    .line 104
    .line 105
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S0:I

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O0:I

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 121
    .line 122
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 123
    .line 124
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:Z

    .line 125
    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L0:F

    .line 132
    .line 133
    :goto_1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    if-eqz v2, :cond_e

    .line 4
    .line 5
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    const/4 v2, 0x0

    .line 20
    move v8, v2

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 22
    .line 23
    array-length v2, v2

    .line 24
    if-ge v8, v2, :cond_e

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 35
    .line 36
    aget v3, v3, v8

    .line 37
    .line 38
    cmpl-float v3, v7, v3

    .line 39
    .line 40
    if-ltz v3, :cond_1

    .line 41
    .line 42
    goto/16 :goto_4

    .line 43
    .line 44
    :cond_1
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Z

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    if-eqz v8, :cond_d

    .line 50
    .line 51
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 52
    .line 53
    array-length v3, v3

    .line 54
    sub-int/2addr v3, v4

    .line 55
    if-ne v8, v3, :cond_2

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-ne v8, v3, :cond_3

    .line 64
    .line 65
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 66
    .line 67
    if-le v3, v4, :cond_3

    .line 68
    .line 69
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_3
    int-to-float v3, v8

    .line 76
    cmpg-float v2, v3, v2

    .line 77
    .line 78
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 79
    .line 80
    if-gtz v2, :cond_4

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickColor()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickColor()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    const/high16 v5, 0x40000000    # 2.0f

    .line 100
    .line 101
    if-eqz v3, :cond_9

    .line 102
    .line 103
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 108
    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 115
    .line 116
    if-eqz v3, :cond_8

    .line 117
    .line 118
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    if-eqz v4, :cond_8

    .line 121
    .line 122
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 123
    .line 124
    if-gtz v2, :cond_7

    .line 125
    .line 126
    aget v2, v6, v8

    .line 127
    .line 128
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    int-to-float v4, v4

    .line 133
    div-float/2addr v4, v5

    .line 134
    sub-float/2addr v2, v4

    .line 135
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 138
    .line 139
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    int-to-float v6, v6

    .line 146
    div-float/2addr v6, v5

    .line 147
    sub-float/2addr v4, v6

    .line 148
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_4

    .line 154
    .line 155
    :cond_7
    aget v2, v6, v8

    .line 156
    .line 157
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    int-to-float v3, v3

    .line 162
    div-float/2addr v3, v5

    .line 163
    sub-float/2addr v2, v3

    .line 164
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 165
    .line 166
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 167
    .line 168
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 169
    .line 170
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    int-to-float v6, v6

    .line 175
    div-float/2addr v6, v5

    .line 176
    sub-float/2addr v3, v6

    .line 177
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 178
    .line 179
    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_4

    .line 183
    .line 184
    :cond_8
    const-string v0, "the format of the selector TickMarks drawable is wrong!"

    .line 185
    .line 186
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 191
    .line 192
    if-ne v2, v4, :cond_a

    .line 193
    .line 194
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 195
    .line 196
    aget v2, v2, v8

    .line 197
    .line 198
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 199
    .line 200
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 201
    .line 202
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 203
    .line 204
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 205
    .line 206
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_a
    const/4 v3, 0x3

    .line 211
    if-ne v2, v3, :cond_c

    .line 212
    .line 213
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 214
    .line 215
    const/high16 v3, 0x3f800000    # 1.0f

    .line 216
    .line 217
    invoke-static {v2, v3}, Ltu0;->j(Landroid/content/Context;F)I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 222
    .line 223
    aget v3, v3, v8

    .line 224
    .line 225
    cmpl-float v3, v7, v3

    .line 226
    .line 227
    if-ltz v3, :cond_b

    .line 228
    .line 229
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTrackSize()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    :goto_2
    int-to-float v3, v3

    .line 234
    goto :goto_3

    .line 235
    :cond_b
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTrackSize()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    goto :goto_2

    .line 240
    :goto_3
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 241
    .line 242
    aget v4, v4, v8

    .line 243
    .line 244
    int-to-float v2, v2

    .line 245
    move v6, v2

    .line 246
    sub-float v2, v4, v6

    .line 247
    .line 248
    iget-object v9, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 249
    .line 250
    iget v9, v9, Landroid/graphics/RectF;->top:F

    .line 251
    .line 252
    div-float/2addr v3, v5

    .line 253
    move v5, v3

    .line 254
    sub-float v3, v9, v5

    .line 255
    .line 256
    add-float/2addr v4, v6

    .line 257
    add-float/2addr v5, v9

    .line 258
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 259
    .line 260
    move-object v1, p1

    .line 261
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_c
    const/4 v1, 0x2

    .line 266
    if-ne v2, v1, :cond_d

    .line 267
    .line 268
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 269
    .line 270
    aget v1, v1, v8

    .line 271
    .line 272
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 273
    .line 274
    int-to-float v2, v2

    .line 275
    div-float/2addr v2, v5

    .line 276
    move v3, v2

    .line 277
    sub-float v2, v1, v3

    .line 278
    .line 279
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 280
    .line 281
    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 282
    .line 283
    move v5, v3

    .line 284
    sub-float v3, v4, v5

    .line 285
    .line 286
    add-float/2addr v1, v5

    .line 287
    add-float/2addr v5, v4

    .line 288
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 289
    .line 290
    move v4, v1

    .line 291
    move-object v1, p1

    .line 292
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    .line 294
    .line 295
    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_e
    :goto_5
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTickFloat()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    if-ge v1, v2, :cond_6

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    int-to-float v2, v1

    .line 24
    cmpl-float v2, v2, v0

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 29
    .line 30
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    int-to-float v2, v1

    .line 37
    cmpg-float v2, v2, v0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 40
    .line 41
    if-gez v2, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getLeftSideTickTextsColor()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getRightSideTickTextsColor()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 63
    .line 64
    array-length v2, v2

    .line 65
    sub-int/2addr v2, v1

    .line 66
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v2, v1

    .line 70
    :goto_2
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 71
    .line 72
    const/high16 v4, 0x40000000    # 2.0f

    .line 73
    .line 74
    if-nez v1, :cond_4

    .line 75
    .line 76
    aget-object v3, v3, v2

    .line 77
    .line 78
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 79
    .line 80
    aget v5, v5, v1

    .line 81
    .line 82
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:[F

    .line 83
    .line 84
    aget v2, v6, v2

    .line 85
    .line 86
    div-float/2addr v2, v4

    .line 87
    add-float/2addr v2, v5

    .line 88
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:F

    .line 89
    .line 90
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 91
    .line 92
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    array-length v5, v3

    .line 97
    add-int/lit8 v5, v5, -0x1

    .line 98
    .line 99
    if-ne v1, v5, :cond_5

    .line 100
    .line 101
    aget-object v3, v3, v2

    .line 102
    .line 103
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 104
    .line 105
    aget v5, v5, v1

    .line 106
    .line 107
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:[F

    .line 108
    .line 109
    aget v2, v6, v2

    .line 110
    .line 111
    div-float/2addr v2, v4

    .line 112
    sub-float/2addr v5, v2

    .line 113
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:F

    .line 114
    .line 115
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 116
    .line 117
    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    aget-object v2, v3, v2

    .line 122
    .line 123
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 124
    .line 125
    aget v3, v3, v1

    .line 126
    .line 127
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:F

    .line 128
    .line 129
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 130
    .line 131
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    :goto_4
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K0:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 9
    .line 10
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 17
    .line 18
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 19
    .line 20
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 21
    .line 22
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 23
    .line 24
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 25
    .line 26
    iget-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 33
    .line 34
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J0:I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 40
    .line 41
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 42
    .line 43
    int-to-float v0, v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 48
    .line 49
    iget v8, p1, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    iget v9, p1, Landroid/graphics/RectF;->top:F

    .line 52
    .line 53
    iget v10, p1, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    iget v11, p1, Landroid/graphics/RectF;->bottom:F

    .line 56
    .line 57
    iget-object v12, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 58
    .line 59
    move-object v7, v1

    .line 60
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public getIndicator()Lvb4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIndicatorContentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIndicatorTextString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "${TICK_TEXT}"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-le v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbPosOnTick()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    aget-object p0, v0, p0

    .line 29
    .line 30
    invoke-virtual {v2, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v1, "${PROGRESS}"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:Ljava/lang/String;

    .line 48
    .line 49
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->i(F)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->i(F)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public getMax()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 2
    .line 3
    return p0
.end method

.method public getMin()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 2
    .line 3
    return p0
.end method

.method public getOnSeekChangeListener()Lit5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lit5;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public declared-synchronized getProgressFloat()F
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 3
    .line 4
    float-to-double v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public getTickCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 6
    .line 7
    const/high16 v1, 0x41f00000    # 30.0f

    .line 8
    .line 9
    invoke-static {v0, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v1, v0, :cond_3

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v2, p0

    .line 35
    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    .line 37
    mul-float/2addr v2, v3

    .line 38
    int-to-float v1, v1

    .line 39
    mul-float/2addr v2, v1

    .line 40
    int-to-float p2, p2

    .line 41
    div-float/2addr v2, p2

    .line 42
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-le p0, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    int-to-float v1, v0

    .line 57
    mul-float/2addr v1, v3

    .line 58
    int-to-float p2, p2

    .line 59
    mul-float/2addr v1, p2

    .line 60
    int-to-float p0, p0

    .line 61
    div-float/2addr v1, p0

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v0, p0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    :goto_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    .line 79
    invoke-static {v0, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance p2, Landroid/graphics/Canvas;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    .line 102
    .line 103
    return-object p0
.end method

.method public final i(F)Ljava/lang/String;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    float-to-double v0, p1

    .line 6
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 17
    .line 18
    int-to-double v6, p0

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    mul-double/2addr v4, v2

    .line 24
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 25
    .line 26
    add-double/2addr v4, v2

    .line 27
    const-wide v2, 0x430c6bf52633fff8L    # 9.99999999999999E14

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmpl-double p1, v4, v2

    .line 33
    .line 34
    const/16 v2, 0x2e

    .line 35
    .line 36
    const/16 v3, 0x30

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v7, 0x1

    .line 40
    if-gtz p1, :cond_7

    .line 41
    .line 42
    const/16 p1, 0x10

    .line 43
    .line 44
    if-le p0, p1, :cond_0

    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    double-to-long v4, v4

    .line 53
    const-wide/16 v8, 0x1

    .line 54
    .line 55
    cmp-long p1, v4, v8

    .line 56
    .line 57
    if-gez p1, :cond_1

    .line 58
    .line 59
    const-string p0, "0"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    array-length v4, p1

    .line 71
    if-le v4, p0, :cond_4

    .line 72
    .line 73
    array-length v4, p1

    .line 74
    sub-int/2addr v4, v7

    .line 75
    array-length v5, p1

    .line 76
    sub-int/2addr v5, p0

    .line 77
    :goto_0
    if-lt v4, v5, :cond_2

    .line 78
    .line 79
    aget-char p0, p1, v4

    .line 80
    .line 81
    if-ne p0, v3, :cond_2

    .line 82
    .line 83
    add-int/lit8 v4, v4, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    if-lt v4, v5, :cond_3

    .line 87
    .line 88
    add-int/lit8 p0, v4, 0x2

    .line 89
    .line 90
    new-array p0, p0, [C

    .line 91
    .line 92
    invoke-static {p1, v6, p0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    aput-char v2, p0, v5

    .line 96
    .line 97
    add-int/lit8 v2, v5, 0x1

    .line 98
    .line 99
    sub-int/2addr v4, v5

    .line 100
    add-int/2addr v4, v7

    .line 101
    invoke-static {p1, v5, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    new-array p0, v5, [C

    .line 106
    .line 107
    invoke-static {p1, v6, p0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    array-length v2, p1

    .line 112
    sub-int/2addr v2, v7

    .line 113
    :goto_1
    if-ltz v2, :cond_5

    .line 114
    .line 115
    aget-char v4, p1, v2

    .line 116
    .line 117
    if-ne v4, v3, :cond_5

    .line 118
    .line 119
    add-int/lit8 v2, v2, -0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    sget-object v3, Lw13;->c:[[C

    .line 123
    .line 124
    array-length v4, p1

    .line 125
    sub-int/2addr p0, v4

    .line 126
    aget-object p0, v3, p0

    .line 127
    .line 128
    array-length v3, p0

    .line 129
    add-int/2addr v3, v2

    .line 130
    add-int/2addr v3, v7

    .line 131
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    array-length p0, p0

    .line 136
    add-int/2addr v2, v7

    .line 137
    invoke-static {p1, v6, v3, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    .line 139
    .line 140
    move-object p0, v3

    .line 141
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    const-wide/16 v2, 0x0

    .line 146
    .line 147
    cmpl-double p1, v0, v2

    .line 148
    .line 149
    if-lez p1, :cond_6

    .line 150
    .line 151
    new-instance p1, Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 154
    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_6
    new-instance p1, Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 160
    .line 161
    .line 162
    const-string p0, "-"

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_7
    :goto_3
    new-instance p1, Ljava/math/BigDecimal;

    .line 170
    .line 171
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 183
    .line 184
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    if-nez p0, :cond_8

    .line 193
    .line 194
    return-object p1

    .line 195
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    sub-int/2addr p0, v7

    .line 200
    :goto_4
    if-ltz p0, :cond_9

    .line 201
    .line 202
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-ne v0, v3, :cond_9

    .line 207
    .line 208
    add-int/lit8 p0, p0, -0x1

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    add-int/2addr p0, v7

    .line 212
    invoke-virtual {p1, v6, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    sub-int/2addr p1, v7

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-ne p1, v2, :cond_a

    .line 226
    .line 227
    invoke-static {v7, v6, p0}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    :cond_a
    return-object p0

    .line 232
    :cond_b
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0
.end method

.method public final j(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    new-instance v0, Ldx0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ldx0;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->b(Ldx0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lvd6;->a:[I

    .line 13
    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x6

    .line 19
    const/high16 v1, 0x42c80000    # 100.0f

    .line 20
    .line 21
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 26
    .line 27
    const/4 p2, 0x7

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 34
    .line 35
    const/16 p2, 0x9

    .line 36
    .line 37
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 42
    .line 43
    const/16 p2, 0xa

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N:Z

    .line 51
    .line 52
    const/16 p2, 0x25

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Z

    .line 60
    .line 61
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:Z

    .line 66
    .line 67
    const/16 p2, 0x8

    .line 68
    .line 69
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:Z

    .line 74
    .line 75
    const/16 p2, 0xc

    .line 76
    .line 77
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 82
    .line 83
    const/16 p2, 0xb

    .line 84
    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 90
    .line 91
    const/16 p2, 0x21

    .line 92
    .line 93
    iget v3, v0, Ldx0;->e:I

    .line 94
    .line 95
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 100
    .line 101
    const/16 p2, 0x23

    .line 102
    .line 103
    iget v3, v0, Ldx0;->g:I

    .line 104
    .line 105
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 110
    .line 111
    const/16 p2, 0x20

    .line 112
    .line 113
    iget v3, v0, Ldx0;->f:I

    .line 114
    .line 115
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J0:I

    .line 120
    .line 121
    const/16 p2, 0x22

    .line 122
    .line 123
    iget v3, v0, Ldx0;->h:I

    .line 124
    .line 125
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K0:I

    .line 130
    .line 131
    const/16 p2, 0x24

    .line 132
    .line 133
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 138
    .line 139
    const/16 p2, 0x14

    .line 140
    .line 141
    iget v3, v0, Ldx0;->j:I

    .line 142
    .line 143
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 148
    .line 149
    const/16 p2, 0x13

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    const/16 p2, 0x11

    .line 158
    .line 159
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W0:Z

    .line 164
    .line 165
    const/16 p2, 0x12

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    iget v3, v0, Ldx0;->k:I

    .line 172
    .line 173
    invoke-virtual {p0, p2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->p(Landroid/content/res/ColorStateList;I)V

    .line 174
    .line 175
    .line 176
    const/16 p2, 0xe

    .line 177
    .line 178
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T0:Z

    .line 183
    .line 184
    const/16 p2, 0x15

    .line 185
    .line 186
    iget v3, v0, Ldx0;->i:I

    .line 187
    .line 188
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V0:I

    .line 193
    .line 194
    const/16 p2, 0x1f

    .line 195
    .line 196
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 201
    .line 202
    const/16 p2, 0xf

    .line 203
    .line 204
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->A0:I

    .line 209
    .line 210
    const/16 p2, 0x19

    .line 211
    .line 212
    iget v3, v0, Ldx0;->p:I

    .line 213
    .line 214
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 219
    .line 220
    const/16 p2, 0x16

    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    iget v3, v0, Ldx0;->o:I

    .line 227
    .line 228
    invoke-virtual {p0, p2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->r(Landroid/content/res/ColorStateList;I)V

    .line 229
    .line 230
    .line 231
    const/16 p2, 0x17

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 238
    .line 239
    const/16 p2, 0x1a

    .line 240
    .line 241
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->C0:Z

    .line 246
    .line 247
    const/16 p2, 0x18

    .line 248
    .line 249
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->B0:Z

    .line 254
    .line 255
    const/16 p2, 0x10

    .line 256
    .line 257
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    iput-boolean p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 262
    .line 263
    const/16 p2, 0x1d

    .line 264
    .line 265
    iget v3, v0, Ldx0;->m:I

    .line 266
    .line 267
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 272
    .line 273
    const/16 p2, 0x1c

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    iget v3, v0, Ldx0;->l:I

    .line 280
    .line 281
    invoke-virtual {p0, p2, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->s(Landroid/content/res/ColorStateList;I)V

    .line 282
    .line 283
    .line 284
    const/16 p2, 0x1b

    .line 285
    .line 286
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:[Ljava/lang/CharSequence;

    .line 291
    .line 292
    const/16 p2, 0x1e

    .line 293
    .line 294
    const/4 v3, -0x1

    .line 295
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    const/4 v3, 0x3

    .line 300
    const/4 v4, 0x2

    .line 301
    if-eqz p2, :cond_5

    .line 302
    .line 303
    if-eq p2, v2, :cond_4

    .line 304
    .line 305
    if-eq p2, v4, :cond_3

    .line 306
    .line 307
    if-eq p2, v3, :cond_2

    .line 308
    .line 309
    iget-object p2, v0, Ldx0;->n:Landroid/graphics/Typeface;

    .line 310
    .line 311
    if-nez p2, :cond_1

    .line 312
    .line 313
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 314
    .line 315
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 316
    .line 317
    goto :goto_0

    .line 318
    :cond_1
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_2
    sget-object p2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 322
    .line 323
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_3
    sget-object p2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 327
    .line 328
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 329
    .line 330
    goto :goto_0

    .line 331
    :cond_4
    sget-object p2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 332
    .line 333
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_5
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 337
    .line 338
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 339
    .line 340
    :goto_0
    const/16 p2, 0xd

    .line 341
    .line 342
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 347
    .line 348
    iget p2, v0, Ldx0;->b:I

    .line 349
    .line 350
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 351
    .line 352
    .line 353
    move-result p2

    .line 354
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:I

    .line 355
    .line 356
    const/4 p2, 0x4

    .line 357
    iget v2, v0, Ldx0;->d:I

    .line 358
    .line 359
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:I

    .line 364
    .line 365
    iget p2, v0, Ldx0;->c:I

    .line 366
    .line 367
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:I

    .line 372
    .line 373
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    const/4 v0, 0x0

    .line 378
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 379
    .line 380
    if-lez p2, :cond_6

    .line 381
    .line 382
    invoke-static {v2, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 387
    .line 388
    :cond_6
    const/4 p2, 0x5

    .line 389
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    if-lez p2, :cond_7

    .line 394
    .line 395
    invoke-static {v2, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    iput-object p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/view/View;

    .line 400
    .line 401
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 402
    .line 403
    .line 404
    return-void
.end method

.method public final k()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->l()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 5
    .line 6
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 7
    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    const/high16 v1, 0x41f00000    # 30.0f

    .line 15
    .line 16
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 17
    .line 18
    const/high16 v3, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 23
    .line 24
    int-to-float v0, v0

    .line 25
    div-float/2addr v0, v3

    .line 26
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L0:F

    .line 27
    .line 28
    const v4, 0x3f99999a    # 1.2f

    .line 29
    .line 30
    .line 31
    mul-float/2addr v0, v4

    .line 32
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v2, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 40
    .line 41
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    div-float/2addr v0, v3

    .line 47
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L0:F

    .line 48
    .line 49
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 56
    .line 57
    int-to-float v0, v0

    .line 58
    div-float/2addr v0, v3

    .line 59
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {v2, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-float v0, v0

    .line 73
    div-float/2addr v0, v3

    .line 74
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 75
    .line 76
    :goto_1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 77
    .line 78
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 79
    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    mul-float/2addr v0, v3

    .line 85
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 86
    .line 87
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    new-instance v0, Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 97
    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->E0:Z

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 103
    .line 104
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b:Landroid/graphics/Paint;

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H0:I

    .line 116
    .line 117
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 118
    .line 119
    if-le v0, v3, :cond_5

    .line 120
    .line 121
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I0:I

    .line 122
    .line 123
    :cond_5
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T0:Z

    .line 124
    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    :cond_6
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 136
    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    new-instance v0, Landroid/text/TextPaint;

    .line 140
    .line 141
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 150
    .line 151
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 157
    .line 158
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d0:I

    .line 159
    .line 160
    int-to-float v3, v3

    .line 161
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 165
    .line 166
    if-nez v0, :cond_8

    .line 167
    .line 168
    new-instance v0, Landroid/graphics/Rect;

    .line 169
    .line 170
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 174
    .line 175
    :cond_8
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 176
    .line 177
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e0:Landroid/graphics/Typeface;

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 183
    .line 184
    const/4 v3, 0x0

    .line 185
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 186
    .line 187
    const-string v5, "j"

    .line 188
    .line 189
    invoke-virtual {v0, v5, v3, v1, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    const/high16 v1, 0x40400000    # 3.0f

    .line 199
    .line 200
    invoke-static {v2, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    add-int/2addr v1, v0

    .line 205
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V:I

    .line 206
    .line 207
    :cond_9
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 208
    .line 209
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->c()V

    .line 212
    .line 213
    .line 214
    new-instance v0, Landroid/graphics/RectF;

    .line 215
    .line 216
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 217
    .line 218
    .line 219
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 220
    .line 221
    new-instance v0, Landroid/graphics/RectF;

    .line 222
    .line 223
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 227
    .line 228
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q:Z

    .line 229
    .line 230
    if-nez v0, :cond_b

    .line 231
    .line 232
    const/high16 v0, 0x41800000    # 16.0f

    .line 233
    .line 234
    invoke-static {v2, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_a

    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 257
    .line 258
    .line 259
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_b

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 278
    .line 279
    .line 280
    :cond_b
    iget v8, p0, Lcom/warkiz/widget/IndicatorSeekBar;->q0:I

    .line 281
    .line 282
    if-nez v8, :cond_c

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_c
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 286
    .line 287
    if-nez v0, :cond_d

    .line 288
    .line 289
    new-instance v4, Lvb4;

    .line 290
    .line 291
    iget v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k0:I

    .line 292
    .line 293
    iget v9, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n0:I

    .line 294
    .line 295
    iget v10, p0, Lcom/warkiz/widget/IndicatorSeekBar;->l0:I

    .line 296
    .line 297
    iget-object v11, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 298
    .line 299
    iget-object v12, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p0:Landroid/view/View;

    .line 300
    .line 301
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 302
    .line 303
    move-object v6, p0

    .line 304
    invoke-direct/range {v4 .. v12}, Lvb4;-><init>(Landroid/content/Context;Lcom/warkiz/widget/IndicatorSeekBar;IIIILandroid/view/View;Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    iput-object v4, v6, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 308
    .line 309
    iget-object p0, v4, Lvb4;->l:Landroid/view/View;

    .line 310
    .line 311
    iput-object p0, v6, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 312
    .line 313
    :cond_d
    :goto_2
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 2
    .line 3
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 4
    .line 5
    cmpg-float v2, v0, v1

    .line 6
    .line 7
    if-ltz v2, :cond_2

    .line 8
    .line 9
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 10
    .line 11
    cmpg-float v2, v2, v1

    .line 12
    .line 13
    if-gez v2, :cond_0

    .line 14
    .line 15
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 18
    .line 19
    cmpl-float v1, v1, v0

    .line 20
    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :cond_2
    const-string p0, "the Argument: MAX\'s value must be larger than MIN\'s."

    .line 27
    .line 28
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:I

    .line 24
    .line 25
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 26
    .line 27
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    int-to-float v0, v0

    .line 34
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 35
    .line 36
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 37
    .line 38
    add-int/lit8 v2, v1, -0x1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    if-lez v2, :cond_0

    .line 42
    .line 43
    add-int/lit8 v3, v1, -0x1

    .line 44
    .line 45
    :cond_0
    int-to-float v1, v3

    .line 46
    div-float/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 48
    .line 49
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 17
    .line 18
    array-length v2, v2

    .line 19
    if-ge v1, v2, :cond_5

    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 22
    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->i0:[Ljava/lang/CharSequence;

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 32
    .line 33
    aget v3, v3, v1

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->i(F)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    array-length v4, v3

    .line 41
    if-ge v1, v4, :cond_3

    .line 42
    .line 43
    aget-object v3, v3, v1

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const-string v3, ""

    .line 51
    .line 52
    :goto_1
    aput-object v3, v2, v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W:[Ljava/lang/String;

    .line 57
    .line 58
    aget-object v3, v3, v1

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a0:[F

    .line 70
    .line 71
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    int-to-float v3, v3

    .line 78
    aput v3, v2, v1

    .line 79
    .line 80
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->b0:[F

    .line 81
    .line 82
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 86
    .line 87
    int-to-float v5, v1

    .line 88
    mul-float/2addr v4, v5

    .line 89
    add-float/2addr v4, v3

    .line 90
    aput v4, v2, v1

    .line 91
    .line 92
    :cond_4
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 93
    .line 94
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 95
    .line 96
    int-to-float v3, v3

    .line 97
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 98
    .line 99
    int-to-float v5, v1

    .line 100
    mul-float/2addr v4, v5

    .line 101
    add-float/2addr v4, v3

    .line 102
    aput v4, v2, v1

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    :goto_2
    return-void
.end method

.method public final o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    :try_start_0
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v3, "getStateCount"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-ne v3, v4, :cond_4

    .line 37
    .line 38
    const-string v4, "getStateSet"

    .line 39
    .line 40
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v6, "getStateDrawable"

    .line 51
    .line 52
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v5, 0x0

    .line 61
    move v6, v5

    .line 62
    :goto_0
    if-ge v6, v3, :cond_3

    .line 63
    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, [I

    .line 77
    .line 78
    array-length v8, v7

    .line 79
    if-lez v8, :cond_2

    .line 80
    .line 81
    aget v7, v7, v5

    .line 82
    .line 83
    const v8, 0x10100a7

    .line 84
    .line 85
    .line 86
    if-ne v7, v8, :cond_1

    .line 87
    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    invoke-virtual {p0, v7, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string v1, "the state of the selector thumb drawable is wrong!"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v1, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    invoke-virtual {p0, v7, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    iput-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 136
    .line 137
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    :goto_2
    return-void

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string v1, "the format of the selector thumb drawable is wrong!"

    .line 144
    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    invoke-virtual {p0, v0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->g(Landroid/graphics/Canvas;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->e(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->f(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->d(Landroid/graphics/Canvas;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-le v0, v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 29
    .line 30
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V0:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->i(F)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U0:F

    .line 46
    .line 47
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    add-float/2addr p2, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    add-float/2addr p2, v0

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 23
    .line 24
    const/high16 v1, 0x432a0000    # 170.0f

    .line 25
    .line 26
    invoke-static {v0, v1}, Ltu0;->j(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->V:I

    .line 35
    .line 36
    add-int/2addr p2, v0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->m()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->u()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "isb_progress"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    .line 14
    .line 15
    .line 16
    const-string v0, "isb_instance_state"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "isb_instance_state"

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "isb_progress"

    .line 16
    .line 17
    iget p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lib0;

    .line 5
    .line 6
    const/4 p2, 0x6

    .line 7
    invoke-direct {p1, p0, p2}, Lib0;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_f

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    if-eq v0, v4, :cond_2

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->t(Landroid/view/MotionEvent;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_2
    iput-boolean v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lit5;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast v0, Ls79;

    .line 43
    .line 44
    iget-object v0, v0, Ls79;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lw27;

    .line 47
    .line 48
    iget-object v0, v0, Lw27;->l:Lhq0;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4}, Lhq0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 64
    .line 65
    if-lt v0, v3, :cond_6

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W0:Z

    .line 73
    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 82
    .line 83
    iget-object v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 84
    .line 85
    aget v5, v5, v0

    .line 86
    .line 87
    sub-float v5, v4, v5

    .line 88
    .line 89
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    new-array v3, v3, [F

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    aput v6, v3, v1

    .line 97
    .line 98
    aput v5, v3, v2

    .line 99
    .line 100
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    .line 106
    .line 107
    new-instance v2, Lwb4;

    .line 108
    .line 109
    invoke-direct {v2, p0, v4, v0}, Lwb4;-><init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 117
    .line 118
    .line 119
    :goto_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 120
    .line 121
    if-eqz v0, :cond_e

    .line 122
    .line 123
    iget-object v0, v0, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 124
    .line 125
    if-nez v0, :cond_7

    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :cond_7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_5

    .line 133
    .line 134
    :cond_8
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 146
    .line 147
    const/high16 v5, -0x40800000    # -1.0f

    .line 148
    .line 149
    cmpl-float v4, v4, v5

    .line 150
    .line 151
    if-nez v4, :cond_9

    .line 152
    .line 153
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 154
    .line 155
    const/high16 v5, 0x40a00000    # 5.0f

    .line 156
    .line 157
    invoke-static {v4, v5}, Ltu0;->j(Landroid/content/Context;F)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    int-to-float v4, v4

    .line 162
    iput v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 163
    .line 164
    :cond_9
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 165
    .line 166
    int-to-float v4, v4

    .line 167
    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->n:F

    .line 168
    .line 169
    const/high16 v6, 0x40000000    # 2.0f

    .line 170
    .line 171
    mul-float v7, v5, v6

    .line 172
    .line 173
    sub-float/2addr v4, v7

    .line 174
    cmpl-float v4, v0, v4

    .line 175
    .line 176
    if-ltz v4, :cond_a

    .line 177
    .line 178
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 179
    .line 180
    iget v8, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 181
    .line 182
    sub-int/2addr v4, v8

    .line 183
    int-to-float v4, v4

    .line 184
    add-float/2addr v7, v4

    .line 185
    cmpg-float v4, v0, v7

    .line 186
    .line 187
    if-gtz v4, :cond_a

    .line 188
    .line 189
    move v4, v2

    .line 190
    goto :goto_2

    .line 191
    :cond_a
    move v4, v1

    .line 192
    :goto_2
    iget-object v7, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 193
    .line 194
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 195
    .line 196
    iget v8, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 197
    .line 198
    sub-float v9, v7, v8

    .line 199
    .line 200
    sub-float/2addr v9, v5

    .line 201
    cmpl-float v9, v3, v9

    .line 202
    .line 203
    if-ltz v9, :cond_b

    .line 204
    .line 205
    add-float/2addr v7, v8

    .line 206
    add-float/2addr v7, v5

    .line 207
    cmpg-float v3, v3, v7

    .line 208
    .line 209
    if-gtz v3, :cond_b

    .line 210
    .line 211
    move v3, v2

    .line 212
    goto :goto_3

    .line 213
    :cond_b
    move v3, v1

    .line 214
    :goto_3
    if-eqz v4, :cond_e

    .line 215
    .line 216
    if-eqz v3, :cond_e

    .line 217
    .line 218
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q:Z

    .line 219
    .line 220
    if-eqz v3, :cond_d

    .line 221
    .line 222
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 223
    .line 224
    invoke-virtual {p0, v3}, Lcom/warkiz/widget/IndicatorSeekBar;->v(F)V

    .line 225
    .line 226
    .line 227
    iget-boolean v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 228
    .line 229
    if-eqz v3, :cond_c

    .line 230
    .line 231
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 232
    .line 233
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_c
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 237
    .line 238
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 239
    .line 240
    :goto_4
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 241
    .line 242
    int-to-float v4, v4

    .line 243
    div-float/2addr v4, v6

    .line 244
    sub-float v5, v3, v4

    .line 245
    .line 246
    cmpg-float v5, v5, v0

    .line 247
    .line 248
    if-gtz v5, :cond_f

    .line 249
    .line 250
    add-float/2addr v4, v3

    .line 251
    cmpg-float v0, v0, v4

    .line 252
    .line 253
    if-gtz v0, :cond_f

    .line 254
    .line 255
    :cond_d
    iput-boolean v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->J:Z

    .line 256
    .line 257
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->t(Landroid/view/MotionEvent;)V

    .line 258
    .line 259
    .line 260
    return v2

    .line 261
    :cond_e
    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    return p0

    .line 266
    :cond_f
    :goto_6
    return v1
.end method

.method public final p(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S0:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v1

    .line 20
    move v4, v2

    .line 21
    :goto_0
    const/4 v5, 0x1

    .line 22
    if-ge v4, v0, :cond_3

    .line 23
    .line 24
    aget-object v6, p2, v4

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    const-string v5, "mStateSpecs"

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [[I

    .line 46
    .line 47
    :cond_1
    const-string v5, "mColors"

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_9

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    array-length p1, v1

    .line 74
    if-ne p1, v5, :cond_5

    .line 75
    .line 76
    aget p1, v3, v2

    .line 77
    .line 78
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O0:I

    .line 79
    .line 80
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S0:I

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    array-length p1, v1

    .line 84
    const/4 p2, 0x2

    .line 85
    const-string v0, "the selector color file you set for the argument: isb_thumb_color is in wrong format."

    .line 86
    .line 87
    if-ne p1, p2, :cond_8

    .line 88
    .line 89
    move p1, v2

    .line 90
    :goto_1
    array-length p2, v1

    .line 91
    if-ge p1, p2, :cond_9

    .line 92
    .line 93
    aget-object p2, v1, p1

    .line 94
    .line 95
    array-length v4, p2

    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    aget p2, v3, p1

    .line 99
    .line 100
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S0:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    aget p2, p2, v2

    .line 104
    .line 105
    const v4, 0x10100a7

    .line 106
    .line 107
    .line 108
    if-ne p2, v4, :cond_7

    .line 109
    .line 110
    aget p2, v3, p1

    .line 111
    .line 112
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O0:I

    .line 113
    .line 114
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_3
    return-void

    .line 125
    :catch_0
    const-string p0, "Something wrong happened when parseing thumb selector color."

    .line 126
    .line 127
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "getStateCount"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x2

    .line 32
    if-ne v3, v4, :cond_2

    .line 33
    .line 34
    const-string v4, "getStateSet"

    .line 35
    .line 36
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v6, "getStateDrawable"

    .line 47
    .line 48
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move v5, v2

    .line 57
    :goto_0
    if-ge v5, v3, :cond_3

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, [I

    .line 72
    .line 73
    array-length v7, v6

    .line 74
    if-lez v7, :cond_1

    .line 75
    .line 76
    aget v6, v6, v2

    .line 77
    .line 78
    const v7, 0x10100a1

    .line 79
    .line 80
    .line 81
    if-ne v6, v7, :cond_0

    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-virtual {p0, v6, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    iput-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string v1, "the state of the selector TickMarks drawable is wrong!"

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    invoke-virtual {p0, v6, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iput-object v6, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string v1, "the format of the selector TickMarks drawable is wrong!"

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 144
    .line 145
    invoke-virtual {p0, v0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 150
    .line 151
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 152
    .line 153
    :cond_3
    return-void

    .line 154
    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->h(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/Bitmap;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 161
    .line 162
    return-void
.end method

.method public final r(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    array-length v0, p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    move-object v3, v1

    .line 20
    move v4, v2

    .line 21
    :goto_0
    const/4 v5, 0x1

    .line 22
    if-ge v4, v0, :cond_3

    .line 23
    .line 24
    aget-object v6, p2, v4

    .line 25
    .line 26
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    const-string v5, "mStateSpecs"

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, [[I

    .line 46
    .line 47
    :cond_1
    const-string v5, "mColors"

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz v1, :cond_9

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    array-length p1, v1

    .line 74
    if-ne p1, v5, :cond_5

    .line 75
    .line 76
    aget p1, v3, v2

    .line 77
    .line 78
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:I

    .line 79
    .line 80
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:I

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    array-length p1, v1

    .line 84
    const/4 p2, 0x2

    .line 85
    const-string v0, "the selector color file you set for the argument: isb_tick_marks_color is in wrong format."

    .line 86
    .line 87
    if-ne p1, p2, :cond_8

    .line 88
    .line 89
    move p1, v2

    .line 90
    :goto_1
    array-length p2, v1

    .line 91
    if-ge p1, p2, :cond_9

    .line 92
    .line 93
    aget-object p2, v1, p1

    .line 94
    .line 95
    array-length v4, p2

    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    aget p2, v3, p1

    .line 99
    .line 100
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->u0:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    aget p2, p2, v2

    .line 104
    .line 105
    const v4, 0x10100a1

    .line 106
    .line 107
    .line 108
    if-ne p2, v4, :cond_7

    .line 109
    .line 110
    aget p2, v3, p1

    .line 111
    .line 112
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->v0:I

    .line 113
    .line 114
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_9
    :goto_3
    return-void

    .line 125
    :catch_0
    move-exception p0

    .line 126
    new-instance p1, Ljava/lang/RuntimeException;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v0, "Something wrong happened when parsing thumb selector color."

    .line 135
    .line 136
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method

.method public final s(Landroid/content/res/ColorStateList;I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:I

    .line 6
    .line 7
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    array-length v0, p2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    move-object v3, v1

    .line 22
    move v4, v2

    .line 23
    :goto_0
    const/4 v5, 0x1

    .line 24
    if-ge v4, v0, :cond_3

    .line 25
    .line 26
    aget-object v6, p2, v4

    .line 27
    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    const-string v5, "mStateSpecs"

    .line 32
    .line 33
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [[I

    .line 48
    .line 49
    :cond_1
    const-string v5, "mColors"

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    if-eqz v1, :cond_a

    .line 71
    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    array-length p1, v1

    .line 76
    if-ne p1, v5, :cond_5

    .line 77
    .line 78
    aget p1, v3, v2

    .line 79
    .line 80
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:I

    .line 81
    .line 82
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:I

    .line 83
    .line 84
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:I

    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    array-length p1, v1

    .line 88
    const/4 p2, 0x3

    .line 89
    const-string v0, "the selector color file you set for the argument: isb_tick_texts_color is in wrong format."

    .line 90
    .line 91
    if-ne p1, p2, :cond_9

    .line 92
    .line 93
    move p1, v2

    .line 94
    :goto_1
    array-length p2, v1

    .line 95
    if-ge p1, p2, :cond_a

    .line 96
    .line 97
    aget-object p2, v1, p1

    .line 98
    .line 99
    array-length v4, p2

    .line 100
    if-nez v4, :cond_6

    .line 101
    .line 102
    aget p2, v3, p1

    .line 103
    .line 104
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->g0:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    aget p2, p2, v2

    .line 108
    .line 109
    const v4, 0x10100a1

    .line 110
    .line 111
    .line 112
    if-eq p2, v4, :cond_8

    .line 113
    .line 114
    const v4, 0x1010367

    .line 115
    .line 116
    .line 117
    if-ne p2, v4, :cond_7

    .line 118
    .line 119
    aget p2, v3, p1

    .line 120
    .line 121
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->h0:I

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_7
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    aget p2, v3, p1

    .line 129
    .line 130
    iput p2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f0:I

    .line 131
    .line 132
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_9
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    :goto_3
    return-void

    .line 139
    :catch_0
    const-string p0, "Something wrong happened when parseing thumb selector color."

    .line 140
    .line 141
    invoke-static {p0}, Lg84;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public setDecimalScale(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->O:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public setIndicatorStayAlways(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorTextFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->r0:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->n()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public declared-synchronized setMax(F)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->l()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->c()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->u()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized setMin(F)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->l()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->c()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->u()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public setOnSeekChangeListener(Lit5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->d:Lit5;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setProgress(F)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 3
    .line 4
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 5
    .line 6
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 7
    .line 8
    cmpg-float v1, p1, v0

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    :goto_0
    move p1, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->K:F

    .line 15
    .line 16
    cmpl-float v1, p1, v0

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    :goto_1
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-le p1, v0, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    aget p1, p1, v0

    .line 39
    .line 40
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :cond_2
    :goto_2
    const/4 p1, 0x0

    .line 46
    invoke-direct {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/warkiz/widget/IndicatorSeekBar;->v(F)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method public setR2L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setThumbAdjustAuto(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->W0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->N0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->Q0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 14
    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    .line 16
    .line 17
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P0:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L0:F

    .line 32
    .line 33
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 34
    .line 35
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 36
    .line 37
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    mul-float/2addr p1, v0

    .line 42
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->o()V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public declared-synchronized setTickCount(I)V
    .locals 3

    .line 1
    const-string v0, "the Argument: TICK COUNT must be limited between (0-50), Now is "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    const/16 v2, 0x32

    .line 9
    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->c()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->n()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->m()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->u()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public setTickMarksDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y0:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->z0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 14
    .line 15
    const/high16 v0, 0x41f00000    # 30.0f

    .line 16
    .line 17
    invoke-static {p1, v0}, Ltu0;->j(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->D0:I

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    const/high16 v0, 0x40000000    # 2.0f

    .line 29
    .line 30
    div-float/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->w0:F

    .line 32
    .line 33
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    mul-float/2addr p1, v0

    .line 40
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->q()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setUserSeekAble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->P:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    cmpg-float v0, v0, v1

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 18
    .line 19
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    int-to-float v1, v1

    .line 23
    cmpl-float v0, v0, v1

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_0
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-le p1, v0, :cond_2

    .line 36
    .line 37
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->R:Z

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 42
    .line 43
    int-to-float p1, p1

    .line 44
    sub-float/2addr v1, p1

    .line 45
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 46
    .line 47
    div-float/2addr v1, p1

    .line 48
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->I:F

    .line 53
    .line 54
    int-to-float p1, p1

    .line 55
    mul-float/2addr v1, p1

    .line 56
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 57
    .line 58
    int-to-float p1, p1

    .line 59
    add-float/2addr v1, p1

    .line 60
    :cond_2
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 65
    .line 66
    sub-float/2addr p1, v1

    .line 67
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 68
    .line 69
    mul-int/lit8 v1, v1, 0x2

    .line 70
    .line 71
    int-to-float v1, v1

    .line 72
    add-float/2addr v1, p1

    .line 73
    :cond_3
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 74
    .line 75
    iput p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 76
    .line 77
    iget p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 84
    .line 85
    int-to-float v3, v3

    .line 86
    sub-float/2addr v1, v3

    .line 87
    mul-float/2addr v1, v2

    .line 88
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 89
    .line 90
    div-float/2addr v1, v2

    .line 91
    add-float/2addr v1, p1

    .line 92
    iput v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lcom/warkiz/widget/IndicatorSeekBar;->v(F)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setSeekListener(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 101
    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 112
    .line 113
    if-nez p1, :cond_5

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_5
    iget-object v0, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    iget v0, p1, Lvb4;->j:I

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget-object v0, p1, Lvb4;->l:Landroid/view/View;

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Landroid/widget/PopupWindow;

    .line 135
    .line 136
    iget-object v2, p1, Lvb4;->l:Landroid/view/View;

    .line 137
    .line 138
    const/4 v3, -0x2

    .line 139
    invoke-direct {v0, v2, v3, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 143
    .line 144
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 145
    .line 146
    iget-object p1, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 147
    .line 148
    if-eqz p1, :cond_9

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 157
    .line 158
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    iget-object v0, p1, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_b

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :cond_8
    invoke-virtual {p1}, Lvb4;->c()V

    .line 179
    .line 180
    .line 181
    iget-object v2, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 182
    .line 183
    if-eqz v2, :cond_b

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 190
    .line 191
    .line 192
    iget-object v3, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 193
    .line 194
    iget-object v4, p1, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    div-int/lit8 v1, v1, 0x2

    .line 205
    .line 206
    int-to-float v1, v1

    .line 207
    sub-float v1, p0, v1

    .line 208
    .line 209
    float-to-int v5, v1

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iget-object v2, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    add-int/2addr v2, v1

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    sub-int/2addr v2, v0

    .line 230
    iget v0, p1, Lvb4;->g:I

    .line 231
    .line 232
    add-int/2addr v2, v0

    .line 233
    neg-int v6, v2

    .line 234
    const/4 v7, -0x1

    .line 235
    const/4 v8, -0x1

    .line 236
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, p0}, Lvb4;->a(F)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_9
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 244
    .line 245
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    iget-object v0, p1, Lvb4;->k:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_b

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_a

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_a
    invoke-virtual {p1}, Lvb4;->c()V

    .line 265
    .line 266
    .line 267
    iget-object v2, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 268
    .line 269
    if-eqz v2, :cond_b

    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2, v1, v1}, Landroid/view/View;->measure(II)V

    .line 276
    .line 277
    .line 278
    iget-object v1, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    int-to-float v2, v2

    .line 289
    const/high16 v3, 0x40000000    # 2.0f

    .line 290
    .line 291
    div-float/2addr v2, v3

    .line 292
    sub-float v2, p0, v2

    .line 293
    .line 294
    float-to-int v2, v2

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    iget-object v4, p1, Lvb4;->e:Landroid/widget/PopupWindow;

    .line 300
    .line 301
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    add-int/2addr v4, v3

    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    sub-int/2addr v4, v3

    .line 315
    iget v3, p1, Lvb4;->g:I

    .line 316
    .line 317
    add-int/2addr v4, v3

    .line 318
    neg-int v3, v4

    .line 319
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p0}, Lvb4;->a(F)V

    .line 323
    .line 324
    .line 325
    :cond_b
    :goto_2
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 11
    .line 12
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 16
    .line 17
    add-float/2addr v2, v3

    .line 18
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 19
    .line 20
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 21
    .line 22
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 23
    .line 24
    iget v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 25
    .line 26
    sub-float/2addr v3, v4

    .line 27
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    div-float/2addr v3, v4

    .line 32
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    .line 34
    sub-float/2addr v4, v3

    .line 35
    mul-float/2addr v4, v2

    .line 36
    add-float/2addr v4, v1

    .line 37
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 38
    .line 39
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 42
    .line 43
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 44
    .line 45
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 50
    .line 51
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 52
    .line 53
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 54
    .line 55
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 56
    .line 57
    sub-int/2addr v0, v3

    .line 58
    int-to-float v0, v0

    .line 59
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 67
    .line 68
    int-to-float v1, v1

    .line 69
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:I

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M0:F

    .line 75
    .line 76
    add-float/2addr v1, v2

    .line 77
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 78
    .line 79
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 80
    .line 81
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 82
    .line 83
    sub-float/2addr v1, v2

    .line 84
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 85
    .line 86
    mul-float/2addr v1, v2

    .line 87
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    div-float/2addr v1, v2

    .line 92
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 93
    .line 94
    int-to-float v2, v2

    .line 95
    add-float/2addr v1, v2

    .line 96
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 97
    .line 98
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 99
    .line 100
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 101
    .line 102
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 103
    .line 104
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 105
    .line 106
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 107
    .line 108
    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 109
    .line 110
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 111
    .line 112
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 113
    .line 114
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->x:I

    .line 115
    .line 116
    sub-int/2addr v0, v3

    .line 117
    int-to-float v0, v0

    .line 118
    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 119
    .line 120
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 121
    .line 122
    :goto_0
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T0:Z

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 128
    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U:Z

    .line 132
    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    :cond_1
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 139
    .line 140
    const-string v4, "j"

    .line 141
    .line 142
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 143
    .line 144
    .line 145
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G:I

    .line 146
    .line 147
    int-to-float v0, v0

    .line 148
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->f:F

    .line 149
    .line 150
    add-float/2addr v0, v2

    .line 151
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->e:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    int-to-float v2, v2

    .line 158
    iget-object v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c:Landroid/text/TextPaint;

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-float/2addr v2, v3

    .line 165
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    int-to-float v2, v2

    .line 170
    add-float/2addr v0, v2

    .line 171
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 172
    .line 173
    const/high16 v3, 0x40400000    # 3.0f

    .line 174
    .line 175
    invoke-static {v2, v3}, Ltu0;->j(Landroid/content/Context;F)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    int-to-float v2, v2

    .line 180
    add-float/2addr v0, v2

    .line 181
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->c0:F

    .line 182
    .line 183
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->U0:F

    .line 184
    .line 185
    :cond_2
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->s0:[F

    .line 186
    .line 187
    if-nez v0, :cond_3

    .line 188
    .line 189
    return-void

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->n()V

    .line 191
    .line 192
    .line 193
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t0:I

    .line 194
    .line 195
    if-le v0, v1, :cond_4

    .line 196
    .line 197
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 198
    .line 199
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getClosestIndex()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    aget v0, v0, v1

    .line 204
    .line 205
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 206
    .line 207
    iput v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 208
    .line 209
    :cond_4
    iget v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->v(F)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final v(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    iget v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 11
    .line 12
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 13
    .line 14
    sub-float/2addr p1, v3

    .line 15
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    div-float/2addr p1, v3

    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float/2addr v3, p1

    .line 23
    mul-float/2addr v3, v2

    .line 24
    add-float/2addr v3, v1

    .line 25
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 26
    .line 27
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 32
    .line 33
    iput p0, p1, Landroid/graphics/RectF;->left:F

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->L:F

    .line 39
    .line 40
    sub-float/2addr p1, v1

    .line 41
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->H:F

    .line 42
    .line 43
    mul-float/2addr p1, v1

    .line 44
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getAmplitude()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    div-float/2addr p1, v1

    .line 49
    iget v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->t:I

    .line 50
    .line 51
    int-to-float v1, v1

    .line 52
    add-float/2addr p1, v1

    .line 53
    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    iget-object p1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->G0:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->F0:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 60
    .line 61
    iput p0, p1, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    return-void
.end method

.method public final w()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getIndicatorTextString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v0, Lvb4;->l:Landroid/view/View;

    .line 16
    .line 17
    instance-of v3, v2, La71;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    check-cast v2, La71;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, La71;->setProgress(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, v0, Lvb4;->d:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 51
    .line 52
    const/high16 v4, -0x40800000    # -1.0f

    .line 53
    .line 54
    cmpl-float v3, v3, v4

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/warkiz/widget/IndicatorSeekBar;->a:Landroid/content/Context;

    .line 64
    .line 65
    const-string v5, "window"

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Landroid/view/WindowManager;

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    .line 81
    .line 82
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    iput v3, p0, Lcom/warkiz/widget/IndicatorSeekBar;->p:F

    .line 86
    .line 87
    :cond_3
    div-int/lit8 v3, v0, 0x2

    .line 88
    .line 89
    int-to-float v3, v3

    .line 90
    add-float v4, v3, v2

    .line 91
    .line 92
    iget v5, p0, Lcom/warkiz/widget/IndicatorSeekBar;->y:I

    .line 93
    .line 94
    int-to-float v6, v5

    .line 95
    cmpl-float v4, v4, v6

    .line 96
    .line 97
    if-lez v4, :cond_4

    .line 98
    .line 99
    sub-int v1, v5, v0

    .line 100
    .line 101
    int-to-float v0, v1

    .line 102
    sub-float/2addr v2, v0

    .line 103
    sub-float/2addr v2, v3

    .line 104
    float-to-int v0, v2

    .line 105
    goto :goto_1

    .line 106
    :cond_4
    sub-float v0, v2, v3

    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    cmpg-float v0, v0, v4

    .line 110
    .line 111
    if-gez v0, :cond_5

    .line 112
    .line 113
    sub-float/2addr v3, v2

    .line 114
    float-to-int v0, v3

    .line 115
    neg-int v0, v0

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-direct {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->getThumbCenterX()F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sub-float/2addr v0, v3

    .line 122
    float-to-int v0, v0

    .line 123
    move v7, v1

    .line 124
    move v1, v0

    .line 125
    move v0, v7

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 127
    .line 128
    iget-object v2, v2, Lvb4;->l:Landroid/view/View;

    .line 129
    .line 130
    const/4 v3, -0x1

    .line 131
    invoke-static {v2, v1, v3, v3, v3}, Lvb4;->d(Landroid/view/View;IIII)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 135
    .line 136
    iget-object p0, p0, Lvb4;->c:Lcom/warkiz/widget/ArrowView;

    .line 137
    .line 138
    invoke-static {p0, v0, v3, v3, v3}, Lvb4;->d(Landroid/view/View;IIII)V

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_2
    return-void
.end method
