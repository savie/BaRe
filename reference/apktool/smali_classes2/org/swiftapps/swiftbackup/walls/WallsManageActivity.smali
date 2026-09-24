.class public final Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;
.super Loo8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic S:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public R:Lmo8;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo30;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lo30;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Ltp8;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lp30;

    .line 20
    .line 21
    const/16 v4, 0xa

    .line 22
    .line 23
    invoke-direct {v3, p0, v4}, Lp30;-><init>(Lil0;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lq30;

    .line 27
    .line 28
    invoke-direct {v5, p0, v4}, Lq30;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->P:Ll90;

    .line 35
    .line 36
    new-instance v0, Lyi5;

    .line 37
    .line 38
    invoke-direct {v0, p0, v4}, Lyi5;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lgv7;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Q:Lgv7;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final bridge synthetic V()Lpo8;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final X()Ltp8;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ltp8;

    .line 8
    .line 9
    return-object p0
.end method

.method public final Y(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Lgm7;->l()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0xe

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const p1, 0x7f1304e3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lzn4;->a:Lzn4;

    .line 29
    .line 30
    new-instance v0, Lcv;

    .line 31
    .line 32
    invoke-direct {v0, v3, p0, p1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const v2, 0x7f0a0054

    .line 40
    .line 41
    .line 42
    if-ne p1, v2, :cond_1

    .line 43
    .line 44
    new-instance p1, Ly2;

    .line 45
    .line 46
    const/16 v2, 0x11

    .line 47
    .line 48
    invoke-direct {p1, v2, p0, v0}, Ly2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f1301e5

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0, p1, v1}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const v2, 0x7f0a005d

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne p1, v2, :cond_2

    .line 63
    .line 64
    new-instance p1, Lo20;

    .line 65
    .line 66
    invoke-direct {p1, v3, p0, v0}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v1, p1, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    const v2, 0x7f0a008c

    .line 74
    .line 75
    .line 76
    if-ne p1, v2, :cond_3

    .line 77
    .line 78
    new-instance p1, Lxq;

    .line 79
    .line 80
    invoke-direct {p1, p0, v0}, Lxq;-><init>(Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v1, p1, v4}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void

    .line 87
    :cond_4
    const-string p0, "mAdapter"

    .line 88
    .line 89
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1
.end method

.method public final Z(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const p0, 0x7f13010b

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p0, 0x7f1301fc

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Lnc8;->e0(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    const-string v1, "mAdapter"

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lgm7;->k()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Lgm7;->b()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 p1, 0x2

    .line 54
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "%s/%s"

    .line 59
    .line 60
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Lnc8;->f0(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_3
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Q:Lgv7;

    .line 5
    .line 6
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lrp8;

    .line 11
    .line 12
    iget-object v0, v0, Lrp8;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "EXTRA_CLOUD_MODE"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-boolean v2, v0, Ltp8;->g:Z

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iput-boolean v5, v0, Ltp8;->g:Z

    .line 40
    .line 41
    iput-boolean v1, v0, Ltp8;->h:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    sget-object v1, Lxj1;->g:Lxj1;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lc05;->g:Lc05;

    .line 49
    .line 50
    :goto_0
    iput-object v1, v0, Ltp8;->i:Ldv;

    .line 51
    .line 52
    const-string v2, "repo"

    .line 53
    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    iget-object v6, v0, Ltp8;->j:Lsp8;

    .line 57
    .line 58
    invoke-virtual {v1, v6}, Ldv;->p(Lgk6;)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Lsp8;

    .line 62
    .line 63
    invoke-direct {v9, v0}, Lsp8;-><init>(Ltp8;)V

    .line 64
    .line 65
    .line 66
    iput-object v9, v0, Ltp8;->j:Lsp8;

    .line 67
    .line 68
    iget-object v7, v0, Ltp8;->i:Ldv;

    .line 69
    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    const/16 v12, 0xc

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-static/range {v7 .. v12}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 78
    .line 79
    .line 80
    :goto_1
    new-instance v0, Lto5;

    .line 81
    .line 82
    const/16 v1, 0xc

    .line 83
    .line 84
    invoke-direct {v0, p0, v1}, Lto5;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3, v0}, Lil0;->L(ZLbt3;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lrp8;

    .line 95
    .line 96
    iget-object v0, v0, Lrp8;->b:Lw00;

    .line 97
    .line 98
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lix0;

    .line 101
    .line 102
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0, v5}, Lnc8;->Z(Z)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lrp8;

    .line 123
    .line 124
    iget-object v0, v0, Lrp8;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 125
    .line 126
    const/4 v1, 0x7

    .line 127
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lrp8;

    .line 135
    .line 136
    iget-object v0, v0, Lrp8;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 137
    .line 138
    const/4 v2, 0x4

    .line 139
    invoke-virtual {v0, v2}, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;->setGridLayoutManager(I)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lmo8;

    .line 143
    .line 144
    invoke-direct {v0, p0, v5}, Lmo8;-><init>(Loo8;Z)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Le7;

    .line 148
    .line 149
    const/16 v6, 0x1c

    .line 150
    .line 151
    invoke-direct {v2, p0, v6}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 152
    .line 153
    .line 154
    iput-object v2, v0, Lgm7;->h:Le7;

    .line 155
    .line 156
    new-instance v2, Lf7;

    .line 157
    .line 158
    invoke-direct {v2, p0, v1}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v0, Lgm7;->g:Lqt3;

    .line 162
    .line 163
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 164
    .line 165
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lrp8;

    .line 170
    .line 171
    iget-object p1, p1, Lrp8;->c:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 172
    .line 173
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-boolean p1, p1, Ltp8;->h:Z

    .line 185
    .line 186
    invoke-virtual {p0, p1, v3}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Z(ZZ)V

    .line 187
    .line 188
    .line 189
    invoke-super {p0}, Loo8;->W()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Ltp8;->k:Lex6;

    .line 197
    .line 198
    new-instance v0, Lqp8;

    .line 199
    .line 200
    invoke-direct {v0, p0, v3}, Lqp8;-><init>(Lil0;I)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lqv5;

    .line 204
    .line 205
    invoke-direct {v1, v0, v5}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iget-object p1, p1, Ltp8;->l:Lix6;

    .line 216
    .line 217
    new-instance v0, Lox;

    .line 218
    .line 219
    const/16 v1, 0x19

    .line 220
    .line 221
    invoke-direct {v0, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Lqv5;

    .line 225
    .line 226
    invoke-direct {v1, v0, v5}, Lqv5;-><init>(Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_3
    const-string p0, "mAdapter"

    .line 234
    .line 235
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v4

    .line 239
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v4

    .line 243
    :cond_5
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v4
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 9
    .line 10
    iget-boolean v0, v0, Lfm7;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x7f0f002e

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a005d

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-boolean v1, v1, Ltp8;->h:Z

    .line 36
    .line 37
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a008c

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-boolean v1, v1, Ltp8;->h:Z

    .line 52
    .line 53
    xor-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0a0054

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0

    .line 96
    :cond_1
    const-string p0, "mAdapter"

    .line 97
    .line 98
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p0, 0x0

    .line 102
    throw p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f0a0081

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lgm7;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    xor-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lgm7;->s(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "mAdapter"

    .line 28
    .line 29
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_1
    const v1, 0x7f0a0054

    .line 35
    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Y(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const v1, 0x7f0a005d

    .line 44
    .line 45
    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Y(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const v1, 0x7f0a008c

    .line 53
    .line 54
    .line 55
    if-ne v0, v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->Y(I)V

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lsa1;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->R:Lmo8;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lgm7;->e:Lfm7;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/walls/WallsManageActivity;->X()Ltp8;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Ltp8;->k:Lex6;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "mAdapter"

    .line 24
    .line 25
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method
