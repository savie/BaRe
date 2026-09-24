.class public final synthetic Lqv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;
.implements Lzt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqv5;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqv5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lyt3;
    .locals 8

    .line 1
    iget v0, p0, Lqv5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lqv5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcu3;

    .line 9
    .line 10
    move-object v3, p0

    .line 11
    check-cast v3, Lx92;

    .line 12
    .line 13
    const-string v6, "onRootInfoUI(Lorg/swiftapps/swiftbackup/model/RootInfo;)V"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const-class v4, Lx92;

    .line 18
    .line 19
    const-string v5, "onRootInfoUI"

    .line 20
    .line 21
    invoke-direct/range {v1 .. v7}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    check-cast p0, Lmt3;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    check-cast p0, Lmt3;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lqv5;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lqv5;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lnp6;

    .line 9
    .line 10
    check-cast p0, Lx92;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lnp6$c;->INSTANCE:Lnp6$c;

    .line 15
    .line 16
    :cond_0
    instance-of v0, p1, Lnp6$b;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    instance-of v0, p1, Lnp6$d;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    move v0, v1

    .line 30
    :goto_1
    if-nez v0, :cond_3

    .line 31
    .line 32
    sget-boolean v3, Lmp6;->g:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    move v3, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move v3, v2

    .line 39
    :goto_2
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Lsz8;->w(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Lsz8;->z(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    instance-of v6, p1, Lnp6$b;

    .line 59
    .line 60
    if-eqz v6, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v4, v5

    .line 64
    :goto_3
    if-eqz v0, :cond_5

    .line 65
    .line 66
    move v0, v4

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lsz8;->x(Landroid/content/Context;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_4
    iget-object v5, p0, Lrl0;->b:Ljk8;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v5, Ly92;

    .line 82
    .line 83
    iget-object v5, v5, Ly92;->f:Lpp0;

    .line 84
    .line 85
    iget-object v5, v5, Lpp0;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Landroid/widget/ImageView;

    .line 88
    .line 89
    if-nez v6, :cond_7

    .line 90
    .line 91
    instance-of v7, p1, Lnp6$d;

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    const v7, 0x7f0801a8

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_7
    :goto_5
    const v7, 0x7f080209

    .line 101
    .line 102
    .line 103
    :goto_6
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    if-eqz v3, :cond_8

    .line 124
    .line 125
    new-instance v0, Lxd1;

    .line 126
    .line 127
    const/4 v3, 0x3

    .line 128
    invoke-direct {v0, p0, v3}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    check-cast v0, Ly92;

    .line 140
    .line 141
    iget-object v0, v0, Ly92;->f:Lpp0;

    .line 142
    .line 143
    iget-object v0, v0, Lpp0;->f:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lnp6;->getRootAccessValueString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    check-cast v0, Ly92;

    .line 163
    .line 164
    iget-object v0, v0, Ly92;->f:Lpp0;

    .line 165
    .line 166
    iget-object v0, v0, Lpp0;->k:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Landroid/widget/TextView;

    .line 169
    .line 170
    if-nez v6, :cond_a

    .line 171
    .line 172
    instance-of v3, p1, Lnp6$d;

    .line 173
    .line 174
    if-eqz v3, :cond_9

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_9
    move v1, v2

    .line 178
    :cond_a
    :goto_7
    invoke-static {v0, v1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lx92;->l()Lorg/swiftapps/swiftbackup/home/HomeActivity;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v1}, Lsz8;->A(Landroid/content/Context;)I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lnp6;->getRootProviderValueString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-boolean p1, p0, Lx92;->f:Z

    .line 200
    .line 201
    if-eqz p1, :cond_b

    .line 202
    .line 203
    iput-boolean v2, p0, Lx92;->f:Z

    .line 204
    .line 205
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 206
    .line 207
    const/4 v0, 0x0

    .line 208
    const/high16 v1, 0x3f800000    # 1.0f

    .line 209
    .line 210
    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 211
    .line 212
    .line 213
    const-wide/16 v0, 0x1f4

    .line 214
    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lrl0;->b:Ljk8;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    check-cast v0, Ly92;

    .line 224
    .line 225
    iget-object v0, v0, Ly92;->f:Lpp0;

    .line 226
    .line 227
    iget-object v0, v0, Lpp0;->f:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v0, Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    check-cast p0, Ly92;

    .line 240
    .line 241
    iget-object p0, p0, Ly92;->f:Lpp0;

    .line 242
    .line 243
    iget-object p0, p0, Lpp0;->k:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p0, Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 248
    .line 249
    .line 250
    :cond_b
    return-void

    .line 251
    :pswitch_0
    check-cast p0, Lmt3;

    .line 252
    .line 253
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_1
    check-cast p0, Lmt3;

    .line 258
    .line 259
    invoke-interface {p0, p1}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lqv5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    instance-of v0, p1, Les5;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    instance-of v0, p1, Lzt3;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p1, Lzt3;

    .line 20
    .line 21
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_0
    return v1

    .line 30
    :pswitch_0
    instance-of v0, p1, Les5;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    instance-of v0, p1, Lzt3;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p1, Lzt3;

    .line 43
    .line 44
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_1
    return v1

    .line 53
    :pswitch_1
    instance-of v0, p1, Les5;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    instance-of v0, p1, Lzt3;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lzt3;

    .line 66
    .line 67
    invoke-interface {p1}, Lzt3;->a()Lyt3;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_2
    return v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lqv5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :pswitch_0
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    invoke-interface {p0}, Lzt3;->a()Lyt3;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
