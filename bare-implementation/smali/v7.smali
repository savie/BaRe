.class public final Lv7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv7;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7;->b:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lv7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv7;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Lcom/l4digital/fastscroll/FastScroller;

    .line 17
    .line 18
    iget-object p0, v2, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 19
    .line 20
    const/16 p1, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v2, Lcom/l4digital/fastscroll/FastScroller;->L:Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_2
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 29
    .line 30
    iput-object v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->O:Landroid/view/ViewPropertyAnimator;

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    iput-boolean p0, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Lv7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lv7;->b:Ljava/lang/Object;

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
    iget-object p0, v2, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 15
    .line 16
    const/16 p1, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v2, Lcom/l4digital/fastscroll/FastScroller;->L:Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v2, Llr2;

    .line 25
    .line 26
    invoke-virtual {v2}, Lqw2;->p()V

    .line 27
    .line 28
    .line 29
    iget-object p0, v2, Llr2;->r:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 36
    .line 37
    iput-object v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->O:Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    iput-boolean p0, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->q:Z

    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
