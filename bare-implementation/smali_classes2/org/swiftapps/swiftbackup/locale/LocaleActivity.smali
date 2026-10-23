.class public final Lorg/swiftapps/swiftbackup/locale/LocaleActivity;
.super Lil0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic P:I


# instance fields
.field public final K:Ll90;

.field public final L:Lgv7;

.field public final M:Lgv7;

.field public final N:Lg05;

.field public final O:Lgv7;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lil0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz20;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lz20;-><init>(Lil0;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ll90;

    .line 12
    .line 13
    const-class v2, Ln05;

    .line 14
    .line 15
    invoke-static {v2}, Lph6;->a(Ljava/lang/Class;)Ln81;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lo30;

    .line 20
    .line 21
    const/4 v4, 0x6

    .line 22
    invoke-direct {v3, p0, v4}, Lo30;-><init>(Lil0;I)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Lp30;

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    invoke-direct {v4, p0, v5}, Lp30;-><init>(Lil0;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v3, v0, v4}, Ll90;-><init>(Ln81;Lbt3;Lbt3;Lbt3;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->K:Ll90;

    .line 35
    .line 36
    new-instance v0, Lhs4;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, p0, v1}, Lhs4;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->L:Lgv7;

    .line 48
    .line 49
    new-instance v0, Lgj;

    .line 50
    .line 51
    const/16 v1, 0x1b

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Lgj;-><init>(Ljava/lang/Object;I)V

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
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->M:Lgv7;

    .line 62
    .line 63
    new-instance v0, Lg05;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, v1}, Lgm7;-><init>(Lfm7;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N:Lg05;

    .line 70
    .line 71
    new-instance v0, Lak;

    .line 72
    .line 73
    const/16 v1, 0x19

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lak;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lgv7;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lgv7;-><init>(Lbt3;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->O:Lgv7;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final D()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic F()Lqo0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final N()Ln05;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->K:Ll90;

    .line 2
    .line 3
    invoke-virtual {p0}, Ll90;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ln05;

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
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->L:Lgv7;

    .line 5
    .line 6
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Le05;

    .line 11
    .line 12
    iget-object v1, v1, Le05;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lk28;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Le05;

    .line 22
    .line 23
    iget-object v0, v0, Le05;->b:Lw00;

    .line 24
    .line 25
    iget-object v0, v0, Lw00;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lix0;

    .line 28
    .line 29
    iget-object v0, v0, Lix0;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lzm;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lzm;->getSupportActionBar()Lnc8;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lnc8;->Z(Z)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->M:Lgv7;

    .line 47
    .line 48
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 53
    .line 54
    const/4 v2, 0x7

    .line 55
    invoke-static {v0, v2}, Lsz8;->b(Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v3, v1}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N:Lg05;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Luc1;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Luc1;-><init>(Lorg/swiftapps/swiftbackup/locale/LocaleActivity;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, v2, Lgm7;->j:Lqt3;

    .line 84
    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    move p1, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Ln05;->e:Lex6;

    .line 95
    .line 96
    new-instance v2, Ld05;

    .line 97
    .line 98
    invoke-direct {v2, p0, p1}, Ld05;-><init>(Lorg/swiftapps/swiftbackup/locale/LocaleActivity;Z)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lw92;

    .line 102
    .line 103
    invoke-direct {p1, v2, v1}, Lw92;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0, p1}, Lzy4;->e(Lfu4;Les5;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ln05;->j()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

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
    const v1, 0x7f0f0020

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0087

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Lxx3;->m()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    :cond_0
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lis4;

    .line 49
    .line 50
    iget-wide v4, v2, Lis4;->d:D

    .line 51
    .line 52
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 53
    .line 54
    cmpg-double v2, v4, v6

    .line 55
    .line 56
    if-gez v2, :cond_2

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 60
    .line 61
    .line 62
    const-string v1, "show_wip_languages"

    .line 63
    .line 64
    :try_start_0
    sget-object v2, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string v1, "prefs"

    .line 74
    .line 75
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 81
    .line 82
    .line 83
    invoke-super {p0, p1}, Lil0;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

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
    const v1, 0x7f0a0052

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v0, v1, :cond_14

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Ln05;->g:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lxx3;->l()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_6

    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lis4;

    .line 47
    .line 48
    new-instance v6, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_4

    .line 62
    .line 63
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    move-object v9, v8

    .line 68
    check-cast v9, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;

    .line 69
    .line 70
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->isTranslator()Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    if-eqz v10, :cond_1

    .line 81
    .line 82
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->get_name()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-static {v10}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    if-nez v10, :cond_1

    .line 98
    .line 99
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/contributor/ContributorRegistration;->getLocales()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-eqz v9, :cond_3

    .line 104
    .line 105
    invoke-static {v9}, Lel1;->S0(Ljava/util/List;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Ljava/util/Locale;

    .line 110
    .line 111
    if-eqz v9, :cond_3

    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    move-object v9, v3

    .line 119
    :goto_2
    invoke-virtual {v5}, Lis4;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-static {v9, v10}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_1

    .line 128
    .line 129
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-nez v7, :cond_0

    .line 138
    .line 139
    new-instance v7, Ljc1;

    .line 140
    .line 141
    const/4 v8, 0x6

    .line 142
    invoke-direct {v7, v8}, Ljc1;-><init>(I)V

    .line 143
    .line 144
    .line 145
    invoke-static {v6, v7}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    new-instance v7, Lma8;

    .line 150
    .line 151
    invoke-direct {v7, v5, v6}, Lma8;-><init>(Lis4;Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    move-object v1, v3

    .line 159
    :cond_6
    if-eqz v1, :cond_13

    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    goto/16 :goto_b

    .line 168
    .line 169
    :cond_7
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->O:Lgv7;

    .line 170
    .line 171
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lpa8;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-eqz v5, :cond_c

    .line 189
    .line 190
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    move-object v6, v5

    .line 195
    check-cast v6, Lma8;

    .line 196
    .line 197
    iget-object v6, v6, Lma8;->a:Lis4;

    .line 198
    .line 199
    invoke-virtual {v6}, Lis4;->a()Ljava/util/Locale;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    const-string v7, "app_locale"

    .line 204
    .line 205
    :try_start_0
    sget-object v8, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 206
    .line 207
    if-eqz v8, :cond_9

    .line 208
    .line 209
    invoke-interface {v8, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    goto :goto_3

    .line 214
    :cond_9
    const-string v7, "prefs"

    .line 215
    .line 216
    invoke-static {v7}, Lpe4;->F(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    move-object v7, v3

    .line 221
    :goto_3
    if-eqz v7, :cond_b

    .line 222
    .line 223
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-nez v8, :cond_a

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_a
    invoke-static {v7}, Lxx3;->g(Ljava/lang/String;)Lis4;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v7}, Lis4;->a()Ljava/util/Locale;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    goto :goto_5

    .line 239
    :cond_b
    :goto_4
    invoke-static {}, Lxx3;->h()Lis4;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v7}, Lis4;->a()Ljava/util/Locale;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_8

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_c
    move-object v5, v3

    .line 255
    :goto_6
    check-cast v5, Lma8;

    .line 256
    .line 257
    iget-object v4, v0, Lpa8;->S:Lgv7;

    .line 258
    .line 259
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    check-cast v4, Lra8;

    .line 264
    .line 265
    iget-object v6, v4, Lra8;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 266
    .line 267
    if-eqz v5, :cond_d

    .line 268
    .line 269
    move v7, v2

    .line 270
    goto :goto_7

    .line 271
    :cond_d
    const/4 v7, 0x0

    .line 272
    :goto_7
    invoke-static {v6, v7}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 273
    .line 274
    .line 275
    iget-object v6, v4, Lra8;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 276
    .line 277
    invoke-static {v6}, Lsz8;->I(Landroid/view/View;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_f

    .line 282
    .line 283
    new-instance v6, Lna8;

    .line 284
    .line 285
    iget-object v7, v4, Lra8;->c:Landroid/widget/TextView;

    .line 286
    .line 287
    iget-object v8, v4, Lra8;->b:Landroid/widget/TextView;

    .line 288
    .line 289
    iget-object v9, v4, Lra8;->d:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-direct {v6, v4, v7, v8, v9}, Lna8;-><init>(Ljk8;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 292
    .line 293
    .line 294
    if-nez v5, :cond_e

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_e
    invoke-virtual {v6, v5}, Lna8;->r(Lma8;)V

    .line 298
    .line 299
    .line 300
    :cond_f
    :goto_8
    iget-object v4, v0, Lpa8;->R:Lgv7;

    .line 301
    .line 302
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 307
    .line 308
    new-instance v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 309
    .line 310
    const/4 v7, 0x2

    .line 311
    invoke-direct {v6, v7, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    :cond_10
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_12

    .line 334
    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    move-object v8, v6

    .line 340
    check-cast v8, Lma8;

    .line 341
    .line 342
    iget-object v8, v8, Lma8;->a:Lis4;

    .line 343
    .line 344
    if-eqz v5, :cond_11

    .line 345
    .line 346
    iget-object v9, v5, Lma8;->a:Lis4;

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_11
    move-object v9, v3

    .line 350
    :goto_a
    invoke-static {v8, v9}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-nez v8, :cond_10

    .line 355
    .line 356
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_12
    new-instance v1, Loa8;

    .line 361
    .line 362
    invoke-direct {v1, v2}, Lr35;-><init>(Ljava/util/List;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lpa8;->T:Lgv7;

    .line 369
    .line 370
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    check-cast v1, Landroid/view/View;

    .line 378
    .line 379
    new-instance v2, Lzf1;

    .line 380
    .line 381
    const/16 v3, 0x9

    .line 382
    .line 383
    invoke-direct {v2, v0, v3}, Lzf1;-><init>(Ljava/lang/Object;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lpa8;->Q:Lgv7;

    .line 390
    .line 391
    invoke-virtual {v1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 396
    .line 397
    new-instance v2, Lv12;

    .line 398
    .line 399
    invoke-direct {v2, v0, v7}, Lv12;-><init>(Ljava/lang/Object;I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Lu35;->show()V

    .line 406
    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_13
    :goto_b
    const v0, 0x7f1302f6

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    sget-object v1, Lzn4;->a:Lzn4;

    .line 420
    .line 421
    new-instance v1, Lcv;

    .line 422
    .line 423
    const/16 v2, 0xe

    .line 424
    .line 425
    invoke-direct {v1, v2, p0, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v1}, Lzn4;->e(Lbt3;)V

    .line 429
    .line 430
    .line 431
    goto :goto_c

    .line 432
    :cond_14
    const v1, 0x7f0a0087

    .line 433
    .line 434
    .line 435
    if-ne v0, v1, :cond_16

    .line 436
    .line 437
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    xor-int/2addr v0, v2

    .line 442
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 443
    .line 444
    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    sget-object v1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 450
    .line 451
    if-eqz v1, :cond_15

    .line 452
    .line 453
    const-string v2, "show_wip_languages"

    .line 454
    .line 455
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    iput-boolean v1, v0, Ln05;->f:Z

    .line 471
    .line 472
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v0}, Ln05;->j()V

    .line 477
    .line 478
    .line 479
    goto :goto_c

    .line 480
    :cond_15
    const-string p0, "editor"

    .line 481
    .line 482
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v3

    .line 486
    :cond_16
    :goto_c
    invoke-super {p0, p1}, Lil0;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 487
    .line 488
    .line 489
    move-result p0

    .line 490
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lil0;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N()Ln05;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Ln05;->e:Lex6;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;->N:Lg05;

    .line 14
    .line 15
    iget-object p0, p0, Lgm7;->e:Lfm7;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lex6;->k(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
