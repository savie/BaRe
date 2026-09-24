.class public final Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic V:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lgv7;

.field public final T:Lgv7;

.field public final U:Lt9;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsa1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwf;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, p0, v1}, Lwf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lmr1;

    .line 13
    .line 14
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lj51;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-direct {v3, p0, v4}, Lj51;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lf20;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-direct {v4, p0, v5}, Lf20;-><init>(Lil0;I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->P:Ll90;

    .line 34
    .line 35
    new-instance v0, Lek;

    .line 36
    .line 37
    const/16 v1, 0x13

    .line 38
    .line 39
    invoke-direct {v0, p0, v1}, Lek;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->Q:Lgv7;

    .line 48
    .line 49
    new-instance v0, Lah;

    .line 50
    .line 51
    const/16 v1, 0x12

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Lah;-><init>(Ljava/lang/Object;I)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lgv7;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->R:Lgv7;

    .line 62
    .line 63
    new-instance v0, Lbh;

    .line 64
    .line 65
    const/16 v1, 0xf

    .line 66
    .line 67
    invoke-direct {v0, p0, v1}, Lbh;-><init>(Ljava/lang/Object;I)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lgv7;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->S:Lgv7;

    .line 76
    .line 77
    new-instance v0, Ld76;

    .line 78
    .line 79
    const/16 v1, 0x10

    .line 80
    .line 81
    invoke-direct {v0, p0, v1}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lgv7;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->T:Lgv7;

    .line 90
    .line 91
    new-instance v0, Lt37;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Ler1;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Ler1;-><init>(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1, v0}, Lio1;->registerForActivityResult(Lh9;Lj9;)Lo9;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lt9;

    .line 106
    .line 107
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U:Lt9;

    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final U()Lmr1;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmr1;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->Q:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lfr1;

    .line 11
    .line 12
    iget-object v1, v1, Lfr1;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lmp6;->a:Lmp6;

    .line 18
    .line 19
    invoke-static {}, Lmp6;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    sget-object p1, Lzn4;->a:Lzn4;

    .line 38
    .line 39
    new-instance p1, Lb56;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p1, p0, v0}, Lb56;-><init>(Lk28;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lzn4;->e(Lbt3;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->R:Lgv7;

    .line 57
    .line 58
    invoke-virtual {v3}, Lgv7;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    iget-boolean v4, v2, Lmr1;->e:Z

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iput-boolean v5, v2, Lmr1;->e:Z

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Lmr1;->k(Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigSettings;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getVp()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    sget-object v1, Lre3;->a:Lzc2;

    .line 85
    .line 86
    iget-object v1, v2, La55;->b:Ljava/lang/String;

    .line 87
    .line 88
    sget-object v2, Lbr1;->e:Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/swiftapps/swiftbackup/appconfigs/data/ConfigsData;->getSize()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const/4 v2, 0x0

    .line 98
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v4, "configs="

    .line 101
    .line 102
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Lqe3;

    .line 113
    .line 114
    invoke-direct {v3, v1, v2}, Lqe3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {v3}, Lqe3;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    :catch_0
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lfr1;

    .line 125
    .line 126
    iget-object v1, v1, Lfr1;->b:Lw00;

    .line 127
    .line 128
    iget-object v1, v1, Lw00;->c:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Lix0;

    .line 131
    .line 132
    iget-object v1, v1, Lix0;->c:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {v1, v5}, Lnc8;->Z(Z)V

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lfr1;

    .line 153
    .line 154
    iget-object v0, v0, Lfr1;->d:Landroid/view/View;

    .line 155
    .line 156
    new-instance v1, Lzf1;

    .line 157
    .line 158
    invoke-direct {v1, p0, v5}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    if-nez p1, :cond_6

    .line 165
    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance v0, Landroidx/fragment/app/a;

    .line 174
    .line 175
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Llr1;

    .line 179
    .line 180
    invoke-direct {p1}, Llr1;-><init>()V

    .line 181
    .line 182
    .line 183
    const v1, 0x7f0a0449

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/o;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Landroidx/fragment/app/a;->e()V

    .line 190
    .line 191
    .line 192
    :cond_6
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appconfigs/settings/ConfigSettingsActivity;->U()Lmr1;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Lmr1;->f:Lex6;

    .line 197
    .line 198
    new-instance v0, Lcz;

    .line 199
    .line 200
    const/4 v1, 0x3

    .line 201
    invoke-direct {v0, p0, v1}, Lcz;-><init>(Ljava/lang/Object;I)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Leg1;

    .line 205
    .line 206
    invoke-direct {v1, v0, v5}, Leg1;-><init>(Ljava/lang/Object;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p0, v1}, Lzy4;->e(Lfu4;Les5;)V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

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
    const v1, 0x7f0f000f

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0054

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lsz8;->r(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

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
    const v1, 0x7f0a0054

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lbk;

    .line 14
    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const v2, 0x7f1301f0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v2, v0, v1}, Lorg/swiftapps/swiftbackup/common/Const;->K(Lio1;ILbt3;Lbk;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
