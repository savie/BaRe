.class public final Lun0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lun0;->a:I

    iput-object p1, p0, Lun0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lom8;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    iput p2, p0, Lun0;->a:I

    .line 3
    .line 4
    iput-object p1, p0, Lun0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lun0;->a:I

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
    iget-object p0, p0, Lun0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lom8;

    .line 13
    .line 14
    invoke-interface {p0}, Lom8;->a()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lun0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lun0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_1
    check-cast v1, Lom8;

    .line 13
    .line 14
    invoke-interface {v1}, Lom8;->d()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_2
    check-cast v1, Lfo0;

    .line 19
    .line 20
    invoke-virtual {v1}, Lfo0;->e()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget p1, p0, Lun0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lun0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lom8;

    .line 9
    .line 10
    invoke-interface {p0}, Lom8;->b()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Lr91;

    .line 15
    .line 16
    iget-object p0, p0, Lqw2;->b:Lpw2;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lpw2;->h(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_1
    check-cast p0, Lfo0;

    .line 24
    .line 25
    iget-object p1, p0, Lfo0;->j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 26
    .line 27
    iget v0, p0, Lfo0;->c:I

    .line 28
    .line 29
    iget p0, p0, Lfo0;->a:I

    .line 30
    .line 31
    sub-int/2addr v0, p0

    .line 32
    iget-object v1, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/high16 v3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    int-to-long v4, p0

    .line 51
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object v1, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->d:Landroid/animation/TimeInterpolator;

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    int-to-long v6, v0

    .line 62
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_0

    .line 76
    .line 77
    iget-object p0, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 105
    .line 106
    .line 107
    :cond_0
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
