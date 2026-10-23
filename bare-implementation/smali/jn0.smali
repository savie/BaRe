.class public final Ljn0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ljn0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ljn0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Ljn0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ljn0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 13
    .line 14
    .line 15
    check-cast v1, Lo71;

    .line 16
    .line 17
    invoke-virtual {v1}, Lo71;->c()V

    .line 18
    .line 19
    .line 20
    iget-object p0, v1, Lo71;->q:Lzb;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, Lao;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lmb4;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lzb;->a(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 33
    .line 34
    .line 35
    check-cast v1, Lon0;

    .line 36
    .line 37
    invoke-static {v1}, Lyc9;->s(Lon0;)Landroid/view/ViewGroup;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :goto_0
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object p1, v1, Lon0;->t:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lu88;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Ljn0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Ljn0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lsu4;

    .line 16
    .line 17
    iget p1, p0, Lsu4;->k:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    add-int/2addr p1, v0

    .line 21
    iget-object v1, p0, Lsu4;->f:Lzu4;

    .line 22
    .line 23
    iget-object v1, v1, Llm0;->e:[I

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    rem-int/2addr p1, v1

    .line 27
    iput p1, p0, Lsu4;->k:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lsu4;->n:Z

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
