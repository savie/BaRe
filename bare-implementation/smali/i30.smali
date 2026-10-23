.class public final Li30;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 7

    .line 1
    check-cast p1, Lh30;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lk30;

    .line 8
    .line 9
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lk30;->e:Z

    .line 15
    .line 16
    iget-object v2, p1, Lh30;->u:Landroid/widget/ImageView;

    .line 17
    .line 18
    iget v3, p0, Lk30;->d:I

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lk30;->a:Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "Premium"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const v6, 0x7f0604a5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-static {v5, v6}, Lio4;->c(Landroid/content/Context;I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Lsz8;->A(Landroid/content/Context;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    :goto_0
    invoke-static {v5}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p1, Lh30;->v:Landroid/widget/TextView;

    .line 71
    .line 72
    iget v5, p0, Lk30;->c:I

    .line 73
    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p1, Lh30;->w:Landroid/widget/TextView;

    .line 78
    .line 79
    sget-boolean v5, Lmp6;->g:Z

    .line 80
    .line 81
    const/4 v6, 0x1

    .line 82
    if-nez v5, :cond_1

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    move v5, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v5, 0x0

    .line 89
    :goto_1
    invoke-static {v2, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p1, Lh30;->x:Landroid/view/View;

    .line 93
    .line 94
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_2

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    iget-object v2, p0, Lk30;->n:Lgv7;

    .line 105
    .line 106
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    sget-boolean v1, Lmp6;->g:Z

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move v1, v6

    .line 124
    :goto_2
    if-eqz v1, :cond_4

    .line 125
    .line 126
    :goto_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lh30;->y:Li30;

    .line 132
    .line 133
    new-instance v1, Lri;

    .line 134
    .line 135
    invoke-direct {v1, p1, p2, v6, p0}, Lri;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_4
    const/high16 p0, 0x3f000000    # 0.5f

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0036

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lh30;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lh30;-><init>(Li30;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
