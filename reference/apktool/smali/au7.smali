.class public final Lau7;
.super Landroid/view/animation/Animation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lau7;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lau7;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->P:I

    .line 4
    .line 5
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->O:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p2, v0

    .line 12
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->N:I

    .line 13
    .line 14
    sub-int/2addr p2, v0

    .line 15
    int-to-float p2, p2

    .line 16
    mul-float/2addr p2, p1

    .line 17
    float-to-int p2, p2

    .line 18
    add-int/2addr v0, p2

    .line 19
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->L:Lc71;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    sub-int/2addr v0, p2

    .line 26
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->R:Lu71;

    .line 30
    .line 31
    const/high16 p2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    sub-float/2addr p2, p1

    .line 34
    iget-object p1, p0, Lu71;->a:Lt71;

    .line 35
    .line 36
    iget v0, p1, Lt71;->p:F

    .line 37
    .line 38
    cmpl-float v0, p2, v0

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iput p2, p1, Lt71;->p:F

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 45
    .line 46
    .line 47
    return-void
.end method
