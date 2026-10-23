.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
.super Lew1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedFloatingActionButtonBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
        ">",
        "Lew1;"
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Rect;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ltd6;->m:[I

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final bridge synthetic e(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0
.end method

.method public final g(Lhw1;)V
    .locals 0

    .line 1
    iget p0, p1, Lhw1;->h:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x50

    .line 6
    .line 7
    iput p0, p1, Lhw1;->h:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of v0, p1, Lhw1;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Lhw1;

    .line 23
    .line 24
    iget-object p1, p1, Lhw1;->a:Lew1;

    .line 25
    .line 26
    instance-of p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p1, v1

    .line 30
    :goto_0
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->x(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return v1
.end method

.method public final l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 7

    .line 1
    check-cast p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/view/View;

    .line 20
    .line 21
    instance-of v5, v4, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    .line 26
    .line 27
    invoke-virtual {p0, p1, v4, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    instance-of v6, v5, Lhw1;

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    check-cast v5, Lhw1;

    .line 43
    .line 44
    iget-object v5, v5, Lhw1;->a:Lew1;

    .line 45
    .line 46
    instance-of v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v2

    .line 50
    :goto_1
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v4, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->x(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :goto_2
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;I)V

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x1

    .line 66
    return p0
.end method

.method public final w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhw1;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-boolean v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v0, v0, Lhw1;->f:I

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    :goto_0
    return v2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    .line 36
    .line 37
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-static {p1, p2, p0}, Loi2;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 p2, 0x1

    .line 49
    if-gt p0, p1, :cond_4

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    const/4 p0, 0x2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move p0, p2

    .line 56
    :goto_1
    sget-object p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B0:Lu03;

    .line 57
    .line 58
    invoke-virtual {p3, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    if-eqz v3, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x3

    .line 65
    :cond_5
    sget-object p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B0:Lu03;

    .line 66
    .line 67
    invoke-virtual {p3, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 68
    .line 69
    .line 70
    :goto_2
    return p2
.end method

.method public final x(Landroid/view/View;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lhw1;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget v0, v0, Lhw1;->f:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    :goto_0
    return v2

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lhw1;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x2

    .line 41
    div-int/2addr v1, v3

    .line 42
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 43
    .line 44
    add-int/2addr v1, v0

    .line 45
    const/4 v0, 0x1

    .line 46
    if-ge p1, v1, :cond_3

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v3, v0

    .line 52
    :goto_1
    sget-object p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B0:Lu03;

    .line 53
    .line 54
    invoke-virtual {p2, v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    if-eqz p0, :cond_4

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    :cond_4
    sget-object p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B0:Lu03;

    .line 62
    .line 63
    invoke-virtual {p2, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y(I)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return v0
.end method
