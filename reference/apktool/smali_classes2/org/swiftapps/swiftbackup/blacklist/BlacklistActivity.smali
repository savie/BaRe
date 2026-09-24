.class public final Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;

.field public O:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq30;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lq30;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Ll90;

    .line 11
    .line 12
    const-class v3, Lrs0;

    .line 13
    .line 14
    invoke-static {v3}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lgl0;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v4, p0, v5}, Lgl0;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Luf;

    .line 25
    .line 26
    invoke-direct {v5, p0, v1}, Luf;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3, v4, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->K:Ll90;

    .line 33
    .line 34
    new-instance v0, Lkf;

    .line 35
    .line 36
    const/16 v1, 0xc

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lkf;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->L:Lgv7;

    .line 47
    .line 48
    new-instance v0, Llf;

    .line 49
    .line 50
    const/16 v1, 0xa

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Llf;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v2, Lgv7;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->M:Lgv7;

    .line 61
    .line 62
    new-instance v0, Lej;

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Lej;-><init>(Ljava/lang/Object;I)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lgv7;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N:Lgv7;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Lqr0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->L:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqr0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lrs0;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lrs0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lqr0;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lqr0;->b:Lw00;

    .line 18
    .line 19
    iget-object p1, p1, Lw00;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lix0;

    .line 22
    .line 23
    iget-object p1, p1, Lix0;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p1, v0}, Lnc8;->Z(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N:Lgv7;

    .line 41
    .line 42
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    const/4 v1, 0x7

    .line 49
    invoke-static {v0, v1}, Lsz8;->b(Landroid/view/View;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    new-instance v1, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->M:Lgv7;

    .line 73
    .line 74
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lbs0;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lqr0;->c:Lzx2;

    .line 88
    .line 89
    iget-object p1, p1, Lzx2;->d:Landroid/widget/ImageView;

    .line 90
    .line 91
    const v0, 0x7f0801c0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object p1, p1, Lqr0;->c:Lzx2;

    .line 102
    .line 103
    iget-object p1, p1, Lzx2;->e:Landroid/widget/TextView;

    .line 104
    .line 105
    const v0, 0x7f1300c9

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lqr0;->c:Lzx2;

    .line 116
    .line 117
    iget-object p1, p1, Lzx2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 118
    .line 119
    const v0, 0x7f08019f

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 123
    .line 124
    .line 125
    const v0, 0x7f130027

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lmf;

    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    invoke-direct {v0, p0, v1}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->N()Lqr0;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, Lqr0;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 145
    .line 146
    invoke-static {p1}, Lsz8;->a(Landroid/view/View;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Lnf;

    .line 150
    .line 151
    const/4 v2, 0x2

    .line 152
    invoke-direct {v0, p0, v2}, Lnf;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iget-object p1, p1, Lrs0;->f:Lu95;

    .line 163
    .line 164
    new-instance v0, Lhj;

    .line 165
    .line 166
    const/4 v2, 0x4

    .line 167
    invoke-direct {v0, p0, v2}, Lhj;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    new-instance v2, Lur0;

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    invoke-direct {v2, v3, v0}, Lur0;-><init>(ILmt3;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p0, v2}, Lzy4;->e(Lfu4;Les5;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->O()Lrs0;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p1, p1, Lrs0;->g:Lix6;

    .line 184
    .line 185
    new-instance v0, Lox;

    .line 186
    .line 187
    invoke-direct {v0, p0, v1}, Lox;-><init>(Ljava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lur0;

    .line 191
    .line 192
    invoke-direct {v1, v3, v0}, Lur0;-><init>(ILmt3;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 196
    .line 197
    .line 198
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
    const v1, 0x7f0f0007

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->M:Lgv7;

    .line 15
    .line 16
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lbs0;

    .line 21
    .line 22
    iget-object v0, v0, Lgm7;->e:Lfm7;

    .line 23
    .line 24
    iget-object v0, v0, Lfm7;->a:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const v0, 0x7f0a004a

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

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
    const v1, 0x7f0a004a

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/blacklist/BlacklistActivity;->M:Lgv7;

    .line 14
    .line 15
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lbs0;

    .line 20
    .line 21
    invoke-virtual {v0}, Lgm7;->b()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_0
    new-instance v0, Lhv1;

    .line 33
    .line 34
    const v1, 0x7f140160

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Ls35;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v2, p0, v1, v0, v3}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f1300fe

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Lv75;->v(I)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f13054e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lv75;->n(I)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lrr0;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f1305d0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    const v0, 0x7f1303ba

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0, v3}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ls35;->m()Lwa;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method
