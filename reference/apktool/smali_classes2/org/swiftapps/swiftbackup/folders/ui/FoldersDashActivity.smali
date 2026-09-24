.class public final Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;
.super Lsa1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic U:I


# instance fields
.field public final P:Ll90;

.field public final Q:Lgv7;

.field public final R:Lgv7;

.field public final S:Lxo3;

.field public final T:Lwo3;


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
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, p0, v1}, Lwf;-><init>(Lil0;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ll90;

    .line 11
    .line 12
    const-class v2, Lzo3;

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
    const/4 v4, 0x4

    .line 21
    invoke-direct {v3, p0, v4}, Lj51;-><init>(Lil0;I)V

    .line 22
    .line 23
    .line 24
    new-instance v5, Lf20;

    .line 25
    .line 26
    invoke-direct {v5, p0, v4}, Lf20;-><init>(Lil0;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v5}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->P:Ll90;

    .line 33
    .line 34
    new-instance v0, Lbk;

    .line 35
    .line 36
    const/16 v1, 0x16

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lbk;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->Q:Lgv7;

    .line 47
    .line 48
    new-instance v0, Lck;

    .line 49
    .line 50
    const/16 v1, 0x18

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lgv7;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->R:Lgv7;

    .line 61
    .line 62
    new-instance v0, Lxo3;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lxo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->S:Lxo3;

    .line 68
    .line 69
    new-instance v0, Lwo3;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lwo3;-><init>(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->T:Lwo3;

    .line 75
    .line 76
    return-void
.end method

.method public static final U(Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;)Lkp3;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "android:switcher:"

    .line 22
    .line 23
    const-string v3, ":"

    .line 24
    .line 25
    invoke-static {v2, v0, v1, v3}, Ldj7;->i(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Lur3;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/fragment/app/z;->D(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    instance-of v0, p0, Lkp3;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    check-cast p0, Lkp3;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final V()Lyo3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->Q:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyo3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final W()Lzo3;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->P:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzo3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lsa1;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p2, 0x137b

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, "extra_folder_item"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, p2, :cond_4

    .line 15
    .line 16
    const/16 p2, 0x137c

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    if-eqz p3, :cond_2

    .line 22
    .line 23
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_2
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 28
    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    new-instance p1, Lik3;

    .line 37
    .line 38
    invoke-direct {p1, p0, v2, v0}, Lik3;-><init>(Lkk3;Lorg/swiftapps/swiftbackup/folders/data/FolderItem;Z)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    if-eqz p3, :cond_5

    .line 46
    .line 47
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_5
    check-cast v2, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 52
    .line 53
    if-nez v2, :cond_6

    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :cond_6
    if-eqz p3, :cond_7

    .line 57
    .line 58
    const-string p1, "saveLocalItemFromCloud"

    .line 59
    .line 60
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/4 p2, 0x1

    .line 65
    if-ne p1, p2, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance p1, Ll30;

    .line 72
    .line 73
    const/16 p2, 0x8

    .line 74
    .line 75
    invoke-direct {p1, p2, p0, v2}, Ll30;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    sget-object p1, Lzn4;->a:Lzn4;

    .line 87
    .line 88
    new-instance p1, Lcv;

    .line 89
    .line 90
    const/16 p2, 0xa

    .line 91
    .line 92
    invoke-direct {p1, p2, p0, v2}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lzn4;->c(Lbt3;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lsa1;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lyo3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "KEY_SECTION"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lto3;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lto3;->LOCAL:Lto3;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lyo3;->c:Lix0;

    .line 36
    .line 37
    iget-object v0, v0, Lix0;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v0, v0, Lyo3;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->S:Lxo3;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->a(Lxv7;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 70
    .line 71
    invoke-static {}, Lto3;->getEntries()Ljx2;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Ll3;

    .line 76
    .line 77
    invoke-virtual {v2}, Ll3;->d()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 89
    .line 90
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->R:Lgv7;

    .line 91
    .line 92
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Luo3;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Low5;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, Lyo3;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v2, v2, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v0, v0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lak;

    .line 130
    .line 131
    const/16 v0, 0x12

    .line 132
    .line 133
    invoke-direct {p1, p0, v0}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0, p1}, Lil0;->L(ZLbt3;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_3

    .line 151
    .line 152
    move v0, v1

    .line 153
    :cond_3
    xor-int/lit8 p1, v0, 0x1

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lil0;->A(Z)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->T:Lwo3;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lio1;->addMenuProvider(Lxc5;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->W()Lzo3;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iget-object p1, p1, Lzo3;->e:Lix6;

    .line 168
    .line 169
    new-instance v0, Lu10;

    .line 170
    .line 171
    const/16 v1, 0xa

    .line 172
    .line 173
    invoke-direct {v0, p0, v1}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Leg1;

    .line 177
    .line 178
    const/4 v2, 0x2

    .line 179
    invoke-direct {v1, v0, v2}, Leg1;-><init>(Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p0, v1}, Lix6;->e(Lfu4;Les5;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lsa1;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lyo3;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->S:Lxo3;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->g0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->V()Lyo3;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object p0, p0, Lyo3;->d:Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
