.class public final Lh54;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lqt3;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v0, La54;

    .line 2
    .line 3
    sget-object v2, Ltr;->n0:Lqr;

    .line 4
    .line 5
    const-string v5, "renderAppIcon(Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/model/app/App;)V"

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/4 v1, 0x2

    .line 9
    const-class v3, Lqr;

    .line 10
    .line 11
    const-string v4, "renderAppIcon"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v1}, Lgm7;-><init>(Lfm7;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lh54;->l:Lqt3;

    .line 21
    .line 22
    return-void
.end method

.method public static final y(Lh54;Landroid/widget/ImageView;Ls54;)V
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    iget p0, p2, Ls54;->e:I

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, p2, Ls54;->k:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const p2, 0x7f04014a

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p2}, Lio4;->d(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    .line 37
    .line 38
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
    move-result-object p0

    .line 5
    check-cast p0, Ls54;

    .line 6
    .line 7
    iget-object p1, p0, Ls54;->n:Lji;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object p0, p0, Ls54;->p:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x2

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final h(Lfh6;I)V
    .locals 0

    .line 1
    check-cast p1, Lg54;

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
    invoke-virtual {p1, p0, p2}, Lg54;->r(Ls54;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    const/4 p0, 0x2

    .line 5
    if-eq p1, p0, :cond_0

    .line 6
    .line 7
    const p0, 0x7f0d00cb

    .line 8
    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const p0, 0x7f0d00c9

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :cond_1
    const p0, 0x7f0d00c8

    .line 16
    .line 17
    .line 18
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Missing required view with ID: "

    .line 4
    .line 5
    const v3, 0x7f0a05ba

    .line 6
    .line 7
    .line 8
    const v4, 0x7f0a05ac

    .line 9
    .line 10
    .line 11
    const v5, 0x7f0a02b7

    .line 12
    .line 13
    .line 14
    if-eq p2, v0, :cond_7

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p2, v0, :cond_3

    .line 18
    .line 19
    new-instance p2, Lf54;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    invoke-static {p1, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    invoke-static {p1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    new-instance p1, Lt54;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p1, Lt54;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v0, p1, Lt54;->b:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v6, p1, Lt54;->c:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v5, p1, Lt54;->d:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v4, p1, Lt54;->e:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-direct {p2, p0, p1}, Lf54;-><init>(Lh54;Lt54;)V

    .line 64
    .line 65
    .line 66
    return-object p2

    .line 67
    :cond_0
    move v3, v4

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    move v3, v5

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_3
    new-instance p2, Le54;

    .line 87
    .line 88
    move-object v7, p1

    .line 89
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 90
    .line 91
    invoke-static {p1, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v9, v0

    .line 96
    check-cast v9, Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz v9, :cond_5

    .line 99
    .line 100
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    move-object v10, v0

    .line 105
    check-cast v10, Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v10, :cond_4

    .line 108
    .line 109
    invoke-static {p1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v11, v0

    .line 114
    check-cast v11, Landroid/widget/TextView;

    .line 115
    .line 116
    if-eqz v11, :cond_6

    .line 117
    .line 118
    new-instance v6, Lxp3;

    .line 119
    .line 120
    const/4 v12, 0x1

    .line 121
    move-object v8, v7

    .line 122
    invoke-direct/range {v6 .. v12}, Lxp3;-><init>(Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;I)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p2, p0, v6}, Le54;-><init>(Lh54;Lxp3;)V

    .line 126
    .line 127
    .line 128
    return-object p2

    .line 129
    :cond_4
    move v3, v4

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    move v3, v5

    .line 132
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_7
    new-instance p2, Lc54;

    .line 149
    .line 150
    move-object v7, p1

    .line 151
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    .line 153
    invoke-static {p1, v5}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    move-object v9, v0

    .line 158
    check-cast v9, Landroid/widget/ImageView;

    .line 159
    .line 160
    if-eqz v9, :cond_9

    .line 161
    .line 162
    invoke-static {p1, v4}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    move-object v10, v0

    .line 167
    check-cast v10, Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v10, :cond_8

    .line 170
    .line 171
    invoke-static {p1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v11, v0

    .line 176
    check-cast v11, Landroid/widget/TextView;

    .line 177
    .line 178
    if-eqz v11, :cond_a

    .line 179
    .line 180
    new-instance v6, Ll90;

    .line 181
    .line 182
    const/4 v12, 0x2

    .line 183
    move-object v8, v7

    .line 184
    invoke-direct/range {v6 .. v12}, Ll90;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, p0, v6}, Lc54;-><init>(Lh54;Ll90;)V

    .line 188
    .line 189
    .line 190
    return-object p2

    .line 191
    :cond_8
    move v3, v4

    .line 192
    goto :goto_2

    .line 193
    :cond_9
    move v3, v5

    .line 194
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return-object v1
.end method
