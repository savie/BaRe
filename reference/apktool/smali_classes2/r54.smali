.class public final Lr54;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final n:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final l:Lil0;

.field public m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const v3, 0x3e4ccccd    # 0.2f

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lr54;->n:Landroid/view/animation/PathInterpolator;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lil0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lr54;->l:Lil0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 10

    .line 1
    check-cast p1, Lq54;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ls54;

    .line 8
    .line 9
    iget-object p2, p1, Lq54;->u:Lp54;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ls54;->d:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Ls54;->r:Lzc6;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-boolean v2, v1, Lzc6;->n:Z

    .line 22
    .line 23
    iget-object v3, p0, Ls54;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v4, p1, Lq54;->v:Lr54;

    .line 26
    .line 27
    iget-object v4, v4, Lr54;->m:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    iget-boolean v3, v1, Lzc6;->k:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    move v3, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v3, v4

    .line 44
    :goto_0
    iget-object v6, p2, Lp54;->f:Landroid/widget/ImageView;

    .line 45
    .line 46
    iget-object v7, p2, Lp54;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    iget v8, p0, Ls54;->e:I

    .line 49
    .line 50
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-boolean v8, p0, Ls54;->k:Z

    .line 54
    .line 55
    if-eqz v8, :cond_2

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const v9, 0x7f04014a

    .line 65
    .line 66
    .line 67
    invoke-static {v8, v9}, Lio4;->d(Landroid/content/Context;I)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v8}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v8, 0x0

    .line 77
    :goto_1
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 78
    .line 79
    .line 80
    iget-object v6, p2, Lp54;->n:Landroid/widget/TextView;

    .line 81
    .line 82
    iget-object v8, p0, Ls54;->c:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object v6, p2, Lp54;->k:Landroid/widget/TextView;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_4

    .line 96
    .line 97
    :cond_3
    move v4, v5

    .line 98
    :cond_4
    xor-int/2addr v4, v5

    .line 99
    invoke-static {v6, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p2, Lp54;->c:Lcom/google/android/material/button/MaterialButton;

    .line 106
    .line 107
    invoke-virtual {v1}, Lzc6;->g()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    const v6, 0x7f140165

    .line 112
    .line 113
    .line 114
    const v8, 0x7f140166

    .line 115
    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    move v4, v8

    .line 120
    goto :goto_2

    .line 121
    :cond_5
    move v4, v6

    .line 122
    :goto_2
    invoke-static {v0, v4}, Lsz8;->a0(Lcom/google/android/material/button/MaterialButton;I)V

    .line 123
    .line 124
    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    const v4, 0x7f13028a

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    const v4, 0x7f130576

    .line 132
    .line 133
    .line 134
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    .line 136
    .line 137
    new-instance v4, Lfr;

    .line 138
    .line 139
    const/4 v9, 0x7

    .line 140
    invoke-direct {v4, v9, p1, v1}, Lfr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p2, Lp54;->b:Lcom/google/android/material/button/MaterialButton;

    .line 147
    .line 148
    invoke-virtual {v1}, Lzc6;->g()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_7

    .line 153
    .line 154
    move v6, v8

    .line 155
    :cond_7
    invoke-static {v0, v6}, Lsz8;->a0(Lcom/google/android/material/button/MaterialButton;I)V

    .line 156
    .line 157
    .line 158
    if-eqz v2, :cond_8

    .line 159
    .line 160
    const v2, 0x7f130289

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_8
    const v2, 0x7f130575

    .line 165
    .line 166
    .line 167
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lgr;

    .line 171
    .line 172
    const/4 v4, 0x2

    .line 173
    invoke-direct {v2, v4, p1, v1}, Lgr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p2, Lp54;->d:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    invoke-static {p2, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 182
    .line 183
    .line 184
    iget-boolean p2, v1, Lzc6;->f:Z

    .line 185
    .line 186
    if-eqz p2, :cond_9

    .line 187
    .line 188
    sget-object p2, Lmp6;->a:Lmp6;

    .line 189
    .line 190
    invoke-static {}, Lmp6;->f()Z

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-nez p2, :cond_9

    .line 195
    .line 196
    const p2, 0x3f19999a    # 0.6f

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    const/high16 p2, 0x3f800000    # 1.0f

    .line 201
    .line 202
    :goto_5
    invoke-virtual {v7, p2}, Landroid/view/View;->setAlpha(F)V

    .line 203
    .line 204
    .line 205
    new-instance p2, Lhp2;

    .line 206
    .line 207
    invoke-direct {p2, v1, p1, p0, v5}, Lhp2;-><init>(Ljl0;Lfh6;Ljava/lang/Object;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00ca

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 11

    .line 1
    new-instance p2, Lq54;

    .line 2
    .line 3
    const v0, 0x7f0a00c2

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroidx/constraintlayout/widget/Barrier;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const v0, 0x7f0a00c3

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/constraintlayout/widget/Barrier;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0a00f0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v4, v1

    .line 33
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    const v0, 0x7f0a010f

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v5, v1

    .line 45
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 46
    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    const v0, 0x7f0a017b

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v6, v1

    .line 57
    check-cast v6, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    move-object v3, p1

    .line 62
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    const v0, 0x7f0a02b7

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v8, v1

    .line 72
    check-cast v8, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v8, :cond_0

    .line 75
    .line 76
    const v0, 0x7f0a0466

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/Space;

    .line 84
    .line 85
    if-eqz v1, :cond_0

    .line 86
    .line 87
    const v0, 0x7f0a05ac

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    move-object v9, v1

    .line 95
    check-cast v9, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v9, :cond_0

    .line 98
    .line 99
    const v0, 0x7f0a05ba

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object v10, v1

    .line 107
    check-cast v10, Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz v10, :cond_0

    .line 110
    .line 111
    new-instance v2, Lp54;

    .line 112
    .line 113
    move-object v7, v3

    .line 114
    invoke-direct/range {v2 .. v10}, Lp54;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, p0, v2}, Lq54;-><init>(Lr54;Lp54;)V

    .line 118
    .line 119
    .line 120
    return-object p2

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string p1, "Missing required view with ID: "

    .line 130
    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    return-object p0
.end method

.method public final w(Lfm7;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Lfm7;->a:Ljava/util/List;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ls54;

    .line 30
    .line 31
    iget-object v0, v0, Ls54;->a:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, p0, Lr54;->m:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lr54;->m:Ljava/lang/String;

    .line 44
    .line 45
    :goto_1
    const/4 p2, 0x0

    .line 46
    invoke-super {p0, p1, p2}, Lgm7;->w(Lfm7;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
