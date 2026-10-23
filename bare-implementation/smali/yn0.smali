.class public final Lyn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lfo0;

    .line 13
    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    iget-object v2, p0, Lfo0;->i:Leo0;

    .line 17
    .line 18
    iget-object v3, p0, Lfo0;->r:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2}, Leo0;->getAnimationMode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v2, v1, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [F

    .line 49
    .line 50
    fill-array-data v0, :array_0

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lfo0;->d:Landroid/animation/TimeInterpolator;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lsn0;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lsn0;-><init>(Lfo0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lfo0;->b:I

    .line 71
    .line 72
    int-to-long v2, v2

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    .line 76
    new-instance v2, Lrn0;

    .line 77
    .line 78
    invoke-direct {v2, p0, p1}, Lrn0;-><init>(Lfo0;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_2
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lfo0;->i:Leo0;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 104
    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 108
    .line 109
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    .line 111
    add-int/2addr v4, v3

    .line 112
    :cond_3
    filled-new-array {v0, v4}, [I

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lfo0;->e:Landroid/animation/TimeInterpolator;

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    .line 123
    .line 124
    iget v3, p0, Lfo0;->c:I

    .line 125
    .line 126
    int-to-long v3, v3

    .line 127
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    new-instance v3, Lwn0;

    .line 131
    .line 132
    invoke-direct {v3, p0, p1}, Lwn0;-><init>(Lfo0;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Lxn0;

    .line 139
    .line 140
    invoke-direct {p1, p0, v0}, Lxn0;-><init>(Ljava/lang/Object;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 147
    .line 148
    .line 149
    return v1

    .line 150
    :cond_4
    invoke-virtual {p0}, Lfo0;->d()V

    .line 151
    .line 152
    .line 153
    return v1

    .line 154
    :cond_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Lfo0;

    .line 157
    .line 158
    iget-object p1, p0, Lfo0;->i:Leo0;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    instance-of v3, v2, Lhw1;

    .line 171
    .line 172
    if-eqz v3, :cond_6

    .line 173
    .line 174
    check-cast v2, Lhw1;

    .line 175
    .line 176
    new-instance v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 177
    .line 178
    invoke-direct {v3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v4, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->i:Lnh;

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    iget-object v5, p0, Lfo0;->s:Lao0;

    .line 187
    .line 188
    iput-object v5, v4, Lnh;->b:Ljava/lang/Object;

    .line 189
    .line 190
    new-instance v4, Ljq6;

    .line 191
    .line 192
    const/4 v5, 0x5

    .line 193
    invoke-direct {v4, p0, v5}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    iput-object v4, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:Ljq6;

    .line 197
    .line 198
    invoke-virtual {v2, v3}, Lhw1;->b(Lew1;)V

    .line 199
    .line 200
    .line 201
    const/16 v3, 0x50

    .line 202
    .line 203
    iput v3, v2, Lhw1;->g:I

    .line 204
    .line 205
    :cond_6
    iget-object v2, p0, Lfo0;->g:Landroid/view/ViewGroup;

    .line 206
    .line 207
    iput-boolean v1, p1, Leo0;->r:Z

    .line 208
    .line 209
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    iput-boolean v0, p1, Leo0;->r:Z

    .line 213
    .line 214
    invoke-virtual {p0}, Lfo0;->g()V

    .line 215
    .line 216
    .line 217
    const/4 v0, 0x4

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_8

    .line 226
    .line 227
    invoke-virtual {p0}, Lfo0;->f()V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :cond_8
    iput-boolean v1, p0, Lfo0;->q:Z

    .line 232
    .line 233
    return v1

    .line 234
    nop

    .line 235
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
