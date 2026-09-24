.class public final Lt55;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lt55;->l:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgm7;->m(I)Ljl0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lu55;

    .line 6
    .line 7
    iget-boolean p1, p1, Lu55;->e:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p0, p0, Lt55;->l:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 7

    .line 1
    check-cast p1, Ls55;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lu55;

    .line 8
    .line 9
    iget-object v0, p1, Ls55;->x:Lcom/google/android/material/button/MaterialButton;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Ls55;->u:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object v2, p0, Lu55;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p1, Ls55;->v:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object v3, p0, Lu55;->c:Ljava/lang/Long;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    sget-object v4, Lp93;->a:Lp93;

    .line 28
    .line 29
    invoke-static {v3}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, " ("

    .line 34
    .line 35
    const-string v6, ")"

    .line 36
    .line 37
    invoke-static {v5, v4, v6}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v4, ""

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Ls55;->w:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v4, p0, Lu55;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lu55;->f:Z

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v1, v4

    .line 63
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v1

    .line 81
    const-wide/16 v5, 0x0

    .line 82
    .line 83
    cmp-long v1, v1, v5

    .line 84
    .line 85
    if-lez v1, :cond_3

    .line 86
    .line 87
    :cond_2
    const/4 v4, 0x1

    .line 88
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    iget-object p1, p1, Ls55;->y:Lt55;

    .line 98
    .line 99
    new-instance v1, Lti;

    .line 100
    .line 101
    const/4 v2, 0x3

    .line 102
    invoke-direct {v1, p1, p2, v2, p0}, Lti;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v1, 0x0

    .line 107
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_5

    .line 115
    .line 116
    const/high16 p0, 0x3f800000    # 1.0f

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    const/high16 p0, 0x3f000000    # 0.5f

    .line 120
    .line 121
    :goto_3
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 122
    .line 123
    .line 124
    :cond_6
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0d00f1

    .line 4
    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    const p0, 0x7f0d00f0

    .line 8
    .line 9
    .line 10
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Missing required view with ID: "

    .line 5
    .line 6
    const v3, 0x7f0a05ba

    .line 7
    .line 8
    .line 9
    const v4, 0x7f0a05ad

    .line 10
    .line 11
    .line 12
    const v5, 0x7f0a059b

    .line 13
    .line 14
    .line 15
    const v6, 0x7f0a00e2

    .line 16
    .line 17
    .line 18
    if-nez p2, :cond_4

    .line 19
    .line 20
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    move-object v14, v7

    .line 25
    check-cast v14, Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    if-eqz v14, :cond_2

    .line 28
    .line 29
    move-object v9, v0

    .line 30
    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    .line 31
    .line 32
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v11, v6

    .line 37
    check-cast v11, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v11, :cond_1

    .line 40
    .line 41
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    move-object v13, v5

    .line 46
    check-cast v13, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v13, :cond_0

    .line 49
    .line 50
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v4, :cond_3

    .line 57
    .line 58
    new-instance v8, Lkm5;

    .line 59
    .line 60
    move-object v12, v13

    .line 61
    move-object v10, v14

    .line 62
    move-object v13, v4

    .line 63
    invoke-direct/range {v8 .. v13}, Lkm5;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 64
    .line 65
    .line 66
    move-object v13, v12

    .line 67
    new-instance v0, Ls55;

    .line 68
    .line 69
    move-object v9, p0

    .line 70
    move-object v10, v8

    .line 71
    move-object v12, v11

    .line 72
    move-object v8, v0

    .line 73
    move-object v11, v4

    .line 74
    invoke-direct/range {v8 .. v14}, Ls55;-><init>(Lt55;Ljk8;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    .line 75
    .line 76
    .line 77
    return-object v8

    .line 78
    :cond_0
    move v3, v4

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v3, v5

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v3, v6

    .line 83
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_4
    invoke-static {v0, v6}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    move-object v8, v7

    .line 104
    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 105
    .line 106
    if-eqz v8, :cond_7

    .line 107
    .line 108
    move-object v9, v0

    .line 109
    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    .line 110
    .line 111
    invoke-static {v0, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Landroid/widget/TextView;

    .line 116
    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    invoke-static {v0, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    move-object v7, v5

    .line 124
    check-cast v7, Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    invoke-static {v0, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    move-object v13, v4

    .line 133
    check-cast v13, Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v13, :cond_8

    .line 136
    .line 137
    new-instance v4, Ltr9;

    .line 138
    .line 139
    move-object v11, v6

    .line 140
    move-object v12, v7

    .line 141
    move-object v10, v8

    .line 142
    move-object v8, v4

    .line 143
    invoke-direct/range {v8 .. v13}, Ltr9;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 144
    .line 145
    .line 146
    move-object v8, v10

    .line 147
    new-instance v2, Ls55;

    .line 148
    .line 149
    move-object v3, p0

    .line 150
    move-object v5, v13

    .line 151
    invoke-direct/range {v2 .. v8}, Ls55;-><init>(Lt55;Ljk8;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;)V

    .line 152
    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_5
    move v3, v4

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    move v3, v5

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    move v3, v6

    .line 160
    :cond_8
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object v1
.end method
