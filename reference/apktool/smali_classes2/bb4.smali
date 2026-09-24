.class public final Lbb4;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Lfh6;I)V
    .locals 6

    .line 1
    check-cast p1, Lab4;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lxa4;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p2, p1, Lab4;->v:Lcom/google/android/material/card/MaterialCardView;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p1, Lab4;->B:Lbb4;

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Lgm7;->q(Ljl0;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lsz8;->x(Landroid/content/Context;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget-object v4, p1, Lab4;->u:Lya4;

    .line 32
    .line 33
    iget-object v4, v4, Lya4;->b:Lcom/google/android/material/card/MaterialCardView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lxa4;->isEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const v5, 0x3f266666    # 0.65f

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const v5, 0x7f07005e

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {p2, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const v5, 0x7f07005d

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {p2, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 86
    .line 87
    .line 88
    const v4, 0x7f0400bc

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p2, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v4, p1, Lab4;->w:Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-static {v0}, Lsz8;->z(Landroid/content/Context;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lxa4;->getDisplayTitleShort(Landroid/content/Context;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lxa4;->isPending()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_3

    .line 135
    .line 136
    invoke-virtual {p0}, Lxa4;->isPurchased()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    .line 142
    :cond_3
    const-string v3, " ("

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lxa4;->isPending()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    const v3, 0x7f130407

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    const v3, 0x7f130436

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v3, ")"

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_5
    new-instance v3, Landroid/text/SpannedString;

    .line 173
    .line 174
    invoke-direct {v3, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-object v2, p1, Lab4;->x:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lxa4;->getSubtitleShort(Landroid/content/Context;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v2, p1, Lab4;->A:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {p0}, Lxa4;->isLifetime()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    const/16 v4, 0x8

    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    if-eqz v3, :cond_6

    .line 199
    .line 200
    move v3, v5

    .line 201
    goto :goto_4

    .line 202
    :cond_6
    move v3, v4

    .line 203
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p1, Lab4;->y:Landroid/widget/TextView;

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lxa4;->getDisplayPrice(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    iget-object v2, p1, Lab4;->z:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lxa4;->getMonthlyEquivalentText(Landroid/content/Context;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    move v4, v5

    .line 224
    :cond_7
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    new-instance v0, Lza4;

    .line 231
    .line 232
    invoke-direct {v0, v1, p0, p1, v5}, Lza4;-><init>(Lgm7;Ljl0;Lfh6;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00d0

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 8

    .line 1
    new-instance p2, Lab4;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Lcom/google/android/material/card/MaterialCardView;

    .line 5
    .line 6
    const v0, 0x7f0a018f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const v0, 0x7f0a03a1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const v0, 0x7f0a051d

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    move-object v3, v2

    .line 36
    check-cast v3, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const v0, 0x7f0a0564

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object v4, v2

    .line 48
    check-cast v4, Landroid/widget/TextView;

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const v0, 0x7f0a0576

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v5, v2

    .line 60
    check-cast v5, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    const v0, 0x7f0a05ac

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v6, v2

    .line 72
    check-cast v6, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v6, :cond_0

    .line 75
    .line 76
    const v0, 0x7f0a05ba

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v7, v2

    .line 84
    check-cast v7, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v7, :cond_0

    .line 87
    .line 88
    new-instance v0, Lya4;

    .line 89
    .line 90
    move-object v2, v1

    .line 91
    invoke-direct/range {v0 .. v7}, Lya4;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, p0, v0}, Lab4;-><init>(Lbb4;Lya4;)V

    .line 95
    .line 96
    .line 97
    return-object p2

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p1, "Missing required view with ID: "

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const/4 p0, 0x0

    .line 116
    return-object p0
.end method

.method public final y()Lxa4;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lgm7;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lxa4;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lgm7;->e:Lfm7;

    .line 14
    .line 15
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lxa4;

    .line 33
    .line 34
    invoke-virtual {v2}, Lxa4;->isLifetime()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :goto_0
    check-cast v1, Lxa4;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 47
    .line 48
    iget-object p0, p0, Lfm7;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {p0}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Lxa4;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    return-object v1

    .line 58
    :cond_3
    return-object v0
.end method
