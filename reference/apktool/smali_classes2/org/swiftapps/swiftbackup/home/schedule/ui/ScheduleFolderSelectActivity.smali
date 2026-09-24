.class public final Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic R:I


# instance fields
.field public final K:Lgv7;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lgv7;

.field public final O:Lcp3;

.field public P:Ljava/util/List;

.field public Q:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lno5;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, p0, v1}, Lno5;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lgv7;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->K:Lgv7;

    .line 16
    .line 17
    new-instance v0, Lqb5;

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-direct {v0, p0, v1}, Lqb5;-><init>(Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lgv7;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->L:Lgv7;

    .line 29
    .line 30
    new-instance v0, Ln55;

    .line 31
    .line 32
    const/4 v1, 0x6

    .line 33
    invoke-direct {v0, p0, v1}, Ln55;-><init>(Ljava/lang/Object;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lgv7;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->M:Lgv7;

    .line 42
    .line 43
    new-instance v0, Lu14;

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-direct {v0, p0, v1}, Lu14;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lgv7;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N:Lgv7;

    .line 56
    .line 57
    new-instance v0, Lcp3;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-direct {v0, v1, v1}, Lcp3;-><init>(ZZ)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 64
    .line 65
    sget-object v0, Lov2;->a:Lov2;

    .line 66
    .line 67
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P:Ljava/util/List;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final N()Ley2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->M:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ley2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final O()Lf37;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->K:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lf37;

    .line 8
    .line 9
    return-object p0
.end method

.method public final P(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q:Landroid/view/MenuItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lsz8;->z(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const p1, 0x7f08008f

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const p1, 0x7f08008e

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/swiftapps/swiftbackup/common/Const;->w(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q:Landroid/view/MenuItem;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public final Q(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lf37;->f:Ltf2;

    .line 8
    .line 9
    iget-object p1, p1, Ltf2;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    const v0, 0x7f1302f6

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 25
    .line 26
    invoke-virtual {p1}, Lgm7;->k()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Lgm7;->b()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lf37;->f:Ltf2;

    .line 39
    .line 40
    iget-object v1, v1, Ltf2;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x7f1304e7

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v2, "app_locale"

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    :try_start_0
    sget-object v4, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const-string v2, "prefs"

    .line 67
    .line 68
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    :goto_0
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v3}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    invoke-static {}, Lxx3;->h()Lis4;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lis4;->a()Ljava/util/Locale;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v0, "/"

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, " "

    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lil0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p1, p1, Lf37;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lf37;->f:Ltf2;

    .line 18
    .line 19
    iget-object p1, p1, Ltf2;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lnc8;->Z(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lnc8;->b0(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string v2, "EXTRA_BACKUP_ALL_FOLDERS"

    .line 47
    .line 48
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const-string v2, "EXTRA_SELECTED_FOLDER_ITEMS"

    .line 58
    .line 59
    const-class v3, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 60
    .line 61
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object p1, Lov2;->a:Lov2;

    .line 69
    .line 70
    :goto_0
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P:Ljava/util/List;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lf37;->f:Ltf2;

    .line 77
    .line 78
    iget-object p1, p1, Ltf2;->f:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Landroid/widget/CheckedTextView;

    .line 81
    .line 82
    const v2, 0x7f1304dd

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object p1, p1, Lf37;->f:Ltf2;

    .line 96
    .line 97
    iget-object p1, p1, Ltf2;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    new-instance v2, Lh00;

    .line 102
    .line 103
    const/16 v3, 0xb

    .line 104
    .line 105
    invoke-direct {v2, p0, v3}, Lh00;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lrs;

    .line 112
    .line 113
    const/4 v2, 0x7

    .line 114
    invoke-direct {p1, p0, v2}, Lrs;-><init>(Ljava/lang/Object;I)V

    .line 115
    .line 116
    .line 117
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 118
    .line 119
    iput-object p1, v4, Lgm7;->g:Lqt3;

    .line 120
    .line 121
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->L:Lgv7;

    .line 122
    .line 123
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    .line 129
    invoke-static {v5, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;

    .line 133
    .line 134
    invoke-direct {v2, p0}, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 144
    .line 145
    .line 146
    const/16 v1, 0xa

    .line 147
    .line 148
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v2, v2, Ley2;->d:Landroid/widget/ImageView;

    .line 156
    .line 157
    const v5, 0x7f08014a

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iget-object v2, v2, Ley2;->f:Landroid/widget/TextView;

    .line 168
    .line 169
    const v5, 0x7f13027f

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iget-object v2, v2, Ley2;->e:Landroid/widget/TextView;

    .line 180
    .line 181
    const v5, 0x7f1301ce

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    iget-object v2, v2, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 192
    .line 193
    const v5, 0x7f1302fa

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iget-object v2, v2, Ley2;->b:Lcom/google/android/material/button/MaterialButton;

    .line 204
    .line 205
    new-instance v5, Les;

    .line 206
    .line 207
    const/16 v6, 0xe

    .line 208
    .line 209
    invoke-direct {v5, p0, v6}, Les;-><init>(Ljava/lang/Object;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N:Lgv7;

    .line 216
    .line 217
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 222
    .line 223
    const v6, 0x7f1304bb

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 227
    .line 228
    .line 229
    const v6, 0x7f080101

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 240
    .line 241
    new-instance v6, Lxd1;

    .line 242
    .line 243
    invoke-direct {v6, p0, v1}, Lxd1;-><init>(Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    sget-object v5, Lpz4;->g:Lpz4;

    .line 250
    .line 251
    invoke-virtual {v5}, Ldv;->c()Ljava/util/List;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    sget-object v6, Lsf1;->g:Lsf1;

    .line 256
    .line 257
    invoke-virtual {v6}, Ldv;->c()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v5, v6}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    new-instance v6, Ljava/util/HashSet;

    .line 266
    .line 267
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 268
    .line 269
    .line 270
    new-instance v7, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    if-eqz v8, :cond_4

    .line 284
    .line 285
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    move-object v9, v8

    .line 290
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 291
    .line 292
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getItemId()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v9

    .line 300
    if-eqz v9, :cond_3

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_1

    .line 306
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-static {v7, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    const/4 v8, 0x0

    .line 324
    if-eqz v7, :cond_5

    .line 325
    .line 326
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    check-cast v7, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    new-instance v9, Lzk3;

    .line 336
    .line 337
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-virtual {v7}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getLatestBackupDate()J

    .line 342
    .line 343
    .line 344
    move-result-wide v11

    .line 345
    invoke-direct {v9, v10, v11, v12, v8}, Lzk3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;JLjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_5
    iget-object v6, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P:Ljava/util/List;

    .line 353
    .line 354
    new-instance v7, Ljava/util/ArrayList;

    .line 355
    .line 356
    invoke-static {v6, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    if-eqz v9, :cond_6

    .line 372
    .line 373
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    check-cast v9, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 378
    .line 379
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    new-instance v10, Lzk3;

    .line 383
    .line 384
    const-wide/16 v11, -0x1

    .line 385
    .line 386
    invoke-direct {v10, v9, v11, v12, v8}, Lzk3;-><init>(Lorg/swiftapps/swiftbackup/folders/data/FolderItem;JLjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_6
    invoke-static {v5, v7}, Lel1;->g1(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    new-instance v6, Ljava/util/HashSet;

    .line 398
    .line 399
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 400
    .line 401
    .line 402
    new-instance v7, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v5

    .line 411
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-eqz v8, :cond_8

    .line 416
    .line 417
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    move-object v9, v8

    .line 422
    check-cast v9, Lzk3;

    .line 423
    .line 424
    iget-object v9, v9, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 425
    .line 426
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    if-eqz v9, :cond_7

    .line 435
    .line 436
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    goto :goto_4

    .line 440
    :cond_8
    sget-object v5, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->Companion:Lnm3;

    .line 441
    .line 442
    new-instance v6, Lnu;

    .line 443
    .line 444
    invoke-direct {v6, v3}, Lnu;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-static {v5, v6}, Lnm3;->a(Lnm3;Lmt3;)Lym1;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-static {v7, v3}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    const/16 v5, 0x8

    .line 460
    .line 461
    if-eqz v3, :cond_9

    .line 462
    .line 463
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    iget-object v1, v1, Lf37;->d:Landroid/widget/ProgressBar;

    .line 468
    .line 469
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 477
    .line 478
    invoke-static {p1}, Lsz8;->W(Landroid/view/View;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 486
    .line 487
    invoke-static {p1}, Lsz8;->W(Landroid/view/View;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    iget-object p1, p1, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 495
    .line 496
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q(Z)V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :cond_9
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P:Ljava/util/List;

    .line 504
    .line 505
    new-instance v6, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-static {v3, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-eqz v3, :cond_a

    .line 523
    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    check-cast v3, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 529
    .line 530
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_a
    invoke-static {v6}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 539
    .line 540
    .line 541
    move-result-object v10

    .line 542
    new-instance v8, Lfm7;

    .line 543
    .line 544
    const/4 v11, 0x0

    .line 545
    const/4 v12, 0x0

    .line 546
    const/16 v13, 0x1c

    .line 547
    .line 548
    invoke-direct/range {v8 .. v13}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4, v8, v0}, Lgm7;->w(Lfm7;Z)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O()Lf37;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    iget-object v1, v1, Lf37;->d:Landroid/widget/ProgressBar;

    .line 559
    .line 560
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 568
    .line 569
    invoke-static {p1}, Lsz8;->c0(Landroid/view/View;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Lgv7;->getValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 577
    .line 578
    invoke-static {p1}, Lsz8;->c0(Landroid/view/View;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->N()Ley2;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    iget-object p1, p1, Ley2;->a:Landroidx/core/widget/NestedScrollView;

    .line 586
    .line 587
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q(Z)V

    .line 591
    .line 592
    .line 593
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
    const v1, 0x7f0f001a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0081

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->Q:Landroid/view/MenuItem;

    .line 22
    .line 23
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 24
    .line 25
    invoke-virtual {v0}, Lgm7;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->P(Z)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
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
    const v1, 0x102002c

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v1, 0x7f0a0081

    .line 18
    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFolderSelectActivity;->O:Lcp3;

    .line 23
    .line 24
    iget-object v1, v0, Lgm7;->e:Lfm7;

    .line 25
    .line 26
    iget-object v1, v1, Lfm7;->a:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->L()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    xor-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lgm7;->s(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0
.end method
