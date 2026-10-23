.class public final Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Len3;

.field public final N:Lan3;

.field public O:Lhn3;

.field public P:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvf;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p0, v1}, Lvf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lin3;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lwf;

    .line 19
    .line 20
    const/4 v4, 0x5

    .line 21
    invoke-direct {v3, p0, v4}, Lwf;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lj51;

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v4, p0, v5}, Lj51;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->K:Ll90;

    .line 34
    .line 35
    new-instance v0, Ldk;

    .line 36
    .line 37
    const/16 v1, 0x1a

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Ldk;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lgv7;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->L:Lgv7;

    .line 48
    .line 49
    new-instance v0, Len3;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Len3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lb30;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-direct {v1, p0, v2}, Lb30;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lgm7;->j:Lqt3;

    .line 61
    .line 62
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->M:Len3;

    .line 63
    .line 64
    new-instance v0, Lan3;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, v1}, Lgm7;-><init>(Lfm7;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lrs;

    .line 71
    .line 72
    invoke-direct {v1, p0, v5}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lgm7;->j:Lqt3;

    .line 76
    .line 77
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N:Lan3;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lym3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lym3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lin3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lin3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(Lhn3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->P:Landroid/view/Menu;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const v1, 0x7f0a008a

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p1, Lhn3;->b:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-le v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lhn3;->a:Lzn7;

    .line 29
    .line 30
    iget-boolean p1, p1, Lzn7;->b:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const p1, 0x7f08012b

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const p1, 0x7f0801b1

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {p0}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lym3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "extra_initial_folder"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v0, p1, Lq63;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast p1, Lq63;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v1

    .line 32
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Lzn4;->a:Lzn4;

    .line 37
    .line 38
    new-instance v2, Lo20;

    .line 39
    .line 40
    const/16 v3, 0x9

    .line 41
    .line 42
    invoke-direct {v2, v3, v0, p1}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lzn4;->c(Lbt3;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Lym3;->f:Lix0;

    .line 53
    .line 54
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Lym3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    const/4 v0, 0x7

    .line 78
    invoke-static {p1, v0}, Lsz8;->b(Landroid/view/View;I)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N:Lan3;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->N()Lym3;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p1, p1, Lym3;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    new-instance v0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-direct {v0, p0, v2}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->M:Len3;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lck;

    .line 121
    .line 122
    const/16 v0, 0x16

    .line 123
    .line 124
    invoke-direct {p1, p0, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v2, p1}, Lil0;->L(ZLbt3;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p1, p1, Lin3;->h:Lex6;

    .line 135
    .line 136
    new-instance v0, Lcj2;

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    const/4 v7, 0x2

    .line 140
    const/4 v1, 0x1

    .line 141
    const-class v3, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 142
    .line 143
    const-string v4, "onLoadingChange"

    .line 144
    .line 145
    const-string v5, "onLoadingChange(Z)V"

    .line 146
    .line 147
    move-object v2, p0

    .line 148
    invoke-direct/range {v0 .. v7}, Lcj2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    new-instance p0, Ltf;

    .line 152
    .line 153
    const/4 v1, 0x2

    .line 154
    invoke-direct {p0, v1, v0}, Ltf;-><init>(ILmt3;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    iget-object p0, p0, Lin3;->i:Lex6;

    .line 165
    .line 166
    new-instance p1, Lc7;

    .line 167
    .line 168
    const/16 v0, 0x11

    .line 169
    .line 170
    invoke-direct {p1, v2, v0}, Lc7;-><init>(Ljava/lang/Object;I)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Ltf;

    .line 174
    .line 175
    invoke-direct {v0, v1, p1}, Ltf;-><init>(ILmt3;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v2, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    iget-object p0, p0, Lin3;->k:Lix6;

    .line 186
    .line 187
    new-instance p1, Le7;

    .line 188
    .line 189
    const/16 v0, 0xe

    .line 190
    .line 191
    invoke-direct {p1, v2, v0}, Le7;-><init>(Ljava/lang/Object;I)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Ltf;

    .line 195
    .line 196
    invoke-direct {v0, v1, p1}, Ltf;-><init>(ILmt3;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v2, v0}, Lix6;->e(Lfu4;Les5;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    iget-object p0, p0, Lin3;->j:Lix6;

    .line 207
    .line 208
    new-instance p1, Lk3;

    .line 209
    .line 210
    const/16 v0, 0xd

    .line 211
    .line 212
    invoke-direct {p1, v2, v0}, Lk3;-><init>(Ljava/lang/Object;I)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Ltf;

    .line 216
    .line 217
    invoke-direct {v0, v1, p1}, Ltf;-><init>(ILmt3;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v2, v0}, Lix6;->e(Lfu4;Les5;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lzm;->getMenuInflater()Landroid/view/MenuInflater;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0f0019

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->P:Landroid/view/Menu;

    .line 15
    .line 16
    const v0, 0x7f0a008a

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O:Lhn3;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->P(Lhn3;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

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
    const v1, 0x7f0a008a

    .line 9
    .line 10
    .line 11
    const v2, 0x7f140160

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O:Lhn3;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v0, p1, Lhn3;->b:Ljava/util/List;

    .line 24
    .line 25
    iget-object p1, p1, Lhn3;->a:Lzn7;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    new-instance v1, Lhv1;

    .line 32
    .line 33
    invoke-direct {v1, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Ls35;

    .line 37
    .line 38
    invoke-direct {v6, p0, v2, v1, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f1304e4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v1}, Lv75;->v(I)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    const/16 v2, 0xa

    .line 50
    .line 51
    invoke-static {v0, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lzn7;

    .line 73
    .line 74
    invoke-virtual {v3}, Lzn7;->u()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, [Ljava/lang/CharSequence;

    .line 89
    .line 90
    new-instance v2, Lxm3;

    .line 91
    .line 92
    invoke-direct {v2, p0, v0}, Lxm3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v1, p1, v2}, Lv75;->u([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 99
    .line 100
    .line 101
    return v4

    .line 102
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const v1, 0x7f0a0074

    .line 107
    .line 108
    .line 109
    if-ne v0, v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const v0, 0x7f0d00b4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const v0, 0x7f0a0212

    .line 123
    .line 124
    .line 125
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    const v0, 0x7f0a04ca

    .line 134
    .line 135
    .line 136
    invoke-static {p1, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    .line 141
    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    check-cast p1, Landroid/widget/FrameLayout;

    .line 145
    .line 146
    new-instance v0, Lhv1;

    .line 147
    .line 148
    invoke-direct {v0, p0, v2}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 149
    .line 150
    .line 151
    new-instance v6, Ls35;

    .line 152
    .line 153
    invoke-direct {v6, p0, v2, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 154
    .line 155
    .line 156
    const v0, 0x7f1303b3

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v0}, Lv75;->v(I)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lwm3;

    .line 163
    .line 164
    invoke-direct {v0, v5, p0, v1}, Lwm3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const p0, 0x7f1301ca

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, p0, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    const p0, 0x7f1300f1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, p0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object p0, v6, Lva;->b:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p0, Lra;

    .line 182
    .line 183
    iput-object p1, p0, Lra;->s:Landroid/view/View;

    .line 184
    .line 185
    invoke-virtual {v6}, Ls35;->m()Lwa;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-nez p0, :cond_3

    .line 190
    .line 191
    :cond_2
    return v4

    .line 192
    :cond_3
    const/4 p1, -0x1

    .line 193
    invoke-virtual {p0, p1}, Lwa;->f(I)Landroid/widget/Button;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lp52;

    .line 201
    .line 202
    invoke-direct {p1, p0, v4}, Lp52;-><init>(Ljava/lang/Object;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    .line 207
    .line 208
    return v4

    .line 209
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    const-string p1, "Missing required view with ID: "

    .line 218
    .line 219
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    return v5

    .line 227
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    const v1, 0x102002c

    .line 232
    .line 233
    .line 234
    if-ne v0, v1, :cond_6

    .line 235
    .line 236
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 240
    .line 241
    .line 242
    return v4

    .line 243
    :cond_6
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    return p0
.end method
