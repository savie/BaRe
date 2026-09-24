.class public final Lw27;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public l:Lhq0;


# virtual methods
.method public final h(Lfh6;I)V
    .locals 7

    .line 1
    check-cast p1, Lv27;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lx27;

    .line 8
    .line 9
    iget-object p2, p1, Lv27;->x:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lx27;->b:I

    .line 15
    .line 16
    iget-object v1, p1, Lv27;->z:Lw27;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Lgm7;->q(Ljl0;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p1, Lv27;->u:Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lx27;->a:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 32
    .line 33
    sget-object v5, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->MINIMUM_PERCENT:Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;

    .line 34
    .line 35
    if-ne v3, v5, :cond_0

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    :cond_0
    iget-object v5, p1, Lv27;->v:Landroid/widget/TextView;

    .line 39
    .line 40
    xor-int/lit8 v6, v4, 0x1

    .line 41
    .line 42
    invoke-static {v5, v6}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 43
    .line 44
    .line 45
    invoke-static {v5}, Lsz8;->I(Landroid/view/View;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleData$a;->toDisplayString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v3, p1, Lv27;->w:Lcom/warkiz/widget/IndicatorStayLayout;

    .line 59
    .line 60
    invoke-static {v3, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 61
    .line 62
    .line 63
    iget-object v5, p1, Lv27;->y:Landroid/view/View;

    .line 64
    .line 65
    invoke-static {v5, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Lsz8;->I(Landroid/view/View;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p2, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->setEnabled(Z)V

    .line 75
    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    .line 87
    const-string v2, "${PROGRESS}%"

    .line 88
    .line 89
    invoke-virtual {p2, v2}, Lcom/warkiz/widget/IndicatorSeekBar;->setIndicatorTextFormat(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/warkiz/widget/IndicatorSeekBar;->getProgress()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eq v2, v0, :cond_3

    .line 97
    .line 98
    int-to-float v0, v0

    .line 99
    invoke-virtual {p2, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setProgress(F)V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance v0, Ls79;

    .line 103
    .line 104
    const/4 v2, 0x7

    .line 105
    invoke-direct {v0, v1, v2}, Ls79;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lcom/warkiz/widget/IndicatorSeekBar;->setOnSeekChangeListener(Lit5;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-object p2, p1, Lfh6;->a:Landroid/view/View;

    .line 112
    .line 113
    new-instance v0, Lu27;

    .line 114
    .line 115
    invoke-direct {v0, v1, p0, p1}, Lu27;-><init>(Lw27;Lx27;Lv27;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d015e

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 8

    .line 1
    new-instance p2, Lv27;

    .line 2
    .line 3
    const v0, 0x7f0a01e0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0287

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v4, v1

    .line 20
    check-cast v4, Lcom/warkiz/widget/IndicatorSeekBar;

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    const v0, 0x7f0a0289

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v5, v1

    .line 32
    check-cast v5, Lcom/warkiz/widget/IndicatorStayLayout;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const v0, 0x7f0a03b9

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const v0, 0x7f0a05ba

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    move-object v7, v1

    .line 56
    check-cast v7, Landroid/widget/TextView;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    new-instance v1, Lxf1;

    .line 61
    .line 62
    move-object v2, p1

    .line 63
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 64
    .line 65
    invoke-direct/range {v1 .. v7}, Lxf1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/warkiz/widget/IndicatorSeekBar;Lcom/warkiz/widget/IndicatorStayLayout;Lcom/google/android/material/radiobutton/MaterialRadioButton;Landroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p0, v1}, Lv27;-><init>(Lw27;Lxf1;)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "Missing required view with ID: "

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method
