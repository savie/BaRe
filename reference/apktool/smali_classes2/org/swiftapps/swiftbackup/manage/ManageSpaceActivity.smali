.class public final Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic O:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbk;

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lgv7;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->K:Lgv7;

    .line 17
    .line 18
    new-instance v0, Ln55;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lgv7;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->L:Lgv7;

    .line 30
    .line 31
    new-instance v0, Lu14;

    .line 32
    .line 33
    const/4 v1, 0x4

    .line 34
    invoke-direct {v0, p0, v1}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lgv7;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->M:Lgv7;

    .line 43
    .line 44
    new-instance v0, Lfl;

    .line 45
    .line 46
    const/16 v1, 0xa

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lfl;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lgv7;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N:Lgv7;

    .line 57
    .line 58
    return-void
.end method

.method public static final N(Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;Lry5;Z)Lu55;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lp93;->a:Lp93;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v3, v1, Lry5;->h:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v3, v1, Lry5;->g:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v2, v3}, Lp93;->f(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object v5, v1, Lry5;->k:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object v5, v1, Lry5;->j:Ljava/lang/String;

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v2, v5}, Lp93;->f(Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget-object v7, v1, Lry5;->m:Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget-object v7, v1, Lry5;->l:Ljava/lang/String;

    .line 35
    .line 36
    :goto_2
    invoke-virtual {v2, v7}, Lp93;->f(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object v9, v1, Lry5;->t:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    iget-object v9, v1, Lry5;->s:Ljava/lang/String;

    .line 46
    .line 47
    :goto_3
    invoke-virtual {v2, v9}, Lp93;->f(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    iget-object v11, v1, Lry5;->r:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_4
    iget-object v11, v1, Lry5;->q:Ljava/lang/String;

    .line 57
    .line 58
    :goto_4
    invoke-virtual {v2, v11}, Lp93;->f(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v11

    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    iget-object v1, v1, Lry5;->o:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    iget-object v1, v1, Lry5;->n:Ljava/lang/String;

    .line 68
    .line 69
    :goto_5
    invoke-virtual {v2, v1}, Lp93;->f(Ljava/lang/String;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    add-long v13, v3, v5

    .line 74
    .line 75
    add-long/2addr v13, v7

    .line 76
    add-long/2addr v13, v9

    .line 77
    add-long/2addr v13, v11

    .line 78
    add-long/2addr v13, v1

    .line 79
    if-eqz p2, :cond_6

    .line 80
    .line 81
    const v15, 0x7f1301ee

    .line 82
    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_6
    const v15, 0x7f1301e7

    .line 86
    .line 87
    .line 88
    :goto_6
    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-wide/from16 v16, v1

    .line 96
    .line 97
    const v1, 0x7f130079

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const v3, 0x7f130348

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v4}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const v5, 0x7f1300f0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-static {v6}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const v7, 0x7f130281

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-static {v8}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const v9, 0x7f1305a3

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-static {v10}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    const v11, 0x7f1305b2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    invoke-static {v11}, Lp93;->c(Ljava/lang/Long;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    new-instance v12, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v15, "\n"

    .line 196
    .line 197
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ": "

    .line 204
    .line 205
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-static {v12, v15, v3, v1, v4}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v12, v15, v5, v1, v6}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v12, v15, v7, v1, v8}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v12, v15, v9, v1, v10}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v12, v15, v0, v1, v11}, Leq3;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v20

    .line 227
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 228
    .line 229
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz p2, :cond_7

    .line 234
    .line 235
    const v1, 0x7f1301ed

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_7
    const v1, 0x7f1301e6

    .line 240
    .line 241
    .line 242
    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v18

    .line 246
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v19

    .line 250
    xor-int/lit8 v21, p2, 0x1

    .line 251
    .line 252
    new-instance v16, Lu55;

    .line 253
    .line 254
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const/16 v22, 0x0

    .line 258
    .line 259
    move/from16 v17, p2

    .line 260
    .line 261
    invoke-direct/range {v16 .. v22}, Lu55;-><init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 262
    .line 263
    .line 264
    return-object v16
.end method


# virtual methods
.method public final F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->K:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lr55;

    .line 11
    .line 12
    iget-object v0, v0, Lr55;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lil0;->K(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lr55;

    .line 29
    .line 30
    iget-object p1, p1, Lr55;->b:Lw00;

    .line 31
    .line 32
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lix0;

    .line 35
    .line 36
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->M:Lgv7;

    .line 54
    .line 55
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    const/4 v2, 0x7

    .line 62
    invoke-static {v1, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    new-instance v2, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 72
    .line 73
    invoke-direct {v2, p0, v0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    .line 85
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->N:Lgv7;

    .line 86
    .line 87
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lt55;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/manage/ManageSpaceActivity;->L:Lgv7;

    .line 97
    .line 98
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 103
    .line 104
    invoke-static {v0}, Lsz8;->c0(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    invoke-static {p1}, Lsz8;->W(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lry5;->u:Ljava/lang/String;

    .line 117
    .line 118
    new-instance p1, Lpx;

    .line 119
    .line 120
    const/16 v0, 0xb

    .line 121
    .line 122
    invoke-direct {p1, p0, v0}, Lpx;-><init>(Ljava/lang/Object;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lqy5;->a(Lmt3;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
