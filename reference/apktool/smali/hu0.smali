.class public final Lhu0;
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

    .line 1
    iput p2, p0, Lhu0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhu0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lhu0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lhu0;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lc00;

    .line 11
    .line 12
    iget-object v0, p0, Lc00;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lnr8;

    .line 15
    .line 16
    iget-object v0, v0, Lnr8;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lc00;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lnr8;

    .line 24
    .line 25
    iput-boolean v1, p0, Lnr8;->b:Z

    .line 26
    .line 27
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 28
    .line 29
    invoke-virtual {v0}, Lu00;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lnr8;->j:Lu00;

    .line 36
    .line 37
    new-array v1, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const-string v3, "websocket opened"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v2, v1}, Lu00;->c(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lnr8;->e()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->M:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->P:Z

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->O:Z

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->o()V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    return-void

    .line 81
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 82
    .line 83
    const v1, 0x3dcccccd    # 0.1f

    .line 84
    .line 85
    .line 86
    const/high16 v3, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v3, 0xb4

    .line 92
    .line 93
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    .line 95
    .line 96
    check-cast p0, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/warkiz/widget/IndicatorSeekBar;->o0:Landroid/view/View;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_2
    check-cast p0, Liu0;

    .line 113
    .line 114
    iput-boolean v2, p0, Liu0;->b:Z

    .line 115
    .line 116
    iget-object v0, p0, Liu0;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 117
    .line 118
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q:Lgl8;

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    invoke-virtual {v1}, Lgl8;->g()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    iget v0, p0, Liu0;->a:I

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Liu0;->a(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:I

    .line 135
    .line 136
    const/4 v2, 0x2

    .line 137
    if-ne v1, v2, :cond_6

    .line 138
    .line 139
    iget p0, p0, Liu0;->a:I

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(I)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_1
    return-void

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
