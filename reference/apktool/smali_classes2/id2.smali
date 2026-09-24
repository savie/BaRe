.class public final Lid2;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic l:I

.field public final m:Lil0;


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lid2;->l:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lid2;->m:Lil0;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;Lfm7;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lid2;->l:I

    .line 14
    invoke-direct {p0, p2}, Lgm7;-><init>(Lfm7;)V

    .line 15
    iput-object p1, p0, Lid2;->m:Lil0;

    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 6

    .line 1
    iget v0, p0, Lid2;->l:I

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lip2;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljp2;

    .line 16
    .line 17
    iget-object p2, p1, Lip2;->u:Lca3;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ljp2;->c:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Ljp2;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v4, p1, Lfh6;->a:Landroid/view/View;

    .line 27
    .line 28
    iget-boolean v5, p0, Ljp2;->e:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    sget-object v5, Lmp6;->a:Lmp6;

    .line 33
    .line 34
    invoke-static {}, Lmp6;->f()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    const/high16 v1, 0x3f000000    # 0.5f

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p2, Lca3;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .line 49
    iget v4, p0, Ljp2;->d:I

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p2, Lca3;->k:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object v4, p0, Ljp2;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p2, Lca3;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Landroid/widget/TextView;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v5, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_0
    move v5, v2

    .line 80
    :goto_1
    xor-int/2addr v5, v2

    .line 81
    invoke-static {v1, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 82
    .line 83
    .line 84
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v1, p2, Lca3;->f:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move v3, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    :goto_2
    move v3, v2

    .line 109
    :goto_3
    xor-int/2addr v2, v3

    .line 110
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object v0, p2, Lca3;->b:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 125
    .line 126
    iget-object v1, p1, Lip2;->v:Lid2;

    .line 127
    .line 128
    new-instance v2, Lhp2;

    .line 129
    .line 130
    invoke-direct {v2, p0, p1, v1, v4}, Lhp2;-><init>(Ljl0;Lfh6;Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p2, Lca3;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p1, Landroid/view/View;

    .line 139
    .line 140
    iget-boolean p0, p0, Ljp2;->f:Z

    .line 141
    .line 142
    invoke-static {p1, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_0
    check-cast p1, Lhd2;

    .line 147
    .line 148
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    check-cast p0, Ljd2;

    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    iget-object p2, p1, Lhd2;->u:Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object p1, p1, Lhd2;->v:Lid2;

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Lgm7;->q(Ljl0;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iget-object v3, p1, Lid2;->m:Lil0;

    .line 166
    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    invoke-static {v3}, Lsz8;->x(Landroid/content/Context;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    const v4, 0x7f040136

    .line 174
    .line 175
    .line 176
    invoke-static {v3, v4}, Lsz8;->y(Landroid/content/Context;I)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-static {v0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    const v0, 0x7f040158

    .line 199
    .line 200
    .line 201
    invoke-static {v3, v0}, Lsz8;->q(Landroid/content/Context;I)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-static {v0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    .line 211
    .line 212
    const v0, 0x7f04013f

    .line 213
    .line 214
    .line 215
    invoke-static {v3, v0}, Lsz8;->y(Landroid/content/Context;I)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    .line 225
    .line 226
    const v0, 0x3f19999a    # 0.6f

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 230
    .line 231
    .line 232
    :goto_4
    iget-object v0, p0, Ljd2;->b:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Luf1;

    .line 238
    .line 239
    invoke-direct {v0, v2, p1, p0}, Luf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)I
    .locals 0

    .line 1
    iget p0, p0, Lid2;->l:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const p0, 0x7f0d0094

    .line 7
    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_0
    const p0, 0x7f0d0079

    .line 11
    .line 12
    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 2

    .line 1
    iget p2, p0, Lid2;->l:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p2, Lip2;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Lip2;-><init>(Lid2;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object p2

    .line 12
    :pswitch_0
    new-instance p2, Lhd2;

    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance v0, Lwc9;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1, p1, p1}, Lwc9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, v0}, Lhd2;-><init>(Lid2;Lwc9;)V

    .line 23
    .line 24
    .line 25
    return-object p2

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
