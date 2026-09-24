.class public final Lsi;
.super Lvi;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final A:Landroid/widget/ImageView;

.field public final B:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

.field public final synthetic C:Lwi;

.field public final u:Landroid/view/View;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/view/View;

.field public final y:Landroid/widget/ImageView;

.field public final z:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;


# direct methods
.method public constructor <init>(Lwi;Landroid/view/View;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lsi;->C:Lwi;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lfh6;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lfh6;->o(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a015f

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const p1, 0x7f0a01a4

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const p1, 0x7f0a01e0

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const p1, 0x7f0a0270

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    const p1, 0x7f0a0271

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    const p1, 0x7f0a0400

    .line 62
    .line 63
    .line 64
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 69
    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    const p1, 0x7f0a0495

    .line 73
    .line 74
    .line 75
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 80
    .line 81
    if-eqz v5, :cond_0

    .line 82
    .line 83
    const p1, 0x7f0a05ac

    .line 84
    .line 85
    .line 86
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v6, :cond_0

    .line 93
    .line 94
    const p1, 0x7f0a05ba

    .line 95
    .line 96
    .line 97
    invoke-static {p2, p1}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v7, :cond_0

    .line 104
    .line 105
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 106
    .line 107
    iput-object v0, p0, Lsi;->u:Landroid/view/View;

    .line 108
    .line 109
    iput-object v7, p0, Lsi;->v:Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object v6, p0, Lsi;->w:Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v1, p0, Lsi;->x:Landroid/view/View;

    .line 114
    .line 115
    iput-object v2, p0, Lsi;->y:Landroid/widget/ImageView;

    .line 116
    .line 117
    iput-object v4, p0, Lsi;->z:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 118
    .line 119
    iput-object v3, p0, Lsi;->A:Landroid/widget/ImageView;

    .line 120
    .line 121
    iput-object v5, p0, Lsi;->B:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 122
    .line 123
    return-void

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    const-string p1, "Missing required view with ID: "

    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 p0, 0x0

    .line 142
    throw p0
.end method


# virtual methods
.method public final r(Lpi;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Lki;

    .line 6
    .line 7
    iget-object v1, v0, Lki;->g:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v2, v0, Lki;->d:Lqt3;

    .line 10
    .line 11
    iget-object v3, v0, Lki;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, p0, Lfh6;->a:Landroid/view/View;

    .line 14
    .line 15
    const/high16 v5, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lsi;->x:Landroid/view/View;

    .line 21
    .line 22
    iget-boolean v5, v0, Lki;->k:Z

    .line 23
    .line 24
    invoke-static {v4, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 25
    .line 26
    .line 27
    iget-object v4, v0, Lki;->b:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p0, Lsi;->v:Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lsi;->C:Lwi;

    .line 35
    .line 36
    iget-object v6, v4, Lwi;->f:Lk28;

    .line 37
    .line 38
    invoke-static {v6}, Lsz8;->z(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    invoke-static {v7}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    const/4 v7, 0x0

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v8, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    move v8, v5

    .line 63
    :goto_1
    xor-int/2addr v8, v5

    .line 64
    iget-object v9, p0, Lsi;->w:Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-static {v9, v8}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 67
    .line 68
    .line 69
    invoke-static {v9}, Lsz8;->I(Landroid/view/View;)Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    .line 75
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget v3, v0, Lki;->e:I

    .line 79
    .line 80
    iget-object v8, p0, Lsi;->y:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lki;->f:Ljava/lang/Integer;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v3}, Landroid/content/Context;->getColor(I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-static {v9, v3}, Lio4;->c(Landroid/content/Context;I)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Lsz8;->A(Landroid/content/Context;)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-static {v3}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_2
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 129
    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    move v3, v5

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move v3, v7

    .line 136
    :goto_3
    iget-object v8, p0, Lsi;->z:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 137
    .line 138
    invoke-static {v8, v3}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 139
    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {v6}, Lk28;->v()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-interface {v2, v8, v3}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_5
    if-eqz v1, :cond_6

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    move v5, v7

    .line 158
    :goto_4
    iget-object v2, p0, Lsi;->A:Landroid/widget/ImageView;

    .line 159
    .line 160
    invoke-static {v2, v5}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lsz8;->I(Landroid/view/View;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    const/4 v5, 0x0

    .line 168
    if-eqz v3, :cond_a

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lki;->h:Ljava/lang/Integer;

    .line 181
    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v6, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-nez v1, :cond_8

    .line 193
    .line 194
    :cond_7
    invoke-static {v6}, Lsz8;->A(Landroid/content/Context;)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    invoke-static {v1}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :cond_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v4, Lwi;->g:Lhj;

    .line 206
    .line 207
    if-eqz v1, :cond_9

    .line 208
    .line 209
    new-instance v1, Lqi;

    .line 210
    .line 211
    invoke-direct {v1, v7, v4, p1}, Lqi;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_9
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    .line 220
    .line 221
    :cond_a
    :goto_5
    iget-object v1, p0, Lsi;->B:Lorg/swiftapps/swiftbackup/views/SwiftBackupMaterialSwitch;

    .line 222
    .line 223
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 227
    .line 228
    .line 229
    iget-boolean v2, v0, Lki;->i:Z

    .line 230
    .line 231
    invoke-static {v1, v2}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, Lsz8;->I(Landroid/view/View;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_b

    .line 239
    .line 240
    iget-object v0, v0, Lki;->j:Ljava/lang/Boolean;

    .line 241
    .line 242
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-static {v0, v2}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 249
    .line 250
    .line 251
    :cond_b
    new-instance v0, Lri;

    .line 252
    .line 253
    invoke-direct {v0, v4, p2, v7, p1}, Lri;-><init>(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iget-object p0, p0, Lsi;->u:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method
