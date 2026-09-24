.class public final Ln97;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Lcz;

.field public final k:Le38;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcz;)V
    .locals 7

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Ln97;->e:Ljava/util/List;

    .line 8
    .line 9
    iput-object p3, p0, Ln97;->f:Lcz;

    .line 10
    .line 11
    const p2, 0x7f0d016f

    .line 12
    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const p2, 0x7f0a00e5

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lvq;->i(Landroid/view/View;)Lvq;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const p2, 0x7f0a00ee

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-static {v0}, Lvq;->i(Landroid/view/View;)Lvq;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const p2, 0x7f0a0127

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-static {v0}, Lvq;->i(Landroid/view/View;)Lvq;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    new-instance v1, Le38;

    .line 59
    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const/4 v6, 0x4

    .line 64
    invoke-direct/range {v1 .. v6}, Le38;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Ln97;->k:Le38;

    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "Missing required view with ID: "

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p3
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 9

    .line 1
    iget-object v0, p0, Ln97;->k:Le38;

    .line 2
    .line 3
    iget-object v1, v0, Le38;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lvq;

    .line 6
    .line 7
    iget-object v2, v1, Lvq;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/widget/ImageView;

    .line 10
    .line 11
    const v3, 0x7f080165

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v1, Lvq;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    const v3, 0x7f1304ee

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lvq;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    new-instance v2, Lgs;

    .line 32
    .line 33
    const/16 v3, 0xa

    .line 34
    .line 35
    invoke-direct {v2, p0, v3}, Lgs;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Ln97;->e:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lji;

    .line 66
    .line 67
    invoke-virtual {v2}, Lji;->getLabels()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/4 v4, 0x1

    .line 81
    :cond_3
    :goto_1
    iget-object v1, v0, Le38;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lvq;

    .line 84
    .line 85
    iget-object v2, v1, Lvq;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    const v6, 0x3e99999a    # 0.3f

    .line 97
    .line 98
    .line 99
    const/high16 v7, 0x3f800000    # 1.0f

    .line 100
    .line 101
    if-eqz v5, :cond_4

    .line 102
    .line 103
    move v5, v7

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v5, v6

    .line 106
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 107
    .line 108
    .line 109
    iget-object v5, v1, Lvq;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v5, Landroid/widget/ImageView;

    .line 112
    .line 113
    const v8, 0x7f080162

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v1, Lvq;->d:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v1, Landroid/widget/TextView;

    .line 122
    .line 123
    const v5, 0x7f13002c

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Ldj;

    .line 130
    .line 131
    const/16 v5, 0xd

    .line 132
    .line 133
    invoke-direct {v1, p0, v5}, Ldj;-><init>(Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Le38;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Lvq;

    .line 142
    .line 143
    iget-object v2, v1, Lvq;->b:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    move v6, v7

    .line 157
    :cond_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v4}, Lsz8;->r(Landroid/content/Context;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    iget-object v5, v1, Lvq;->c:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v5, Landroid/widget/ImageView;

    .line 174
    .line 175
    const v6, 0x7f080128

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v1, Lvq;->d:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v1, Landroid/widget/TextView;

    .line 191
    .line 192
    const v5, 0x7f130100

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .line 200
    .line 201
    new-instance v1, Lhs;

    .line 202
    .line 203
    invoke-direct {v1, p0, v3}, Lhs;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    return-object v0
.end method
