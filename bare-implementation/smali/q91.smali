.class public final Lq91;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq91;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq91;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lq91;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lq91;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/l4digital/fastscroll/FastScroller;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Lq91;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lq91;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    check-cast v2, Lcom/l4digital/fastscroll/FastScroller;

    .line 13
    .line 14
    iget-object p0, v2, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v2, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 25
    .line 26
    iput-object v1, v2, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    check-cast v2, Lr91;

    .line 30
    .line 31
    iget-object p0, v2, Lqw2;->b:Lpw2;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lpw2;->h(Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
