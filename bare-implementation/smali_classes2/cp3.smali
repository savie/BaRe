.class public final Lcp3;
.super Lgm7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final l:Z

.field public final m:Z

.field public n:Ljp3;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    :cond_0
    invoke-direct {p0, v0, v1}, Lcp3;-><init>(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lgm7;-><init>(Lfm7;)V

    .line 12
    iput-boolean p1, p0, Lcp3;->l:Z

    .line 13
    iput-boolean p2, p0, Lcp3;->m:Z

    return-void
.end method


# virtual methods
.method public final h(Lfh6;I)V
    .locals 17

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lbp3;

    .line 6
    .line 7
    move-object/from16 v2, p0

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lgm7;->m(I)Ljl0;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lzk3;

    .line 14
    .line 15
    iget-object v3, v1, Lbp3;->D:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v4, v1, Lfh6;->a:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v5, v1, Lbp3;->x:Landroid/widget/TextView;

    .line 27
    .line 28
    iget v6, v1, Lbp3;->E:I

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v7, v2, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 34
    .line 35
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSourceFolder()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object v5, v1, Lbp3;->y:Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v1, Lbp3;->z:Landroid/widget/TextView;

    .line 52
    .line 53
    iget-object v8, v1, Lbp3;->F:Lcp3;

    .line 54
    .line 55
    iget-boolean v9, v8, Lcp3;->m:Z

    .line 56
    .line 57
    const-string v10, ": "

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    if-eqz v9, :cond_0

    .line 61
    .line 62
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-static {v5}, Lsz8;->c0(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget-wide v12, v2, Lzk3;->b:J

    .line 70
    .line 71
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v14

    .line 75
    const-wide/16 v15, 0x0

    .line 76
    .line 77
    cmp-long v12, v12, v15

    .line 78
    .line 79
    if-lez v12, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v14, v11

    .line 83
    :goto_0
    if-eqz v14, :cond_2

    .line 84
    .line 85
    const v12, 0x7f1302e7

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v13

    .line 96
    invoke-static {v13, v14}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    new-instance v14, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lsz8;->w(Landroid/content/Context;)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    const v12, 0x7f1303be

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v5, v1, Lbp3;->A:Landroid/widget/TextView;

    .line 143
    .line 144
    if-eqz v9, :cond_3

    .line 145
    .line 146
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    invoke-static {}, Lzm5;->q()Lpw5;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    iget-object v9, v9, Lpw5;->a:Ljava/lang/Object;

    .line 155
    .line 156
    sget-object v12, Lxk3;->SetupDate:Lxk3;

    .line 157
    .line 158
    if-ne v9, v12, :cond_4

    .line 159
    .line 160
    invoke-static {v5}, Lsz8;->c0(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getSetupCreationTime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v6

    .line 170
    const v9, 0x7f13027e

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v6, v7}, Lorg/swiftapps/swiftbackup/common/Const;->s(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_4
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 207
    .line 208
    .line 209
    :goto_2
    iget-object v4, v8, Lcp3;->n:Ljp3;

    .line 210
    .line 211
    iget-object v5, v1, Lbp3;->C:Landroid/widget/ImageView;

    .line 212
    .line 213
    const/4 v6, 0x1

    .line 214
    if-eqz v4, :cond_5

    .line 215
    .line 216
    invoke-static {v5}, Lsz8;->c0(Landroid/view/View;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v3}, Lsz8;->c0(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    new-instance v5, Ljr;

    .line 223
    .line 224
    invoke-direct {v5, v4, v1, v2, v6}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljl0;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    invoke-static {v5}, Lsz8;->W(Landroid/view/View;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v3}, Lsz8;->W(Landroid/view/View;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    :goto_3
    invoke-virtual {v1, v2}, Lbp3;->s(Lzk3;)V

    .line 241
    .line 242
    .line 243
    iget-boolean v3, v8, Lcp3;->l:Z

    .line 244
    .line 245
    iget-object v4, v1, Lbp3;->w:Landroid/view/View;

    .line 246
    .line 247
    if-eqz v3, :cond_6

    .line 248
    .line 249
    new-instance v0, Lcn3;

    .line 250
    .line 251
    invoke-direct {v0, v6, v1, v8, v2}, Lcn3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_6
    new-instance v1, Lap3;

    .line 259
    .line 260
    invoke-direct {v1, v8, v2, v0}, Lap3;-><init>(Lcp3;Lzk3;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public final n(I)I
    .locals 0

    .line 1
    const p0, 0x7f0d00bc

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final o(Landroid/view/View;I)Lfh6;
    .locals 13

    .line 1
    new-instance p2, Lbp3;

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
    const v0, 0x7f0a015f

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    move-object v3, p1

    .line 25
    check-cast v3, Lcom/google/android/material/listitem/ListItemLayout;

    .line 26
    .line 27
    const v0, 0x7f0a01a6

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const v0, 0x7f0a0270

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const v0, 0x7f0a028c

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
    check-cast v6, Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const v0, 0x7f0a02bd

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v7, v1

    .line 69
    check-cast v7, Landroid/widget/ImageView;

    .line 70
    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    const v0, 0x7f0a02be

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    const v0, 0x7f0a0466

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/Space;

    .line 90
    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    const v0, 0x7f0a0468

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/Space;

    .line 101
    .line 102
    if-eqz v1, :cond_0

    .line 103
    .line 104
    const v0, 0x7f0a05ad

    .line 105
    .line 106
    .line 107
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object v9, v1

    .line 112
    check-cast v9, Landroid/widget/TextView;

    .line 113
    .line 114
    if-eqz v9, :cond_0

    .line 115
    .line 116
    const v0, 0x7f0a05ae

    .line 117
    .line 118
    .line 119
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v10, v1

    .line 124
    check-cast v10, Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v10, :cond_0

    .line 127
    .line 128
    const v0, 0x7f0a05af

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object v11, v1

    .line 136
    check-cast v11, Landroid/widget/TextView;

    .line 137
    .line 138
    if-eqz v11, :cond_0

    .line 139
    .line 140
    const v0, 0x7f0a05ba

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    move-object v12, v1

    .line 148
    check-cast v12, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v12, :cond_0

    .line 151
    .line 152
    new-instance v2, Lop3;

    .line 153
    .line 154
    invoke-direct/range {v2 .. v12}, Lop3;-><init>(Lcom/google/android/material/listitem/ListItemLayout;Lorg/swiftapps/swiftbackup/views/MCheckBox;Landroid/view/View;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p2, p0, v2}, Lbp3;-><init>(Lcp3;Lop3;)V

    .line 158
    .line 159
    .line 160
    return-object p2

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string p1, "Missing required view with ID: "

    .line 170
    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    return-object p0
.end method
