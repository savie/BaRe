.class public final Lmh1;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Lil0;

.field public m:Z


# direct methods
.method public constructor <init>(Lil0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lmh1;->l:Lil0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 12

    .line 1
    check-cast p1, Llh1;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lgm7;->m(I)Ljl0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lfi1;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lgm7;->q(Ljl0;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v1, p0, Lmh1;->m:Z

    .line 14
    .line 15
    new-instance v2, Llh;

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-direct {v2, v3, p0, p2, p1}, Llh;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p1, Llh1;->v:Lil0;

    .line 22
    .line 23
    iget-object p2, p2, Lfi1;->a:Lwa1;

    .line 24
    .line 25
    iget-object p1, p1, Llh1;->w:Lyz0;

    .line 26
    .line 27
    iget-object v4, p1, Lyz0;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v4, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 30
    .line 31
    iget-object v5, p1, Lyz0;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Landroid/widget/TextView;

    .line 34
    .line 35
    iget-object v6, p1, Lyz0;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-virtual {v4, v7}, Lcom/google/android/material/card/MaterialCardView;->setCheckable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p1, Lyz0;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lcom/google/android/material/card/MaterialCardView;->setChecked(Z)V

    .line 48
    .line 49
    .line 50
    xor-int/lit8 v8, v1, 0x1

    .line 51
    .line 52
    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    move-object v10, v9

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v10, Lnf;

    .line 61
    .line 62
    const/4 v11, 0x3

    .line 63
    invoke-direct {v10, v2, v11}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    .line 74
    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v9, Lg7;

    .line 79
    .line 80
    const/4 v0, 0x7

    .line 81
    invoke-direct {v9, v2, v0}, Lg7;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p1, Lyz0;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iget-object v1, p2, Lwa1;->d:Lva1;

    .line 92
    .line 93
    sget-object v2, Lkh1;->a:[I

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    aget v1, v2, v1

    .line 100
    .line 101
    if-eq v1, v7, :cond_3

    .line 102
    .line 103
    if-ne v1, v3, :cond_2

    .line 104
    .line 105
    const v1, 0x7f08014a

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-static {}, Lq;->j()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_3
    const v1, 0x7f0800bf

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lyz0;->n:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .line 123
    iget-object v1, p2, Lwa1;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lyz0;->k:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, Landroid/widget/TextView;

    .line 131
    .line 132
    iget-object v0, p2, Lwa1;->d:Lva1;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    aget v0, v2, v0

    .line 139
    .line 140
    if-eq v0, v7, :cond_5

    .line 141
    .line 142
    if-ne v0, v3, :cond_4

    .line 143
    .line 144
    const v0, 0x7f130177

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_4
    invoke-static {}, Lq;->j()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    const v0, 0x7f130176

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v1, Lp93;->a:Lp93;

    .line 160
    .line 161
    iget-wide v1, p2, Lwa1;->e:J

    .line 162
    .line 163
    const-wide/16 v3, 0x0

    .line 164
    .line 165
    cmp-long v6, v1, v3

    .line 166
    .line 167
    if-gez v6, :cond_6

    .line 168
    .line 169
    move-wide v1, v3

    .line 170
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-static {v1}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, " \u00b7 "

    .line 187
    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-wide p1, p2, Lwa1;->g:J

    .line 202
    .line 203
    cmp-long v0, p1, v3

    .line 204
    .line 205
    if-gtz v0, :cond_7

    .line 206
    .line 207
    move-wide p1, v3

    .line 208
    goto :goto_4

    .line 209
    :cond_7
    const-wide v0, 0x174876e800L

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    cmp-long v0, p1, v0

    .line 215
    .line 216
    if-gez v0, :cond_8

    .line 217
    .line 218
    const-wide/16 v0, 0x3e8

    .line 219
    .line 220
    mul-long/2addr p1, v0

    .line 221
    :cond_8
    :goto_4
    cmp-long v0, p1, v3

    .line 222
    .line 223
    if-lez v0, :cond_9

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_9
    const/4 v7, 0x0

    .line 227
    :goto_5
    invoke-static {v5, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 228
    .line 229
    .line 230
    if-lez v0, :cond_a

    .line 231
    .line 232
    invoke-static {p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const p2, 0x7f130179

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    :cond_a
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d0058

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 11

    .line 1
    new-instance p2, Llh1;

    .line 2
    .line 3
    const v0, 0x7f0a014b

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
    check-cast v4, Lorg/swiftapps/swiftbackup/views/MCheckBox;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a01a4

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const v0, 0x7f0a028c

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v5, v1

    .line 34
    check-cast v5, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0a02b6

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    move-object v6, v1

    .line 46
    check-cast v6, Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    const v0, 0x7f0a0563

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v7, v1

    .line 58
    check-cast v7, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v7, :cond_0

    .line 61
    .line 62
    const v0, 0x7f0a05ac

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v8, v1

    .line 70
    check-cast v8, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v8, :cond_0

    .line 73
    .line 74
    const v0, 0x7f0a05ba

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v9, v1

    .line 82
    check-cast v9, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v9, :cond_0

    .line 85
    .line 86
    new-instance v2, Lyz0;

    .line 87
    .line 88
    move-object v3, p1

    .line 89
    check-cast v3, Lcom/google/android/material/listitem/ListItemLayout;

    .line 90
    .line 91
    const/4 v10, 0x1

    .line 92
    invoke-direct/range {v2 .. v10}, Lyz0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lmh1;->l:Lil0;

    .line 96
    .line 97
    invoke-direct {p2, p0, v2}, Llh1;-><init>(Lil0;Lyz0;)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string p1, "Missing required view with ID: "

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/4 p0, 0x0

    .line 119
    return-object p0
.end method
