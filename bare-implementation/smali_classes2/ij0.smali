.class public final Lij0;
.super Lr35;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public f:Lkj0;


# virtual methods
.method public final h(Lfh6;I)V
    .locals 7

    .line 1
    check-cast p1, Lhj0;

    .line 2
    .line 3
    iget-object p0, p0, Lr35;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljj0;

    .line 10
    .line 11
    iget-object v0, p1, Lhj0;->x:Loi0;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ljj0;->c:Ljava/util/List;

    .line 17
    .line 18
    iget-object v2, p1, Lhj0;->u:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v3, p0, Ljj0;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p1, Lhj0;->v:Landroid/widget/ImageView;

    .line 26
    .line 27
    iget-object v3, p1, Lhj0;->z:Lij0;

    .line 28
    .line 29
    iget-object v4, p0, Ljj0;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-string v5, "user_app_parts"

    .line 32
    .line 33
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, 0x0

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    const-string v5, "system_app_parts"

    .line 41
    .line 42
    invoke-static {v4, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_6

    .line 47
    .line 48
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_6

    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lli0;

    .line 73
    .line 74
    invoke-virtual {v5}, Lli0;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljj0;->b()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    const v4, 0x7f080104

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const v4, 0x7f080102

    .line 94
    .line 95
    .line 96
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljj0;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    const v5, 0x1010038

    .line 113
    .line 114
    .line 115
    invoke-static {v4, v5}, Lsz8;->y(Landroid/content/Context;I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    invoke-static {v4}, Lsz8;->x(Landroid/content/Context;)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v4}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {p0}, Ljj0;->b()Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_5

    .line 148
    .line 149
    const v5, 0x7f1304d8

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    const v5, 0x7f1300fe

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    new-instance v4, Lti;

    .line 164
    .line 165
    const/4 v5, 0x1

    .line 166
    invoke-direct {v4, p0, p2, v5, v3}, Lti;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    :goto_3
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    :goto_4
    iget-object v2, p1, Lhj0;->w:Landroid/widget/ImageView;

    .line 180
    .line 181
    iget-object v4, p0, Ljj0;->e:Lbt3;

    .line 182
    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    invoke-static {v2}, Lsz8;->c0(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    new-instance v4, Lh7;

    .line 189
    .line 190
    const/4 v5, 0x4

    .line 191
    invoke-direct {v4, p0, v5}, Lh7;-><init>(Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    invoke-static {v2}, Lsz8;->W(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    :goto_5
    invoke-static {v0, v1}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 205
    .line 206
    .line 207
    new-instance p0, Lgj0;

    .line 208
    .line 209
    invoke-direct {p0, v3, p2}, Lgj0;-><init>(Lij0;I)V

    .line 210
    .line 211
    .line 212
    iput-object p0, v0, Loi0;->g:Lat5;

    .line 213
    .line 214
    iget-object p0, p1, Lhj0;->y:Lfj0;

    .line 215
    .line 216
    new-instance p1, Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    :cond_8
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_9

    .line 230
    .line 231
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    check-cast v0, Lli0;

    .line 236
    .line 237
    iget-object v1, v0, Lli0;->n:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_8

    .line 244
    .line 245
    iget-object v0, v0, Lli0;->n:Ljava/util/List;

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    invoke-static {p0, p1}, Lr35;->m(Lr35;Ljava/util/List;)V

    .line 252
    .line 253
    .line 254
    return-void
.end method

.method public final k(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0042

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final l(Landroid/view/View;I)Lfh6;
    .locals 8

    .line 1
    new-instance p2, Lhj0;

    .line 2
    .line 3
    const v0, 0x7f0a02ca

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v4, v1

    .line 11
    check-cast v4, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a02cb

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v5, v1

    .line 23
    check-cast v5, Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    const v0, 0x7f0a03ec

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    move-object v6, v1

    .line 35
    check-cast v6, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    move-object v3, p1

    .line 40
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    const v0, 0x7f0a05ba

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v7, v1

    .line 50
    check-cast v7, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v7, :cond_0

    .line 53
    .line 54
    new-instance v2, Lwv0;

    .line 55
    .line 56
    invoke-direct/range {v2 .. v7}, Lwv0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;Landroid/widget/TextView;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p0, v2}, Lhj0;-><init>(Lij0;Lwv0;)V

    .line 60
    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "Missing required view with ID: "

    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0
.end method
