.class public final Lr10;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic l:Lt10;


# direct methods
.method public constructor <init>(Lt10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr10;->l:Lt10;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lgm7;-><init>(Lfm7;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 11

    .line 1
    check-cast p1, Lq10;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ln10;

    .line 8
    .line 9
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 10
    .line 11
    iget-object v1, p1, Lq10;->x:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Ln10;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v3, p0, Ln10;->n:Z

    .line 19
    .line 20
    iget-object v4, p1, Lq10;->z:Lr10;

    .line 21
    .line 22
    iget-object v5, v4, Lr10;->l:Lt10;

    .line 23
    .line 24
    iget-object v6, v5, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 25
    .line 26
    invoke-static {v6}, Lsz8;->A(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    iget-object v7, v5, Lt10;->Q:Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 31
    .line 32
    invoke-static {v7}, Lsz8;->r(Landroid/content/Context;)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget-object v8, p1, Lq10;->u:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p0}, Ln10;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_0

    .line 43
    .line 44
    sget-object v9, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 45
    .line 46
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-nez v9, :cond_0

    .line 51
    .line 52
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const v7, 0x7f0604a5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    invoke-static {v6, v7}, Lio4;->c(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const v7, 0x7f080146

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget v9, p0, Ln10;->e:I

    .line 75
    .line 76
    invoke-virtual {p0}, Ln10;->g()Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eqz v10, :cond_1

    .line 81
    .line 82
    move v6, v7

    .line 83
    :cond_1
    move v7, v9

    .line 84
    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v6}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 92
    .line 93
    .line 94
    iget-object v6, p1, Lq10;->v:Landroid/widget/TextView;

    .line 95
    .line 96
    iget v7, p0, Ln10;->c:I

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 99
    .line 100
    .line 101
    iget-object v6, p1, Lq10;->w:Landroid/widget/TextView;

    .line 102
    .line 103
    const/4 v7, 0x0

    .line 104
    const/4 v8, 0x1

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v9, v7

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    :goto_1
    move v9, v8

    .line 117
    :goto_2
    xor-int/2addr v9, v8

    .line 118
    invoke-static {v6, v9}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v1, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    if-eqz v3, :cond_4

    .line 134
    .line 135
    sget-object v2, Lmp6;->a:Lmp6;

    .line 136
    .line 137
    invoke-static {}, Lmp6;->f()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {v2}, Lsz8;->x(Landroid/content/Context;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v2}, Lsz8;->r(Landroid/content/Context;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    :goto_3
    invoke-static {v2}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lmf;

    .line 174
    .line 175
    invoke-direct {v2, v5, v8}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object v1, v4, Lgm7;->e:Lfm7;

    .line 182
    .line 183
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 184
    .line 185
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    sub-int/2addr v1, v8

    .line 190
    if-ne p2, v1, :cond_6

    .line 191
    .line 192
    const/4 v1, 0x0

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    iget-object v1, v4, Lgm7;->e:Lfm7;

    .line 195
    .line 196
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 197
    .line 198
    add-int/lit8 v2, p2, 0x1

    .line 199
    .line 200
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ln10;

    .line 205
    .line 206
    :goto_4
    if-eqz v1, :cond_7

    .line 207
    .line 208
    iget v2, p0, Ln10;->b:I

    .line 209
    .line 210
    iget v1, v1, Ln10;->b:I

    .line 211
    .line 212
    if-eq v2, v1, :cond_7

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_7
    move v8, v7

    .line 216
    :goto_5
    iget-object p1, p1, Lq10;->y:Landroid/view/View;

    .line 217
    .line 218
    invoke-static {p1, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 219
    .line 220
    .line 221
    if-eqz v3, :cond_8

    .line 222
    .line 223
    sget-object p1, Lmp6;->a:Lmp6;

    .line 224
    .line 225
    invoke-static {}, Lmp6;->f()Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-nez p1, :cond_8

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_8
    iget p1, p0, Ln10;->f:I

    .line 233
    .line 234
    if-lez p1, :cond_9

    .line 235
    .line 236
    const/high16 p1, 0x3f800000    # 1.0f

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_9
    :goto_6
    const/high16 p1, 0x3f000000    # 0.5f

    .line 240
    .line 241
    :goto_7
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 242
    .line 243
    .line 244
    new-instance p1, Lp10;

    .line 245
    .line 246
    invoke-direct {p1, v4, p2, v7, p0}, Lp10;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0028

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 0

    .line 1
    new-instance p2, Lq10;

    .line 2
    .line 3
    invoke-direct {p2, p0, p1}, Lq10;-><init>(Lr10;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p2
.end method
