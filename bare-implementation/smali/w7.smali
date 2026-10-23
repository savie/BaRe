.class public final Lw7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lw7;->a:I

    iput-object p1, p0, Lw7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkm0;Ljl8;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lw7;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lw7;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lw7;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lw7;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0

    .line 29
    :pswitch_0
    check-cast p0, Lg19;

    .line 30
    .line 31
    invoke-virtual {p0}, Lg19;->h()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast p0, Lc00;

    .line 36
    .line 37
    iget-object v0, p0, Lc00;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lnr8;

    .line 40
    .line 41
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lnr8;

    .line 44
    .line 45
    iget-object v0, v0, Lnr8;->j:Lu00;

    .line 46
    .line 47
    invoke-virtual {v0}, Lu00;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 54
    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    const-string v3, "closed"

    .line 59
    .line 60
    invoke-virtual {v0, v3, v2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {p0}, Lnr8;->a(Lnr8;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    check-cast p0, Ljl8;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljl8;->invoke()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    check-cast p0, Lf46;

    .line 74
    .line 75
    invoke-virtual {p0}, Lf46;->o()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4
    check-cast p0, Lkp3;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getView()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :pswitch_5
    check-cast p0, Landroidx/fragment/app/h;

    .line 96
    .line 97
    iget-object v0, p0, Landroidx/fragment/app/h;->d:Lwk2;

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/fragment/app/h;->t:Landroid/app/Dialog;

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Lwk2;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_6
    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->h()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->P:Lv7;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->O:Landroid/view/ViewPropertyAnimator;

    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
