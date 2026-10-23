.class public Lq44;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/view/View;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljm1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lq44;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lq44;->b:Landroid/view/View;

    .line 8
    .line 9
    iput-object p2, p0, Lq44;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/HideViewOnScrollBehavior;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq44;->a:I

    .line 12
    iput-object p1, p0, Lq44;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq44;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lq44;->a:I

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
    iget-object p0, p0, Lq44;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljm1;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lq44;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lq44;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lq44;->b:Landroid/view/View;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljm1;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljm1;->F()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Lq44;->a(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput-object p0, v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->k:Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    iget p0, v0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->j:I

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x4

    .line 38
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lq44;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Lq44;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lq44;->b(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
