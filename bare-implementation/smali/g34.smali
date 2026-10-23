.class public final Lg34;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Landroid/view/View;

.field public final synthetic c:Lh34;


# direct methods
.method public constructor <init>(Lh34;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg34;->c:Lh34;

    .line 5
    .line 6
    iput-object p2, p0, Lg34;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lg34;->b:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg34;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lg34;->c:Lh34;

    .line 6
    .line 7
    iget-object v2, v1, Lh34;->d:Landroid/widget/OverScroller;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lg34;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v1, Lh34;->d:Landroid/widget/OverScroller;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v3, v0, v2}, Lh34;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 33
    .line 34
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 35
    .line 36
    invoke-virtual {v1, v3, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 37
    .line 38
    .line 39
    iget-boolean p0, v0, Lcom/google/android/material/appbar/AppBarLayout;->r:Z

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->f(Landroid/view/View;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iget-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->n:Z

    .line 52
    .line 53
    xor-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->e(ZZ)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
