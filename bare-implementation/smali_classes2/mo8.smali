.class public final Lmo8;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Loo8;

.field public final m:Z


# direct methods
.method public constructor <init>(Loo8;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lmo8;->l:Loo8;

    .line 6
    .line 7
    iput-boolean p2, p0, Lmo8;->m:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 11

    .line 1
    check-cast p1, Llo8;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyn8;

    .line 8
    .line 9
    iget-object p2, p1, Llo8;->x:Lmo8;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lyn8;->e:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v1, p0, Lyn8;->k:Z

    .line 17
    .line 18
    iget-object v2, p1, Llo8;->u:Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-boolean v3, p0, Lyn8;->n:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v3, v4

    .line 28
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean v3, p0, Lyn8;->n:Z

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sget-object v6, Le66;->d:Le66;

    .line 45
    .line 46
    if-nez v3, :cond_7

    .line 47
    .line 48
    iget-object v3, p0, Lyn8;->a:Lq63;

    .line 49
    .line 50
    iget-boolean v7, p0, Lyn8;->n:Z

    .line 51
    .line 52
    if-nez v7, :cond_5

    .line 53
    .line 54
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    if-eqz v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v3}, Lq63;->j()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    iget-wide v7, p0, Lyn8;->c:J

    .line 82
    .line 83
    const-wide/16 v9, 0x0

    .line 84
    .line 85
    cmp-long v9, v7, v9

    .line 86
    .line 87
    if-lez v9, :cond_7

    .line 88
    .line 89
    invoke-virtual {v3}, Lq63;->A()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    cmp-long v3, v7, v9

    .line 94
    .line 95
    if-nez v3, :cond_5

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    :goto_1
    sget-object v3, Ltb1;->a:Ltb1;

    .line 99
    .line 100
    invoke-static {}, Lqb1;->f()Ldd1;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget-object v7, Ldd1;->GoogleDrive:Ldd1;

    .line 105
    .line 106
    const-class v8, Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    if-ne v3, v7, :cond_6

    .line 109
    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v3}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-object v7, p0, Lyn8;->f:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v3, v8}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v7}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Lcom/bumptech/glide/a;->c(Landroid/content/Context;)Lyk6;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    new-instance v7, Lzx3;

    .line 138
    .line 139
    invoke-direct {v7, p0}, Lzx3;-><init>(Lyn8;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v8}, Lyk6;->f(Ljava/lang/Class;)Lpk6;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3, v7}, Lpk6;->D(Ljava/lang/Object;)Lpk6;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v2, v4, v6}, Ljm1;->e(Lpk6;Landroid/widget/ImageView;ZLe66;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_7
    :goto_3
    invoke-static {p0, v2, v4, v6}, Ljm1;->d(Lyn8;Landroid/widget/ImageView;ZLe66;)V

    .line 158
    .line 159
    .line 160
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget-object v3, p1, Llo8;->v:Landroid/widget/ImageView;

    .line 165
    .line 166
    const/4 v6, 0x1

    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    xor-int/lit8 v0, v1, 0x1

    .line 170
    .line 171
    invoke-static {v3, v0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_8
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :goto_5
    iget-object v0, p1, Llo8;->w:Landroid/widget/ImageView;

    .line 179
    .line 180
    iget-object v1, p2, Lgm7;->e:Lfm7;

    .line 181
    .line 182
    iget-boolean v1, v1, Lfm7;->c:Z

    .line 183
    .line 184
    if-eqz v1, :cond_9

    .line 185
    .line 186
    invoke-virtual {p2, p0}, Lgm7;->q(Ljl0;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    move v4, v6

    .line 193
    :cond_9
    invoke-static {v0, v4}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lxr0;

    .line 197
    .line 198
    invoke-direct {v0, v6, p1, p2, p0}, Lxr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    iget-boolean p1, p2, Lmo8;->m:Z

    .line 205
    .line 206
    if-eqz p1, :cond_b

    .line 207
    .line 208
    iget-object p1, p2, Lgm7;->e:Lfm7;

    .line 209
    .line 210
    iget-boolean p1, p1, Lfm7;->c:Z

    .line 211
    .line 212
    if-eqz p1, :cond_a

    .line 213
    .line 214
    goto :goto_6

    .line 215
    :cond_a
    new-instance p1, Lko8;

    .line 216
    .line 217
    invoke-direct {p1, p2, p0}, Lko8;-><init>(Lmo8;Lyn8;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_b
    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d018b

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 4

    .line 1
    new-instance p2, Llo8;

    .line 2
    .line 3
    const v0, 0x7f0a02ac

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/ImageView;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const v0, 0x7f0a02c2

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const v0, 0x7f0a02cc

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/ImageView;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const v0, 0x7f0a02d5

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/ImageView;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    new-instance v0, Lbx5;

    .line 48
    .line 49
    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, v0, Lbx5;->a:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v1, v0, Lbx5;->b:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v2, v0, Lbx5;->c:Ljava/lang/Object;

    .line 59
    .line 60
    iput-object v3, v0, Lbx5;->d:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-direct {p2, p0, v0}, Llo8;-><init>(Lmo8;Lbx5;)V

    .line 63
    .line 64
    .line 65
    return-object p2

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "Missing required view with ID: "

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public final w(Lfm7;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-super {p0, p1, p2}, Lgm7;->w(Lfm7;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
