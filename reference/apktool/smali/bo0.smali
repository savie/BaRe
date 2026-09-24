.class public final Lbo0;
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
    iput p2, p0, Lbo0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lbo0;->b:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lbo0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, Lbo0;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lnr8;

    .line 10
    .line 11
    iget-object v0, p0, Lnr8;->a:Lc00;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "0"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lc00;->p(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lnr8;->e()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    check-cast p0, Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Lc46;

    .line 31
    .line 32
    iget-object p0, p0, Lc46;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    check-cast p0, Lyq3;

    .line 39
    .line 40
    invoke-virtual {p0}, Lyq3;->a()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lyq3;->d:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lyq3;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v7, 0x3

    .line 79
    const/4 v8, 0x0

    .line 80
    move-wide v5, v3

    .line 81
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 89
    .line 90
    .line 91
    iput-boolean v1, p0, Lyq3;->k:Z

    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void

    .line 94
    :pswitch_3
    check-cast p0, Lfo0;

    .line 95
    .line 96
    iget-object v0, p0, Lfo0;->i:Leo0;

    .line 97
    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v3, 0x0

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {v0}, Leo0;->getAnimationMode()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ne v2, v1, :cond_6

    .line 117
    .line 118
    const/4 v0, 0x2

    .line 119
    new-array v2, v0, [F

    .line 120
    .line 121
    fill-array-data v2, :array_0

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v4, p0, Lfo0;->d:Landroid/animation/TimeInterpolator;

    .line 129
    .line 130
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lsn0;

    .line 134
    .line 135
    invoke-direct {v4, p0}, Lsn0;-><init>(Lfo0;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    .line 140
    .line 141
    new-array v4, v0, [F

    .line 142
    .line 143
    fill-array-data v4, :array_1

    .line 144
    .line 145
    .line 146
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v5, p0, Lfo0;->f:Landroid/animation/TimeInterpolator;

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    .line 154
    .line 155
    new-instance v5, Ltn0;

    .line 156
    .line 157
    invoke-direct {v5, p0, v3}, Ltn0;-><init>(Ljava/lang/Object;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    .line 162
    .line 163
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 164
    .line 165
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 166
    .line 167
    .line 168
    new-array v0, v0, [Landroid/animation/Animator;

    .line 169
    .line 170
    aput-object v2, v0, v3

    .line 171
    .line 172
    aput-object v4, v0, v1

    .line 173
    .line 174
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 175
    .line 176
    .line 177
    iget v0, p0, Lfo0;->a:I

    .line 178
    .line 179
    int-to-long v0, v0

    .line 180
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 181
    .line 182
    .line 183
    new-instance v0, Lco0;

    .line 184
    .line 185
    invoke-direct {v0, p0, v3}, Lco0;-><init>(Ljava/lang/Object;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    .line 205
    if-eqz v4, :cond_7

    .line 206
    .line 207
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 208
    .line 209
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 210
    .line 211
    add-int/2addr v1, v2

    .line 212
    :cond_7
    int-to-float v2, v1

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 219
    .line 220
    .line 221
    filled-new-array {v1, v3}, [I

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lfo0;->e:Landroid/animation/TimeInterpolator;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    .line 232
    .line 233
    iget v1, p0, Lfo0;->c:I

    .line 234
    .line 235
    int-to-long v1, v1

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    .line 238
    .line 239
    new-instance v1, Lun0;

    .line 240
    .line 241
    invoke-direct {v1, p0, v3}, Lun0;-><init>(Ljava/lang/Object;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lvn0;

    .line 248
    .line 249
    invoke-direct {v1, p0}, Lvn0;-><init>(Lfo0;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 256
    .line 257
    .line 258
    :goto_1
    return-void

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lbo0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lbo0;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
