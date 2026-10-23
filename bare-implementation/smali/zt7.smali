.class public final Lzt7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzt7;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    new-instance p1, Lxt7;

    .line 2
    .line 3
    iget-object p0, p0, Lzt7;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lxt7;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->T:Lxt7;

    .line 9
    .line 10
    const-wide/16 v0, 0x96

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->L:Lc71;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lc71;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->L:Lc71;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->T:Lxt7;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
