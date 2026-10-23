.class public final Lyt7;
.super Landroid/view/animation/Animation;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyt7;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    iput p2, p0, Lyt7;->a:I

    .line 4
    .line 5
    iput p3, p0, Lyt7;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lyt7;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->R:Lu71;

    .line 4
    .line 5
    iget v0, p0, Lyt7;->a:I

    .line 6
    .line 7
    int-to-float v1, v0

    .line 8
    iget p0, p0, Lyt7;->b:I

    .line 9
    .line 10
    sub-int/2addr p0, v0

    .line 11
    int-to-float p0, p0

    .line 12
    mul-float/2addr p0, p1

    .line 13
    add-float/2addr p0, v1

    .line 14
    float-to-int p0, p0

    .line 15
    invoke-virtual {p2, p0}, Lu71;->setAlpha(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
