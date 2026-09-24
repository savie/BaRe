.class public Lcom/l4digital/fastscroll/FastScroller;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:Lq53;

.field public H:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public I:Landroid/widget/TextView;

.field public J:Landroid/view/View;

.field public K:Landroid/view/ViewPropertyAnimator;

.field public L:Landroid/view/ViewPropertyAnimator;

.field public M:Lo53;

.field public N:Lp53;

.field public final O:Ljava/lang/Runnable;

.field public final P:Lk53;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public k:Z

.field public n:Z

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    sget-object v0, Lq53;->c:Lq53;

    invoke-direct {p0, p1, v0}, Lcom/l4digital/fastscroll/FastScroller;-><init>(Landroid/content/Context;Lq53;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/l4digital/fastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p3, Lyc;

    const/4 v0, 0x1

    invoke-direct {p3, p0, v0}, Lyc;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Lcom/l4digital/fastscroll/FastScroller;->O:Ljava/lang/Runnable;

    .line 38
    new-instance p3, Lk53;

    invoke-direct {p3, p0}, Lk53;-><init>(Lcom/l4digital/fastscroll/FastScroller;)V

    iput-object p3, p0, Lcom/l4digital/fastscroll/FastScroller;->P:Lk53;

    .line 39
    sget-object p3, Lq53;->c:Lq53;

    invoke-virtual {p0, p1, p2, p3}, Lcom/l4digital/fastscroll/FastScroller;->i(Landroid/content/Context;Landroid/util/AttributeSet;Lq53;)V

    .line 40
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq53;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyc;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lyc;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->O:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance v0, Lk53;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lk53;-><init>(Lcom/l4digital/fastscroll/FastScroller;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->P:Lk53;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, p2}, Lcom/l4digital/fastscroll/FastScroller;->i(Landroid/content/Context;Landroid/util/AttributeSet;Lq53;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    const/4 p2, -0x2

    .line 26
    const/4 v0, -0x1

    .line 27
    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static a(Lcom/l4digital/fastscroll/FastScroller;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0700b8

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-wide/16 v1, 0x12c

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lq91;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, p0, v2}, Lq91;-><init>(Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic b(Lcom/l4digital/fastscroll/FastScroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/l4digital/fastscroll/FastScroller;->g(Landroidx/recyclerview/widget/RecyclerView;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/l4digital/fastscroll/FastScroller;->setViewPositions(F)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/l4digital/fastscroll/FastScroller;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setViewPositions(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setHandleSelected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->q:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/l4digital/fastscroll/FastScroller;->a:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p0, p0, Lcom/l4digital/fastscroll/FastScroller;->b:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->f(F)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/a;->D0(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/l4digital/fastscroll/FastScroller;->k:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->N:Lp53;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lp53;->a(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private setViewPositions(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/l4digital/fastscroll/FastScroller;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/l4digital/fastscroll/FastScroller;->d:I

    .line 16
    .line 17
    iget v1, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 18
    .line 19
    iget v2, p0, Lcom/l4digital/fastscroll/FastScroller;->c:I

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    int-to-float v0, v2

    .line 26
    sub-float v0, p1, v0

    .line 27
    .line 28
    float-to-int v0, v0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v1, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 39
    .line 40
    iget v3, p0, Lcom/l4digital/fastscroll/FastScroller;->d:I

    .line 41
    .line 42
    sub-int/2addr v1, v3

    .line 43
    div-int/lit8 v3, v3, 0x2

    .line 44
    .line 45
    int-to-float v3, v3

    .line 46
    sub-float/2addr p1, v3

    .line 47
    float-to-int p1, p1

    .line 48
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-boolean v1, p0, Lcom/l4digital/fastscroll/FastScroller;->k:Z

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 67
    .line 68
    int-to-float p1, p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->P:Lk53;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i(Lsg6;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, La9;

    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    invoke-direct {p1, p0, v0}, La9;-><init>(Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->P:Lk53;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final f(F)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lhg6;->b()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v2, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    cmpl-float v2, v2, v3

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v3, p0, Lcom/l4digital/fastscroll/FastScroller;->d:I

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    add-float/2addr v2, v3

    .line 52
    iget v3, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 53
    .line 54
    add-int/lit8 v4, v3, -0x5

    .line 55
    .line 56
    int-to-float v4, v4

    .line 57
    cmpl-float v2, v2, v4

    .line 58
    .line 59
    if-ltz v2, :cond_1

    .line 60
    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    int-to-float v2, v3

    .line 65
    div-float v3, p1, v2

    .line 66
    .line 67
    :goto_0
    int-to-float p1, v0

    .line 68
    mul-float/2addr v3, p1

    .line 69
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    instance-of v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 84
    .line 85
    iget-boolean p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->L:Z

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    instance-of v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 93
    .line 94
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move p0, v1

    .line 98
    :goto_1
    if-eqz p0, :cond_4

    .line 99
    .line 100
    sub-int p1, v0, p1

    .line 101
    .line 102
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_5
    return v1
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget p0, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 14
    .line 15
    sub-int/2addr p1, p0

    .line 16
    int-to-float p1, p1

    .line 17
    int-to-float v1, v1

    .line 18
    cmpl-float v0, p1, v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    :goto_0
    div-float/2addr v1, p1

    .line 26
    int-to-float p0, p0

    .line 27
    mul-float/2addr p0, v1

    .line 28
    return p0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v1, 0x64

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lv7;

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-direct {v1, p0, v2}, Lv7;-><init>(Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->L:Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final i(Landroid/content/Context;Landroid/util/AttributeSet;Lq53;)V
    .locals 10

    .line 1
    const v0, 0x7f0d009c

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a0221

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/TextView;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 24
    .line 25
    const v1, 0x7f0a0222

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 35
    .line 36
    const v1, 0x7f0a0224

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->x:Landroid/widget/ImageView;

    .line 46
    .line 47
    const v1, 0x7f0a0223

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 55
    .line 56
    iput-object p3, p0, Lcom/l4digital/fastscroll/FastScroller;->G:Lq53;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget v2, p3, Lq53;->b:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const v2, -0x777778

    .line 69
    .line 70
    .line 71
    const v3, -0xbbbbbc

    .line 72
    .line 73
    .line 74
    const v4, -0x333334

    .line 75
    .line 76
    .line 77
    const/4 v5, -0x1

    .line 78
    const/4 v6, 0x1

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    sget-object v7, Lud6;->a:[I

    .line 82
    .line 83
    invoke-virtual {p1, p2, v7, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 p2, 0x4

    .line 94
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/16 p2, 0x9

    .line 99
    .line 100
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const/4 p2, 0x2

    .line 105
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 p2, 0x5

    .line 110
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    const/4 v1, 0x6

    .line 115
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v7, 0x7

    .line 120
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    const/16 v8, 0x8

    .line 125
    .line 126
    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    if-ltz p3, :cond_0

    .line 139
    .line 140
    invoke-static {}, Lq53;->values()[Lq53;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    array-length v9, v9

    .line 145
    if-ge p3, v9, :cond_0

    .line 146
    .line 147
    invoke-static {}, Lq53;->values()[Lq53;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    aget-object p3, v9, p3

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_0
    sget-object p3, Lq53;->c:Lq53;

    .line 155
    .line 156
    :goto_0
    iput-object p3, p0, Lcom/l4digital/fastscroll/FastScroller;->G:Lq53;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    iget-object v9, p0, Lcom/l4digital/fastscroll/FastScroller;->G:Lq53;

    .line 163
    .line 164
    iget v9, v9, Lq53;->b:I

    .line 165
    .line 166
    invoke-virtual {p3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    const/4 v9, 0x3

    .line 171
    invoke-virtual {p1, v9, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 172
    .line 173
    .line 174
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catchall_0
    move-exception p0

    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_1
    move v7, v0

    .line 185
    move v8, v7

    .line 186
    move p3, v1

    .line 187
    move p2, v6

    .line 188
    move v1, p2

    .line 189
    :goto_1
    invoke-virtual {p0, v4}, Lcom/l4digital/fastscroll/FastScroller;->setTrackColor(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lcom/l4digital/fastscroll/FastScroller;->setHandleColor(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v2}, Lcom/l4digital/fastscroll/FastScroller;->setBubbleColor(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v5}, Lcom/l4digital/fastscroll/FastScroller;->setBubbleTextColor(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p2}, Lcom/l4digital/fastscroll/FastScroller;->setHideScrollbar(Z)V

    .line 202
    .line 203
    .line 204
    iput-boolean v1, p0, Lcom/l4digital/fastscroll/FastScroller;->k:Z

    .line 205
    .line 206
    if-eqz v1, :cond_2

    .line 207
    .line 208
    if-eqz v7, :cond_2

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_2
    move v6, v0

    .line 212
    :goto_2
    iput-boolean v6, p0, Lcom/l4digital/fastscroll/FastScroller;->n:Z

    .line 213
    .line 214
    invoke-virtual {p0, v8}, Lcom/l4digital/fastscroll/FastScroller;->setTrackVisible(Z)V

    .line 215
    .line 216
    .line 217
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v1, 0x64

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lfa1;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v2}, Lfa1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->L:Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x7f0700b8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-wide/16 v1, 0x12c

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lm53;

    .line 59
    .line 60
    invoke-direct {v1}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/l4digital/fastscroll/FastScroller;->e:I

    .line 5
    .line 6
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->O:Ljava/lang/Runnable;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v0, v4, :cond_a

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2}, Lcom/l4digital/fastscroll/FastScroller;->setHandleSelected(Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/l4digital/fastscroll/FastScroller;->f:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-wide/16 v4, 0x3e8

    .line 39
    .line 40
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-boolean p1, p0, Lcom/l4digital/fastscroll/FastScroller;->n:Z

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->h()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->M:Lo53;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    check-cast p0, Lvk9;

    .line 55
    .line 56
    iget-object p0, p0, Lvk9;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 59
    .line 60
    sget p1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    return v3

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v4, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget-object v5, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 81
    .line 82
    sget-object v6, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    int-to-float v5, v5

    .line 89
    sub-float/2addr v4, v5

    .line 90
    cmpg-float v0, v0, v4

    .line 91
    .line 92
    if-gez v0, :cond_5

    .line 93
    .line 94
    return v2

    .line 95
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v3}, Lcom/l4digital/fastscroll/FastScroller;->setHandleSelected(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 113
    .line 114
    .line 115
    :cond_6
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->L:Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 120
    .line 121
    .line 122
    :cond_7
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->k()V

    .line 134
    .line 135
    .line 136
    :goto_0
    iget-boolean v0, p0, Lcom/l4digital/fastscroll/FastScroller;->k:Z

    .line 137
    .line 138
    if-eqz v0, :cond_9

    .line 139
    .line 140
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->N:Lp53;

    .line 141
    .line 142
    if-eqz v0, :cond_9

    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->j()V

    .line 145
    .line 146
    .line 147
    :cond_9
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->M:Lo53;

    .line 148
    .line 149
    if-eqz v0, :cond_a

    .line 150
    .line 151
    check-cast v0, Lvk9;

    .line 152
    .line 153
    iget-object v0, v0, Lvk9;->b:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 156
    .line 157
    sget v1, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 158
    .line 159
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->o0()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 164
    .line 165
    .line 166
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-direct {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setViewPositions(F)V

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setRecyclerViewPosition(F)V

    .line 174
    .line 175
    .line 176
    return v3
.end method

.method public setBubbleColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/l4digital/fastscroll/FastScroller;->a:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->G:Lq53;

    .line 12
    .line 13
    iget v0, v0, Lq53;->a:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    iget v0, p0, Lcom/l4digital/fastscroll/FastScroller;->a:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->p:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setBubbleTextColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBubbleTextSize(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p1, 0x8

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setFastScrollListener(Lo53;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->M:Lo53;

    .line 2
    .line 3
    return-void
.end method

.method public setHandleColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/l4digital/fastscroll/FastScroller;->b:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->q:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const v0, 0x7f0800b0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->q:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->q:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iget v0, p0, Lcom/l4digital/fastscroll/FastScroller;->b:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->q:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setHideScrollbar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/l4digital/fastscroll/FastScroller;->f:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x2

    .line 232
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 233
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f0700b7

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const v4, 0x7f0700b6

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eq v0, v1, :cond_6

    .line 35
    .line 36
    instance-of v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    new-instance v1, Lnt1;

    .line 43
    .line 44
    invoke-direct {v1}, Lnt1;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/l4digital/fastscroll/FastScroller;->y:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-ne v4, v7, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v0, v6

    .line 61
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Lnt1;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 68
    .line 69
    .line 70
    const/4 v7, 0x3

    .line 71
    invoke-virtual {v1, v4, v7, v0, v7}, Lnt1;->c(IIII)V

    .line 72
    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    invoke-virtual {v1, v4, v7, v0, v7}, Lnt1;->c(IIII)V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x7

    .line 79
    invoke-virtual {v1, v4, v7, v0, v7}, Lnt1;->c(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Lnt1;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lnt1;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ldt1;

    .line 96
    .line 97
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 98
    .line 99
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    instance-of v4, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 107
    .line 108
    const v7, 0x800005

    .line 109
    .line 110
    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lhw1;

    .line 118
    .line 119
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 120
    .line 121
    iput v7, p1, Lhw1;->d:I

    .line 122
    .line 123
    iput-object v5, p1, Lhw1;->l:Landroid/view/View;

    .line 124
    .line 125
    iput-object v5, p1, Lhw1;->k:Landroid/view/View;

    .line 126
    .line 127
    iput v0, p1, Lhw1;->f:I

    .line 128
    .line 129
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    instance-of v4, p1, Landroid/widget/FrameLayout;

    .line 137
    .line 138
    if-eqz v4, :cond_4

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .line 146
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    .line 148
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    .line 150
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    .line 158
    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .line 167
    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 168
    .line 169
    const/4 v1, 0x6

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x8

    .line 174
    .line 175
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0x13

    .line 179
    .line 180
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    :goto_2
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iput v0, p0, Lcom/l4digital/fastscroll/FastScroller;->c:I

    .line 205
    .line 206
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 207
    .line 208
    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    iput p1, p0, Lcom/l4digital/fastscroll/FastScroller;->d:I

    .line 218
    .line 219
    return-void

    .line 220
    :cond_5
    const-string p0, "Parent ViewGroup must be a ConstraintLayout, CoordinatorLayout, FrameLayout, or RelativeLayout"

    .line 221
    .line 222
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_6
    const-string p0, "RecyclerView must have a view ID"

    .line 227
    .line 228
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public setSectionIndexer(Lp53;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->N:Lp53;

    .line 2
    .line 3
    return-void
.end method

.method public setSwipeRefreshLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->H:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->r:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0800b1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->r:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->r:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->x:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->r:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setTrackVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->x:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
