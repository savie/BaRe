.class public final Lc37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

.field public final synthetic d:Lbt3;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;ZLjava/util/List;Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lc37;->a:Z

    .line 5
    .line 6
    iput-object p3, p0, Lc37;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p4, p0, Lc37;->c:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 9
    .line 10
    iput-object p5, p0, Lc37;->d:Lbt3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lc37;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lc37;->b:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v2, Lrn6;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Lrn6;-><init>(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    invoke-static {v2, v4}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    iget-object v7, p0, Lc37;->c:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 39
    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    add-int/lit8 v8, v5, 0x1

    .line 47
    .line 48
    if-ltz v5, :cond_3

    .line 49
    .line 50
    check-cast v6, Landroid/view/View;

    .line 51
    .line 52
    int-to-long v9, v5

    .line 53
    const-wide/16 v11, 0x18

    .line 54
    .line 55
    mul-long/2addr v9, v11

    .line 56
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 57
    .line 58
    const/high16 v5, 0x3f800000    # 1.0f

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    move v12, v11

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v12, v5

    .line 66
    :goto_2
    if-eqz v0, :cond_2

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_2
    move v5, v11

    .line 70
    :goto_3
    const/4 v11, 0x2

    .line 71
    new-array v11, v11, [F

    .line 72
    .line 73
    aput v12, v11, v4

    .line 74
    .line 75
    const/4 v12, 0x1

    .line 76
    aput v5, v11, v12

    .line 77
    .line 78
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-wide/16 v11, 0xa0

    .line 83
    .line 84
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 88
    .line 89
    .line 90
    sget-object v9, Led;->b:Li53;

    .line 91
    .line 92
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    .line 94
    .line 95
    new-instance v9, Lt85;

    .line 96
    .line 97
    invoke-direct {v9, v6, v7}, Lt85;-><init>(Landroid/view/View;Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move v5, v8

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-static {}, Lfl1;->F0()V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    throw p0

    .line 113
    :cond_4
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 114
    .line 115
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Ld37;

    .line 122
    .line 123
    iget-object p0, p0, Lc37;->d:Lbt3;

    .line 124
    .line 125
    invoke-direct {v2, v7, v0, v1, p0}, Ld37;-><init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Landroid/animation/AnimatorSet;Ljava/util/List;Lbt3;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    .line 130
    .line 131
    iget-object p0, v7, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 137
    .line 138
    .line 139
    return-void
.end method
