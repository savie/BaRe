.class public final Lpk2;
.super Lwx3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final A(Ljava/lang/Object;F)V
    .locals 4

    .line 1
    check-cast p1, Lqk2;

    .line 2
    .line 3
    const p0, 0x461c4000    # 10000.0f

    .line 4
    .line 5
    .line 6
    div-float v0, p2, p0

    .line 7
    .line 8
    iget-object v1, p1, Lqk2;->H:Lsp2;

    .line 9
    .line 10
    iput v0, v1, Lsp2;->b:F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    float-to-int p2, p2

    .line 16
    iget-object v0, p1, Lgp2;->b:Llm0;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Llm0;->b(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget-object v1, p1, Lgp2;->a:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v2, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v2, Led;->a:Landroid/view/animation/LinearInterpolator;

    .line 35
    .line 36
    const v3, 0x7f04045a

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3, v2}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, p1, Lqk2;->N:Landroid/animation/TimeInterpolator;

    .line 44
    .line 45
    const v3, 0x7f040452

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3, v2}, Lji8;->G(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p1, Lqk2;->O:Landroid/animation/TimeInterpolator;

    .line 53
    .line 54
    new-instance v1, Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    const-wide/16 v2, 0x1f4

    .line 62
    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    .line 66
    iget-object v1, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    const/4 v2, 0x2

    .line 69
    new-array v2, v2, [F

    .line 70
    .line 71
    fill-array-data v2, :array_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    new-instance v2, Lnk2;

    .line 86
    .line 87
    invoke-direct {v2, p1}, Lnk2;-><init>(Lqk2;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    int-to-float p2, p2

    .line 94
    iget v1, v0, Llm0;->o:F

    .line 95
    .line 96
    mul-float/2addr v1, p0

    .line 97
    cmpl-float v1, p2, v1

    .line 98
    .line 99
    const/high16 v2, 0x3f800000    # 1.0f

    .line 100
    .line 101
    if-ltz v1, :cond_2

    .line 102
    .line 103
    iget v0, v0, Llm0;->p:F

    .line 104
    .line 105
    mul-float/2addr v0, p0

    .line 106
    cmpg-float p0, p2, v0

    .line 107
    .line 108
    if-gtz p0, :cond_2

    .line 109
    .line 110
    move p0, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const/4 p0, 0x0

    .line 113
    :goto_1
    iget p2, p1, Lqk2;->I:F

    .line 114
    .line 115
    cmpl-float p2, p0, p2

    .line 116
    .line 117
    iget-object v0, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-eqz p2, :cond_3

    .line 126
    .line 127
    iget-object p2, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 130
    .line 131
    .line 132
    :cond_3
    iput p0, p1, Lqk2;->I:F

    .line 133
    .line 134
    cmpl-float p0, p0, v2

    .line 135
    .line 136
    if-nez p0, :cond_4

    .line 137
    .line 138
    iget-object p0, p1, Lqk2;->N:Landroid/animation/TimeInterpolator;

    .line 139
    .line 140
    iput-object p0, p1, Lqk2;->M:Landroid/animation/TimeInterpolator;

    .line 141
    .line 142
    iget-object p0, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    iget-object p0, p1, Lqk2;->O:Landroid/animation/TimeInterpolator;

    .line 149
    .line 150
    iput-object p0, p1, Lqk2;->M:Landroid/animation/TimeInterpolator;

    .line 151
    .line 152
    iget-object p0, p1, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-nez p2, :cond_6

    .line 163
    .line 164
    iget-object p2, p1, Lqk2;->H:Lsp2;

    .line 165
    .line 166
    iput p0, p2, Lsp2;->e:F

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 169
    .line 170
    .line 171
    :cond_6
    :goto_2
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final m(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lqk2;

    .line 2
    .line 3
    iget-object p0, p1, Lqk2;->H:Lsp2;

    .line 4
    .line 5
    iget p0, p0, Lsp2;->b:F

    .line 6
    .line 7
    const p1, 0x461c4000    # 10000.0f

    .line 8
    .line 9
    .line 10
    mul-float/2addr p0, p1

    .line 11
    return p0
.end method
